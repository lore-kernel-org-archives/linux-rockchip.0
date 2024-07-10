Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EEF2C3DA45
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 11:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UGm/MOXw6thJozIBHpq7aqumfAPW+/TpsIrNpu0GDX8=; b=Y4fK9rEfU7Bx/v44x0bl4NUHMx
	oFqwcbwGq4tXX0SQAkGrHcwdxr7AmhbatufL5NZ9luacGADsjsLZO8uf2wnGHZgrPP9/O8GwroTfa
	M5OPMN3o+g+8E0ZGcYUi0nWKnGZbpucrybJ3oA0LJhSGlj7bQJ/q6+LnVRxoq0J32W5dpggBwpoN3
	6XnQLw4EO6rgUy7LWieiuOPYr4Q97vcjaPJ0aUQB245iypaHtuOLrr6GGZ5gou7kIpoEWNQ0Kv7Hp
	P4xfRgKdemiD4S/XAQlVoHi1zfuKOywJPUMXV8tehPvoiMtl8ohKSQaTjZtc2DrLR3Ub8vwuZEVWU
	Tddc/bEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRVxr-0000000AQlB-432N;
	Wed, 10 Jul 2024 11:58:27 +0000
Received: from mail-db8eur05on2070f.outbound.protection.outlook.com ([2a01:111:f400:7e1a::70f] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRVxm-0000000AQjT-2B7k
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jul 2024 11:58:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZmQFPpDocp+/+SUAbJHpB96dswqjn82b+OU4qE80NBvti8JrbR/nX3WgivVnTqD9EXnRFW8nozF2jR36Bngsx7hOeCu+XKohrbErpH/GA5mloiDsCxflzJPsqfHFFLjf/FNGm0r75/KiXrpSXLX6BCQp83ZAXhSOSElcWW8OL/CHX7z4Myoe1DiPbbp6DvRCRBQ6ktLAmbtbk1su177i30tkbgSGA5O76DufJZNDJv8AsdXaUs5Utu+9QkVAPJxmWXlnDSS/39Ck1TLRUSq1hjczTdb65zUWJn2DVU2ll1/9Myl3SHSZe6IIt1+vEewBh5W/pD7B7a/8zUqkrW9tMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eT8lN9CM7Kk4LTwc6XaoD1jifUxPMarTBxEI/UX8ehs=;
 b=kxYTgHortnX3Pkol1+8RYw1FEwVYGOecgvEY2FrWCXZHCDBEw1tasukdZAbzm6V8NhzKyl4OxzL1gqAB57pL9AgeQISKhJX3ynJFBPgIJ87bfZ0bTpDJAQYVQGsualAs/gYgkH9hXfsd6BJHWb0b+DTTiZ1Li01kjew1cr5rc3M2yEH6LgHZ4hRabtgB/qAWtfQS8QjW4ckiUSSHZ7d7IwcDADrgZNuIIdCtAPkXkxuBzS3pM3/eYPT/qUQRM7u+4D7nvFZF61UBTGjh6WD6fgzha8IGUsoIh3wpVX/z4xxqSAN/dDOLMoyCEEPGeWlluOu9naF/08m8OtaeqQaODw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pironex.com; dmarc=pass action=none header.from=pironex.com;
 dkim=pass header.d=pironex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pironexGmbH.onmicrosoft.com; s=selector2-pironexGmbH-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eT8lN9CM7Kk4LTwc6XaoD1jifUxPMarTBxEI/UX8ehs=;
 b=RUhu2P1VqWpCNx2Zx1f4xFfgbaR0NiZpNUskqW+ZWQWy4rPfE3rTwI9VhTzgYPnJ5pd9e79ZWjLD2UfRVSoeKPB3hKi/CuZeqA+wbymQpt+xGTrz6aLsoxqEFMRtiPY1UH1u+sY4TyWQsfONsdgnfb2bgwewdm1Ng8RqZNGUOuY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pironex.com;
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:158::19)
 by PAXPR10MB5782.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:248::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.20; Wed, 10 Jul
 2024 11:58:16 +0000
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd]) by AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd%3]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 11:58:16 +0000
Message-ID: <135a99f7-1fa2-417f-ba35-77629b9a84e9@pironex.com>
Date: Wed, 10 Jul 2024 13:58:14 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi
 for RK356x
To: Diederik de Haas <didi.debian@cknow.org>,
 linux-rockchip@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
 <5414331.Y6POrrGVKo@bagend>
 <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
 <18705891.xBnrSCm06O@bagend>
Content-Language: de-DE, en-US
From: Philipp Puschmann <p.puschmann@pironex.com>
In-Reply-To: <18705891.xBnrSCm06O@bagend>
X-ClientProxiedBy: AM9P193CA0030.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:20b:21e::35) To AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:158::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR10MB3601:EE_|PAXPR10MB5782:EE_
X-MS-Office365-Filtering-Correlation-Id: a5fad655-e756-43d6-5569-08dca0d79511
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bDNWSzc3MzhQdVJWaElLRmhUQ1ZHSjVaaVA5VlRLbUFWNDhWRWwvbG9MQ3NL?=
 =?utf-8?B?dW9kQjJSc0ppN3plaFVXTjN5KzE2ODZGYmYrbFRQTWQ2Y1BCQlVvTDU4bGd5?=
 =?utf-8?B?eTZoOHdWQnlTRzdNekRhRHVwalZKeDkxQmt1cnc0OFMrYlgrdGthcVpQVUQx?=
 =?utf-8?B?Q1J5b2RqUnVnamlBbG9UM0FpdmIyNkM5K0Z6d2xzNTlLcTI4MzBJMGQybVJZ?=
 =?utf-8?B?RDFtQjh5NWZ3SDdSYVF6Vjl5dUdiYjVNMnVMMDdvSkRGM1lYZ3J5aGJYckh0?=
 =?utf-8?B?cDR1ZjdtNW16ajEwR1pMTzA4cU1XTWZ1b0JsOSswbWt6bWhPS1pJbWtWalhW?=
 =?utf-8?B?OVBocmNVWis3cjN3R1pHcEUwUkRKUGM5UlJudFB3blN0R3JaeHpSR01OTjVi?=
 =?utf-8?B?RHlTV1psNXg1UFg0dmVrb0hUTkhhdHlSbUtwMXhTSlRRN3Q1VFJRcUtwazNy?=
 =?utf-8?B?VEt2QkRXOCtyaFFtTERCT0MyR0xialdDNStON0Y1VHZ1UGYxazBvZENIVzJa?=
 =?utf-8?B?eVZURThZTXQ3eldZNldwWGk3VG1RL3M0ZTFRTXY1RkpUY25pZXB0M3FST0NF?=
 =?utf-8?B?bSt0Mm1wVWpZK0plTlYvYkJKUEpDbWhzS2ZvY3lLVnpvMlRsYVpZUjlUN3Fj?=
 =?utf-8?B?eTFLQmFhdlhuQWhuZnl2KytRS3JKdGFzdktCUCtBTkNuV2k2UFQ3bm9rU2xH?=
 =?utf-8?B?aWhyOFA1Nzk0K1BSZkFBWlBVWGUxckkvZmlNeUVrcjMvYnQ2NTdPL3hrYkNo?=
 =?utf-8?B?ZlZMdDYwTzUyQ082SHJVQXloSG5UNkkwaTdvYVBNa1BLdG9XcnNMdU5sR2JQ?=
 =?utf-8?B?TWdyUFNGZ1VPYzRmaVVReEF3aEZyWHRjMGtDUmlyTkJvTmFEV0NTNjlQdlVa?=
 =?utf-8?B?dzVFTUg3RlA2TERUaGZJRXRQWnBOQ3pVR01HMFBSa1FhcEsvbWZXb2g0WXBr?=
 =?utf-8?B?SVlDb2dPaVJZMVZXVUhmdlArMkhaVVBjZExXQnNaZnBibmNQcnF0cU9mellX?=
 =?utf-8?B?bm5JeDJPd252Wmh2NTR2VGhVSGIvbVlSYjQzY3pDd3cyV3Uza3RBS1k3TFhL?=
 =?utf-8?B?SFU1QjllVnh0R2p0RmF5cVFxV0ZVQlpYNjkyS1VnTno0T1NTaTU3dVJ4eFIx?=
 =?utf-8?B?ZlpQTm5PejNQSFRNdXFxa3lOaWFEVHNHT25VeDVnNHRZQ3ZyZEh2RDY0aDAx?=
 =?utf-8?B?bVRjdUJVcXNHSmxFcjNFZHpMaXBnazlwejZmTjBpUURKTDhRcXd1Zjd1OGNP?=
 =?utf-8?B?WTJXdWJ3Z2c0WmRJR3lQOXBpZUxQUHJXZW1NeWNaaXRZSlY0VDJyeFdHODg3?=
 =?utf-8?B?S2cyWVBTOTRxdHN4Nkd2cW1TTk1yeHBsVmFzb1hBeUNKYmdhMlNVQjljcmw3?=
 =?utf-8?B?ZS9WVFFxVGZsUnRxVWNYUXVYMmd6TWloZVU0a2VjcFNRb3hRMFo1NzlBcGVT?=
 =?utf-8?B?ZTF2WjRQR2VWU3dCNEFWMFlITmtYNmFDRE1jSXZZZlVIeWFrclI1aTUwU2lo?=
 =?utf-8?B?bHpadjM5SExmd2dvOWJmRnZlVFpxNGpROXgwUE4xUGV3Q2ROTU9HRUhPNkRa?=
 =?utf-8?B?dDZ4ODRmSXhjakhPbjFSOUw3ZGdodklONHFqRGhSMmRQUWNyc21Vd1NjdVZB?=
 =?utf-8?B?eFJCRWZYSGsvYUh5eVJ5SFBFWlFFT2E0RTNFVHpiQjV4d0ZTRTJiOVRTRnZv?=
 =?utf-8?B?dm0xNEJQTnV2SzhKZTdyVTV0bGxWSXZET1hkS1hBSTA1UGk5MFlEY2pkb2Js?=
 =?utf-8?Q?qzslg6hVQcXV+lXLII=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1cvbk51Tm1uaStwY1lKSzI3c25qblBRaXRvSGp1MGRORXovRmZZVHdXT0RE?=
 =?utf-8?B?RU05TlVRZUZpaTByR09MRU9JTG5xL3ZwMTZzeWhsNFZUdG4rQ0FxQW1sNWtx?=
 =?utf-8?B?elZxRVREbmN5aFJVblVZNWtvM05GdFVKQitVRncwWHVRN043dlJGc3dVUkgv?=
 =?utf-8?B?aUdpZXBQMytOdS9KdVNPcXZFVGlFeTRGUDJPWjlaM2RBSkxTakhQK1g0WUM4?=
 =?utf-8?B?Qko1YjBRTGNjblFDVXdqVWwvenU5R3RvZ2dnVU1SSlFFbnRsc3FYT0lRUkg2?=
 =?utf-8?B?dE94UHNHYkN1Zjl1Qm5YTmhWblI0L0J4KzBSdjJNZm5ENzRVTE03TFFYSC96?=
 =?utf-8?B?amNwaGtDeElVR0xZZ0JjZ3NFOVhEU21HODVQWVBUSGlwTkFPTk1VM1QyY1NH?=
 =?utf-8?B?UmJuZTdGeFM5a082WTJZYXh6ZmtlM3pkTWlPNjJaaHpRNEhJamhHVnl6Z1pF?=
 =?utf-8?B?OEFhdDlhVXJTZEJSSVdoMGxoUmJ3NlRvcWVVendpMUdiSHR0V0tNd1lUQzFU?=
 =?utf-8?B?VThMa3hkUDQ2WW5IRHZkNGVTb29xbzc3QjJLWTdmTmVhdExTTnZsRS92ZExY?=
 =?utf-8?B?ZnJnZzJnZCtYc3NMR1g5YWNURnRodW9pT0E1TkhlUWg2USttS1ZucXBSWVlW?=
 =?utf-8?B?b0hMdkJjeTlFZkNFNTQ2TVlWSXNiUnBSeEhNZXpDbU0yaGpTY25JUWNEelJJ?=
 =?utf-8?B?MUZsTTNiQUZnNXRuSzJHVmhZb3B0NVQ2YjdTSThQMnVEZjRlR3QvTFk5Sklu?=
 =?utf-8?B?YTFoOVNjamRNMkVrazlDeWNRVFU4bWgyaEVqa3Y4TEJ5cHNqb1kzNHVjUGMx?=
 =?utf-8?B?WkwzT1orU0FnQ3hrT1dkdk5OK1h3aE0vOGtFWjRYSGp3ZEM2cFZPekhsRWp2?=
 =?utf-8?B?RGdEN29ieDNWSXppdnc3cnlNSHNteWMvL2ZNNUVQVlVueUFhck9wcVVUSytT?=
 =?utf-8?B?eHlFckx0d2xndktYRHFKZjNQOGxuZzE3R1BNVkUyV1AxV052NEliMCtSOGhi?=
 =?utf-8?B?Rm9FMmxsWmJGcVlBNXJoMFg2RkNGaWZCdE1GL0NnKzhvek90eVNTbUNncEt1?=
 =?utf-8?B?d0FNT2J2am1naUJ4TWEvMUpnQjlXQTZaR0dqd0l4cnBGcC9RbkFyV0dCZnZa?=
 =?utf-8?B?TjlERjQ3bjczZ3FEeUgySW1oMUVSdWxvRTJDRmV6cHBlcXNqY2JUdlJETksy?=
 =?utf-8?B?KzM3RXdaS3N6UEs5cjMyUkE3cEtuMlFuMzJTN0c2cFI5TnV0bXV3MG1Bcy91?=
 =?utf-8?B?cHN1UjhSYjlDZ0cxdHJzUnhzK2lrYVVMdVQwZm9nakJJUmdER3o3S05DVENL?=
 =?utf-8?B?UkovRC9IS2NJWk1jUXdLR3lhcTF1MG9NakxMdVBycmk2R01oNlJUdDFwYUhj?=
 =?utf-8?B?aDZ2RDFvaGI5dGdHYXRENlg1MHNqVHNMRzhld1pPeHpMT0gzWGxSWmoxQVVM?=
 =?utf-8?B?eTEwZ1BjMDhJNFBpLzc0c1ArWmZNM0pOcnhmS1hsUjNiam5HZlprRmhpWDJm?=
 =?utf-8?B?Y2V4Rmd2eHZIMGIyNGNNT0RKS0d4b2hvcXFXTnp4ZkcxMmVVTmZhZDFXMUg5?=
 =?utf-8?B?V2oyUGc2VS8rNVNFTEZCbTYwSUFOb0wreFVZMU15ZkdOSmpMeXM5SmlkeGk1?=
 =?utf-8?B?WjZpYVU5VUNrVUdFd0R3eTVvMUVIdkxZSzM2NFllV0tRcFZuQzN4ZlBmT0R1?=
 =?utf-8?B?YnFhS29MeDJXNnV5R3VUbGF2Z3ZSakUvUmsvb2pnVm5qYVRFa01qbndGWlUx?=
 =?utf-8?B?ZXVFU3lTcXJoSnZORmNVNjZaU3ZwditsSVl6VGs4UFVlT204N3d0WjBWYzdN?=
 =?utf-8?B?TTVldEpuSkNTRHBwb1ZvMDlIY1BmVFU4THJHcXh5MndGa09IR1h5SEdlR0NB?=
 =?utf-8?B?UkhzWDlNcmExVU5FY1lEKzlHVWhiUFU4TE8wSTA2Um4zcFBBY0lWWlZORHNp?=
 =?utf-8?B?c3Z2ZmR5T1Z5K3RnVFhnSUNxVkZYZG5qVkdNQzZUQ01xaFNOZDFyWWhsNElQ?=
 =?utf-8?B?UFdUYlpURC9OMldnVUlkU2NlOXRUWWkremFITWdCSEgyTHFhQUtmdzlWNVFx?=
 =?utf-8?B?dmtVVUh4RG9IWnBzTFBTa25iYVBXUEtXbmo3QTNkTVVyMmZHelkrU05MNU9s?=
 =?utf-8?B?UC8wVTVpOHp4NGp0TFBWVUMrWDI5Z2NyQkVnaWxKTDZsSGFXcDJFTVBHcWdk?=
 =?utf-8?Q?DdlK0canmK1JSohPsJ2nwY+usJh6ByNvQbE1K+lxp5UT?=
X-OriginatorOrg: pironex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5fad655-e756-43d6-5569-08dca0d79511
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2024 11:58:15.9996
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 00aa8e52-eebe-489a-8263-3195e0a468ca
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nqC82EkSRA2xkL6n57aNhpDA3K3KTF2Tb611+RMeS0Z2TmUHyien7Db6hGes2Jq28FhoovS80vz1cRF3aS7TJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR10MB5782
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_045822_612440_F6889A00 
X-CRM114-Status: GOOD (  25.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 10.07.24 um 12:53 schrieb Diederik de Haas:
> Hi Philipp,
> 
> On Wednesday, 10 July 2024 12:20:20 CEST Philipp Puschmann wrote:
>> Am 10.07.24 um 12:02 schrieb Diederik de Haas:
>>> On Wednesday, 10 July 2024 11:33:56 CEST Philipp Puschmann wrote:
>>>> DMA names are required by of_dma_request_slave_channel function that is
>>>> called during uart probe. So to enable DMA for uarts add the names as in
>>>> the RK3568 TRM.
>>>
>>> Setting it on channels without flow control apparently causes issues. See
>>>
>>> https://lore.kernel.org/linux-rockchip/20240628120130.24076-1-didi.debian@
>>> cknow.org/
>> Ah is see. The only problem that i have is to enable/disable dmas by having
>> or not having dma-names properties, where the latter case is followed by
>> kernel error messages. That is very counterintuitive.
> 
> I forgot to link to my follow up patch where I added the property to
> some other Pine64 devices and added a cover letter inviting others to
> add it to other boards too if that seemed appropriate:
> https://lore.kernel.org/linux-rockchip/20240705163004.29678-2-didi.debian@cknow.org/
> 
> Maybe this applies to 'your' board too?
> 
>> Maybe a explicit boolean like dma-broken would be better. That could be
>> set on dtsi level as default and deleted on board dts if wanted.
> 
> That seems to invert the logic, which I believe was considered
> the 'wrong' solution:
> 
> From https://lore.kernel.org/linux-rockchip/18284546.sWSEgdgrri@diego/
>>>> Enabling dma globally can cause some interesting issues, 
>>>> have you tested this fully?
> 
> Maybe there is a better solution; possibly others will respond too.
> 

The reason for the suggested inverted logic was that a minimal fix would be to
provide dma-names on SoC-level dtsi but to explicitly disable dma usage on
SoC-level too, so that there wouldn't be a need to patch all the boards and
keep the current SoC-level behaviour (that uart dma is disabled by default).


>> With such a boolean we could also prevent the misleading
>> "dma-names property of" error message and
>> replace it with a hint that dma is disabled on purpose.
> 
> Given that you're now at least the 4th person trying this, I guess
> a hint 'somewhere' would be beneficial.
> I do not know if the error message itself would be considered misleading
> and if something should be done about that.

The error message itself is okay in the case we actually want to use dma, but
it's misleading if we disable dma on purpose through not providing dma-names.

So i would prefer a explicit enable/disable switch and handle that one before
looking for the dma-names.
> 
> Cheers,
>   Diederik
> 
>>>> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
>>>> ---
>>>>
>>>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
>>>>  1 file changed, 10 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index
>>>> d8543b5557ee..4ae40661ca6a
>>>> 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>> @@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
>>>>
>>>>  		clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
>>>>  		clock-names = "baudclk", "apb_pclk";
>>>>  		dmas = <&dmac0 0>, <&dmac0 1>;
>>>>
>>>> +		dma-names = "tx", "rx";
>>>>
>>>>  		pinctrl-0 = <&uart0_xfer>;
>>>>  		pinctrl-names = "default";
>>>>  		reg-io-width = <4>;
>>>>
>>>> @@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
>>>>
>>>>  		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>>>>  		clock-names = "baudclk", "apb_pclk";
>>>>  		dmas = <&dmac0 2>, <&dmac0 3>;
>>>>
>>>> +		dma-names = "tx", "rx";
>>>>
>>>>  		pinctrl-0 = <&uart1m0_xfer>;
>>>>  		pinctrl-names = "default";
>>>>  		reg-io-width = <4>;
>>>>
>>>> ...
> 

-- 
Philipp Puschmann, M.Sc.
Softwareentwicklung

pironex GmbH
Stangenland 4
18146 Rostock
www.pironex.de

Tel.:   +49 (0) 381 7006 08 44
E-Mail: p.puschmann@pironex.com
Firma:  +49 (0) 381 70 06 08 0
Fax:    +49 (0) 381 49 68 02 77
Web:    http://www.pironex.de

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
