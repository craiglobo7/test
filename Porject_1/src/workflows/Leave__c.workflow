<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Leave_Approval</fullName>
        <description>Leave Approval</description>
        <protected>false</protected>
        <recipients>
            <recipient>HR_Manager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>karllobo@force.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>kylelobo@force.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Leave_Approval</template>
    </alerts>
</Workflow>
