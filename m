Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E97DC3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 08:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J2LIrvSJIDxSVl/DA0ACUjXANy6lWd3h13mXJU/h88o=; b=J47YClgN8kZ1uLR9Ga1wM+EaAZ
	Yc7ZyG8iUKpTTg/cUtSDOoVZtuOm6rVBRRMb7laUsN4S+74zoqhD21ExkovDyv0M6Ka0JQy3n5UCC
	L8cU74bkY8Fp7KjBgTm1uROeQbwkCYZGKqqjJjNF+eHa4vNyQIiw1Viv+LSSw0LmcJpAPTYPB47PS
	5s8g7fnxmbnS1oqYlPD6V78hwIS5zwKKj32dcR8CApScgGLJ0v2i6OnMB/S6AaKhaRjYQgRIeF9uI
	81hPmuXJR6OfRpKa/lkaH6Ncd9vxE758P1CvTQwyjDFo+5IEEayIy7gx91IW8yIZDXoRdAlmN7+u9
	fqrPCMwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYLtj-0000000AZax-3lCb;
	Mon, 29 Jul 2024 08:38:27 +0000
Received: from mail-vi1eur02on20700.outbound.protection.outlook.com ([2a01:111:f403:2607::700] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYLtg-0000000AZZW-3hoQ
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jul 2024 08:38:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZyUt/Y5jr5XWa9x7q2hxmaOhMp0SufrXVyc8nHQcOAyKOdoX/avCBVaY6vbMq+GWdNTUnaf6A/S+MnhLwapy7iNus6we7DL0IlyY2q5XLrlJO+mtS3ynFVgfpCKKha/+px+Fdbhbt9+vMMxgBgUjZZ6opPGa+SF5lOCA9aOANkessGpOHs4Cfcch8DTxepOclnD4oPVdMs6lJLBCvVi9eeHJH3/8id2B2XqdhUyHYqwXvr9aUTPPBEYlGnkEZHddwy1IXEhCubc4n7cXWC1QiWTydyZo7Pw5p7XOg3kHe/sYD+jQXvrX7XgFbURXnJbFpCVZude2OKU4/HwZE08y+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1DwLQ8ZGPugGOu+/XquSn6F1E8F+UbCcC583X72dtno=;
 b=I2KWBxMPuoFuwFEIVZWNi+VBITMkmjd7wYUiuz7ikmJTFUk4c+G5/v6iIqAjgsj+UXuWXtz8AiEhahXzwu5GHjdt7O32ILaV41q8gfnmK9rUxDbQgVw91DU0JQwiozQ3td8jh430GsXdknwuK8mBwd2dYJXv03oUnpU8PK43rHass+oloT0csx82bPLz349aIFw+pidfSnA6NBAaEo3uWqpLsDDjvzxvN2lC1cxYr6AEsRWZfqkDIKvD3tFVUdw+LeJHwlww8J3mpd/TpteMBQXylbXEKRLh+XzLR5Lg/ehqEBkixZzV5/Rj42WyjCmNUBz4SadhWzYXJ0B2gpcTdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1DwLQ8ZGPugGOu+/XquSn6F1E8F+UbCcC583X72dtno=;
 b=ApaTtYttzoC+mFFgrNZfG0zn73PAILWGXPGahqom1fSsnAR82ydEbVtTmu0JpDwXT/TYPSRUGB1lq4z3tbLeY1cjzRxOHVpJSVR3rT7iJZGWWvbT1u+Ba1K/thcAcCrDvOD9JdTCd9WfrYZ7d/vHFbWoMtbfLyZITte+6uIFTJY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by VI0PR04MB10341.eurprd04.prod.outlook.com (2603:10a6:800:217::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.24; Mon, 29 Jul
 2024 08:38:10 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%3]) with mapi id 15.20.7784.020; Mon, 29 Jul 2024
 08:38:09 +0000
Message-ID: <8095468b-0eac-4591-8aca-3034eeda7365@cherry.de>
Date: Mon, 29 Jul 2024 10:38:07 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] rockchip: dts: rk3568: Sync the evb board name with
 kernel
To: Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>,
 Joseph Chen <chenjh@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Philipp Tomsich <philipp.tomsich@vrull.eu>, Simon Glass <sjg@chromium.org>,
 Tom Rini <trini@konsulko.com>, u-boot@lists.denx.de
References: <20240729071850.918007-1-kever.yang@rock-chips.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20240729071850.918007-1-kever.yang@rock-chips.com>
X-ClientProxiedBy: WA2P291CA0044.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::20) To AM9PR04MB8906.eurprd04.prod.outlook.com
 (2603:10a6:20b:409::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|VI0PR04MB10341:EE_
X-MS-Office365-Filtering-Correlation-Id: 133091b0-d94d-4332-d0e1-08dcafa9c690
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?djJSdHBvR1hzM1YzcEFRZUFLSlZoVnNKL2oveVZ3eXRCTU5YSUt3UUpGUksz?=
 =?utf-8?B?N25GQzBNWk55WnpSdXNYTXp6VmpiUTBtVEpLcVFKMEFsS3RWN0Y0NXZ4S0Zl?=
 =?utf-8?B?QjBBZlpSaVhRMWF6YXBaSmlIMUwrMnlEVHRDRGRWdzNCVmM2UWFMOFZidllj?=
 =?utf-8?B?U0VqQU4xRG9NbEJHOGtkUDBaaHhtZGc2UTJhb2RBWHBmNjcreEloZ1pXU3Ey?=
 =?utf-8?B?SHBsL2dqb0VLNU16QkJBcjFiN3VERm5RK0o0UXVYaklSbVVvWEpKd3VUM1Jk?=
 =?utf-8?B?STJyUWVaUlJ3Y3lqc0hJTzZnK3Zaa2Z3VmRmaHVVZlhFSitGVy8xZmJFSURR?=
 =?utf-8?B?YWxmVkVJVU5ERC9CcnJCMUtDRGJnNTYwSjh1MWVWTzQ0bzZoTXNWNFFwNUx3?=
 =?utf-8?B?Q3JtZnlsT0tjRWdKTlp1bGtXZnczZ3pOeWc3RXFkaytGOVVnQjJnM2V0RkNN?=
 =?utf-8?B?akgweVh1MmtoTUFLY1NwenlHeFNsT1lGalhBeUJlVnlmNWRGNFg2NUN1bnZk?=
 =?utf-8?B?ZGpqOFJjOUhYZ3NKZEpFK0dvaGtZdzE3eXFNb21HdnVwZkd1QTVCMExuazIv?=
 =?utf-8?B?SWEySjI4SzFGcy8yQ01EcWlrNWhqTE5HM1M5Z1ZKMUJSTXRkUVpvVldXNkJH?=
 =?utf-8?B?N3A3cUFmRU5rcTZ1Z0hHQVNZTkhCNUZwUGlmeE1PQ2IremxhSGE3OXZ0NXlp?=
 =?utf-8?B?UUZhOVBHS2QrWlIvVXhVTmlNNE01TjBkaVhpb1VqKzhCSjlpMk5SSERBKzQ5?=
 =?utf-8?B?KzBVWFRFNkNydUlaZlYzNHE0eWcwK011RFFaaGptT1I1VXQwQUU5czlEaWh5?=
 =?utf-8?B?R2RGUjBBSkVMeExKWmtiTmpkdTUrUW1mNS9kc2RCR0xpUnp0cGpkRjB3bjRX?=
 =?utf-8?B?RlI2Y01TVVFSejZJdUU1WFNJWXRTVkxHU0VWQ1hyQ1pyWnIrL0FnMWpxSTVS?=
 =?utf-8?B?WWpCc0h2bUdUZVB5N2R1ZGdpREdIWXM1L2MxSmcwZTZqV0VkcTBxZGQxZWZG?=
 =?utf-8?B?WWlVRmRrL2dNKzN4WWI3ek92U1M0elllVkJ4QW1PcmRUUVVKTkVrcmZnSEE1?=
 =?utf-8?B?bTE2bVNkalFYUUxkazZxTC9kbTZHUXFTMDNBU29pbnFCN05IeDhVSDlOQXRZ?=
 =?utf-8?B?U2tMUjExL2haSzQ4azhtVG9LSDh4S1FPcm5nMjNSbGZjQXlvOXQzWWZDc2t2?=
 =?utf-8?B?ZlVBN2Z0L0IrZGdEcUhPYkJUcDhLSnY2RlBiL0tpQVVNM01HSUdsTm55ak52?=
 =?utf-8?B?Wkp4V0RTcjdGSkRkUXVtRXlFc0g5czV0cWdNTTZNSFBWM08rUjVNVnliZVY1?=
 =?utf-8?B?TzBmVjhCbkh6SGhPcnhRSXRCS09sdU1mQ2R2YXhFOGVxbjFjUnVpN0Rwa2cx?=
 =?utf-8?B?d1NjNXpyNTBpbzJHOWN6MEFXT090YUxPS2czZ213Uk9rQTFmUlpkQ3IwTTFu?=
 =?utf-8?B?MlZjRmFFYzVUc0RiWXlSYXNkMnZ0Y2M5Q280M3JhN2kwRnppVlMvU2R5SnNl?=
 =?utf-8?B?a1UzRjhYeHQ4bC9QbUJsTUI1T0VsL1FRTmU3dUJSa09BMktrSzNHd21lYkp3?=
 =?utf-8?B?OEhCUzBYZjNvRFcvN0k0S1hnRkxGQWt0c3gwYTZOckhGMFE2RklWYzV1Zm90?=
 =?utf-8?B?LzRNSEZic04rMW1OMUYwT2xaRzVUNmVGbzd5SDEySWpQZGxjd2daRjhrL1Ir?=
 =?utf-8?B?RmZ3bUtOSWhzSG9UTWlzaCsyNDFXbVJkcm9FMlIwM1lVMmZwUEI4ZUl2Y0FV?=
 =?utf-8?B?RW1jUlZUV3NlRXEwYktqTlUyb0hGSHYrdnRjdC81UERhMi8yVU05cHdzOUho?=
 =?utf-8?B?bk9FZXpiWXNOcWZFbkRKdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1kzcHhqQzBPeHNoWTNMQ3lybDdGaXpOUkRoNzJRZlIvZmUyOXlEMnQwcFps?=
 =?utf-8?B?UDY1cXJVemoxYklBTHZoalVTblcreEhWQWVKQ1RScmJMR2F1TS9kWjRHRGIw?=
 =?utf-8?B?dGgvUkVTNGV2enZLcnNnM2UzelJ4VEhBd0FaclovNGI4SGVteStSVktHUkNG?=
 =?utf-8?B?MVpuRFFxYk5KeUFad1hxcStaaDNSQ3ZIa3NTYnd4TTdPUUxUa242SnoyUEV6?=
 =?utf-8?B?MGk5cE4zY3ovZHZ6bkcvS0JKU2JhQ1lMOTJNUVIyN1loRlgvUzBYVFdaVnIy?=
 =?utf-8?B?MHphMm9JUVJOZGJJSkxpRlFPWmVzT1FFQ0Q2NStIbVFoNThxMW52YzJPdjFS?=
 =?utf-8?B?eExkYWNRVS9LVlp0OC90SE9xR1J3M3E1QVkwWC8ySk5XODdVRGduTGpaTHE4?=
 =?utf-8?B?aUJrV3JsOERBTStQdTErVFRoTTl3SzR2dkhEWG9LTENmbG85cTNTYVAxb2J2?=
 =?utf-8?B?OEhlc2pwK1V3elVyR2xEZXVWYjJ5S0g3OGRDNHpWYUx5VHJyK3BSQ01sVXoz?=
 =?utf-8?B?bTB5YUJPTFJQWnhyRXJBUnRCRU9PZDc2MTFLb0hSZ0hoR3ZhNHVabjdwVGNa?=
 =?utf-8?B?WkJtTmkzc3MxaG5XZzBtQVJSNmM1OUh4a3VMQmRJUFUrVVJYZGJDSDY2YUlk?=
 =?utf-8?B?MGIvZFMxbG1TRDdZNkZhUkJRT1lXajhOd1c0cU50ays4dW04MlB3QUNyLy8v?=
 =?utf-8?B?cG1wM2Exa29uVmNSTnRaWTIzM01MR25BbkpxNFNPcGNYNUpRYnJRN24rL3N2?=
 =?utf-8?B?T21TT3lEb1c5elBEazh2NHJwV015NG5jZ3NlV2QrMzM4YWpsblU2OGlKampl?=
 =?utf-8?B?WldMckdwaGJMK1V5UHRJTnM0T1kyL2pkU3Nsa0NvR2dMalRUcjlqK1QzMWZl?=
 =?utf-8?B?N2ZFSlRSdFRDMzgzTkFMWTFYYnFGNzYybXV3ZjlmeWJFbzc5T1VBODBRdVM3?=
 =?utf-8?B?ZVpJZzJad2xOdjU1VEFHRGpQdnlUSDlsaktQeXlwa2FxbFhGRHZHcWFIcUJN?=
 =?utf-8?B?T0xaVHlaZnJKQzZlcTFqN2tRSjJqdUM3bWw0OUpMMWhmaVhEMllXdk9pYVdn?=
 =?utf-8?B?SjZaaFhoQ0loczBEZUhhZndSc1E4MHRtNTBKbThyM1pFZ3BkTW9GNGJwNzRZ?=
 =?utf-8?B?YXlZenJZMWJ3UzRJQmpyWndONVp3QXp6MElHYVpHb1lvT1V0cEJCajk5ZVJK?=
 =?utf-8?B?eDRud0ZPb3hJc3NkQVR0L05VdHFYdk1EL1cwUVlOOCtHZDNYZjJrOFdYMTYv?=
 =?utf-8?B?WFNMVnBRTmpNelZ2ZytGbTQxNk5QK0NPeHdicDBhazZCMUVSVWtvMGwyVHdJ?=
 =?utf-8?B?TWpxQUh4ZVZyYTdySHBKVTNXU01xSEIvblJNTnN0TTlFQUNFOVpEYVQvWjlZ?=
 =?utf-8?B?d2cxOUNyeHpadzFtRlRUQ1NIeGpaVnVneUF4cEpQRmV4T2NZVXV2VGVCQStl?=
 =?utf-8?B?VWw2ZU5KNlJKcHRGWFFabDYxR295M2hCdDN1K3RkUnZnSHZTTTRUUWwyVkR6?=
 =?utf-8?B?bFE0aHRLUGR0cjRtbE1JclhSR0htZ2dGVXd0RzlnOHEzdmtVdnNtYzExUWpE?=
 =?utf-8?B?c3lsQnJiNDFzVzc0a1NkbGZ0QmhXVmRPQnFDZmlKMi9SWDBwYVh3ejhaVHNs?=
 =?utf-8?B?UDNMVENZSjFHU0xXWng1YzM3WUZKYWFpbHBoOHRSY2IvR1FGV1BIVzJ6Szlo?=
 =?utf-8?B?VjF5cVNHWHVudkFzczRwc3BEdm1MTWIzdXdSYlEycUZtSG00NHFGelJsN0Jp?=
 =?utf-8?B?V1BpbjJrSFZnaEwvTDhNZUQ5c3IvRXRGdkxaOW9Wb1NXYVNvRnF6ZUhCczdT?=
 =?utf-8?B?SlozblEwdWtBVGJQZlNyVG1yeWZTZEtaVXphNkpCdmc4SVhQZmFFRzNyWm44?=
 =?utf-8?B?R3ROZWVqRTBZYmw4eWpwbEtvWkV1R3hGdm1rSEdZaUJ6RzhEV1BTeXpDUWl3?=
 =?utf-8?B?bUJoRjNERVJxNGNPK3FwQ21EZnVaYlJ3cWRzY0U3TTFLZjFGNldSc21sMXEr?=
 =?utf-8?B?UFFIM0FEUXZKaUdxN1l1ME5Nb2JpUnNuVkpMWmNJTHN6ZlUyUUtpTThoVGpT?=
 =?utf-8?B?MWNWbFZrYUd0MXR4OFBGaUtsWEtTVG92emh6OXhUdzlqWGVpUlAvdDFLd0ZE?=
 =?utf-8?B?VWViSGJoTVc0T3YxREZlN2xPRlJDUjNoOTRNanBFWmpVUWhYZjkxZERrZUli?=
 =?utf-8?B?aVE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 133091b0-d94d-4332-d0e1-08dcafa9c690
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 08:38:09.8543
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0znUjDCtMWdfYCR+wdUF3oCkXfXHoz6vBr1i9kgIXYcFoPx65Vc9vcZ/r0+JJTyiP5b6FNg9yaxUsW9mKKhDE2mGF4fnrCHDNalB3ie/L00=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10341
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_013824_932632_AB077F0D 
X-CRM114-Status: UNSURE (   5.09  )
X-CRM114-Notice: Please train this message.
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

Hi Kever,

On 7/29/24 9:18 AM, Kever Yang wrote:
> The name of rk3568 evb in mainline kernel is rk3568-evb1-v10.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

Thanks!
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
