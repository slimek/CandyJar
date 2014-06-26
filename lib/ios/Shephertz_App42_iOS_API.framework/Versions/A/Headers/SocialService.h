//
//  SocialService.h
//  PAE_iOS_SDK
//
//  Created by shephertz technologies on 24/07/12.
//  Copyright (c) 2012 ShephertzTechnology PVT LTD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Social.h"
#import "App42Service.h"
/**
 * Connect to the User's multiple social accounts. Also used to update the
 * status individually or all at once for the linked social accounts.
 */
@interface SocialService : App42Service
{
    
}

-(id)init __attribute__((unavailable));
-(id)initWithAPIKey:(NSString *)apiKey  secretKey:(NSString *)secretKey;


/**
 * Links the User Facebook access credentials to the App User account.
 *
 * @param userName
 *            - Name of the user whose Facebook account to be linked
 * @param accessToken
 *            - Facebook Access Token that has been received after
 *            authorization
 * @param appId
 *            - Facebook App Id
 * @param appSecret
 *            - Facebook App Secret
 *
 * @returns The Social object
 *
 */

-(Social*)linkUserFacebookAccount:(NSString *)userName appId:(NSString*)appId appSecret:(NSString*)appSecret accessToken:(NSString*)accessToken;

/**
 * Links the User Facebook access credentials to the App User account.
 *
 * @param userName
 *            - Name of the user whose Facebook account to be linked
 * @param accessToken
 *            - Facebook Access Token that has been received after
 *            authorization
 *
 * @returns The Social object
 *
 */
-(Social*)linkUserFacebookAccount:(NSString *)userName accessToken:(NSString*)accessToken;

/**
 * Updates the Facebook status of the specified user.
 *
 * @param userName
 *            - Name of the user for whom the status needs to be updated
 * @param status
 *            - status that has to be updated
 *
 * @returns The Social object
 *
 *
 */
-(Social *)updateFacebookStatus:(NSString *)userName status:(NSString*)status;
/**
 * Links the User Twitter access credentials to the App User account.
 *
 * @param userName
 *            - Name of the user whose Twitter account to be linked
 * @param consumerKey
 *            - Twitter App Consumer Key
 * @param consumerSecret
 *            - Twitter App Consumer Secret
 * @param accessToken
 *            - Twitter Access Token that has been received after
 *            authorization
 * @param accessTokenSecret
 *            - Twitter Access Token Secret that has been received after
 *            authorization
 *
 * @returns The Social object
 *
 *
 */
-(Social *)linkUserTwitterAccount:(NSString *)userName consumerKey:(NSString*)consumerKey consumerSecret:(NSString*)consumerSecret accessToken:(NSString*)accessToken accessTokenSecret:(NSString*)accessTokenSecret;

/**
 * Links the User Twitter access credentials to the App User account.
 *
 * @param userName
 *            - Name of the user whose Twitter account to be linked
 * @param accessToken
 *            - Twitter Access Token that has been received after
 *            authorization
 * @param accessTokenSecret
 *            - Twitter Access Token Secret that has been received after
 *            authorization
 *
 * @returns The Social object
 *
 */
-(Social *)linkUserTwitterAccount:(NSString *)userName accessToken:(NSString*)accessToken accessTokenSecret:(NSString*)accessTokenSecret;
/**
 * Updates the Twitter status of the specified user.
 *
 * @param userName
 *            - Name of the user for whom the status needs to be updated
 * @param status
 *            - status that has to be updated
 *
 * @returns The Social object
 *
 *
 */
-(Social *)updateTwitterStatus:(NSString *)userName status:(NSString*)status;
/**
 * Links the User LinkedIn access credentials to the App User account.
 *
 * @param userName
 *            - Name of the user whose LinkedIn account to be linked
 * @param apiKey
 *            - LinkedIn App API Key
 * @param secretKey
 *            - LinkedIn App Secret Key
 * @param accessToken
 *            - LinkedIn Access Token that has been received after
 *            authorization
 * @param accessTokenSecret
 *            - LinkedIn Access Token Secret that has been received after
 *            authorization
 *
 * @returns The Social object
 *
 */
-(Social *)linkUserLinkedInAccount:(NSString *)userName apiKey:(NSString*)linkedInApiKey secretKey:(NSString*)linkedInSecretKey accessToken:(NSString*)accessToken accessTokenSecret:(NSString*)accessTokenSecret;

/**
 * Links the User LinkedIn access credentials to the App User account.
 *
 * @param userName
 *            - Name of the user whose LinkedIn account to be linked
 * @param accessToken
 *            - LinkedIn Access Token that has been received after
 *            authorization
 * @param accessTokenSecret
 *            - LinkedIn Access Token Secret that has been received after
 *            authorization
 *
 * @returns The Social object
 *
 */
-(Social *)linkUserLinkedInAccount:(NSString *)userName accessToken:(NSString*)accessToken accessTokenSecret:(NSString*)accessTokenSecret;

/**
 * Updates the LinkedIn status of the specified user.
 *
 * @param userName
 *            - Name of the user for whom the status needs to be updated
 * @param status
 *            - status that has to be updated
 *
 * @returns The Social object
 *
 */
-(Social *)updateLinkedInStatus:(NSString *)userName status:(NSString*)status;
/**
 * Updates the status for all linked social accounts of the specified user.
 *
 * @param userName
 *            - Name of the user for whom the status needs to be updated
 * @param status
 *            - status that has to be updated
 *
 * @returns The Social object
 *
 */
-(Social *)updateSocialStatusForAll:(NSString *)userName status:(NSString*)status;


/**
 * This function returns a list of facebook friends of the specified user by
 * accessing the facebook account.
 *
 * @param userName
 *            - Name of the user whose Facebook friends account has to be
 *            retrieve
 * @return Social Object
 * @throws App42Exception
 */
-(Social *)getFacebookFriendsFromLinkUser:(NSString *) userName;

/**
 * This function returns a list of facebook friends of the specified user
 * using a given authorization token. To get the friend list here, user
 * needs not to log into the facebook account.
 *
 * @param accessToken
 *            - Facebook Access Token that has been received after authorization
 * @return Social Object
 * @throws App42Exception
 */
-(Social *)getFacebookFriendsFromAccessToken:(NSString *)accessToken;

/**
 *
 * Share binary files on your facebook wall with custom message.
 *
 * @param accessToken
 *            - Facebook Access Token that has been received after
 *            authorization
 * @param name
 *            - name of the file which has to be share.
 * @param filePath
 *            - file path of your local machiene
 * @param message
 *            - Message which has to be post with Link.
 * @return App42Response Object
 * @throws App42Exception
 */

-(App42Response*)facebookPublishStream:(NSString *)accessToken fileName:(NSString*)fileName filePath:(NSString*)filePath message:(NSString*) message;

/**
 *
 * Share your link on facebook based on access token.
 *
 * @param accessToken
 *            - Facebook Access Token that has been received after
 *            authorization.
 * @param link
 *            - Link which has to be post on facebook wall.
 * @param message
 *            - Message which has to be post with Link.
 * @return App42Response Object
 * @throws App42Exception
 */

-(App42Response*)facebookLinkPost:(NSString*)accessToken link:(NSString*)link message:(NSString*) message;

/**
 *
 * Share your link on facebook based on custom image and message.
 *
 *
 * @param accessToken
 *            -Facebook Access Token that has been received after
 *            authorization
 * @param link
 *            - Link which has to be share on facebook.
 * @param message
 *            - Message which has to be share with Link.
 * @param pictureUrl
 *            - Your Thumbnail image url which you want to share on
 *            facebook.
 * @param name
 *            - Name of your File.
 * @param description
 *            - Description about your link.
 * @return App42Response Object
 * @throws App42Exception
 */

-(App42Response*)facebookLinkPostWithCustomThumbnail:(NSString*)accessToken link:(NSString*)link message:(NSString*)message
                                          pictureUrl:(NSString*) pictureUrl fileName:(NSString*)fileName  description:(NSString*) description;

/**
 * Fetch the profile info like profile pic ,facebookID and user name based
 * on facebook access token.
 *
 * @param accessToken
 *            -Facebook Access Token for which Profile Info has to be
 *            fetched.
 * @return App42Response Object
 * @throws App42Exception
 */

-(Social*)getFacebookProfile:(NSString*)accessToken;

/**
 * Get the facebook profile info for the gives IDs
 *
 * @param facebookIds
 *            - facebook id(s) of the user(s) for which facebook profile
 *            info is to fetch.
 * @return Social object
 * @throws App42Exception
 */

-(Social*)getFacebookProfilesFromIds:(NSArray*) facebookIds;

@end
