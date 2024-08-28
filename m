Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE923C54755
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 09:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ahIyNqOYMRlUTy2p3v/Bk39LpoCOKhI3BM/tXSNNa7A=; b=JkoAbC4I4L09A6TND3ik8l2dxm
	6OmM0Rm4tOm7MlNvyqVrKPZDF/VObjXqwFQT0Pi4yOvkS3RzTgzT6Ax0hEU7FzxXhsDhTSaMftYdE
	KalP0ONNZ/tnannIQytigghkmoBDV1Cru9kcO2cBNoPwa5Wmre6XuvdsYKbTKNdBP8JJpT/FtDMgo
	pxJo1NsvhOYGcQ3th9vQT8RwYOZ8hQVxVftSL6RVilXH5JqUkpASVGS9M5R5TFYkynp+EcJVBPvTj
	u2Ndj5T/93BRUdd0V75JEn4WGL5VOp/H3GPxiAM1Lz/Tq7hNAO/Xl38VwtUop1UpvJyxAK2e028Z7
	litcWeHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEh4-0000000EeaU-1jrH;
	Wed, 28 Aug 2024 09:10:22 +0000
Received: from mail-sgaapc01on20721.outbound.protection.outlook.com ([2a01:111:f400:feab::721] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEgE-0000000EeNv-0fZq;
	Wed, 28 Aug 2024 09:09:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DQDdMR6jAiMfIyCVUI7M5DVZv7u1ZZo3IcO2VoAgowAJb2CpziHhVsbdybx8CTJlu+J1nRIqLRCGnRv9Bop0UMVntg/LJ4CHSnFSOPwE95tV8Xw7rQVRg7betqNvVaASH9GD7XY/naWBRgmamPJ5h6Xq50RTfstV1cMzzcjqTFi+Gp3om+A4OqH/R8iaxfxDKXSPncOSY+Mt2Nc89aDhSOy6rCu99aOpXBZrL97kOLgnZrozI/Be/vzyA6bURWxk6c+NQyJ2Dwl5qm7kemZ9UZsgBHIQN6ZgKzXcrV2RWIFYGJd+0oWntBL8ixwVb1kEgZYRqrUY1Dry6wTKbH++FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZgRXmecMfcOQltINsYE862DPHZKPEg2H8QOg0cnx/9M=;
 b=bQBax/ZzNLyJPWr/1fKJVd7Rtvc3Fkac+ZU7/mVQvZMrly9UH+9tOAiLjJv5951zR7e0zn0yLqwRsQDE2yRaxTaPn1TrShDW8gETOvc8OcHiDmurVfAlfTbxZ/f8Fc3MnoeNFl5KhzhJPHbmBqWlCP8G0EnN5L5j4EM991hPciNxthJ8o+Fs3RnZwTQmyvho62ObZ/NxZ0CzZGp6xZgfQC8rEP4KYz0vjWnLbFadBaUkeClrzAeS8hewiOmn4Ce6reVTrpHC9IY/1wEdnsqsRLT+W07ktfKgKFS+EUse20PKBrl8FDdIM9TkUCAXdEFBEZmAlqXplwYy8GFdeQWRrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEYPR03MB6674.apcprd03.prod.outlook.com (2603:1096:101:6b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Wed, 28 Aug
 2024 09:09:22 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%4]) with mapi id 15.20.7875.019; Wed, 28 Aug 2024
 09:09:22 +0000
Message-ID: <157bb276-aae2-488c-8163-367f69c944df@wesion.com>
Date: Wed, 28 Aug 2024 17:09:18 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 0/2] Add Wi-Fi support for Khadas Edge2 and fallback
 compatible for Apple
To: Arend van Spriel <arend.vanspriel@broadcom.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
 Alyssa Rosenzweig <alyssa@rosenzweig.io>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 asahi@lists.linux.dev, Muhammed Efe Cetin <efectn@protonmail.com>
References: <20240828-dts-v13-0-6bff9896d649@wesion.com>
 <7951482c-ee1e-45f4-8753-433a933321b6@broadcom.com>
Content-Language: en-US
From: Jacobe Zang <jacobe.zang@wesion.com>
In-Reply-To: <7951482c-ee1e-45f4-8753-433a933321b6@broadcom.com>
X-ClientProxiedBy: TYCP301CA0016.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:400:381::17) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|SEYPR03MB6674:EE_
X-MS-Office365-Filtering-Correlation-Id: 125f1b4f-8c5c-4f5b-dab1-08dcc7411b1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZVlNdzRUWHlQNVpWeCtCK05oTTVTVUlHR2lMYUpGZmlYeS9yWUdmZ1hHbm41?=
 =?utf-8?B?emdTeDc4NFIwTVNSMUZNT1pxdUY1b0FYbDdBQ0REWVU2WDFRcGVGZ24waTJB?=
 =?utf-8?B?WGFGemFwMWFqcHBWQnZlanVQSG8zYVdLNWJMSnMvTENuVXpzazdMTDc4c2ND?=
 =?utf-8?B?Y1BCLzhsSm5hRnVGRnBYVnIrdUY0Q0k4S3V5YzBnaHIzTkZnS2duODZiRjRj?=
 =?utf-8?B?NkdoOG1MV1VZZ0xMeVBEN1V1djh6TlUwTzdTeEk1VmhxcHhMQWhRcFVzdWtV?=
 =?utf-8?B?RVc0TFJBTGdFYmhBVktzVjN3QXpJRkt4Z2xmdC81N1ZYU3liZWx6QjlwWTk0?=
 =?utf-8?B?MG9PZSt6VGUzMStjZDZseUtWMGYzSGpKNkszUFJ4ZVNOUlhUNWVBNkY2T3cr?=
 =?utf-8?B?Z0MyM2FvWVFYTURnMTJWakNpdE95QjNpQTNaN1J2OGg1ZHorU3QwRzJwTUc0?=
 =?utf-8?B?dkh3RzNjNEllQTdnS2hTODVKb3FpYmhtU0pDV1V3aW5LTjdDRStMcHpvdnA5?=
 =?utf-8?B?SDZWdUhMY0ZWNWFrSDJtOVkxaFZlMjBOQzBzVU1jMXFnK1pvdFhrR3hwZzNR?=
 =?utf-8?B?SGpoK0dVYTY0NUphcHZmSnZzN2lBVlRwSExjeG5UUThKcCtiREYvckF2YkJD?=
 =?utf-8?B?V3B3a1JrZGk4WnNvYjZLYkE5dWhscHd5bXRFd0RQN21ZRlNIeFoySm5yVm0v?=
 =?utf-8?B?R3BGeExTL21HT0VoWWxucXJSU1JoQmNQN0dRMEtCWE50RmJiaEEyb0VBS3Ji?=
 =?utf-8?B?ZnpjNjBzaXc4Q1UyRlc3b2RobFlHelZZSkRqdDRPQUFkQytoclZWNHNmNEF6?=
 =?utf-8?B?UGtFdUFSTTU5OTJkenBHUjVmTXV5LytWbjJPS3VpTSsyVU5wc1MwRnV2aGJ2?=
 =?utf-8?B?YVR6d2wrT09rd1ZWU2p1Rlp0SDNRS2RwVjNWOXdYYW13cGplbWw4bGVFeDdY?=
 =?utf-8?B?ODZtQjBwWHhudGEyTkZXMy9BTWlkbXI2aE9vdUt2S21YbHVLUjNqeWZjdWYw?=
 =?utf-8?B?NGlzS1JLc1gxd3ExWDVBTDZVZWVta2twMHI4ZXpTOUhLUklWMjdUL1c5Q2xw?=
 =?utf-8?B?UmlSSFdiUXJRcVFuWFlKanZKQjVvNlJnUWlQZWplK0V2MnlJdDR6aVkxdWdw?=
 =?utf-8?B?bHVuRk1yWDkyUmNnbUNBRGh2S2pSUm9kU1F5QTlnb3U1WVVXQWFVOXBGcU9L?=
 =?utf-8?B?QkgwMW1ZMjdYanZEbVpNT3h1cFZtZ2tmbnFOanpwNkVQTGVSUTRQWkhyemZN?=
 =?utf-8?B?dVNUSkhiWUhzWGNGaUVZSUNEV2VaQXFobFlIUWpLSVNVb1ZFTEw1Z3J3Zk1O?=
 =?utf-8?B?TGVYUHJtZUhaQmZIaHdUTjc4OVIxTXZGOU9HQ3F6b01rNmRUNEk0eSt5V2V6?=
 =?utf-8?B?UmtPZG1xN0Z4dUZUSmFFcmhTNmtBNE5pdlhGbCtoOHFOQVR2WDBXYk1DblpY?=
 =?utf-8?B?dktBeUJRRlQ0TElvaGVKWTQ2S2RMVDlUSjBFLzlFTHZVV0lkcHA1SlN5T0xC?=
 =?utf-8?B?TkZ3YmhxRm9YVE1ZQVNIcllOa3MrNUxSVmhEZXl6TkdxZ2VpMEhuOU9RZTY0?=
 =?utf-8?B?Q3dJcW5YK2hFcDhUdzVkR0JkKzI4VDRFM3cxY2JaSkx5WHRPbGZIVlN1ejkv?=
 =?utf-8?B?VlgveTU4MlkzNVlBMWIwMUFvZ3k2QURzV1FGNmc4N2NtQzMydVpDQld2cTBi?=
 =?utf-8?B?UVcrRThyR1FSTC9xelp5TkVLTmhkM3k2MDhHSWo0VW5jeXFLam50cTN5eS9I?=
 =?utf-8?B?bmJWT04wSDVaaWd6TXJJa1dwK2czdElSckd3a3ExUk1xZ2p0Q2VpdDRHVjAz?=
 =?utf-8?B?SWVmTVBlZ2Z2Z0NGQ2FhQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDRIRDd4RXBvM05Dbm1hVVNab1VicFpVMTdwY09QSW12RXZzTU9uQnM4dDlr?=
 =?utf-8?B?RmlZckJWWlFwVVN6ZHppNGgyUmtxZTJNRzRhMGRUVG9waDBGVEU4elp1dmNF?=
 =?utf-8?B?dksrQThpcnhhWGNjRFdRVkFDSHBiR2cwMnFVSDhSckY0VnRWRjcyUWNTdlFS?=
 =?utf-8?B?VkYxSlg2V1h3TFNLYlBYRE5uNFlVS2tFbFlyR1I2emRWeDNKVHpsSnVlOHIr?=
 =?utf-8?B?WFlOaXdvZFBZTGFISTRnOFNLSzNFMmd1RUFueGIwMFJ5c0hrNWg1SDd2b0R4?=
 =?utf-8?B?UGRoQmRsK0t2ZXp0a3RLb1RZTUp2MVNodmV5bUI1MkhYSm5LbzFqYS9taUF2?=
 =?utf-8?B?amRySVdUcjNla1g2dkdiaGJtNVZ0MnkvYm5SaHpCNG8xUk95Q3hjbHV3WlFW?=
 =?utf-8?B?S0tVVGRtM3UwSEpMeTBSRUJIYkNzYWdTb0k1anJDRktWYjVUSStUODkxL3Nj?=
 =?utf-8?B?MlpvanJ2aHl2Q2hYY2dpN3JqWEpTaHcreGovNkh2TVlIQTR3aStrNnlzS244?=
 =?utf-8?B?em1EbkhFUUNXNkhZcVFETEU3UWtsQ2Y3cE5jUC9vdGVvR0RpMy9ISGpjbFRt?=
 =?utf-8?B?V1I0SGppaStGYmxONnFJMWRoMjRvbG1UdzgxbzBJNkl3dmtJbVY5WThtRTN0?=
 =?utf-8?B?ZWRGY2lhUkFhS2lKTy92QURlbndCSjhYZkhMVWxhSlN4VGFwRG9iWi9aejla?=
 =?utf-8?B?WlQyQkY5SUZBM2ZieWI4MUtaQzF6Z2ovbHZCMnJwM3VWWXNRTzh3bmxXWTdJ?=
 =?utf-8?B?VEliaE0yY1p1ZjZoMDd5azRGRlhkdVhZc0ZRcHl0T0RNWkFnWndLWW8wYWhV?=
 =?utf-8?B?RE9tand6Nk9ZVWZZYldUVmdiaE45TG9jY0dkWE9xdjdvSUhGSkE2MmFaTk1a?=
 =?utf-8?B?NGdXSUVtREozc0JPT05obmVaVWxzSGV2Y3Z4RzYxMXpEUytraUsyVW9TNGFZ?=
 =?utf-8?B?b2FhdU0zZ3BUclB5L09XRmpBQ0pDcElMMVZvMFNXTUNIbXJXTFA4Q3RxWGFY?=
 =?utf-8?B?YURUSUdmQ0RmN3BXYllDRGIrUnJ2TWk4ZHBzLzBQS2pySnlpVGNFZWRpL0ZS?=
 =?utf-8?B?OGM3bnp2cHVMR3lPTGoyeldWY2FuZUo5SDZqVWV6aDF4bHZKRXcvL3JzSFY5?=
 =?utf-8?B?VVEzaWppOFltUlJhRERxYVBLOWkySGxkVDVNbEFZVE4zbDQwcnQ4VHJRd2dC?=
 =?utf-8?B?eUFSZ09QbDdWdFZlS0RHVHg2OWhsaERhaFV6YUNUM0VmbDNybGhSWTNaWVph?=
 =?utf-8?B?QXRuVEFSSThhSUxUZ3FTSWRWdWluSTRqaEVFR1lXaXQvT3dVQ1RFditrNVlS?=
 =?utf-8?B?MWZxQnVhaFpiZ1BjckF1dU9MVFFTa3AxUFF3T1pDUFMwN3BmQXA5ZzIwckpi?=
 =?utf-8?B?ZERJU0x3cTcyZnJxVEtnVncxOXFOY1BscGEybGNtOHNFZnNnWEVVRVk3UGEz?=
 =?utf-8?B?NzRGSUY4R1V2Y0hMTis0bUh5UWNrZHBNd0xPeElEdGFVQWQzd29qa1pJeDh0?=
 =?utf-8?B?R1ExM3d6eEw0dEh0VHVjcURMQ0M4Rk9jRzZZM1poUThoOVhGdCtUajJIdnRH?=
 =?utf-8?B?ZTVWQVJ2emdWL0dvOWtkdXMzaFVycURHcjdVa2pteDJmRG5nRnJxdGVrTXVZ?=
 =?utf-8?B?QWFlT3grSlRWMERydGpvTURmclM3NFJTdTBRWi9CU3JMR0owYmFrakloVzF5?=
 =?utf-8?B?Vk9ja3cvNzZwVnJGdUJEa1UrVTl6OTE3YWtDcDRpTXI1d0hoQ2s2WjB3OU5R?=
 =?utf-8?B?cXR5K3FHNWlvd0dKRDBjaVgyeWo0ZnZOdUIwZjZWdnpGRGUyVEZUbHVDdWMx?=
 =?utf-8?B?YktMclFCbE1taUQ0aGllRHFOYktTQzVpMDcxcGpWQVJKQkhYMzhaK2ZSMnBO?=
 =?utf-8?B?MC9YM1hXR3hzMWJ5SERQSVcranljV00zS3d2MDJ4WE9oN0NEdkdvRElxdHpG?=
 =?utf-8?B?MmN2Rm9kVWtiWm9SZXZNMllYK1JJRTNpRWt3TnBlNDV5Q3lJZmpWOTVDWFlY?=
 =?utf-8?B?eVFja3dxVkltRktleUp4MnBmUjJaSFF6QlhhY2gwWU5PRFBWTUU3b3A5cTBB?=
 =?utf-8?B?TnFJZ3EzK25EZUZVcDk1RHNwVVFVc1liUFRtTzRlN1F2QUtFYVpSNitHVVdr?=
 =?utf-8?Q?/cvP+b6DPSCtHiY0FtrqPGdjr?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 125f1b4f-8c5c-4f5b-dab1-08dcc7411b1a
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 09:09:22.1974
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WXvbQyaYdKFRGxF3KFIpiqrSrOIEh3SG0kyx2gmDPV33+wET9qsTFqEgS+TwZTvktwmXgJpzzsmrbqiazce51Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB6674
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_020930_222689_9064D542 
X-CRM114-Status: GOOD (  12.26  )
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

CgpPbiAyMDI0LzgvMjggMTY6NTUsIEFyZW5kIHZhbiBTcHJpZWwgd3JvdGU6Cj4gT24gOC8yOC8y
MDI0IDEwOjQ1IEFNLCBKYWNvYmUgWmFuZyB3cm90ZToKPj4gQWRkIGJhc2ljIFdpLUZpIHN1cHBv
cnQgb24gS2hhZGFzIEVkZ2UyLiBXaXJlbGVzcyBkcml2ZXIgbmVlZCB0byBjaGVjayAKPj4gImJy
Y20sYmNtNDMyOS1mbWFjIgo+PiBjb21wYXRpYmxlIHNvIGFkZCBpdCB0byBBcHBsZSdzIGRldmlj
ZXMuCj4gCj4gRGlkIG5vdCByZWNlaXZlIFtQQVRDSCB2MTMgMi8yXS4gSSBkb24ndCBmb2xsb3cg
ZXZlcnkga2VybmVsIGxpc3QuIE1heWJlIAo+IGdvb2QgdG8gYWRkIGxpbnV4LXdpcmVsZXNzIGxp
c3Q/CgpKdXN0IG5vdyBpbiB5b3VyIHJlcGx5IHNhaWQgdGhlIGNvbXBhdGlibGUgc2hvdWxkIG5v
dCBiZSBhZGRlZC4gU28gMi8yIApwYXRjaCBpcyBhbHNvIGRyb3BwZWQuIE1heWJlIHRoZSBwYXRj
aCBpcyBhYm91dCBEVFMsIHNvIGI0IGRpZG4ndCAKaW5jbHVkZSBsaW51eC13aXJlbGVzcywgbmVl
ZCB0byBiZSBhZGRlZCBtYW51YWxseS4KCj4gCj4gUmVnYXJkcywKPiBBcmVuZAo+IAo+PiBTaWdu
ZWQtb2ZmLWJ5OiBKYWNvYmUgWmFuZyA8amFjb2JlLnphbmdAd2VzaW9uLmNvbT4KPj4gLS0tCj4+
IENoYW5nZXMgaW4gdjEzOgo+PiDCoCAtIENoYW5nZSBwYXRjaCAyLzIgYXJndW1lbnQgZnJvbSBk
cml2ZXIgdG8gYmluZGluZ3MuCgotLSAKQmVzdCBSZWdhcmRzCkphY29iZQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
