/* Update SQL for CentOS 6 ZPanel 10.0.1 to 10.0.2 */

/* Change field length for passwords */
ALTER TABLE `zpanel_core`.`x_accounts`
CHANGE COLUMN `ac_pass_vc` `ac_pass_vc` VARCHAR(200) NULL DEFAULT NULL ;

/* New setting for turning off CSRF on login form */
INSERT INTO `x_settings`(`so_id_pk`,`so_name_vc`,`so_cleanname_vc`,`so_value_tx`,`so_defVALUES_tx`,`so_desc_tx`,`so_module_vc`,`so_usereditable_en`) VALUES (117,'login_csfr','Remote Login Forms','false','false|true','Disables CSFR protection on the login form to enable remote login forms.','ZPanel Config','true');

/* Remove and update standard FAQs */
DELETE FROM `zpanel_core`.`x_faqs` WHERE `fq_id_pk` > 0 AND `fq_id_pk` < 18;
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (1,1,'How can I update my personal contact details?','From the control panel homepage please click on the &quot;My Account&quot; icon to enable you to update your personal details.',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (2,1,'How do I change my password?','Your ZPanel and MySQL password can be easily changed using the &quot;Change Password&quot; icon on the control panel.',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (3,1,'I don&#39;t think one of the services(Apache, MySQL, FTP, etc) are running. Is there any easy way to check?','ZPanel comes with a service monitoring system that checks to make sure all the services are up and running, Simply go to your Control Panel Home and select the module called &quot;Service Status&quot;. From there you will be able to see if any of the services are down or up.',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (4,1,'How can I set my domain to work with my ZPanel Account?','To setup up a domain with ZPanel first thing you need to do is go &quot;Domains&quot; and add your to the list. Next you need to set the Name Server on your Domain Registrar to match that of your host. This information can be obtained by contacting your host.',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (7,1,'How can I create a MySQL Database?','To create a MySQL database simply go to the section of the panel called &quot;Database Management&quot; and select the module called &quot;MySQL Databases&quot; from here you will easily be able to add and manage databases on your account.',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (8,1,'What is phpMyAdmin?','phpMyAdmin is an open source tool intended to handle the administration of MySQL databases. It can perform various tasks such as creating, modifying or deleting databases, tables, fields or rows or executing SQL statements',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (9,1,'How do I create FTP Accounts?','You can create FTP accounts by going to &quot;FTP Accounts&quot; from their you can add accounts and manage quotas and directories. ',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (10,1,'How to Password Protect Directories?','Go to Advanced and select the module &quot;Password Protect Directories&quot; From here you can generate .htaccess files to lock down directories on your site to only people with a login and password.',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (11,1,'How do I create an E-Mail Account?','Go to the Mail section of ZPanel and select the module called &quot;Mailboxes&quot;, from here you can create E-Mail account for each domain setup on your account. You can also reset passwords to previously created accounts.',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (12,1,'How do I create a Mail Alias?','Go to the Mail section of ZPanel and select the module called &quot;Aliases&quot;, from here you can create Alias E-Mail accounts for each previously created E-Mail account. All mail sent to the alias will be delivered to the master e-mail account.',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (13,1,'How can I create a Mailing List?','Mailing lists can be setup by going to the Mail section of ZPanel and select the module called &quot;Distribution Lists&quot;, from here you can create Mailing lists by creating an E-mail Account. ',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (14,1,'How do I use Mail Forwards?','Go to the Mail section of ZPanel and select the module called &quot;Forwards&quot;, from here you can create E-Mail address on your domains that will forward to other E-Mail addresses that are on different servers like &quot;G-Mail, Yahoo, and MSN&quot;. ',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (15,1,'What are Subdomains?','A subdomain combines a unique identifier with a domain name to become essentially a &quot;domain within a domain.&quot; The unique identifier simply replaces the www in the web address. Yahoo!, for example, uses subdomains such as mail.yahoo.com and music.yahoo.com to reference its mail and music services, under the umbrella of www.yahoo.com. They can be created by using the Subdomain module in the Domains section. You can assign directories for each sub domain from the module.',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (16,1,'How can I view how much Data I have used?','You can view how much data you have used by accessing the &quot;Usage Viewer&quot; under the Account Information section of ZPanel. It displays account information in different formats. It displays Data Usage, Domain Usage, Bandwidth Usage, MySQL Usage, and much more.',1,NULL,NULL);
INSERT INTO `zpanel_core`.`x_faqs` (`fq_id_pk`,`fq_acc_fk`,`fq_question_tx`,`fq_answer_tx`,`fq_global_in`,`fq_created_ts`,`fq_deleted_ts`) VALUES (17,1,'How can I access Webmail?','Go to the Mail section of ZPanel and select the module called &quot;Webmail&quot;, from here you can login to your E-Mail account and view and create messages. ',1,NULL,NULL);

/* Update the ZPanel database version number */
UPDATE  `zpanel_core`.`x_settings` SET  `so_value_tx` =  '10.0.2' WHERE  `so_name_vc` = 'dbversion';