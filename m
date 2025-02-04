Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26FE9C02193
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Feb 2025 09:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uL7eGnZTvWR/fEQQAOIn7XblYrTYG4XVH65ycaqz/+Y=; b=nXwS7h1c+Y9cG50blBghJ81cVL
	xzxGLZO7EGxAoMMkn0QPkWUTVm82morVZNmYSlKYUccBaLoyrifAVvtHNN9UqQ7BTGmZstUfdCSoI
	ifdRtJATKTVaz+0RSzLhRda2hmNc27owT4tuBOUoNgFWGRV55K8ScEu0kutVXtzfi6UHl8ayMUMZ0
	iiQnAtWwyeXC0Bl6hx9mb79HbusmoNn/Q1ZdO//Zz55X7FRtRCd/+5rffsA+6KR81aUSiob+TWmO7
	ntKW5cynao6iMZSnIpb+KIU5lvCgRmtjj4VVznnqhTKkvBIJqciEO6i3mkjwmJdURGTeAMGPd8eWN
	JJw+/OCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfEz5-000000000O5-2DKH;
	Tue, 04 Feb 2025 09:12:43 +0000
Received: from mail-db8eur05on20615.outbound.protection.outlook.com ([2a01:111:f403:2614::615] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfEz3-000000000NG-3Ov0
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Feb 2025 09:12:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i05yuBfcE9RDPqaaCmn7YmtvxyOVCLN9qVg+bPKedEvgE4sOsXtVBR5QAiZ7TSoicPWByp/SNwPw/SLCXg04PcHHn2/rf1eR8HbucN/f51V5ACTYotCcDhdgmw3bpSX+s7ckGhtV01Y33T6hJP9ElI4/BZFe3W4u2B/s28UWv9o6HqDvIvuBYH2LizhCI/YyOFMaRqMlov4oN8wE/QE3d1LX6EDTwk+AsYykQbyGcwqcgv0st0I0CSPyaYy8l4MQfuvAm6zhiJzXLi5EWmzQYk65UdA4BRp6xpCC7cxB8jKilKwVouXkBplsO3h8Bpetzq5SA0c774WAYj9LHvPDKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HSAdwMvMBiOOPxArMpF7rCm1Q+NOaoaRx+A2hp31tfc=;
 b=k8r6xUJHzfloZNJNAYwegUbdHdhqXH5u7wU+dlnHIAIjEdjk8S1LS+KNUbae/Po5rdwBUqyF6mNEKyL8yuB/hMc1SVhHS4OfwJlY98AMeAvA8qbluNUZEt0uYhFW8wZuJ9Hy92Uv0POk06B1yFo1PxaQnkeXMB4SyqjYYzkSSNmbDq1Lsa8H3drjWJI+ra8quAygKv2urbsH1j8riCXa0+wR80+tO7Zoy+9czjWYKX4WdRvWh+Na+YHOkFnbFNW2rcPYn95ps9pr0UW3bb+YneYB4AupfCQMuuy7dY53nk9uQtpNw92/LlDn6WgCuchxT4+ZCz2qgAvoMPqtVQC9jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HSAdwMvMBiOOPxArMpF7rCm1Q+NOaoaRx+A2hp31tfc=;
 b=YFVFIA05tn3g2Z0u8VRG3vNZ9EbHBuqXE6F9QUdLnM6jyOTjw6wnW2Bqc3fR5CdcekRHO+SrX7VV76y1eJe0HSHnOUtUIRUgW1mqMHfrhnVayxGnOohgiGiWvGQbenm7Y/6vErv9vWAmBEiJOsYScsjv0wG1LGupIsgl8lQjpu0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by GVXPR04MB10355.eurprd04.prod.outlook.com (2603:10a6:150:1db::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Tue, 4 Feb
 2025 09:12:28 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%3]) with mapi id 15.20.8398.021; Tue, 4 Feb 2025
 09:12:28 +0000
Message-ID: <40c37c4e-b98f-47bf-a4ad-b977be5a6d49@cherry.de>
Date: Tue, 4 Feb 2025 10:12:26 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org
References: <20250130181005.6319-1-macroalpha82@gmail.com>
 <5d0ae245-1ad3-4e3c-9c68-28babc7290a6@cherry.de>
 <DM6PR19MB3722A5CCBF3FBEAC59189642A5E82@DM6PR19MB3722.namprd19.prod.outlook.com>
 <7266daa9-b031-4c45-8711-c4e6e4be7095@cherry.de>
 <MN2PR19MB3728B870175A9568773D9BD0A5F52@MN2PR19MB3728.namprd19.prod.outlook.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <MN2PR19MB3728B870175A9568773D9BD0A5F52@MN2PR19MB3728.namprd19.prod.outlook.com>
X-ClientProxiedBy: FR3P281CA0096.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::8) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|GVXPR04MB10355:EE_
X-MS-Office365-Filtering-Correlation-Id: c4f93b85-6a93-4f67-c357-08dd44fc0bb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZGFLWG9qdGIxMm5XanZ2T2xST0lzTDk0dnhkK1BsdzBKMXpzVWo2M0dzdm9w?=
 =?utf-8?B?bFVyRTVTV3Q4RjBPUnJLZEI4T3lVRysvbkEzeU9la3ZndEJqVGR1a0wzc1lQ?=
 =?utf-8?B?bzF1dGVnZ3Y4UldrNDFoVmZ6V0pPeGRqZVZTQlBGTGRYRm9jNU1uN3N4UERY?=
 =?utf-8?B?Wm5JU2dmeFhDQ1NmVFRvQk9JZ2ZSQ2EwY0YwWU1zcEZuOC9YVExUWEx4bDVS?=
 =?utf-8?B?WU1oMTNHQlBmWk1iM0lFN1JCbG4yc0ZmRlRRNVRRUjQyUDhHbW1yaHhPRGts?=
 =?utf-8?B?L2xLSWp3S3Rqc3hRYktjcnRRMDhFa1REUXVGdUFPZzNFR3ovbDJtRjNzUXc0?=
 =?utf-8?B?a0IrZFN2NlY3K2xQSDljc0dvN09aSjVwU1hIVkFKWUFJUmFQWkh5UzNFOWpP?=
 =?utf-8?B?UzlVOUIxYWFkblNxZmR6UUxTY1BnQVJRMlNwNm9DVVNXTVM4YStwcjlad2Nr?=
 =?utf-8?B?VFMrT1RreDVpcTB0WEZWREVOa0xUTnN1czA0TjM5aTRlcXg5NllGenFMRUxP?=
 =?utf-8?B?Y21xcjArdTV1a1lUaGNiUTZaRkVraGJmT0pMNVBpTWgrTTZmM2ZuSWEzTkcr?=
 =?utf-8?B?b0d4M0o3S0ZsUlo4cjZVbU15QTAwUWRQWHE5Njk2aXo4L1BIOTlFZTFJR3Vo?=
 =?utf-8?B?TFg0VG51ajI0MGVieTVpeHo2VVhqNjdJVFFWTWU5NmZtaE5ya3BXZEV1UDFv?=
 =?utf-8?B?YjBVL3h4Um9QYkdvMkdQbkNZL2RRRkhXTEN1NDU5M3lXdmtSRDNqYnpzM0li?=
 =?utf-8?B?cGFWMEIyczBSdmJtZnBERG8wQnBwMVFZTlZMWjRiZUlMSWxVc2xCUlVuQjhy?=
 =?utf-8?B?bzhaREp2dng2SGVoSkJ3KzM2N1ArSjhlbnNmek1VSWxNNkVKcCtXWjZLaFho?=
 =?utf-8?B?WkpnUzFFN0NXRDJJVGM2T3RoMWRzaUN2U0QzMFQ5VGNZaVgyS3BMZFk3MkNC?=
 =?utf-8?B?QlU5a1hKdjByaUtxNW9RYUZyT0Z2NjJmRzJvcWVIZnVtbGU5YkVKdlVSdzdV?=
 =?utf-8?B?TXlOQjRweTdpbE9IMlRHajNwQlRma2FnM1lQYUxJWStxbzQzbi82T3lTQVBQ?=
 =?utf-8?B?NXNwczJHS2wxQlc0QVd6a0VGRWtFQldhbTgweW9tZzMyR3pMQnRqa0cxUjFI?=
 =?utf-8?B?bmlIdnJaK3lHNE44Y3ZKbjBJYTJ4NEx1LzUvSWhGbVdUd3d1VVFoTVRjRVZG?=
 =?utf-8?B?MXFaanNkYzRZbHNLRWNjU1NSazM5ZGJiT0o5d2cwSGY2aFpQZXpwdXJpVzBB?=
 =?utf-8?B?VTI4VjE5TlRrc2hGKyswcUtUZkZGWHU5ZWhsbFR1dmZoU0J0ZVBsb1dLMjU0?=
 =?utf-8?B?WG5CVzZrWFBseDZuN08wNmN5UmlCVEcxTGM4WE5wSGtQR0pWVUFmMHlPRENE?=
 =?utf-8?B?Rk5PeWJFVjJCT0NLcCszRGFWaDU5M2ExRmlTZ2JBbGtvZXVSdUw1VnJ6ZnNE?=
 =?utf-8?B?dEJBMlQ3bzNEN3k1dEhId1Z2Z2R5ZzBsSEJSTFhTcG9vQnZaTkJCbi94Ynho?=
 =?utf-8?B?b3ZJWDkxOEl0RkFpUUowbm5mWUhrZVVkdHF3RFZYY2lENXA2WmFNNVE1VEE5?=
 =?utf-8?B?MEhPd0Z1aG1LUGtvb3RkTFVpTG5vTGRkY0dPQllYcTh2VTdDbjJHQWJETGdO?=
 =?utf-8?B?eFFnQ0hSbmY0T3ZvL0ZETFJHOFhnM3BjemsyNFNFd3ozZmFjNVZqdkZrOURS?=
 =?utf-8?B?eS9jalQ2TFZuSVc1VjZtMTFzMHRXdjhFd2Q3dGN1N0t0dHFQYWhDU2QrcTM5?=
 =?utf-8?B?MjFLWndWUnZ4NFNCc2ZsVXhMMkxxRS96eFNMdXN4dzRLbzR0YzUzMXNmVnFO?=
 =?utf-8?B?aHZWZmprVW5rWHNnZjIra2JNSHZUc2JhYXZlNld5YU5ET1gyZGxDM1hjTkY1?=
 =?utf-8?Q?IrC67LPfDULsQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YU1rNk03WElSNUZuaTE5NXNlR3dxZlB0dDVwV0o4UGtFN09GZFlxL3VVMXFX?=
 =?utf-8?B?eWdZa0FYczVuTFE1VTV0Nzdmd1Zqb3FOQ3cvK1ZYRUZNYUlIWDdIVU0yVk1m?=
 =?utf-8?B?SUtlU2R4KzZiTjhUbXJ3cnkzbTRTUldYOUw3dWdScXRqQ3BrbEhJSzVHNm84?=
 =?utf-8?B?QmhDZ0JYbzY5MG9aaU1pV2RDMXRzcmFHVUJqT3lWQ0ZHN3lGVlMrVzZJR25l?=
 =?utf-8?B?cTRKR0lENk9lcWNESUhJVDg5SjVkRk9BQVB2em4rM2cyVEo2VlVjR0R0Mm5u?=
 =?utf-8?B?OW5yWk9MRitocHFueWVFVjB3NHY1WVVTemVKVWFXR3NpUWxzQmQ1NU40cm1L?=
 =?utf-8?B?Z2tmVXhmNGJQeUNIR3A3YlA4b2dNbDRlaEYzVG5QeVk2NUFnRGFHSkVCckFW?=
 =?utf-8?B?RURGcnlsV3JoQlNORWszNXFtVTRZOTVEd3dRSTJ1K3l3eTZUQXZCdjNvdzhr?=
 =?utf-8?B?enA3NVhIZUZHZCtjdzdmeCtEQVllN0NweVBtYmNEdVVEdVVCU2ZkUUwzcytQ?=
 =?utf-8?B?OHN3WVJ1eTBuQUpFMGtGeGhPU0VIZnIzSUNVZHB1MndCR1dvT0l6RFZ5d2xP?=
 =?utf-8?B?YnoxMGE4K2pVWTVSSE15K2ErVU5wZ3hYVlhzOUxEZ3JYTFZ4R2JkK0ZHemt2?=
 =?utf-8?B?Mzd5dS82SDFGVjNLbUUxeXcxZkZMeElrMDNKOWdPM3FoWkJVa0NLM2JNVkxR?=
 =?utf-8?B?Q1RSZW04eFUvVHFlUnJ2UFRPYUcxd3RxajNtK2Z0WEh1YnZOeERsZDVLdVl6?=
 =?utf-8?B?Y1lLd2Q4Z2pYRWNac0JmVGUzU0VhSXptY0ZUQlJDWGNQTkNmNVBFRWdpZE5q?=
 =?utf-8?B?T0MvT0RBNFh4NVhMeDhvMHdubFBGSXBXSzg5QnlTMjBzYndkSTJibm9Ib1p6?=
 =?utf-8?B?am1zYTRIQWZBVXlHRmwxZGgyc2JWaENGOExiT3ZPYXBkR2RMbnB2USs5WHAr?=
 =?utf-8?B?QXJDbjhGMTJEdUp6ZDZnd0YyaEtSY2FBVDJ3U0pnM05vc21VNjhSRzJTM0ZN?=
 =?utf-8?B?Ym5sZmtrV2VTMFg2K0JyUUFVamVKK3F6SVZpZ2ZnT2JEaFN1aFZldWFGcDdh?=
 =?utf-8?B?SmlRVUVwV1pPVC9SbnIyRUdVcG56OThuOWptbWp2cjZBeG1CZW5valc3M0h2?=
 =?utf-8?B?Q0ZDOGpyeU9rbVNUUzc3WnczdXFxcnlnaTFubTRYejBxZWFaK0huV0VZc3E5?=
 =?utf-8?B?WXdlNlloVHFjZ3BTNWxmQ21HZjh0R2VSVmdReVZQYjBjNER6dWFSSTRlRU9C?=
 =?utf-8?B?QjRoNXd6TFhKcnpkL0puMmQyekhMZmlyUWpzcURSNTZCby9vZGEzTHhGTERT?=
 =?utf-8?B?MmlENXNlTCtOYkhvWVRQeUNxQXg0cDhDWnltVmtmTzAxakJXbTFpRSs0L1ZG?=
 =?utf-8?B?ZEl6YTNjYUE5cW5xS3dnYlZEb3hweHIrbkVKcE9UNVJON0t3L0JSb0MxT25R?=
 =?utf-8?B?bGtiWG1VSUFGdVdtdkR4WUsvQldiN3JUNE84MTBnNjV1UFdEQmlmYmU1bG5o?=
 =?utf-8?B?ejlhRHo3UTJHZlJobUZTK2IybUIycXdGMDFHTXVYVkdpSlAvWXlGSW9FQU5q?=
 =?utf-8?B?SEM1MUV2cWcxbzI3L1ZxZEUrc29XWlNTakZBdDNPVTEzaFRNK3BXeUYzamJ0?=
 =?utf-8?B?RUZCbHM1ZG1nTElJemMvakw2Ti9TcHQ1NzFHajRVRE5UT0dwZ0JkWjdEeERK?=
 =?utf-8?B?L0loVG9FVVVXVkpTRlgramxieHYveUxUbFFNUWM2UXRmZE9sSTF6Y1FxU2dU?=
 =?utf-8?B?Nld2V2NPOU9nNkN5cURNVG83dTAvZHZrbDkwdXpiSlErQkxXSmdpellmYVM5?=
 =?utf-8?B?ckk4TDdXZEJTV29QeWpZRGpNcVBGem1laG1YK2V2M1krVmlMTzVFaVFhb1Nu?=
 =?utf-8?B?cjBDWkZMcHJ0RUduTXIwSE1IM3JXZnVEdXpTN2M3TDJyT0Y0b1FVK3lWTDQx?=
 =?utf-8?B?T2JoSmRucVpjYTVVQWtPdVpscENUYndnZForbTNuVzZvWVdZR1NCQ0hUZElC?=
 =?utf-8?B?bFJtUzRkR29QZHJQMHg2YlJiM3dva1RiK2h0elVGY1hrQmdOWndUbjhibkl2?=
 =?utf-8?B?K0d2bTdUN01zaUdYd2RjWVVjVXlRUTA5SEVuMFRmc3FCRU9zQm1xcFdKYWVn?=
 =?utf-8?B?RWFoR0lCdnhFd1lIdDdoTTFCZk1jS2tvdXNMN1VxZ0FLS0piM1BqbmxxeU85?=
 =?utf-8?B?d2c9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c4f93b85-6a93-4f67-c357-08dd44fc0bb8
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 09:12:28.0057
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u5NiKeX9yWUQzoEHPhnUW894z2CGrzPyqFuio4TVI9AApd+nedMqBn4AjV51ec8tK1K1fMtCJox7vx7aVD9r+JCo5nUAc+Wx0O28eBFkNf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10355
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_011241_869838_0296B8BD 
X-CRM114-Status: GOOD (  30.15  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chris,

On 2/3/25 10:27 PM, Chris Morgan wrote:
> On Mon, Feb 03, 2025 at 05:32:53PM +0100, Quentin Schulz wrote:
>> Hi Chris,
>>
>> On 1/31/25 5:59 PM, Chris Morgan wrote:
>>> On Fri, Jan 31, 2025 at 05:46:20PM +0100, Quentin Schulz wrote:
>>>> Hi Chris,
>>>>
>>>> On 1/30/25 7:10 PM, Chris Morgan wrote:
>> [...]
>>>>> When Optee is not present or used, the node will trigger a probe
>>>>> that generates a (harmless) message on the kernel log.
>>>>>
>>>>
>>>> And what if we have OP-TEE without this node present, which would be
>>>> possible if we have CONFIG_SPL_ATF_NO_PLATFORM_PARAM set in U-Boot?
>>>>
>>>> I guess we could detect from U-Boot if a TEE is loaded as part of u-boot.itb
>>>> and fixup the DTB otherwise to mark this node as status = "disabled"?
>>>>
>>>
>>> Based on my understanding of how each of these projects communicate
>>> with each other, Optee can only work if you either include both the
>>> Optee node in the firmware AND the reserved memory nodes yourself, or
>>> if you have neither and let U-Boot do it (by including each of these
>>> patches as well as setting the CONFIG_SPL_ATF_NO_PLATFORM_PARAM). So
>>> basically just this node alone is insufficient for it to work today.
>>>
>>
>> Therefore I think we should either have this node defined + the
>> reserved-memory node (with hardcoded address and size if guaranteed to be
>> stable forever) added or nothing.
>>
>> Can we mark a reserved-memory node as "disabled"? If not, then we should
>> rather have nothing at all I believe.
> 
> I honestly would just rather remove this node. The reason I say that is
> while we support Optee with the RK3399, RK3228, the PX30, and the
> RK3588; howver only the RK3588 has the node already populated in Linux.
> 

And we have a product based on PX30 that has OP-TEE OS running without a 
hardcoded node in the DTS, so that's a valid point of comparison to me. 
That seems to justify the deletion to me!

>>
>>> The core issue is that Optee requires you to map the memory as
>>> reserved so that Linux doesn't try to use it. You can either do that
>>> yourself or you can have U-Boot do it automatically. Having the Optee
>>> node in the devicetree makes no sense today unless we also carve out
>>> the memory.
>>>
>>
>> We should patch U-boot to add these nodes to the DT if an OP-TEE OS is
>> passed and either SPL_ATF_NO_PLATFORM_PARAM=y or we cannot detect the OP-TEE
>> nodes in the kernel DT. What do you think?
>>
> 
> We would have to assume some hard coded values in that event as I'm not
> aware of a mechanism to grab them at runtime from Optee except when you
> pass it a device tree. That said I think the concern above where you

Yes, but that would be the same as BL31 for example and an expected side 
effect of using CONFIG_SPL_ATF_NO_PLATFORM_PARAM except if there's a way 
to provide information back from TEE to U-Boot without using the params 
that would be passed by U-Boot to TF-A had we 
CONFIG_SPL_ATF_NO_PLATFORM_PARAM disabled.

> mention "guaranteed to be stable forever" is the problem, as even now
> the current address in the Optee upstream project conflicts with the
> kernel_comp_addr_r in upstream U-Boot, necessesitating one of them be
> changed (I'm attempting to change the Optee one, for what it's worth).
> 

I think it makes more sense to change the load addresses in U-Boot, 
especially since those are just the default values for variables which 
are configurable per board type, per board or even per boot, so it's 
something one would be able to modify without necessarily rebuilding 
anything. Essentially, it's easier to move that around than checking 
which OP-TEE OS version one is booting before providing advice on where 
to load the image? Up to you though, no strong opinion there.

Cheers,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
