<?php
/**
 *
 * This file is part of HESK - PHP Help Desk Software.
 *
 * (c) Copyright Klemen Stirn. All rights reserved.
 * https://www.hesk.com
 *
 * For the full copyright and license agreement information visit
 * https://www.hesk.com/eula.php
 *
 */

define('IN_SCRIPT',1);
define('HESK_PATH','../');

/* Get all the required files and functions */
require(HESK_PATH . 'hesk_settings.inc.php');
require(HESK_PATH . 'inc/common.inc.php');
require(HESK_PATH . 'inc/admin_functions.inc.php');
hesk_load_database_functions();

hesk_session_start();
hesk_dbConnect();
hesk_isLoggedIn();

/* Check permissions for this feature */
hesk_checkPermission('can_view_tickets');

// Ticket ID
$trackingID = hesk_cleanID() or die($hesklang['int_error'].': '.$hesklang['no_trackID']);

// Note ID
$noteID = intval( hesk_REQUEST('note') ) or die($hesklang['int_error'].': '.$hesklang['mis_note']);

// Get ticket info
$result = hesk_dbQuery("SELECT `id` FROM `".hesk_dbEscape($hesk_settings['db_pfix'])."tickets` WHERE `trackid`='".hesk_dbEscape($trackingID)."' LIMIT 1");
if (hesk_dbNumRows($result) != 1)
{
	hesk_error($hesklang['ticket_not_found']);
}
$ticket = hesk_dbFetchAssoc($result);

// Get note info
$result = hesk_dbQuery("SELECT * FROM `".hesk_dbEscape($hesk_settings['db_pfix'])."notes` WHERE `id`={$noteID}");
if (hesk_dbNumRows($result) != 1)
{
	hesk_error($hesklang['no_note']);
}
$note = hesk_dbFetchAssoc($result);

// Make sure the note matches the ticket and the user has permission to edit it
if ($note['ticket'] != $ticket['id'] || ( ! hesk_checkPermission('can_del_notes',0) && $note['who'] != $_SESSION['id']) )
{
	hesk_error($hesklang['perm_deny']);
}

// Save changes?
if (isset($_POST['save']))
{
	// A security check
	hesk_token_check('POST');

	// Get message
	$tmpvar['message'] = nl2br( hesk_makeURL( hesk_input( hesk_POST('message') ) ) );

	// If we have message or attachments do the update
	if ( strlen($tmpvar['message']) || strlen($note['attachments']) )
	{
		hesk_dbQuery("UPDATE `".hesk_dbEscape($hesk_settings['db_pfix'])."notes` SET `message`='".hesk_dbEscape($tmpvar['message'])."' WHERE `id`={$noteID}");
		hesk_process_messages($hesklang['ednote2'],'admin_ticket.php?track='.$trackingID.'&Refresh='.mt_rand(10000,99999),'SUCCESS');
	}
	// If not, delete the note
	else
	{
		hesk_dbQuery("DELETE FROM `".hesk_dbEscape($hesk_settings['db_pfix'])."notes` WHERE `id`={$noteID}");
		header('Location: admin_ticket.php?track='.$trackingID.'&Refresh='.mt_rand(10000,99999));
		exit();
	}
}

$note['message'] = hesk_msgToPlain($note['message'],0,0);

/* Print header */
require_once(HESK_PATH . 'inc/header.inc.php');

/* Print admin navigation */
require_once(HESK_PATH . 'inc/show_admin_nav.inc.php');
?>

</td>
</tr>
<tr>
<td>

<p><span class="smaller"><a href="admin_ticket.php?track=<?php echo $trackingID; ?>&amp;Refresh=<?php echo mt_rand(10000,99999); ?>" class="smaller"><?php echo $hesklang['ticket'].' '.$trackingID; ?></a> &gt;
<?php echo $hesklang['ednote']; ?></span></p>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
	<td width="7" height="7"><img src="../img/roundcornerslt.jpg" width="7" height="7" alt="" /></td>
	<td class="roundcornerstop"></td>
	<td><img src="../img/roundcornersrt.jpg" width="7" height="7" alt="" /></td>
</tr>
<tr>
	<td class="roundcornersleft">&nbsp;</td>
	<td>

	<h3 align="center"><?php echo $hesklang['ednote']; ?></h3>

	<form method="post" action="edit_note.php" name="form1">

	<p style="text-align:center">&nbsp;<br /><?php echo $hesklang['message']; ?>:<br />
	<textarea name="message" rows="12" cols="60"><?php echo $note['message']; ?></textarea></p>

	<p style="text-align:center">
	<input type="hidden" name="save" value="1" /><input type="hidden" name="track" value="<?php echo $trackingID; ?>" />
    <input type="hidden" name="token" value="<?php hesk_token_echo(); ?>" />
	<input type="hidden" name="note" value="<?php echo $noteID; ?>" />
	<input type="submit" value="<?php echo $hesklang['save_changes']; ?>" class="orangebutton" onmouseover="hesk_btn(this,'orangebuttonover');" onmouseout="hesk_btn(this,'orangebutton');" /></p>

	</form>

	</td>
	<td class="roundcornersright">&nbsp;</td>
</tr>
<tr>
	<td><img src="../img/roundcornerslb.jpg" width="7" height="7" alt="" /></td>
	<td class="roundcornersbottom"></td>
	<td width="7" height="7"><img src="../img/roundcornersrb.jpg" width="7" height="7" alt="" /></td>
</tr>
</table>

<p style="text-align:center"><a href="javascript:history.go(-1)"><?php echo $hesklang['back']; ?></a></p>

<p>&nbsp;</p>

<?php
require_once(HESK_PATH . 'inc/footer.inc.php');
exit();
?>
