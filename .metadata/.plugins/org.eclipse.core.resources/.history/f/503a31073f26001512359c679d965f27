<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Employee_is_deactivated</fullName>
        <description>Employee is deactivated</description>
        <protected>false</protected>
        <recipients>
            <recipient>Manager</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Follow_Up</template>
    </alerts>
    <fieldUpdates>
        <fullName>NT_Update</fullName>
        <description>Update the record type field</description>
        <field>RecordTypeId</field>
        <lookupValue>Non_Technical</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>NT Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>One_Rule</fullName>
        <field>R_ID__c</field>
        <formula>Role__r.Name__c</formula>
        <name>One Rule</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Employee have single relationship</fullName>
        <actions>
            <name>One_Rule</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Only one employee should be assigned to a post</description>
        <formula>NOT( ISBLANK(Name ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Notify Manager Employee record is Inactive</fullName>
        <actions>
            <name>Employee_is_deactivated</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Is_Active__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Notifies the manager when the employee is deactivated</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Record type Non Technical</fullName>
        <actions>
            <name>NT_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Current_Employee__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Change the record type to non technical</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
