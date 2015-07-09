<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Follow_Up_Date</fullName>
        <description>Follow-Up Date</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Follow_Up</template>
    </alerts>
    <fieldUpdates>
        <fullName>DNC</fullName>
        <field>RecordTypeId</field>
        <lookupValue>DNC</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>DNC</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Do_Not_Call</fullName>
        <description>Will update the DNC field</description>
        <field>RecordTypeId</field>
        <lookupValue>DNC</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Do Not Call</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LandLine</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Landline</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>LandLine</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LandLine1</fullName>
        <description>Update the record type</description>
        <field>RecordTypeId</field>
        <lookupValue>Landline</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>LandLine</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Mobile_No</fullName>
        <description>Updates the record type</description>
        <field>RecordTypeId</field>
        <lookupValue>Mobile</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Mobile No</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>No_Number</fullName>
        <field>RecordTypeId</field>
        <lookupValue>No_Number</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>No Number</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Do Not Call</fullName>
        <actions>
            <name>Do_Not_Call</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>workflow to sort the record in the DNC cluster</description>
        <formula>DoNotCall==TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Follow-Up</fullName>
        <actions>
            <name>Follow_Up_Date</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Notify if follow up date is older than today</description>
        <formula>TODAY() &gt;  Follow_Up__c</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LandLine</fullName>
        <actions>
            <name>LandLine1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Workflow to sort record in landline cluster</description>
        <formula>IF ( NOT ( ISBLANK (  Phone  )), 
AND ( DoNotCall == FALSE , ISBLANK(  MobilePhone  ) ) , 

FALSE 

)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Mobile No</fullName>
        <actions>
            <name>Mobile_No</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Workflow to sort the record in the Mobile cluster</description>
        <formula>IF ( NOT ( ISBLANK (  MobilePhone )), 
AND (  DoNotCall == FALSE , ISBLANK(  Phone ) ) ,

  FALSE

)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
