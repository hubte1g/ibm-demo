%windows cmd

#Change to your new directory.
cd C:\Users\Kizmet\Downloads\ibm-demo\apps\swift-test
Make changes to your app code as you see fit. We suggest making sure the app runs locally before you deploy it back to IBM® Bluemix®.

One file you should take note of is the manifest.yml file. When deploying your app back to IBM® Bluemix®, this file is used to determine your application’s URL, memory allocation, number of instances, and other crucial parameters. You can read more about the manifest file in the Cloud Foundry documentation.

#Connect to IBM® Bluemix®.
bluemix api https://api.ng.bluemix.net

#Log in to Bluemix.
bluemix login -u lickteig.joshua@gmail.com -o joshua-demo -s joshua-demo-space
+-------------------------------------------------------------------------------------------------------+
Targeted org joshua-demo
Targeted space joshua-demo-space

API endpoint:   https://api.ng.bluemix.net (API version: 2.44.0)
User:           lickteig.joshua@gmail.com
Org:            joshua-demo
Space:          joshua-demo-space
+-------------------------------------------------------------------------------------------------------+

#Deploy your app to Bluemix. For more information about cf push command, see Uploading your application.
cf push swift-test

#Access your app by entering the following URL into your browser:
joshua-swift-test.mybluemix.net
