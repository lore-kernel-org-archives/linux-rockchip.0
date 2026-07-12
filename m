Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3089C43458
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jul 2026 14:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:To:Subject:Date:Message-ID:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UU/Htxiz++bc7MOvDecW/82K5z4TI/kchT29OE4Y/ik=; b=iAKAhkmNiFztNWAHHyeIo8rJ2h
	pRWH97EyithXo+RTMti/C1L3bcXntHGpiu2RisSyI9q4PKpd40JdsiIFGqgQyuPCCS/0dHpxE3AIH
	kmf0o4gpjFTIWxCOJwmzIdjTwUysWQJWlSqgRjU1VMC8u3gY1yyA+d7bv6Wuw+fHfynAeRr3qvOBi
	mh35hmhISI/0lzoHAKOU8zPPYgmnfy8TxUULXYVuyPx36jVD3cYH3oYJykl/YebfoLp6tSMb5ZzwI
	0ehe+EYikndqaNBt1w8PhqdZ1zXmI1lfSOMOF8EJ2JTIBVi1DJ/u4w4LmcfVnN32tF6Np22fac6LI
	SJRG4dGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wivON-00000007Wz3-1lmN;
	Sun, 12 Jul 2026 14:42:51 +0000
Received: from mail-norwayeastazon11023077.outbound.protection.outlook.com ([40.107.159.77] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wivOK-00000007WxE-3VtN
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Jul 2026 14:42:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lb6QdvzBjobY/YiK805SYexctCwuFfJxSfbydhCEkIwa9AGK8Ujt4oFe9rF/cmFlFpe/X10R8GKtyCnVzl86jXcw+h6dpNt2Lw8E2SJfVUKr4LG1TBCJp+1GnSdCdiAGOtENBSdBQ3CmgPs0ifjv4MIwbX6hDKKrUazi/5qYGyZnCHtTsxM99q+Cjf9jrvFQdvmesMlw8vML9E/Czo8A9lUY+NEapo0VC7XncsE/bnGox1gWf8VQBmFcd7cstCo0eEhfDAc4qlPkCm3yfstOIDNkztHBy0hH7YoeSYcDzyy0nUB9apA6IaqTqRN8Wz8xbvIPVw3EGpjv1nwAmIrQWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BtvoY7X5dbjKlJBN12NcjUVGXl55XtqbuUB5gDirWiU=;
 b=JZ6ODLT9E2dLI5ZfBrgl+uzSjzbrv7u2ISsiJBz0cNM6HgqWaz/uk3Nvt9bWDLmxxQIHC22rmSE0fD8R4z5Wyw8vXKhZm2bfwIQpSBAtxoxWCoHs4RdMCh01bjSMyLml8mqauLhaWRxXD32Sq94G4U+J0vuoHoQFiY4mdYdzlabcou+DR2pBFRV20/Qhmzd6+u2yXIIXVHwYSShHaWmBFjedYu0H2tKn6ctbl1P6h2+4xQMvkV1OPXY95T9eKRzQMoJyeiuM9nhekxLPfH5Z4E4dc2B3HGYbY+WAxTqvxz+0PJHyYEL2chwW8I4nv1ztzaRqUAV5XtQ8l+5L3rAHSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BtvoY7X5dbjKlJBN12NcjUVGXl55XtqbuUB5gDirWiU=;
 b=of1PIQvDxxzPANJu/NrZJXJy4Eq4KPbz9/U1RxemqE+IfJdF3QrhxnoHx967KHFFyklpaEWCxEd8NiNyZiKcQ8IMV3ygPNM+rtJ9XAeu9BKU8HLoPvYDLOLdYRIcGIJ1YIFBdNI2uHHetxlDW3X0MfMigb4POPPTo/GJltZ/W2w=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from GVXPR08MB11763.eurprd08.prod.outlook.com
 (2603:10a6:150:313::16) by DU0PR08MB8277.eurprd08.prod.outlook.com
 (2603:10a6:10:40f::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.23; Sun, 12 Jul
 2026 14:42:41 +0000
Received: from GVXPR08MB11763.eurprd08.prod.outlook.com
 ([fe80::8790:5e3:beb2:5bc6]) by GVXPR08MB11763.eurprd08.prod.outlook.com
 ([fe80::8790:5e3:beb2:5bc6%5]) with mapi id 15.21.0181.019; Sun, 12 Jul 2026
 14:42:41 +0000
Message-ID: <c8034d70-5a26-4254-a0e4-07578cd02fdc@wolfvision.net>
Date: Sun, 12 Jul 2026 16:42:37 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] phy: rockchip: phy-rockchip-inno-csidphy: add
 clock lane phase tuning
To: linux-rockchip@lists.infradead.org
References: <20260630-feature-mipi-csi-dphy-4k60-v3-0-176792ab71fa@wolfvision.net>
 <20260630-feature-mipi-csi-dphy-4k60-v3-3-176792ab71fa@wolfvision.net>
 <21e79fd6-6c72-481c-a7a1-18af94b9cb9a@collabora.com>
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <21e79fd6-6c72-481c-a7a1-18af94b9cb9a@collabora.com>
X-ClientProxiedBy: VI1PR0502CA0014.eurprd05.prod.outlook.com
 (2603:10a6:803:1::27) To GVXPR08MB11763.eurprd08.prod.outlook.com
 (2603:10a6:150:313::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR08MB11763:EE_|DU0PR08MB8277:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e2167fd-b462-4195-c176-08dee023d357
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|23010399003|366016|1800799024|22082099003|4143699003|56012099006|11063799006|18002099003|3023799007|4133799003;
X-Microsoft-Antispam-Message-Info: 5Swao1wHTEy4hAu6pZL77Pr7+c7G9AdCISKU0JSs5qlc5LJXNzmnvDHJnrM5aD5slnilOgMuiE1Lw47u5XGkzNFYel2pPDWsEA0S8M+O2gZYheLCgSkFIV6gmp2ehPlPEcMjXnnzCh2T1FyoknO4MpV4yv0pWa6w9kx8yBMS1w5lR8u6P6DfOh1r2v7Smv0yNzATmKVKJuf8i+j5Aj+BOBt615H61eIi9swLDssVy/IiyS/K6fJXL+pZeitIY3MDlJoWqsIUHWaALKQzo5KpEdCWhNOBMxVfCEkOfDH58iZe6Njv5B10zjvk4OKRSqmgPfcXWK3ozoLXwMloXZZyDtc+6PVgBL2uI+ijtjcqw6+bkYQFdRsXR2g3YMvYLSW2krEWFlMT4Cb7KecvyETxpILxOfSgz6VDfqRmX55GfssOj5r6RXi58gzfr4m+MoiZoDKVRGdBEgWyOdVVgDJRI+28Ei3VRMevwSlolA70nWbbJS64htV5NQ4OIx4IWi0jPOnqgNz5/ObBzrg6hjNzA0kKFyGHGdvo6rwpyJJsa4U9EfOzMcnJv6k2Q10/KrY0dcUNYLPBFbOI3Dk0ypaZW5EYojEvehPfwL+AJOu2xBbHEIE9c/mIaZ7xU9UX37CkCoQNyvZAEc70+t+NVtSjY1z5h86RhPQ0h0a/hThweEE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR08MB11763.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(22082099003)(4143699003)(56012099006)(11063799006)(18002099003)(3023799007)(4133799003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M0F5RWxFTC80dkFNZFR6ekRISE1BeVo1cnB6NEIwT3hVTFJBMDlUeXFhVHg2?=
 =?utf-8?B?YUl5QlV5bnpRRjlzTjlZenhwY3lYeXZvODZmaTNlQmxHMDUzRERvRW5aL0tN?=
 =?utf-8?B?U3VmNVp0bkdMUm5yT2pxOTNtS0lhdVZRVVZ3L0dtRktPa1RsR0ZYRnRjRFNw?=
 =?utf-8?B?Q2F6dnFpa3hQdzEya0F0dGZ3QnAzaVByVnpSdVVzek5rZEN4STBXYWRHZERP?=
 =?utf-8?B?eDAxdVVPa1JLMVI0RDV5VURMcXV5b0w2eERWaVU0YzRjN09WdzNXbk9veDJt?=
 =?utf-8?B?WVIvNThCS20zRUd0bUFBK25hb2pMZ3lsTXhMaDJZTTh3OEZSNHdPT0wwZ2pS?=
 =?utf-8?B?Y3VycFd2cFd5Ris3N3YwTnRra0Z4bFgvYjFZVmRpdFhIS0U2bFFWcEVTWmpo?=
 =?utf-8?B?bExTbCttK2xKRDAyaVM3aTJoU2JrNzgrbFI4akt5bm5NZEwwUTlwYlNaK3ZM?=
 =?utf-8?B?b1VCQjEwT2dxNGh3ZHVqWlpMRUNEeVlWZnZLY2FiaURrOXg3bXVoSVFBNzZ6?=
 =?utf-8?B?Ym1BWWRucC9kbjlzN2J6ZWZ3VllibmVJOUV3bHhRbitMQmpkVjlZdTRsSWNi?=
 =?utf-8?B?QTd6YmhjakdOTnpVZUtsRkx5a05zWmkxb09oR0M1TXZBK2lsMGpha1hXMHRC?=
 =?utf-8?B?S1BhSEFOUFg5azF3aWhPb0hkc21LcEVuS1ltOXNkY0ttS0N1WUVwdDVzcnVO?=
 =?utf-8?B?UHdmeXdvVmVYYmg5Qy9ncFdmeWNFdHNweDNKTWNOSnlVaEJ0UzlBSXVTQmVS?=
 =?utf-8?B?TEM1cWlrZ3YwSFJ6SHdzRW1Cd0M2U1JrMTdnOWx5RlU5RTJ2ZXJ1dzZFdzVw?=
 =?utf-8?B?NlI5VjJQMUhHSkJ4YUwrVnp3Y1VwR0Q5ZHhtTHdoOS9OMWYwaG14T2FDWmtO?=
 =?utf-8?B?VDNaRDhkY29BWG9kbEpsemphWkl0bTJRR3BtWjAyL3JPdnVVY1FXTVUrWFRk?=
 =?utf-8?B?RkhuUnFsSjZ2R3JJc2JjNHVhWE9lSHhaa2VzRm81SHpUczQwQlhnM2hoSW1W?=
 =?utf-8?B?R3F6blM5R0hlS1JPeTEzd0tGTXFCWitUaEh1cUY1bXNIR0tuVzk4ZitTVlhz?=
 =?utf-8?B?Vk13T1hsdkpyZXRzK0hxZkQwbUZ6WkNMTmFHS2lLclRlREt0WmxCbHhCa0V2?=
 =?utf-8?B?VFhkdC9pQWlrQ3FqdWpHVUhITVV4K1UzVWRRaUtMdlRNN0VwelBvcmNmcW9h?=
 =?utf-8?B?Ykk4cWoxdmxTZThsMk9uL3J1Y3UwQWJ6SG1YcEVvY292UHlFZkZpM2ZyOEZX?=
 =?utf-8?B?Rnh6YWI3dVY2UHEwWGNYWENMbjltZFdrN3FCVFRHODc5Y2hJQzNLeE5FVmFM?=
 =?utf-8?B?ZWlQbUZpTWUrKzdybFZ1QlIzVnR6WGhkL294OUFpZWVaWnIxL3M0WVNFWHo0?=
 =?utf-8?B?MW4zd3hpdU1hc3dWYmJLelNUd01kS0xnazVvQk5JWlpjNHh3WkYxZnZDYXNw?=
 =?utf-8?B?T2IzMVhHb2hvUGdseDN5NDJqR0ZOL0dLT2ZmdzJNYThmdktvczhKV0NWb3c4?=
 =?utf-8?B?MVB4Ulo0ZjhmM21mcXRNMWpOME9JOGp5WTVxRlEyQmlySnNRelNvSm9lczFt?=
 =?utf-8?B?SDQydGJoMjZXTUxKMVBmZkdFWGpiV0t5ZzVtNzFueTM2YzFRd2liWW5taW9l?=
 =?utf-8?B?cndhbm8wTlBtTENlZVEzRHJPMnF1dEJuNGV3OGpGbS9QSlJIMUhKRXg4VE1R?=
 =?utf-8?B?Kzg3cHBuTlU5bVdYZHlDTUxKMGg0VW5BbUh3bmdXZGdNQTQwdVZ2NGFaandk?=
 =?utf-8?B?R1Z0TVV1TWZKaUFvSlZuS1hSeUNvcnNOcm9ybE90UDNEZ3hrcmpXZFp5YVow?=
 =?utf-8?B?Z29CNFVEY3BLdHViZWdZR0xEUm8wNGJJRjZPNjFqNE1ZOVJiSngyNUs0MzZG?=
 =?utf-8?B?ckxFM0JsMDVSbTBOMHpmN0d4a2RkdTBGd1VGa0h5RU14N2tpWXJBQ1lPNVll?=
 =?utf-8?B?MFJWNnphbmZCeVJiUVFKdDNscWhzamtlaFI3Mm9mUXRxL1ZGSTBmdzdnTkQz?=
 =?utf-8?B?dWNjUElOMEpxZVNiSGhXclZsaTJwbDkrTDhjNEcwQnAwNGNMdE9tNktlM1RK?=
 =?utf-8?B?Q1dMUFUwWTBSOGx1Qk9qbnZGaDNYSFljY3hkdHYzS0l5ZURGYkx1OVFjY0Zp?=
 =?utf-8?B?QXBRVUwwdXJ2bEp1cTlGeURhQ1NwOUViR29RRFA1emJ6VklSSWdMVkN0Kysv?=
 =?utf-8?B?dG96SGRzVmt1djg4WFpVQTRXM2JLdmFSVkZqZTczUVo3MWk5VHJLaXdZV2JI?=
 =?utf-8?B?Rmd4L3dlZHRpeGV3Ym11ZmZzRUtwblVZZXY0alZZYXluUWpnKzdiS1A2dTVN?=
 =?utf-8?B?Tm1CaGhuaFYxcjBpK3dMRTdrMVJRSE5oVFlGUFcxN2pvMGt3amk5eXFpeTR4?=
 =?utf-8?Q?OrsykL0/P94KXsN8=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e2167fd-b462-4195-c176-08dee023d357
X-MS-Exchange-CrossTenant-AuthSource: GVXPR08MB11763.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2026 14:42:40.8447
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tmd6bAE52D5W7v0k5lG4ZmGEbGAbvIco9BAfaFaDcbyh0q700+WACQITv09RdrvzEGfsChlAU8QYWmUTPkuHq4ryhXr2y5Peha3otf9Pv+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8277
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_074248_902217_F4F067DF 
X-CRM114-Status: GOOD (  29.47  )
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

Hi Michael,

Thanks for your comments and suggestions.

Am 10.07.2026 um 11:31 schrieb Michael Riesch:
> Hi Gerald,
> 
> Thanks for your patch.
> 
> On 6/30/26 09:48, Gerald Loacker wrote:
>> At high data rates like 4K60 (2500 Mbps), such as when using an
>> LT6911GXD bridge chip on an RK3588 board, fixed default timing parameters
>> can cause signal integrity issues and clock-data recovery failures.
>> The driver currently lacks a mechanism to adjust the clock lane sampling
>> phase to compensate for board-specific trace variations.
>>
>> Resolve this by parsing and applying the optional 'rockchip,clk-lane-phase'
>> device tree property. This enables board-specific tuning of the clock
>> lane sampling phase in ~40 ps steps (range 0-7) to optimize link
>> stability. If the property is absent, the driver falls back to the
>> hardware default.
>>
>> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
>> ---
>>  drivers/phy/rockchip/phy-rockchip-inno-csidphy.c | 25 ++++++++++++++++++++++++
>>  1 file changed, 25 insertions(+)
>>
>> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
>> index 5281f8dea0ad3..3a15840e86cad 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
>> @@ -69,6 +69,10 @@
>>  #define RK1808_CSIDPHY_CLK_CALIB_EN		0x168
>>  #define RK3568_CSIDPHY_CLK_CALIB_EN		0x168
>>  
>> +#define CSIDPHY_LANE_CLK_3_PHASE		0x38
>> +#define CSIDPHY_CLK_PHASE_MASK			GENMASK(6, 4)
>> +#define CSIDPHY_CLK_PHASE_DEFAULT		3
> 
> This default value definition is unused right now, but...
> 

ok, I will use this default value in v4

>> +
>>  #define RESETS_MAX				2
>>  
>>  /*
>> @@ -151,6 +155,7 @@ struct rockchip_inno_csidphy {
>>  	const struct dphy_drv_data *drv_data;
>>  	struct phy_configure_opts_mipi_dphy config;
>>  	u8 hsfreq;
>> +	int clk_phase;
>>  };
>>  
>>  static inline void write_grf_reg(struct rockchip_inno_csidphy *priv,
>> @@ -304,6 +309,13 @@ static int rockchip_inno_csidphy_power_on(struct phy *phy)
>>  		rockchip_inno_csidphy_ths_settle(priv, priv->hsfreq,
>>  						 CSIDPHY_LANE_THS_SETTLE(i));
>>  
>> +	if (priv->clk_phase >= 0) {
> 
> ...you can make sure that clk_phase has a valid value in any case (apply
> default value defined above if DT does not define it or defines
> something invalid) and write the register unconditionally.
> 

see below

>> +		val = readl(priv->phy_base + CSIDPHY_LANE_CLK_3_PHASE);
>> +		val &= ~CSIDPHY_CLK_PHASE_MASK;
>> +		val |= FIELD_PREP(CSIDPHY_CLK_PHASE_MASK, priv->clk_phase);
>> +		writel(val, priv->phy_base + CSIDPHY_LANE_CLK_3_PHASE);
>> +	}
>> +
>>  	write_grf_reg(priv, GRF_DPHY_CSIPHY_CLKLANE_EN, 0x1);
>>  	write_grf_reg(priv, GRF_DPHY_CSIPHY_DATALANE_EN,
>>  		      GENMASK(priv->config.lanes - 1, 0));
>> @@ -449,6 +461,7 @@ static int rockchip_inno_csidphy_probe(struct platform_device *pdev)
>>  	struct device *dev = &pdev->dev;
>>  	struct phy_provider *phy_provider;
>>  	struct phy *phy;
>> +	u32 phase;
>>  	int ret;
>>  
>>  	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>> @@ -464,6 +477,18 @@ static int rockchip_inno_csidphy_probe(struct platform_device *pdev)
>>  		return -ENODEV;
>>  	}
>>  
>> +	priv->clk_phase = -1;
>> +	if (device_property_read_u32(dev, "rockchip,clk-lane-phase",
>> +				     &phase) == 0) {
>> +		if (phase >= BIT(3)) {
> 
> if (phase > 7)
> 

Yes, that reads a bit easier.

>> +			dev_err(dev,
>> +				"rockchip,clk-lane-phase %u out of range [0,7]\n",
>> +				phase);
>> +			return -EINVAL;
> 
> Seems a bit harsh. What would you think about printing a warning and
> applying the default value?
> 

Good input, will do that.

>> +		}
>> +		priv->clk_phase = phase;
>> +	}
> 
> Maybe
> 
> 	ret = device_property_read_u32(dev, "rockchip,clk-lane-phase",
> 				       &priv->clk_phase);
> 	if (ret < 0 || priv->clk_phase > 7) {
> 		dev_info(dev,
> 			 "found %s value for rockchip,clk-lane-phase,"
> 			 "assuming default value",
> 			 ret < 0 ? "no" : "invalid");
> 		priv->clk_phase = CSIDPHY_CLK_PHASE_DEFAULT;
> 	}
> 
> would do the trick too?
> 

I would not write the default value to the register in case the property
is not defined in the DTS, just to make sure there is absolutely no
change to existing implementations. If you agree, I will send a v4
including your above comments, but sticking more to the original version.

Best regards,
Gerald

> Best regards,
> Michael
> 
>> +
>>  	priv->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
>>  						    "rockchip,grf");
>>  	if (IS_ERR(priv->grf)) {
>>
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
