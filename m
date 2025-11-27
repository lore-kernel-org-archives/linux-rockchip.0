Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7317CFD2F6
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 15:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ticlNBE7DsNv2a4EBqkVOJAN7ZgcdC2lQA99xDzJk/A=; b=IsUkEU6eicF3QMIs8Otg6iDb1z
	p/YUx+9MR2k/CVyxdNoKYd+0iiArOaG+g4hTUql4ES+cXgUygZFLzXBSjXT5ejg33TwDrxgiY2h/W
	dXZjPg/liIfG5tFHbz6p8B8wWaR5xmrcLro9MhwYsE8fNiWBet1q3gLcw7kuSraYmX4cy7aMjgIRi
	rTDJhQMzJie2JBvArg+1fMpJutdkYFSg+YWTr9+yCtcgbGWi6RI5Bb1JdcM6pnLFOMAp7WirgiAaO
	kM8B3xQeVIf0/21ATdyxPZ8Ru6mpZabWqsKzwQDM7vt4vVzQ4be+WMDAFE9VrqwawZsY8+cGfxGN4
	BQo/fbxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOdoI-0000000Gq7i-3z4j;
	Thu, 27 Nov 2025 15:21:30 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOdoF-0000000Gq78-46jA
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Nov 2025 15:21:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LfNhSHHAdbYx5pthLPK8l8ylUTxtRL3g4ZsdLWgksPGW7VaqqrR+kFIFwx/AQmoxNsiiPJV26RnVjeOuGSz48DoOt5L7oRnupjh/JnvSZB/ylV6LUQ2jjbFZQy6Sc8WAB+qBoTBEMO+AW9FLL4FoQfbiSVbnHM1FTxZwHj9tMCLdBsrPjPM2xMsXHQmNby04S9PWyedfCMYWSsOMx6oeqyca40F+PYljuyIdx3xwxWXzGkQ3Pz0gRYuKWdKUIU8A9N4VTJ7DoMP8tzPgZ1xtPrhNtuRQTUD1cZ8H7FTQYPg5oTNkQHHez4UhAkY6GsFCXFOEgcxAVZhpJH8UJFclfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BoBMxOe3X7/+SMuCryvEspyMzZ4L9RDBd9hS5fc/o9Y=;
 b=A92NPcMEyN+g+aulMsgz2wjUrRYjjPoNlltwZAvgEoQTLXVSo9EV45TyYNBCI4xbQ73oYonXZAsN8yhdVxmll3PZWRYaGUcpPkSLpnnRDfVK0Zgsjnu+9Xv05dmWyI1NYQC7XehymF3co9vPYJRgqCx4lCCy+JZfxXsN5CKhRr8Lu09X1n9Tsoy4CfBR2spj7ZDR5BK0eyW6EKpldouZYZeOY6OsQf+31DcjGjKKXqwun22m8dEXHwG+4TiRSETs8vlT6RKZf74lfY3hWYNiZTsGkvCG26WSZpYgAcagXgRNlHo/IA7+7xN2zpc7F6jdC046+Jwm2UE7DiR4QZUxuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BoBMxOe3X7/+SMuCryvEspyMzZ4L9RDBd9hS5fc/o9Y=;
 b=NDtJW8UOi88aZqGq1JrOGj1tbaxZ4pBu+1gAFOgUtyIXyjpuuVZHQlrnLqN+kXACcL1eZzl9qX/zofsM4W842UJQpAejgA1UYo5wluxPY2VJjqZTxEuGsjWYIW+XtXd1kHWfUIRYCLz2fdRQv/AChosQyTeA1qi8hQ8PtReC728=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by VI2PR04MB10145.eurprd04.prod.outlook.com (2603:10a6:800:22c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 15:21:21 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad%4]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 15:21:19 +0000
Message-ID: <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
Date: Thu, 27 Nov 2025 16:20:56 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 knaerzche@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20251027005220.22298-1-naoki@radxa.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20251027005220.22298-1-naoki@radxa.com>
X-ClientProxiedBy: WA0P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::27) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|VI2PR04MB10145:EE_
X-MS-Office365-Filtering-Correlation-Id: ca900c21-89b8-4275-8f43-08de2dc89da6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a041dFZPeU40dlUxMThXbGU0aGdYR1dVZGVSZGpuZ1QrMGVwcTB5aHgxSlJF?=
 =?utf-8?B?WUVFSE1rWU1HYnR5am5WQ0t0YVVCa21UK3NXRS81Vk1wVDdyemlQYWNTL0tZ?=
 =?utf-8?B?OTlMRlNId2Vxd3lSTFNaZXI4QnJ0aTJhOUxZRUxOVFNHWTRCeVhvVEFzdkxm?=
 =?utf-8?B?bEJLdTlzT05WTmpjNnFONTF2TVNDWk1tYlVOUXE0MmZERE91cnNoc3ZMenZE?=
 =?utf-8?B?cXYrOExYcU5GUjFoYzRTWTdrZ2VDdGl6c3czN2tWMTVrTFRqSCtxa0JoY25j?=
 =?utf-8?B?QzdRNkp6VGNKcStGREdMMHNyTjAyaEd4TFNDRGphODBIcERjYXRnelU2NHBK?=
 =?utf-8?B?T0tHK2U0S3JCRFFFMkJyYVhkNWM3MVFPcHVSZmZuWUx2WUR1elJkMERrRXRy?=
 =?utf-8?B?MEFNdDdSTGNPSld2a1A1c1VKQ1FvbkJyTldTM3lobTVCK1VFZUZvS0JCN3dO?=
 =?utf-8?B?d2tXM205Q3Y0ZDFEYWpnYUFRZ2J1TnBEajVwWXFDUzJOWFZEQnZydXhuTmYx?=
 =?utf-8?B?ZnUzamg1Y2hhY1MvSngyZ2tBU3R4YWRCZDNJSkptQzYrajNha0xnWEhWd2x6?=
 =?utf-8?B?cjRQbTZOc1lreVV0cm13RnlOTEllOEt1YkRTZ0JxVEN6YlMzS2tsYjJIcVpY?=
 =?utf-8?B?M3dLUEpMQzhBTTdqMW5sLzk2N0xEcWd6cDRUbk5vZjhteEtoZmlGV3puOURl?=
 =?utf-8?B?TWIzRmFja0ZabW42VnFId2oyVmdUWFQ5MzBwaEc2Ny9RTkhYZ3NqQ3luNmRt?=
 =?utf-8?B?eXMxcjIzY3VjQVJsL2FXUEppODYrbGlUbkZtTS92bGo2TVlCK011VGZlK2cr?=
 =?utf-8?B?UW9KazRCYVl5cjByTThoMjRvUGxkNmRnRVpuaTh5akdDQWVWbFpVZCthdEZM?=
 =?utf-8?B?VEd0OUw2K3RrMnArTTBDL09BSmk4d2o1bGYyc2NoMTd4RnVtQlFJeUg3Nksr?=
 =?utf-8?B?WEU4YXFrRjdWSjdHNFFRdXdGdGk0OWY3UEZrNGN4NXYvY29KVndOWWxkVExR?=
 =?utf-8?B?T3dTSm9PQXpteXhYMUZ1d1diaEFmaHFPcUFzcEQyQ2JuODhOdjAyYzlTaHc5?=
 =?utf-8?B?ZGNHRnRWSkN3ZDNRajNYK2tOb3l3MjI4azJHZFk3eXZ3RitmN0gvMk5qWi9Y?=
 =?utf-8?B?UHdRN3dZSXZiYTJmTFVCZDFXN3IxU1FnRGVpcVZ6WUlvdjRFVmwzNHl3Ukd2?=
 =?utf-8?B?eXo4ZS9qREVXd3kvOGJRaWhMTnV3WG56aGJwWnA2cVRRajY5K0FvRnRHQXRG?=
 =?utf-8?B?akw3MGRwNUxiaTQyUnltMHVQbElScWdHbzlpcWJLWjdOSVNCYkx0VmpIOGZi?=
 =?utf-8?B?SDdJbWlMZHdzWHFnQlROT3V6YVk3ci9STUdCQWwwOTZzaW5zd0hQRkpTZWZi?=
 =?utf-8?B?WjZPdExVTmYrdHEzVU1NbEVBa3BtS2hQOU9PM25RbVlxZTZBZDl6d3QwY2pi?=
 =?utf-8?B?VEg1RXQ1T0JibjRpUXZScjQySi9ZL210aDVKaWZGOTdhOGJmN2RQWUZaR2xX?=
 =?utf-8?B?Sk5FYzh5eDZkUENWSCtHQ2ZIaDBmM29EVXVXSXdLY2lSRENXd205M3A5WDR5?=
 =?utf-8?B?T292d21yYTRwQy9DZllWdDRDS1ZjT0RpUTJsd0tMeXkzQ0oxS1RPSXFad0F6?=
 =?utf-8?B?dVB2a2RTYm4yb0IvcWkzajB0MDZrQUZScnVDblo3OXJOc0hBcFZ2OXhvSkk1?=
 =?utf-8?B?NnhDSnFPbGFESEI2WDdONkJVKzAvNDVJSEw2OFpZM0FLNWxxRjQrbjBNK1VM?=
 =?utf-8?B?cUVyU2psRGpTVnlINjN2cXNsQ2JvZVFyNzZEdUhxaTF0bGZ4ZjhJQy83dHZM?=
 =?utf-8?B?N1lZV05IZXRSN3BDRlNyYWU5bkh2ZmdlWGhLenk5OVVtbEJKcTRad0Judy9m?=
 =?utf-8?B?LzFHd1c4dDV0M1FaQ2VoV3U0bWRIdldtaGRBd3I0aWRHVjB5b3htM3lxL2RR?=
 =?utf-8?B?M1MrTHRWKzd2a1YxTE9HVlg3VGpIR1NWcXRyaHB2Z2pZREc3cGdjekdpUWxr?=
 =?utf-8?B?TElQdW5vWXdRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGhlbVU0YlFiTkdESWlnZFBMZlRwN1ZtM05WL0lhN0V4Q2VIVTBJQ0hhZUg5?=
 =?utf-8?B?dFZBanQ1WWRpZXJENTU2V2lMWkYvN3BGeUxXRFIrTDZqZmFlbVBRSkh4dGky?=
 =?utf-8?B?Zk1QdjMzU3BQQ3U5MXF2aFNsTGlNTm56c1djMjJNanR2TDRKaGhwOUJPT1Ux?=
 =?utf-8?B?OFlXdWZqU0NpbEpTOG01Um5sOEJ6bTB3dFkvRnFhN3JIMXlPZnltV3Y2K2sw?=
 =?utf-8?B?UjNpSmtCUWd5UW1ZZkl4VndvbWNpSUt2ZS9Lb25OcTZqbEg4UFQydldqY0pX?=
 =?utf-8?B?SEl6THd6VU50SFB3cHBGSkI1YnoxS2p3SVk2aUZpUlJTeHcvQWVScEdrRDZ1?=
 =?utf-8?B?eUd6WWw2M0FBN2lZVlhOZnFhTU5aU1pCZ0lUL3UxQVB6V0hqbFB6Vld1bllO?=
 =?utf-8?B?ME8rdjJadnFOVWRvYW5EV2ZPQjNkMEdhTnNOclhSVzlubWxsclI2anVFVmhl?=
 =?utf-8?B?RzR6Y1FvcUovcnFZcmVmRDhOTWNzWmZGUUtVY1lBeGtueHBqbURRZnFqblc1?=
 =?utf-8?B?MVFEeTk0NTcveTd4akxJNHhJSlZwN09oQStIYlVCd2czSDZ0VGN2VCs5UWYr?=
 =?utf-8?B?NzBDbmhLT3NCcXFPY0g2TjlVbHFTVlMvejVvZEQ2NzZrdkVzeGZFUjVFemp2?=
 =?utf-8?B?aDJNL0NUSG5ScnNwQk9QZWorMzRXMmVjZTZsUEJVa1BkZ1Y5bzE4QTBBNTBi?=
 =?utf-8?B?eklNUlczMHZYaVpvZTdLY0R4a2FlMnk3UUw2bVJmMVNDRjRYSUNlMzgybTNm?=
 =?utf-8?B?Z0pScG9xVVBHV2xDQm5zcWZyQ1RvdDlLZzgwdjdXTFRxTE4xTTczaG81WGJm?=
 =?utf-8?B?emxSMEVHd0NHMkhNSGhST3VxQ0RvQVZHbitQbVlSTUNxZXczNTU4QnRWSDQ2?=
 =?utf-8?B?V1YrSnluVVRiUk1GeHhaeGZZOE9VVStudzI4WEZ0UXk2Rmh0M0c2M1B5ZmNT?=
 =?utf-8?B?WVVlU2hEZ2NjUERCOWQxWHJpMHJNL0MrMDhsYzFaM1l5Q0ZSTGp1ZTZqdFFS?=
 =?utf-8?B?OUNaSDdTdW5aUUhPZjNpUCsxK0c3Z0JMZk1Ockc3UjJWVWdlbHJrU0dCTnB3?=
 =?utf-8?B?U1ZhMnkxZ0JLMUgvY2cybXpreTVkWVk3KytIckp1WmlyVmdmdjM5a3hYOGUr?=
 =?utf-8?B?NlB3bmgrM1czSmg1VFNsNjdNdVVUNEZHRXpoNERLWFF2VDJ2TVgwa3NVOXk2?=
 =?utf-8?B?U0E5QXJxMTRZc3hsKzA4T012ZWlaSEphemJHMnIzdUY1WS9iWHZWMEVXdHh0?=
 =?utf-8?B?czlOa0NXYVdZNDc1WFlJWWtteFNwKzlDeWQ0TVkzcGRvTkxoY2lUUlE3UGZy?=
 =?utf-8?B?eTJ4elFSUCtzZm5YcFgxS1J5RHFzWVZCZVdyd1VNS3Ixa3lmUlNTSldzK21K?=
 =?utf-8?B?Qml2QWp2Q2FRak42M0huWUxVcUZ2U0k5NURkTUR6ZE9nejZVR1ZLc1JSSXky?=
 =?utf-8?B?Y3dCVTR5ZTRDZjYyVS9wVVVnWnhGdG41STdjOUpIKytpME80WXBENzVJRHpS?=
 =?utf-8?B?VC90NndUeGRQeitKVlIzNm54QlZUN2NISWVScUpna2NzbVZZcUhNTmhlZkY2?=
 =?utf-8?B?N3U3YUhHL3BCdi9NSERHNkhvb0taQ3ZmZkpGUXNRL2VBRjJjWjcrMDRLY2th?=
 =?utf-8?B?OVhFNkdkUWh3NFhGSDFyVnR4SEYraEgzZU9oemtWWEZESnczdG04Q2RENGsx?=
 =?utf-8?B?Y1J5eVFLNi84Y0dOZHJyWkNndTh0U1drcmt6cmtqb3Z4c3VjYkV4WFJRaGsv?=
 =?utf-8?B?eE9JckV2SGluVGx0WG1LcnYvbU9uUTVRQUVoNGQrL01iT3JxdkRRV3hpejJZ?=
 =?utf-8?B?VXgxSFRRTDlZb0xzVVlING92a2llMU4wR2xWVXQrd2ZnQkN5M1ducGVEdFhh?=
 =?utf-8?B?SEJBTXBrUnUzQmRkUWI4WmRDL3RPYUlzNHZOdTdacEdIT2R3MVZqbWFKd0Fk?=
 =?utf-8?B?S0FvV0ZKM1BaNERmTGFzMnYrSUE0eVMvK01GNjFQdGRualBSL1hWTVNIbDBx?=
 =?utf-8?B?NW9LQTBIVndKSUhWeW51WUNFUWRaS0lndWR0dGZjcEZscC95VnBpdmNWQ2w4?=
 =?utf-8?B?Y3RZdXVHTkpOTHlQQy9xeW5iY2dweW1NdmF4ajJra3M3SXVDK1VPU3YwalJZ?=
 =?utf-8?B?OFplSXBJSm9KYW1ycEpKZFpkN1R6aS9YNGFrZ1kwTmtkSnlSMHJEak5GVGFr?=
 =?utf-8?B?TXc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: ca900c21-89b8-4275-8f43-08de2dc89da6
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 15:21:19.6197
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iozsg1G37ixV/4qjAV3o55fbo0lGIm0gFeMMVWQyjO0x5zlPX4PEd3Xz+jdernxgJ+/FN9JSgvhECQ2b+yzH7v70n2whpcoZzxErzkeBGzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_072128_052075_4EFC087E 
X-CRM114-Status: GOOD (  11.18  )
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

Hi Naoki,

On 10/27/25 1:52 AM, FUKAUMI Naoki wrote:
> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
> audio-supply for Rock Pi 4").
> 
> Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
> [3][4][5].
> 
> This fixes the SPI-NOR flash probe failure when the blue LED is on[6],
> and the garbled serial console output on Linux.
> 
> The ES8316 headphone and microphone are confirmed to work correctly
> after this fix.
> 
> [1] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4a/ROCK_4A_V1.52_SCH.pdf p.14
> [2] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4ap/radxa_rock_4ap_v1730_schematic.pdf p.14
> [3] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4b/ROCK_4B_v1.52_SCH.pdf p.14
> [4] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4bp/radxa_rock_4bp_v1730_schematic.pdf p.14
> [5] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/ROCK-4-SE-V1.53-SCH.pdf p.14
> 
> [6]
> => led blue:status off
> => sf probe
> SF: Detected w25q128 with page size 256 Bytes, erase size 4 KiB, total 16 MiB
> => led blue:status on
> => sf probe
> jedec_spi_nor flash@0: unrecognized JEDEC id bytes: ff, ff, ff
> Failed to initialize SPI flash at 1:0 (error -2)
> 
> Fixes: 7ebfd4f6b52a6 ("arm64: dts: rockchip: add LED for ROCK Pi 4A/B/C/A+/B+")
> Fixes: 8240e87f16d17 ("arm64: dts: rockchip: fix audio-supply for Rock Pi 4")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

I came to the same conclusion in 
https://lore.kernel.org/linux-rockchip/20251127-rock-pi-4-io-domain-apio5-v1-1-9cb92793f734@cherry.de/ 
(thanks Jonas for letting me know, should have checked before sending 
the revert :/), so

Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

+Cc Heinrich who reported[1] a bug in U-Boot this patch fixes so they 
can give their Tested-by/Reviewed-by if they want to.

[1] 
https://lore.kernel.org/u-boot/e7b7b905-4a6c-4342-b1a5-0ad32a5837cf@gmx.de/

Thanks,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
