Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D682C2BA15
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 07:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L8PJBYlitev6HumILRppgAJorM8en0LnrCN247by78g=; b=hFlUfYeHRukZ+4gaHcwRZD6kv9
	QmCiUMXrfYYiK1RTY0ZK83kxZp4zxIEqp+xKYfrbp7S6Xx0j8t/VMhXY2+zbb18+VRnKAY5q/uPzP
	zTshYbpOnKSFzwiWM5FPYqjboN9oYOW6qfLfRentRvJgwnGnLbLzv23qZuWFXadZ81gRFAt8IUze4
	OxYsxsTQi2jwEXRWeP0J4PDAoOM4THMHgF2WlEld9bRVfAMfqIRCJV+ftlNP38m8np4WiTG36HIxr
	wRI1RAUrdZsrn7WU/mLiim/qDNPeBo1eQR6OYVd7oqTEiPy0NWVTKVRXXqAmgoF+ycR29wz/iERwO
	jW1sm6DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJq11-00000000FkY-3n2O;
	Wed, 19 Jun 2024 07:45:59 +0000
Received: from mail-he1eur04on20712.outbound.protection.outlook.com ([2a01:111:f403:260f::712] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJq0x-00000000FjQ-3o2Q;
	Wed, 19 Jun 2024 07:45:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jmroO0rpqC/+D9A/P30CTf9KhjjllYN7zJ5f0Bo1s/88PB5lHI9LGE/pCRmvWRqb8g+s/Fjf1ZvVb85EDLzWT1L/mW3X6ursAtsxzWw54YXZ/UyFxN5wlgKWNmUGHNdWMyO7m6IXXuK+LUnOuTfGIQY6VlCelEkufH0Sm3+xUguD6VKbtCfBgS73HA4UPWGMn1FhiKkT8J6Ep7K/PhdnFuBcdz4z2MCplGNX04FD8vBukPJWIRZ23mPTvs+Ho3k3cSBa1Ql2VG+12FTXXzvgeeHe367nc4JpMF/mMAXOksllaBQ1ifsnJ7APqSZ9yTvIx37qNUR14nCqqZd+LF5sAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QGe85ViECbRmnepNhmjowAJLyKInoz7lcSR2N944/AE=;
 b=cFZKukAYIWkA+q9uiUcvROdd46qmNBTdOPO65N46/43G0Yq4TDiupirdSvn+fz8iAItv6F98AHAkQKJQGv01aiLt3DB7cdtw5zaVUfBTdt2xz9SDozrL7cqOuv/PlFpBeW/XHAF1YgJ0JTGHf8kSHdBroar0U4iANVEJz3WtI6RRI4VnEbuR4PGEoKUQt8K5rmZMZ1v8S6p9yYrHlS9A4d1N8ijnBWUzT6If+5r1Iudfi36tv1ZXB2iJ7ch3QVLpX5PvL8HZX+2+4ENtkrbu7jas2Ogs1fHi/4MPLcRzJtoKoIoPE7aczCuED+NTiq4ALZdEDjApFaX7rAkiFLwfhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QGe85ViECbRmnepNhmjowAJLyKInoz7lcSR2N944/AE=;
 b=Kytfgaoro47mXXyVhOw5ESyOw08wMoxUhmbuGjzGjFhMoZGcDHwHWOYRqidfPrAotE0CGITYO4siDGp5UeD4qwqiTiF6Hc/Ez3UQm3/cjFlAK7AAKM+3CPOjstaNBMLlOO68PBhF2whPIdZVNrj21j4aDnekroclKqQJN2gI+xk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com (2603:10a6:803:122::31)
 by PAXPR04MB8376.eurprd04.prod.outlook.com (2603:10a6:102:1bf::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Wed, 19 Jun
 2024 07:45:47 +0000
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6]) by VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6%5]) with mapi id 15.20.7698.017; Wed, 19 Jun 2024
 07:45:47 +0000
Message-ID: <19ee521d-298d-4718-bdc6-f282666de371@cherry.de>
Date: Wed, 19 Jun 2024 09:45:44 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/9] Add Mule MFD support
To: Guenter Roeck <linux@roeck-us.net>,
 Quentin Schulz <quentin.schulz@cherry.de>, Jean Delvare <jdelvare@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Peter Rosin <peda@axentia.se>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240618-dev-mule-i2c-mux-v4-0-5462d28354c8@cherry.de>
 <fdeea79f-4568-4e70-9b49-0c02abc91170@roeck-us.net>
 <4f92528b-8311-4c0b-998b-f0221d7bd474@cherry.de>
 <c2803eed-b4f4-44cf-a7f7-9557d05e798e@roeck-us.net>
Content-Language: en-US
From: Farouk Bouabid <farouk.bouabid@cherry.de>
In-Reply-To: <c2803eed-b4f4-44cf-a7f7-9557d05e798e@roeck-us.net>
X-ClientProxiedBy: FR4P281CA0288.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e7::19) To VE1PR04MB6382.eurprd04.prod.outlook.com
 (2603:10a6:803:122::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6382:EE_|PAXPR04MB8376:EE_
X-MS-Office365-Filtering-Correlation-Id: 488620a1-4cdf-4669-8139-08dc9033d4b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|7416011|1800799021|376011|921017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2R0OWNuQktrTUJaV0o4ZjU3WVFVNG5OaWErdW9QRE9HanB4Wm5mTVBwY1FU?=
 =?utf-8?B?UGdhdXVramhPRVo3SkhLZEFDemI2M1phYkFEd2FISE9IR2g3V1dDeStCQVJS?=
 =?utf-8?B?VGlPUDRHV1NBVUNEdmhCNGtKemVSelYvNng3VEREQWpWaTJLUmloMWUyOW1O?=
 =?utf-8?B?MmU4ZUxBMFRLRGpQL2ZWam5leXFidjZXaWtyVDlEaGZ5TjE4c2VjR0F6OU5L?=
 =?utf-8?B?cXJGMVYwc1N2VGtqQll4Q2kycTZjWXhGRXdmOXBmYmNIUDJLSzdMOFhadk92?=
 =?utf-8?B?anNZM2EwZ2tWS1pYZSt2K2ZpQlgxbDBOVDZUVmZROGhRWG1wTDVPWnVwREhE?=
 =?utf-8?B?WnZOc1pjY1l2dWFZT05ycjVnbm04bG1CTHdMNmw0L25Bcm4zREZVN1hKTWo4?=
 =?utf-8?B?WFg5V3VpcURGUjFPWkF6eEpFTzVMRWovTE83WGs3ZmVsbW5zbzJUaDY3UEJO?=
 =?utf-8?B?cDFKdVhYd0ViZVV3eVRkQUhMYlhFNHprYUdzVGE4MUFKbXR6R010ZzlmRVM2?=
 =?utf-8?B?WEREMU1MbDI2Vk14TWNOT1NSZThhc1dvMVdNeEhPNnc3VFRUaU96c21tUFZD?=
 =?utf-8?B?aWV0Ni9FajA4elFFeFFDWGhXZnJoU0dnNVJlR1VoVTlWNmcxM3pBb0ViZW9s?=
 =?utf-8?B?eTFzMjFKMUcrNmRrSitrR2FtMnNqcWw2cURVbC96RDdzODBvVDRWdEtPM3Fj?=
 =?utf-8?B?NlA2U3BubU5yQ1ppNEFwenZTczI0WUZvRTRYUVRHK2dncTRCb0NqeWRYU2xz?=
 =?utf-8?B?ckVCQjNJbUJmcGYzOXZMMHc4ZXhPQnJnOGtCSUR6RzhSaXZiZlBISkxWVHZN?=
 =?utf-8?B?bjlsaVo2aEplRjVSSHFnN0tFblRoV1RlYWVtNVBIODZ3TGhLTUNZZWVodGZn?=
 =?utf-8?B?SXpqT0ExZGdVc0t1bWRlQzJuTGgrNDd4dEpoT1NnRDFCV0Q4ZGcvUjJhOTM1?=
 =?utf-8?B?K1FGeUZ0TWE0dWUrcmhER0RIdmVBY0xPTmRMMG5sNUp6dDIvYnhJdFFyekNr?=
 =?utf-8?B?eEZuZVJ3aHFnUnNtb1ZKWEVjN2VGYlVySlBYNC80M1NjTzBRSXpiQW1YeG53?=
 =?utf-8?B?enJEd1llanVsbisyWXF3cTc3Q0wrUUFCeXlObkhQc293ZElzZ2x0MWduUCs5?=
 =?utf-8?B?bVN2MFhBWXRMTWl4R2dCdUY5V3pjUllISkdnSk51Vk45Rlc5YzRoNDFoalVQ?=
 =?utf-8?B?ak5ZTEZIV3pCVzNwWkxzalJaOVVWR09uNUYxa1hxRG9wWm5VYkk0Q2hrRTkr?=
 =?utf-8?B?Rm05SWpEbFdhNEg3TTJMVGR1bUdBTmY1MlFFMm5nZjFLOEVPYjJIZmlSUks3?=
 =?utf-8?B?V1dZcjIwMkhSdVk1VytNV3hkekJGcjVJQW1xakFPMEhYTWpTNTltUTY5c0pG?=
 =?utf-8?B?c3BqOFV1QUJCdUROQXpqdnByaHR2RGZtY3BoWDVSLzIwZ25QZVRyMm91dWg2?=
 =?utf-8?B?VU9TNkFjeCszODNISk1UVlIvcmpxQnZVc3UvOXMzRWd1TmhyejhBVHRTd3Ez?=
 =?utf-8?B?dnZOSFhPYUdoQnZ5d01rMkl1enZqWThjbmRyMi9iU0paclU1Qk9aTG84V1Uw?=
 =?utf-8?B?d1JDenFHTmlJMU9JaDRIUVZ5dGZZcWdrVWVUUFdMSUNaUmpobjludUVVVFg3?=
 =?utf-8?B?NGlmMEdRcW1lc0RxOGRabkxiWnJyVjFMVFA3TnlJZENmcmFmelpxeUFZdm1v?=
 =?utf-8?B?eXA1RndtWmNqdGtDNE51QUY3QWdHWll1aU91Q1UwN0o1WGhheTRUeUFwcFE2?=
 =?utf-8?B?VnZ1cEp2VWNjcVJRKzRYc2dZZFNMVnB5cE8vV3JoQ1FLVWMxNlVaWTRkMmVi?=
 =?utf-8?Q?RAAOT/1ODlhG8Z/xAsoeVJAGjA19/k6fpUifM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6382.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(366013)(7416011)(1800799021)(376011)(921017);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjR2K0lGNmRlZy9qOHovcXdVZi92NjhUR2k4dHdGT2RNV0lweEt0Y2hQR3VK?=
 =?utf-8?B?M2VJSExDVUpYdW5TZG0vbWJtMklJWWcxb1V0R2tXek9OV3FnME5DdVU4VGJF?=
 =?utf-8?B?ZTFoYkpoaUtkbHZTV25oNy9aU0ZPRDVaQnhMc1d4Y2xCcUIybXhvRE5DWlMy?=
 =?utf-8?B?anB1TlJETzFBVmphbmlDQzJDVE8vSERobEx0ckw2K2VsV2JkUHpDbHJMZUNv?=
 =?utf-8?B?d3cvTTAvWGRBbndwSVBIUHAyWVQyVXNiSmpjUzFLSVFTcjYyVDI5c0hkcmJ1?=
 =?utf-8?B?ZFYrc1VqQkpLajhoQ21oNnRmRG1pSjN6alo4TS9abnRDNzFjQTRrVjgzbENw?=
 =?utf-8?B?Nnl1VWFpSnFVaU16LytLNTZ4U2d1ZWFBblJjeVF1UXRSQytQdDJ3cGtMcytI?=
 =?utf-8?B?WTdDZlNZdDRWRlRiN0VTdzBsT3hFVnlCOC8vTnNPaXFtV2Q0SEpLYmphVFo3?=
 =?utf-8?B?akF5bzhETzZ1ZnAvRkJvRHBUblJmdDUxalBHM21DMmZFc2QzcnUyV1AvaUxN?=
 =?utf-8?B?dmdJcDhpaHRPQWxLYVR0QVZ4SUFLMEoxN0NyOFlGQ0JJcHZKQnZZb0Y1aklC?=
 =?utf-8?B?TnBFWWhpZlBFSit6Y0RjM2cweHNBRjV0ajZVNklNUmZmUENoNHgxazhjRXQ3?=
 =?utf-8?B?cThmb3kxeVBqdE5sWW9NMUovclYzeU1sOEFVVkpqRVMxOVliQzZoSGo1RE5w?=
 =?utf-8?B?Q1lPaG1KY1o0M0pqYzVhVmZTRTRaaWhuVEVQOWZJclJtbFZRKzRQUkxwSzM0?=
 =?utf-8?B?RVNSR2lFRlFjQm5wU3lDQzkwT2s4NUVOV1lQa0tjUm1OODNTVVNtSGdUREFy?=
 =?utf-8?B?SDcrSHVmQTVFS1NuckhaaHFuNXJDZEl5azdWOW5HTnorYyswWWhxY1FFRita?=
 =?utf-8?B?UzErc1JyN3hocU1MRitBTno0aS9YdUVKVXpmME15YkV0cEFZSzdpcmRiK0Jq?=
 =?utf-8?B?RTdSeCs5dlZMK2NidkJPKyszeDJldklmT2Fwb0EyMDFMSFROOElyM2FscVZD?=
 =?utf-8?B?emQ4MHNhKzhVMDlya2hVRDN5L08xeDRvOWcycEI5c2ppdk5RemErWFV5K3lm?=
 =?utf-8?B?WWRQUFJZZm8zcDFGdkVibnd2TGtvd2hNcHZxalh0Yk9ZTWR0eDdTa3p4SUt2?=
 =?utf-8?B?cnhmemVVZ21DeE1pSUVIQzhuTHZkU1dja2YzZWVIdWNMYmlaQkREcXl4QjJk?=
 =?utf-8?B?clZHRGZaU2s3anladGFwcXlEZFZwdWM2dlNKME5ldFZCb2VCKzN0cDB3eUs5?=
 =?utf-8?B?T0x4Zk5iMnRmYytOWkhUN3l2T2U2WDVFRTUvdk82QklIb3JhVTlVck9Hbkhx?=
 =?utf-8?B?RklGZTZYT2FiT0ZORkJIQ05GU24rcGdqVTBJMm9hbWlnN2tVQXhoOEZES2NR?=
 =?utf-8?B?TkRCQlpDci92TU91eUF4TDZSVnhuTXdwbTFOUkdRY0dZWm5MT3QvS210a24x?=
 =?utf-8?B?Z2JnS1VkbGlGOUE3dkRPdWJxMlBSZE80aWFtWENobzRIck5UbjJ6L2E1K3Vp?=
 =?utf-8?B?WERRZFkydW04YUM0RjRxdjFqbUZub2ViTnYyVUNKVllRNVJsV00rVGZqSTd4?=
 =?utf-8?B?bGxiZlo2azJhNkRJd1BwMzdmTFlkMXZiUW1FT3p0ZW9ZRlg0V21heUliUis3?=
 =?utf-8?B?L0xJN3pwQ3R0VVg4MlMyWHk2NDh2bHpoZGJwS3dLSXVvcTExMDVLRWxLcmlx?=
 =?utf-8?B?Q0lXc2plMk9BZWQxb0M2SDVPVkJCU2UzMVY0UERvOUJDTEE3LzQrWnlzazJE?=
 =?utf-8?B?Mm5hbXJBUlp6Q2tiR1l5a1d4eUh6eE9VNE9sVy9VR0tFQWpObnFlWlJqMkVO?=
 =?utf-8?B?VngzTzJYdGlNcmt1enVKRUlDRUs4ZWRYNDhKN2dhRThOWThEbzd4WXY5bXd5?=
 =?utf-8?B?WFU0eGZIQ1lKaCt1cmpUZmIvRk4vdVNJMGNnT3VEZE1EeVkweW1wSU52VUhL?=
 =?utf-8?B?Um52VzRPbXUyMUF2NkN3T2p3L0pxcGtHWmIvRnlKZzN0QUhsZTZaMTFFNXVl?=
 =?utf-8?B?MENHTU9GMmwzc1NNLzJEMEFuSWd2ZTE3NG5nbGthTGlRb2J2Q3FOcXIrUjRB?=
 =?utf-8?B?VFFMVzZDZURhdG03ZkhZSmgvOG9jYWtkNGF2eVJSNTUwSERyaW1aeUw4MGNw?=
 =?utf-8?B?VCtBN01WMjdaanNndVNEM25zTTRZcE1GQVhvYit6cm9IOGxVbUtQblptWlps?=
 =?utf-8?B?b1E9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 488620a1-4cdf-4669-8139-08dc9033d4b7
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6382.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2024 07:45:47.0673
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l+CMURJs3y4wjpLWqbsqA+or1ORIFQL87ddUo9Y3DiOmCuKOWSAIdgetlCQ32D5i9QeJdvdOLjRj5pGIvd1BsgXv1c1znH3/iYIcI6/Mo8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8376
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_004555_999032_29E34CD6 
X-CRM114-Status: GOOD (  19.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgR3VlbnRlciwKCk9uIDE4LjA2LjI0IDE5OjMwLCBHdWVudGVyIFJvZWNrIHdyb3RlOgo+IE9u
IDYvMTgvMjQgMDk6NTEsIFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+PiBIaSBHdWVudGVyLAo+Pgo+
PiBPbiA2LzE4LzI0IDY6MjkgUE0sIEd1ZW50ZXIgUm9lY2sgd3JvdGU6Cj4+PiBPbiA2LzE4LzI0
IDA5OjA2LCBGYXJvdWsgQm91YWJpZCB3cm90ZToKPj4+PiBNdWxlIGlzIGFuIE1DVSB0aGF0IGVt
dWxhdGVzIGEgc2V0IG9mIEkyQyBkZXZpY2VzIHdoaWNoIGFyZSByZWFjaGFibGUKPj4+PiB0aHJv
dWdoIGFuIEkyQy1tdXguCj4+Pj4KPj4+PiBUaGUgbXV4IGFuZCBhbWM2ODIxIGNvbWJpbmVkIG1h
a2UgdGhlIE11bGUgbXVsdGktZnVuY3Rpb24gZGV2aWNlIAo+Pj4+IChAMHgxOCkKPj4+Pgo+Pj4K
Pj4+IEkgZG9uJ3QgdGhpbmsgdGhhdCBpcyBhcHByb3ByaWF0ZS4gVGhvc2UgZGV2aWNlcyBzaG91
bGQgYWxsIGhhdmUgCj4+PiBzZXBhcmF0ZQo+Pj4gZGV2aWNldHJlZSBlbnRyaWVzIGFuZCBiZSBt
b2RlbGVkIGFzIGluZGl2aWR1YWwgaTJjIGRldmljZXMuCj4+Pgo+Pgo+PiBJIHRoaW5rIHRoZXJl
IGlzIGEgbWlzdW5kZXJzdGFuZGluZyBhcm91bmQgdGhlIHdvcmRpbmcuIFRoZXkgYWxsIGhhdmUg
Cj4+IHNlcGFyYXRlIGRldmljZXRyZWUgZW50cmllcyBhbmQgdGhleSBhbGwgYXJlIGluZGl2aWR1
YWwgaTJjIGRldmljZXMgCj4+IChmcm9tIHRoZSBQb1Ygb2YgdGhlIGtlcm5lbCwgdGhleSBhbGwg
YXJlIGVtdWxhdGVkIHdpdGhpbiB0aGUgc2FtZSBNQ1UpLgo+Pgo+PiAtIEFNQzY4MjEgb24gYWRk
cmVzcyAweDE4IGZvciByZWdpc3RlcnMgZnJvbSAweDAwIHRvIDB4ZmUuCj4+IC0gTXV4IChwYWdp
bmcsIGhvd2V2ZXIgeW91IHdhbnQgdG8gY2FsbCBpdCkgb24gYWRkcmVzcyAweDE4IGZvciAKPj4g
cmVnaXN0ZXIgMHhmZi4KPj4KPj4gTm90ZSB0aGF0IEFNQzY4MjEgaXMgKiplbXVsYXRlZCoqIGlu
IHRoZSBNQ1Ugc28gdGhpcyBpcyBub3Qgc29tZSBIVyAKPj4gdHJpY2tlcnkgaGVyZS4KPj4KPj4g
VGhpcyBNQ1UgYWxzbyBlbXVsYXRlcyBJU0wxMjA4IG9uIDB4NmYsIGFzIHdlbGwgYXMgYSBQV00g
Y29udHJvbGxlciAKPj4gKG1lcmdlIHJlcXVlc3QgcGVuZGluZykgYW5kIHR3byBzbWFsbCBBVDI0
ICJwcm90b2NvbCIgRUVQUk9Ncywgb24gCj4+IHRoYXQgc2FtZSBhZGRyZXNzLiBUaG9zZSBhcmUg
YmVoaW5kIGEgcGFnaW5nL211eGluZyBtZWNoYW5pc20uIFlvdSAKPj4gYWNjZXNzIElTTDEyMDgg
dGhyb3VnaCBwYWdlIDAsIFBXTSBjb250cm9sbGVyIHRocm91Z2ggcGFnZSAxLCBldGMuLi4KPj4K
Pj4gU28gYmFzaWNhbGx5LCB0aGUgcG9pbnQgaXM6Cj4+IC0gMHgxOCBvbiBpMmMgaXMgbm93IE1G
RCBNdWxlCj4+IMKgwqAgLSB0d28gcGxhdGZvcm0gZGV2aWNlcyBiZWhpbmQgTUZEID0gQU1DNjgy
MSAocmVnIDB4MDAgdG8gMHhmZSkgKyAKPj4gTXV4IChyZWcgMHhmZikKPj4gLSAweDZmIGZvciBk
ZXZpY2VzICJiZWhpbmQiIHRoZSBNdXgKPj4gwqDCoCAtIHBhZ2UgMCBmb3IgZGV2aWNlIGJlaGlu
ZCBhZGFwdGVyIDAKPj4gwqDCoCAtIHBhZ2UgMSBmb3IgZGV2aWNlIGJlaGluZCBhZGFwdGVyIDEK
Pj4gwqDCoCAtIC4uLgo+Pgo+PiBBbGwgb2YgdGhlIGFib3ZlIGFyZSBwYXJ0IG9mIHRoZSBzYW1l
IE1DVS4KPj4KPj4gTXVsZSBNRkQgaXMgYSBzaW1wbGUtbWZkLWkyYyBkZXZpY2Ugd2l0aCBpdHMg
b3duIGRldmljZXRyZWUgZW50cnkuCj4+IENoaWxkIG5vZGVzIG9mIHRoZSBNdWxlIE1GRCBhcmUg
QU1DNjgyMSBhcyBhIHBsYXRmb3JtIGRldmljZSAoYnV0IAo+PiBvcGVyYXRlcyBvdmVyIGkyYykg
YW5kIE11bGUgTXV4LiBUaGF0J3Mgd2hhdCB3YXMgbWVhbnQgYXMgIlRoZSBtdXggCj4+IGFuZCBh
bWM2ODIxIGNvbWJpbmVkIG1ha2UgdGhlIE11bGUgbXVsdGktZnVuY3Rpb24gZGV2aWNlIChAMHgx
OCkiLgo+Pgo+PiBUaGUgTXVsZSBNdXggdGhlbiBjcmVhdGVzIE4gaTJjIGFkYXB0ZXJzIHJlcHJl
c2VudGluZyB0aGUgbXV4L3BhZ2VzLCAKPj4gYWxsIG9mIHRob3NlIGJlaW5nIHJlcHJlc2VudGVk
IGluIERULiBFYWNoIG9mIHRob3NlIGhhdmUgb25lIGRldmljZSAKPj4gb24gYWRkcmVzcyAweDZm
LCBhbGwgcmVwcmVzZW50ZWQgaW4gRFQgYXMgd2VsbC4KPj4KPj4gTm90aGluZyBoaWRkZW4gb3Ig
aGFyZGNvZGVkLCBldmVyeXRoaW5nIGluIERULgo+Pgo+PiBEaWQgSSBtaXNzIHNvbWV0aGluZyBo
ZXJlPwo+Pgo+Cj4gSWYgaXQgaXMgcHJvcGVybHkgZGVmaW5lZCBpbiBkZXZpY2V0cmVlLCB0aGUg
ZW11bGF0ZWQgQU1DNjgyMSBzaG91bGQgYmUKPiBhbiBpMmMgZGV2aWNlLCBwb3NzaWJseSBzaXR0
aW5nIGJlaGluZCBhbiBpMmMgbXVsdGlwbGV4ZXIsIG5vdCBhCj4gcGxhdGZvcm0gZGV2aWNlLgoK
ClRoZSBlbXVsYXRlZCBBTUM2ODIxIGFuZCB0aGUgTXVsZSBJMkMgbXV4IGFyZSBib3RoIHJlYWNo
YWJsZSB1c2luZyBJMkMgCmFkZHJlc3MgKDB4MTgpLCBhbmQgaGVuY2UgdGhlIHVzZSBvZiBNRkQg
YXMgdGhlIG11eCBvbmx5IHVzZXMgb25lIEkyQyAKcmVnaXN0ZXIgdGhhdCBpcyBub3QgdXNlZCBi
eSBBTUM2ODIxLgoKCkNoZWVycywKCkZhcm91awoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
