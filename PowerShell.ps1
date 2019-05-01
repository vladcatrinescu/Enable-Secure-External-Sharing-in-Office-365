Set-SPOTenant `
	-BccExternalSharingInvitations $true `
	-BccExternalSharingInvitationsList vlad@globomantics.org `
	-CustomizedExternalSharingServiceUrl https://www.contoso.com/sharingpolicies `
	-DefaultSharingLinkType Internal `
	-FileAnonymousLinkType View  `
	-FolderAnonymousLinkType View `
	-NotifyOwnersWhenInvitationsAccepted $true `
	-NotifyOwnersWhenItemsReshared $true `
	-PreventExternalUsersFromResharing $true ` 
	-RequireAcceptingAccountMatchInvitedAccount $true `
	-RequireAnonymousLinksExpireInDays 5 `
	-SharingCapability ExternalUserSharingOnly
	
Set-SPOSite `
	-Identity https://globomanticsorg.sharepoint.com/sites/FlowDemos/ `
	-DefaultLinkPermission Edit `  #None - Respect the organization default link permission
	-DefaultSharingLinkType Internal `
	-DisableSharingForNonOwners $true `
	-SharingCapability ExternalUserAndGuestSharing  `
	-ShowPeoplePickerSuggestionsForGuestUsers $false 
	


