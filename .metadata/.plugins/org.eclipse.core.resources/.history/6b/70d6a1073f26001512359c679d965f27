<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Approval_Task</fullName>
        <description>Approval Task</description>
        <protected>false</protected>
        <recipients>
            <recipient>Project_Manager</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/End_Date_Reminder</template>
    </alerts>
    <alerts>
        <fullName>Big_Deal_Alert</fullName>
        <description>Big Deal Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>craig.lobo7@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Follow_Up</template>
    </alerts>
    <alerts>
        <fullName>Big_Deal_Created</fullName>
        <description>Big Deal Created</description>
        <protected>false</protected>
        <recipients>
            <recipient>craig.lobo7@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Follow_Up</template>
    </alerts>
    <rules>
        <fullName>Big Deal Alert</fullName>
        <actions>
            <name>Big_Deal_Created</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Negotiation/Review</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterThan</operation>
            <value>50000</value>
        </criteriaItems>
        <description>Workflow for a big deal</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
