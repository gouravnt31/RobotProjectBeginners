# *** Setting ***
# Test Teardown     Close All Connections
# Library           Telnet

# # *** Variables ***
# # ${HOST}    localhost
# # ${USERNAME}    root
# # ${PASSWORD}    rwedaRoot

# # *** Test Cases ***
# # Successful login with prompt
    # # Open Connection    ${HOST}    prompt=#    port=22022
    # # Login and verify output



# # *** Keywords ***
# # Login and verify output
    # # ${output} =    Login    ${USERNAME}    ${PASSWORD}
    # # Log    ${output}
    # # # Should Contain Once    ${output}    login: test\r\n
    # # # Should Not Contain     ${output}    test\n
    # # # Should Contain Once    ${output}    Password: \r\n
    # # # Should Contain Once    ${output}    ${FULL PROMPT}
    # # # Should End With        ${output}    ${FULL PROMPT}
