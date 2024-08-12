Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7B98C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 11:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zquHOl8ErHRg0XAjXjdrKHXVx7Z6ixClj5jrZKWu6+M=; b=zqWNfSclnl8FX9ARyNi3C1g3DV
	XvaBSQHQx6/Tpd4CFsZXQ3Z2J2DhE9PiuYTclHeFadV1TtMnTsVVp/CEh6UpIjxRVx8nhARjdCYEl
	3pafKC+RFKANrHzDtAWLW7sg7cBzZTP+MWAr9hqi7vd92WNoVEhMRQ/ytvs8EoUuv+mSy8BA8GtTF
	Yljw1np09BvSCTJcZ2chY2PEednP2SCIus45DEXgUSUSJWr99DLqFtdI7EJN1GY/svzLeQy4BGXoG
	h3bUNDZk9idHznkHfWL1FvxJu01Qjprf0ww7QtHj6o/Utjx22qLhFW252W4MY2Rn5XmxzCZIFQ5d/
	bz2uLxoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdTiF-00000000Bpy-1y9s;
	Mon, 12 Aug 2024 11:59:47 +0000
Received: from mail-db8eur05on20605.outbound.protection.outlook.com ([2a01:111:f400:7e1a::605] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdThc-00000000BhQ-1MVI;
	Mon, 12 Aug 2024 11:59:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dR694GvfR67+F43BQ3Y/SyItd/n74pcuhHhmHJCxybMa6VNAvnTo2Kk7DkjHXy4hvK0JqLmwQy6BKxVczxxwmrICeFqjcinR3oh31tbZsMMdGxMvyWVq0WvbWzqk2zK6MjBa+3zoqK416q4bp9D9M02vy5HG+GipgMGOY3+6QxWn5iU/7tz0GxxXzaK+8YSCWWHfo0MSLClSEzIFa18+rposguW0oT/znUgopDUjp08iLlcF2OcKpcJr80csBqpn++9Zf8rFM26Ol6V09St8thEZSPOUJNUXfFhECIyEDqXqrugNCuamFtIXbaPjS1Xg7tscAVobuhMSU+OMpT5McA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B7f4Ho6HbpQQcJkNsw2k2eLsq40DaFsaqpotmTTGh0I=;
 b=xbdukn9x40CYpYrm5CRPNgvky2EQ7PxM5YhNchWRnR8HRyZSR6maHvPempJbMYQE+S/2Ki/zwAFK1/wQkRJFXeDhXlSJC6PeMN+30MCONDF5T6k6NFR6MGdBsncG4Ver84MZZK28PXGQcK06tPoQutQMs7QQRs+KoXDXGMdD1IijZoaRkxfJDfLS3jAb1cRRTRON6kMgzqafT5VItSGG6sd2T0dTkVc/ITP6Ndtg9FawQ04+QJmCOPAOvTvZO280NvhTIVBjclUrL5zarl96KKzma7yHpxmPBHZRFlm9qUWjIUH1NGRDeo8mVlyH5Uq9tkUzRipBjslb+NXADz12kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B7f4Ho6HbpQQcJkNsw2k2eLsq40DaFsaqpotmTTGh0I=;
 b=QmFSXSly6vQRFTblis+6wJwnBfYXYeQ1VY6S/PY+iuK1tX8HtynlR4F+ZNDWLZJWAKcDQrojmEbkEmJMaeoRAh4wMamIkPXvQtv2urZ5sRECxxQdQ0WIRc4ogDpZ+SOMbV8sEeOsGeZxrda5bHGo/1Q9E7e9R3mmJ3YXHfPgctA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by PAWPR04MB9805.eurprd04.prod.outlook.com (2603:10a6:102:37e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.20; Mon, 12 Aug
 2024 11:59:01 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%3]) with mapi id 15.20.7849.019; Mon, 12 Aug 2024
 11:59:01 +0000
Message-ID: <bd70a54a-ea41-44cc-a971-e9a764a4212c@cherry.de>
Date: Mon, 12 Aug 2024 13:58:57 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/8] hwmon: (amc6821) add support for tsd,mule
To: Krzysztof Kozlowski <krzk@kernel.org>, Guenter Roeck
 <linux@roeck-us.net>, Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
 Jean Delvare <jdelvare@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
 <20240725-dev-mule-i2c-mux-v6-4-f9f6d7b60fb2@cherry.de>
 <5d5c44cd-6320-4fcd-9409-f3fc97bc5389@roeck-us.net>
 <40ff0c23-f037-454c-9d79-05dd72655052@kernel.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <40ff0c23-f037-454c-9d79-05dd72655052@kernel.org>
X-ClientProxiedBy: WA1P291CA0020.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::24) To AM9PR04MB8906.eurprd04.prod.outlook.com
 (2603:10a6:20b:409::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|PAWPR04MB9805:EE_
X-MS-Office365-Filtering-Correlation-Id: af1553be-135a-45f4-c14a-08dcbac6279e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WGhZTkQwNDc0TlRCSXVFSDJvRzAvcHN1NWt2aHlqOEtudmFZOXlpT3pVN1ln?=
 =?utf-8?B?ZVEvN1lodGhBREl1MStrSlNGdk5jWWZ4OVJoVlcvaDhrdzRFUDRLU2Y4WHhj?=
 =?utf-8?B?REZSa2c1cXRVWGN3ZUVGRW9sT09hTXpjTm83aE5SN0tVaGNSazlldDRnbkV5?=
 =?utf-8?B?RmRSMnNwV01yWWMzRTdMVTZsTm9MOEY3bUU3eW53bEVBTkRlV282WmlDY3VT?=
 =?utf-8?B?OXVVUlVsRjNIMTFLRHNnd254WWVMQmhYTHQvWVN1RnR3d3BkL29KZ2VBYjIr?=
 =?utf-8?B?bmZZUWwwNjN1Q0N4a3UxVXdUc2dZbzNPOWxQbmtpS3UxNmxOQ1ZYekI3WnVB?=
 =?utf-8?B?ZjArdUtiNW5RcWtaamIxV2ROTktnVEhEL0hnWjJHV3pIUlJhVHpDYVhqNWpR?=
 =?utf-8?B?UzhqTTRyd1pueVZRWlVkZ09UT2VIbGo3clNaTHFEVmxMME1RRWpFcnMrNnR1?=
 =?utf-8?B?RDBJQjdGVng0ZWpLdk1DdFBML1c4dmlpYjFienFqL1pCMmZwek4rZVdBbVQ4?=
 =?utf-8?B?UUlJSUlTengwd3FJSFgvdy9TMGg5UUs4T3J5U2FzWFFxTXJ2SFB1TDhNWldu?=
 =?utf-8?B?dkVEQ0U0dG1UQWhhcXRCbzZNZVIvRjVnaG1aS2c4RmZDeU9tZmZkQkY0eWZY?=
 =?utf-8?B?Nk1sRDlDT3J2SlV3eWJkUUJrVnMzQ2QxUnpLWTZtNlZkOEJzUXkycW9TQW5X?=
 =?utf-8?B?MWkwVklHZUgxR3k1aExTYnVLMHZnNk8yWGNJTEtidVdzRjJ4ZjFCU29RME11?=
 =?utf-8?B?NUVtVUdad2t4ekVBSis5WjRYZXZYN1BkL2YvWDUvS1J2K3BCaEJzVnVVL05i?=
 =?utf-8?B?dWxlYVFCUU5HTTBvQStsR3ZCK2xQNWxWdnQwdFExWnVNZHVNRWdkNElkR2wy?=
 =?utf-8?B?R2doTUd2SmczbGpTVXo0SCt1b0poRUR2UTdnUjFoT3A3aDhPTno4WEJrUUEv?=
 =?utf-8?B?a0RTWklCTmsrUEx3eWhvTVQvR2NvZnhqM0JQMGtiQWFyVkVGWFBSaGU3a0dh?=
 =?utf-8?B?WmFBcENWRGtHcXRoR1Q3K3VzVXNOSjM3V2tiSnowcnNVOTh2RURNVVdzb01C?=
 =?utf-8?B?RlhYaWZTRDBiQ1NrcklhV3JUZDBwcmdpbStaUzYvdDE2L0JudE9RbzBmYkZX?=
 =?utf-8?B?bGpkR1dCWE42QkNkTE1xRTRpaEc5R015Tk9UWk02ZTF3eGdTRjV4eTNLSExo?=
 =?utf-8?B?S3JDZ3RqQnhpQWVjTXIyajdmbDhDUjdGcW5qQ011enRxOEpHSlF0bC8xVmFh?=
 =?utf-8?B?UnNXY1Z5T2FUcDgwNzdIY2dqKzU4MWJTaDNjLzc1emtJMmh5MnY4ZU53dmxG?=
 =?utf-8?B?eUI2Q2tqQ2JBc0c5ZEdKaGZnLyttSktaTjdWQWxqMUc0VW4rdmNwc2s5MGNX?=
 =?utf-8?B?RWk3a2FCeWxSUlNRVHM0N3NDVWVJMHlKY0h4NDB2TnhueFRWc0c3bmhtYkhh?=
 =?utf-8?B?S1RHSGlrM3N6RzlUR0d3akkyMXkxWE1YU1Fac3k4WnMycyt2QytNVDZPN21M?=
 =?utf-8?B?eEd5TVFZNnB1dFVVOVUxaUZCL0dPdnd2MkVBZXk2S3ozZnlCYXA0QlF6ZzNQ?=
 =?utf-8?B?SEZFS2p1RmhNbWJma0hjeXBkbFIxYnVSQjdZYzJxbXBreHQya2VtTGYwcGpt?=
 =?utf-8?B?RDVFNWh2ODh3RHErWk1RZFVFbEtQREJSVE5GeE9BZ2RlbTFNWUQrdFdQcG5R?=
 =?utf-8?B?N0JSV0ZZSUxmU2dXbGlzV0VXcHpNSXlUeWVzV0FXRklyZXVianJ6RTQwK2Jm?=
 =?utf-8?Q?RbNjIaq3Y5RjnRaIXU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkNPeEt2TjN3WGU4cWtKekFLNEt4blp5VjJJSER5QVQrR0s3VHh5T3R5VGR6?=
 =?utf-8?B?U21EcWRVNVpWbFl1TzRDNWszYlkzeHNBVkFuTEtiL2hJTVI5NmRZNEp3c0t1?=
 =?utf-8?B?bDk3RS9nMituY0ZPN3FxejhLdWNhalNrU2xqZ0xCUDlmTXVsM3pobnp2RlRH?=
 =?utf-8?B?cFVZSy90RkJvVFdLaHZMdXhvMkZYWVVZK2YybW1WbS85M0MzK0x1UlRlVzhs?=
 =?utf-8?B?STlpTjBubWNlRHBzdVRIQ2x5Rm5NeUgzVTI5WFFDMHpic1JuenBDdlVIRDYy?=
 =?utf-8?B?dUxEcXdhejRqQSs0ejc1WDd6bHhDVlhxZ2ZMdFRBcWFKNys5SlZHVGhoaFJM?=
 =?utf-8?B?ZzgvcVliMStlOThrckpuRFhEbnZaRFdSdW5kT3R4S3VCOTR3Y0htUTlTU3Vl?=
 =?utf-8?B?VS9YYldjVWlKUUhxellHNmlYbDNlRHp1aUZBd2dlanBDZHZRSU5wdjBsS0NH?=
 =?utf-8?B?SXNGMCt1UjZxUlhyZzdGVFB4NGZQOUhyUGY0MVU2YzNtaklRUFlIeFNsTU1V?=
 =?utf-8?B?T3RXUVZzcDkxa05pbm93MHBSNDR5ZXZQYmhDd254YW5PL2hxSUp6Q1F1YnJB?=
 =?utf-8?B?T2U3VVh1TzkxN0VPTWUrVVFlcytvaTFKbnhvNGl6Y3pFK3M1YmF3YkZqYjI2?=
 =?utf-8?B?UkpqelRZRU9Ib3c2QlgwWjJmYmpuTy90WFhYSzlpR0U0TmQ0OU95TFFxb0Nx?=
 =?utf-8?B?aWdodDJKZDEzc1Y4MzNsaXFSdEV4Y3FBZk53QXdtRGhWVkJwSG96ZW5YYm9u?=
 =?utf-8?B?Z0U2R0NWN2xrMzFCMkNReG5BcU9iTmU1dGdia2RDNjB5a2ovM29UMzRyNGNr?=
 =?utf-8?B?YkhwUzJMWVNMUEhmcldFbFg1UWY3MzF4eHRES0J6N0g2Ryt1WDc0T1NMOThN?=
 =?utf-8?B?anBsQTVsMzVNZ25lR1h1UnJNRWdNb1ozRHc1Vy9KWkhHaFo2N2pRRFVXMnFC?=
 =?utf-8?B?SHMxN2hlODZwSjY1d0xZa25raEM2Ykd2dGtGc3NML0RIbi9iZmJ6dFMzMmpG?=
 =?utf-8?B?TkNZaEMrNTBuSW56ZVBVZzc4UmFzaUlzMnllRFhpTHFuVUV5QWlXYTR6Q3NZ?=
 =?utf-8?B?WUhhNFIzUWhDTkppS2VGc3ZOVjhObm1Id2tvbGpkbisyWUpmWGxEQ2l5Q1pZ?=
 =?utf-8?B?WkozbWR1TjdsOHNibjhsSEtIbUxOZXNIcHhLY3VwRzI5ZUFUcm1UUGNIRmdS?=
 =?utf-8?B?VFMydWdTZW9Kb3NiNHJWVU5ZY2JlZUJYdmpva2hIVS82WVN2MnhHbHFrblpB?=
 =?utf-8?B?cDdqUDlrb2lJSmdQSWQrM1lESVF5ZzltSDAwODFSeHVqeWFmV1lqZGIrblRG?=
 =?utf-8?B?Ti9nSzlnVHNTV0lMeU9WNUx0RVZiaXZyNVdWajVxWU1BM2lsOEUwTVUvOG1u?=
 =?utf-8?B?ei9DUjFCdW5ZcmpLVHRVd2x6emd5cUpVSVMvUnZ1YTREckZFM0w1T1pkSXVs?=
 =?utf-8?B?U0dGMUZiejh3UWE2VFJWSDFBNlF2SExUMzIvQlV2NjNYVTE3TUdtQVNDaEh0?=
 =?utf-8?B?TElUZXNPdEd1Wm5DQnVZejh0K0hMdHQyYTVuRUVmVXZLMy9lZ2c3eUg4QmNq?=
 =?utf-8?B?VW1HRnB3bkhNYis2RFo0YitBSVg1SzJKZU9nQjlrckdYbVlaWk9pSUdxbTNa?=
 =?utf-8?B?VllsSVh1Q2YwcnMzdHZpeWNSMVdmOHJlVTZDU0NvSDkrSzJOeDd3T2VIdXNv?=
 =?utf-8?B?eUNIaG9GNDk5Tzg1R2RtL0ZLcU5Ic2dOYythZW1yNVcyZkRwdnphQ0d3L1pJ?=
 =?utf-8?B?WUhLaE1wa3EyMXArTktrcmdmU3RqRlUrcW1JWXZMYzYwUkRxZURkOU80T3g1?=
 =?utf-8?B?ckEzb2xSVVM1RmVzbjBNMWkvVlJMYnRHdE9IS3o5alR6eEF0VzhoVTZJSnZ1?=
 =?utf-8?B?WFIrdjg1Y3ZFYVdzMmdnbWVFU1VXVFZNZGVvUVloL0IxdG56UEpaRnc3MVh0?=
 =?utf-8?B?YWhFRldMUG9qbG04OXJ3bmFPY0czVVlNaHJHOXdaSzdJTXg2eFRHZis5OXJN?=
 =?utf-8?B?WHhreWdhWFhkNXNqak1qNS9pajV4cDBWUWt2dHplZmtleVBoeUk5L0RrTFBF?=
 =?utf-8?B?RWNEa20yOExqQWVzYVl5WWljcXUzdG15ZUVBNmlGUXl1ejVzNmZ4TXBzbGpj?=
 =?utf-8?B?Mzd3aE5HRDQ2WFR1MjBZRHRJOWMyUFhxK2FmRHhjNzZZT1BSbmxJaGN4ZXJw?=
 =?utf-8?B?UFE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: af1553be-135a-45f4-c14a-08dcbac6279e
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2024 11:59:01.1885
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4wtcf5J+tZrsmJ+MCVdKhDQQSju82ehg9Ckboa65UPMa0L2pBmNw1RzhZmfwvOdXiETPycKgN9zxKqpBD+oCGKw7l6SOjZGzfx0aXT4RoWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB9805
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_045908_399098_09CBED59 
X-CRM114-Status: GOOD (  19.55  )
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

SGkgS3J6eXN6dG9mLAoKT24gOC8xMi8yNCAxOjM4IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IFtTb21lIHBlb3BsZSB3aG8gcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGRvbid0IG9mdGVu
IGdldCBlbWFpbCBmcm9tIGtyemtAa2VybmVsLm9yZy4gTGVhcm4gd2h5IHRoaXMgaXMgaW1wb3J0
YW50IGF0IGh0dHBzOi8vYWthLm1zL0xlYXJuQWJvdXRTZW5kZXJJZGVudGlmaWNhdGlvbiBdCj4g
Cj4gT24gMzEvMDcvMjAyNCAxNzoxMiwgR3VlbnRlciBSb2VjayB3cm90ZToKPj4gT24gVGh1LCBK
dWwgMjUsIDIwMjQgYXQgMDM6Mjc6NTBQTSArMDIwMCwgRmFyb3VrIEJvdWFiaWQgd3JvdGU6Cj4+
PiBUaGVvYnJvbWEgU3lzdGVtcyBNdWxlIGlzIGFuIE1DVSB0aGF0IGVtdWxhdGVzIGEgc2V0IG9m
IEkyQyBkZXZpY2VzLAo+Pj4gYW1vbmcgd2hpY2ggaXMgYW4gYW1jNjgyMSBhbmQgb3RoZXIgZGV2
aWNlcyB0aGF0IGFyZSByZWFjaGFibGUgdGhyb3VnaAo+Pj4gYW4gSTJDLW11eC4KPj4+Cj4+PiBU
aGUgZGV2aWNlcyBvbiB0aGUgbXV4IGNhbiBiZSBzZWxlY3RlZCBieSB3cml0aW5nIHRoZSBhcHBy
b3ByaWF0ZSBkZXZpY2UKPj4+IG51bWJlciB0byBhbiBJMkMgY29uZmlnIHJlZ2lzdGVyIChhbWM2
ODIxOiByZWcgMHhmZikKPj4+Cj4+PiBJbXBsZW1lbnQgInRzZCxtdWxlIiBjb21wYXRpYmxlIHRv
IGluc3RhbnRpYXRlIHRoZSBJMkMtbXV4IHBsYXRmb3JtIGRldmljZQo+Pj4gd2hlbiBwcm9iaW5n
IHRoZSBhbWM2ODIxLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEZhcm91ayBCb3VhYmlkIDxmYXJv
dWsuYm91YWJpZEBjaGVycnkuZGU+Cj4+PiBSZXZpZXdlZC1ieTogR3VlbnRlciBSb2VjayA8bGlu
dXhAcm9lY2stdXMubmV0Pgo+Pgo+PiBBcHBsaWVkLgo+IAo+IEVoLCB0aGVyZSBpcyB1bmRvY3Vt
ZW50ZWQgZGVwZW5kZW5jeSBvbiBJMkMgaGVyZS4gTmV4dCBoYXMgd2FybmluZwo+IGJlY2F1c2Ug
b2YgdGhpcy4KPiAKCkkgdGhpbmsgeW91IG1lYW50IHRvIGNvbW1lbnQgdGhpcyBvbiAKaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtaTJjLzIwMjQwNzI1LWRldi1tdWxlLWkyYy1tdXgtdjYt
MC1mOWY2ZDdiNjBmYjJAY2hlcnJ5LmRlL1QvI21kYjc5NzZmMWRjMTZmY2UwYjdkYjlhYmVlNmZk
MGIxZmQwYTJlMmJhIAoocGF0Y2ggMyBhbmQgbm90IDQgb2YgdGhlIHNlcmllcykuIFRoaXMgcGF0
Y2ggKDQpIGlzIGZpbmUgb24gaXRzIG93biBJIApiZWxpZXZlLCBubyBkZXBlbmRlbmN5IG9uIGFu
eXRoaW5nIGVsc2UuICh3ZWxsLCBleGNlcHQgaWYgd2UgZXhwZWN0IApiaW5kaW5ncyB0byBiZSBh
YnNvbHV0ZWx5IG1lcmdlZCBiZWZvcmUgdGhlIGRyaXZlcnM/IEkgdGhpbmsgd2hhdCAKbWF0dGVy
cyBpcyB0aGUgRGV2aWNlIFRyZWUgY2hhbmdlcyBtYWtpbmcgdXNlIG9mIHRoZSBuZXcgYmluZGlu
ZyBiZSAKbWVyZ2VkIGFmdGVyIGR0LWJpbmRpbmcgY2hhbmdlcz8pLgoKSSBhZ3JlZSB0aGF0IHRo
ZXJlJ3MgYSBzb21ld2hhdCBub24tb2J2aW91cyBkZXBlbmRlbmN5IGJldHdlZW4gcGF0Y2ggMSAK
YW5kIDMgKHRoZSBkdC1iaW5kaW5ncykgYW5kIDUtOCB3aXRoIGV2ZXJ5dGhpbmcgYmVmb3JlLCB3
ZSBjb3VsZCBoYXZlIAptYWRlIHRoaXMgbW9yZSBleHBsaWNpdC4KCj4gRmFyb3VrLCBwbGVhc2Ug
KmFsd2F5cyBtZW50aW9uKiB0aGUgZGVwZW5kZW5jaWVzIGJldHdlZW4gcGF0Y2hlcy4KPiAKCkkg
d2Fzbid0IGF3YXJlIG9mIHRoYXQgcnVsZSwgbXkgYXBvbG9naWVzIGZvciBub3QgY2F0Y2hpbmcg
dGhpcyBiZWZvcmUgCnVwc3RyZWFtIHN1Ym1pc3Npb24uCgpGb3IgYW55b25lIHdvbmRlcmluZyB0
aGUgcnVsZSBpcyBtYWRlIGV4cGxpY2l0IGhlcmU6Cmh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9j
L2h0bWwvbGF0ZXN0L3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLmh0bWwjc2VwYXJhdGUteW91
ci1jaGFuZ2VzCgoiSWYgb25lIHBhdGNoIGRlcGVuZHMgb24gYW5vdGhlciBwYXRjaCBpbiBvcmRl
ciBmb3IgYSBjaGFuZ2UgdG8gYmUgCmNvbXBsZXRlLCB0aGF0IGlzIE9LLiBTaW1wbHkgbm90ZSDi
gJx0aGlzIHBhdGNoIGRlcGVuZHMgb24gcGF0Y2ggWOKAnSBpbiAKeW91ciBwYXRjaCBkZXNjcmlw
dGlvbi4iCgpRdWVzdGlvbiBhYm91dCBiNCB3b3JrZmxvdyB0aG91Z2guIEkgZW5jb3VyYWdlIHVz
aW5nIGI0IHRvIGF2b2lkIGFzIG1hbnkgCm1pc3Rha2VzIGFzIHBvc3NpYmxlIGFuZCBtYWtlIHRo
ZSB3b3JrZmxvdyBhcyBwYWlubGVzcyBhcyBwb3NzaWJsZS4gSSAKYmVsaWV2ZSBiNCBkb2Vzbid0
IGFsbG93IHlvdSB0byBoYXZlIHBlci1wYXRjaCBub3Rlcywgb25seSBpbiB0aGUgCmNvdmVyLWxl
dHRlci4KYSkgaXMgdGhpcyBkZXBlbmRlbmN5IGxpc3QgaW4gY292ZXItbGV0dGVyIGFjY2VwdGFi
bGUsIG9yCmIpIG5lZWQgdG8gYWRkIGl0IHRvIHRoZSBwYXRjaCBub3RlIChiZWxvdyB0aGUgLS0t
KSwgb3IKYykgY2FuIGFkZCBpdCB0byB0aGUgcGF0Y2ggY29tbWl0IGxvZwoKSSd2ZSBzZWVuIHN1
YnN5c3RlbSBrZWVwIHZYIGNoYW5nZWxvZ3MgaW4gY29tbWl0IGxvZ3MsIGFuZCBzb21lIHdobyBk
byAKbm90IHdhbnQgaXQsIHNvIG1heWJlIHRoZXJlJ3Mgbm8gb25lIHJ1bGUgaGVyZT8KCkNoZWVy
cywKUXVlbnRpbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
