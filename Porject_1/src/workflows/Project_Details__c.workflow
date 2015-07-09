<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Calendar_Task</fullName>
        <description>Calendar Task</description>
        <protected>false</protected>
        <recipients>
            <recipient>Project_Manager</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Follow_Up</template>
    </alerts>
    <alerts>
        <fullName>End_date_5_days_later</fullName>
        <description>End date 5 days later</description>
        <protected>false</protected>
        <recipients>
            <recipient>craig.lobo7@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Follow_Up</template>
    </alerts>
    <alerts>
        <fullName>End_date_in_5_days</fullName>
        <description>End date in 5 days</description>
        <protected>false</protected>
        <recipients>
            <recipient>craig.lobo7@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Follow_Up</template>
    </alerts>
    <alerts>
        <fullName>End_date_is_5_days_later</fullName>
        <description>End date is 5 days later</description>
        <protected>false</protected>
        <recipients>
            <recipient>craig.lobo7@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Follow_Up</template>
    </alerts>
    <alerts>
        <fullName>Five_Days_Remaining</fullName>
        <description>Five Days Remaining</description>
        <protected>false</protected>
        <recipients>
            <recipient>Project_Manager</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/End_Date_Reminder</template>
    </alerts>
    <fieldUpdates>
        <fullName>EndDate</fullName>
        <description>End Date</description>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>EndDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Update</fullName>
        <description>Update the status field if the project end date is today</description>
        <field>Status__c</field>
        <literalValue>Closed</literalValue>
        <name>Status Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Calender Task</fullName>
        <actions>
            <name>Calendar_Task</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Calender</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Executed when a new project is assigned to a project manager</description>
        <formula>NOT( ISBLANK( Start_Date__c )  )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>End Date Today</fullName>
        <actions>
            <name>Status_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Will change the status of the project if the end date is today</description>
        <formula>End_Date__c  =  TODAY() = TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Five Days Before End Date</fullName>
        <active>true</active>
        <description>Will send a notification mail to project manager the 5 days to end date</description>
        <formula>NOT( ISBLANK( End_Date__c ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Five_Days_Remaining</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Project_Details__c.End_Date__c</offsetFromField>
            <timeLength>-5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Calender</fullName>
        <assignedTo>Project_Manager</assignedTo>
        <assignedToType>role</assignedToType>
        <description>A new project has been created and assigned</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Project_Details__c.Start_Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Calender</subject>
    </tasks>
</Workflow>
