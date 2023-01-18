Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 979CBC38147
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 14:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PgD+J3FwG6aZJEOAgRR1vMkDqHpwwXaTJYvdnsJmOFo=; b=AkgYjYz/9kherbEG/RMddtRFTv
	zMlkYqYPet8Uxv+yE/EwLVkWsWaKr/7DfVuIwfWYpxlNzLPjCxOP1u+DrRDYmR/U2MPcKFiQUj7HO
	m1gUH6KmXum8lyq8LwaSYHkk/M/NKBTSWjZ3g6TB17yFTBb1KPlkgdtsrgd5VMqWjoHBfn/3A9MxG
	O6RLpJB1QuqGTsomTKRIMweaRsegJ58mgprX2ThwE+LrO7pXWgbBaIf/9h6Ky8IRnfiICmrs3GahS
	guW4yuT+5g3Cv3tmA29mSVCe6PLhhL94WLLfm6Ml5mkqzWqPI0EEdJl7eZ8MM3mnXfwYBW8Or85N+
	p0o0SbUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI9My-001JjC-US; Wed, 18 Jan 2023 14:24:52 +0000
Received: from mail-db8eur05on2061.outbound.protection.outlook.com ([40.107.20.61] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI9Mv-001Jhs-9F
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 14:24:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WYxiJbL9GXwToVZeOdEZYVHm9qSAUEbIrJj/pGIJAWGqxkKezig8zRmADVc3ISmfskV95W2r3G5sqTGvqUNNkpfT1zJOkiXkkIFguFIjWYk18wgKFesMGmfkIXWm2ktPQG7pZBpn01SfIu3LCanLIuA47OvGFRwDEHhXTn79LZbWZ9NFaUYm8MLqG+CwZ7qLIJRlybheOBFnT8DwESgySyD8QuO1LSB2pkwNYb++7/RDnS24F89ZOUDjL1wtzfsJZA7fqQlun5pYaAq97vxeQXKD2xVuHcEe7i/gm3vdg6fmmE1HgZxp8jHnwCW7W124gV+ypBrOPddkktSX3nAhiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qs9UXDSnArFm3mO2VmPNvvh7SFfxIUuRzxamD3EthAc=;
 b=g0MLUaF58xAmZkXRvHr3GdpCMIcqBW8l8zpoCkWUxaIqvXDZAMkBCvejvzJjjRz0W3M8eSpnAck1j8zNP5dtUtgDbKBCwBlVTK7jYTmmZDzog4johb0ers9yKWdM44KPJWwNRw/OPiuAbpNvIn8tVGYHxxVR5ovBx+YspTDIdMf/AiOiWbRkBiOO5N7zQAEjEwALuOZw5KGGj89Rt1ni8O5bXmDDRLUHmaKOjeoGHwAlnw5+j3A4MQioyNXNX2dKpepwfEh2zHTb9ZUA/Spzk1nTU2Fl6fB2daTvb1HUCQE+Y9ty4rpAlNqGUU/ZoaDWZJ3tO2+MLaXw7p315Wxqiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qs9UXDSnArFm3mO2VmPNvvh7SFfxIUuRzxamD3EthAc=;
 b=jyiEg8u0IFgQyi/gfW2aGtvxs40qr0JTHHfPOLJS7rDVSx116LMRmqgErEy7niHnGuIMCblVtYiiMo7ImC+WirvpXA4vxy4+jlFVclzUmhvzgrBEaUyw2i3WrZvSI5E863+ujmyxo6KNVlCvklJfdn7xRUikFdlIEU8tHwJeVZU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB9PR08MB9634.eurprd08.prod.outlook.com (2603:10a6:10:461::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Wed, 18 Jan
 2023 14:24:44 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219%2]) with mapi id 15.20.5986.022; Wed, 18 Jan 2023
 14:24:43 +0000
Message-ID: <ec69c94e-84c8-c47d-6c3c-45824551ea88@wolfvision.net>
Date: Wed, 18 Jan 2023 15:24:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 0/3] drm/rockchip: dw_hdmi: Add 4k@30 support
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 kernel@pengutronix.de, Robin Murphy <robin.murphy@arm.com>,
 Dan Johansen <strit@manjaro.org>
References: <20230118132213.2911418-1-s.hauer@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20230118132213.2911418-1-s.hauer@pengutronix.de>
X-ClientProxiedBy: ZR0P278CA0167.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::15) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB9PR08MB9634:EE_
X-MS-Office365-Filtering-Correlation-Id: db1fe250-6d0f-4c79-82df-08daf95fbe4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	7umZs3XYoCeD1hRR5BIA2Sy7LYwAbdQRhuVZH0e05PNfl+Qv5nUUcnQtUslCe4jCX+EDZI8VHhdO7vXrf+AL+2y1hJCUdph09RF+mTHvu2O4Xe7IIIsKTi4bfNWobbZJfqHPjJQVfszwHE8Lr5eXeOZw6tKkjtLm844wTs1ItNq8laTCwJIMD86T0XvbQ/kwdU1CgHPJayu3HO0hTUOhxLGOkUw9XsATmH3At5+SUkOS0V3mO1oW6fUuODLLREghIem3lNresidvVG6r+uxhNWGLLf9WIlgBALDRtQOiYhyHlPwwuwE+H8cD0u2HTJDo4WFLdxlb0wpLHmmvTKUsHpM8Xz7lYOIGulcPnF1Nz5GH8DgTL3/vUCLLUz8qa8kApuN72VySVCKQXrGAgjriMmO9A2GrU9ng+duDFjoDI3orPXSAiLLL1kHYwa2gq3vWmDgY8XX9g+OlhC5UObFasa0mBHiq3/y4qD/l6982Fv0cRhLIekFiRMUI9X0qFT6YbGe+4I6WythN7P/B8Y7M9+M8EFS6hYjP61psWkM/pCKZh7G5LIgNLGunSwMs8U9zk7RdvVAtN/cd6NFueVu1DFmphFfVMHRRYB8QsJSai+icCnK83uBAPuwq5M7UkAM8Nm+MJe7onHf73ufu/U1kuWlXsg8Ga64IjBeAZuvk55jv5ZwsseCMBz9o3V3Miezrmj+z+D8bsbEou+tOz9qaN55jDkL7e4H50YhdVRSm2zk=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(396003)(366004)(136003)(346002)(376002)(451199015)(8936002)(83380400001)(31686004)(8676002)(66556008)(41300700001)(66899015)(66476007)(66946007)(4326008)(6506007)(2616005)(316002)(36756003)(5660300002)(54906003)(2906002)(52116002)(86362001)(478600001)(186003)(44832011)(53546011)(6512007)(6486002)(31696002)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?OVZRdG80eDVTOG9YaTFoMTRoRmNyQzdJKzRta1hvWU9RVHZZY0ZyRVlvMVJk?=
 =?utf-8?B?Nk9jeHUyTGc2aDkydEFIc3BNc3Zrc0F0S1lxYVVmQzRsYk1YK0RROEFuWk1F?=
 =?utf-8?B?L2ZXZGhtdExzRFJ1ZWZibHRBbjZLQXh3RlA0cDNHR3U3UW1obkdrU3BNQ3ZR?=
 =?utf-8?B?NkxVcUw1eDR6b3d0dGhVV3gwQ2dOL3F2WWtmNGRtZFBGSjgvU29lcXc3L1lp?=
 =?utf-8?B?VENBd0labDIrTDVkZ1JLWFRyWmc0L1QxMmU4bFM0d1Fha2hqOWx6MURlR2N1?=
 =?utf-8?B?MUs3bFdXNXFIZlg0Q2tYWWRBd3piM1pQWXhTeTUzSDlnZjNoTituZWsreEx6?=
 =?utf-8?B?azYwczJxUTNpWGtDRDAxdU1McU12SldVb1p5NGhwWEM4b1U4RjI3ZXJ3dlc1?=
 =?utf-8?B?SENnRlI5RFFvaTZ4U1pHeVhEK1lGNDd2WnFxeXpPWVRWeXQ2dzY4Zml2dG9l?=
 =?utf-8?B?MGlabHMySFZRMW9JekNGc1JTR056TzBWd05EeWliMnFQVlo1SUJTTmtjMWp4?=
 =?utf-8?B?Snl0KzNwenpYL3hCNDlPcnB5SHN2cU5WRDVtMXRUUC9OdjZ3bmFPL2VYSW9l?=
 =?utf-8?B?OHBDNTRsdlIwem5MQWozRnQ1dWR1WVh2b0xkRDNJRHlUTHcrU0pHeE1HY25T?=
 =?utf-8?B?dTYza1ovVjZITTduZjRESVROU0V3citnYVUyQWV0YW54U2x2RFhKQ0hLLzhz?=
 =?utf-8?B?RzZrM3R6OVpDdHh5b2MwbmtuT3RoZk5zZzgzZVgySWNjTDJ6a1ZreC9YNVNv?=
 =?utf-8?B?SmRGaTFhZDZ0dXBxdHpIbHZMMW1pOHNvWWc4VndiaFpyOWxibXJ3bzNpQVVm?=
 =?utf-8?B?aHdoWVBjVzdoU25hTlRjWHBlZlYrRGNibGlZbi9TOEhtUGZGVXVtVG9MS21V?=
 =?utf-8?B?QTVhT3M4enZ6Mnd5ZHYvRlRIRERFbmkwMFlPRVEzUStXRGFBTllTYUdqS1NV?=
 =?utf-8?B?MUZTTktpWVZqMDIvdVZBeXBmYXhTcnQrakV5cDBIUEVUQ0lpMnJPQUY3NC9h?=
 =?utf-8?B?eE96cjZhVGx0SEk4b21UM3hCcmpHUjFIa2tZQ3BxWWpjQUZ3TXZMNnZtM0FG?=
 =?utf-8?B?KzExNnozOWhYNGZrWjluQk4vNG9IOXFCZ1lmS3p1cnVKYUNZUnVEMG4yK2pu?=
 =?utf-8?B?OFc3ZlRtYjh0YjNlcERjMVdaaTY4MEFYajhkZ3RjVittVUNyOHZ2RW94RStR?=
 =?utf-8?B?T0hlVFMwbjFmWWdJTVhoeEZrR1V1M09BbUQxK2hvMVhLM293dVNWTngxNEpu?=
 =?utf-8?B?RURsaFUrb1VuUTc5dDg0dHErSnpraWFCT0k3dHVNS1ZRcUs1Nm8rVEhYUnRa?=
 =?utf-8?B?OFdIUjhmbHhtbVZpNk41eDBaU09TVDBpcjV2RVhjejZaOXpFTSsrSGN0bWdS?=
 =?utf-8?B?cVFYWG9JbWpyeUtvL3crVzZjamxuWWFDQit6clNwWU1OTGxYQXRRVjg4d2da?=
 =?utf-8?B?Y2cxSlVOZERsZ0V1Q3hpNGZMZnR4Z2doL3o2T3FHQ0tlZ1I5eUNvcXVtaVph?=
 =?utf-8?B?SVd5N3AvV09wU2hUbzcyTVZaMDRRNklvSXRuWjhzMm9ndXN4V1MxZHU0Q1ZS?=
 =?utf-8?B?SE9aL0d5dzBHT3E1NVpMNTZ0S1d1T284VTVuSGJrblFhQjAyRmpJdWdiYU5X?=
 =?utf-8?B?M01uSi8wTWVDN0MrRlV2dU15TURJVG1jR1lsTHcxN01nM2RKazlQVlAvTDdT?=
 =?utf-8?B?c21RN1hPODE4WUNrU1owSUlGbzRvNERZNEtsYWxCQ2Z0dElTOGp1YjVOWkNC?=
 =?utf-8?B?eVZDaGFBSHhPV0FnTS95emFybFYxQldFcnNhakUwUkZlcGlHUTlzYjBjZGg1?=
 =?utf-8?B?dlFGaGg2Mk1OdjZIaUgxYXIzRWV5Q29LRDB6RFRaSUNaYnJvQ0hSZlhmZzhh?=
 =?utf-8?B?cXlHWXZGWnFJS2QvSXFmSmlxdnRKVjM3aElzczFCVzVnUXJrSDQ5TmdmTEM5?=
 =?utf-8?B?Y2d3YkpOVU95eFRWOVc2SU5TVTlPbHN6RmZ3cDhUaFFKWFovN24xREp3WTdn?=
 =?utf-8?B?eGhkNjFFZ0s0dzFTZ0s4ZDd2bXN5OXFGcDlTZzFXeVlBRDRRNGJrVGl0T1Q3?=
 =?utf-8?B?WFR2SndvTGRlSEZleldDdjB3K2NDd0Y2Qm9EbGRNT3RZV1pIMXQ2a2VLdSti?=
 =?utf-8?B?MmRacUpLQXdpTTM3NWJUbzBPWkxwclcrRVlkanZIUW9TbDBTekRXT01KRHUv?=
 =?utf-8?B?alFkRDBQK0pCeUkxaHlhYisvdHJ3d1JWcTgxOGp4UmNFUGJyQ21VZDMrb3hq?=
 =?utf-8?B?RnNPcnZpQjhuVXh3b242SlZndkh3PT0=?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: db1fe250-6d0f-4c79-82df-08daf95fbe4f
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 14:24:43.7688
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +/3a2x18790WOQAVZg5WEZ84nSj4fNRbGA23s2ndwACSwc613J5BjzrQ7IYnvsbsUT0llJcz6dd8xhKpy0YvmjZmhRQwvGeJa0QguejXRdY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB9634
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_062449_592587_5B8D0107 
X-CRM114-Status: GOOD (  18.06  )
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

Hi Sascha,

Thanks a lot for the v3, works great in my setup!

On 1/18/23 14:22, Sascha Hauer wrote:
> It's been some time since I last sent this series. This version fixes
> a regression Dan Johansen reported. The reason turned out to be simple,
> I used the YUV420 register values instead of the RGB ones.
> 
> I realized that we cannot achieve several modes offered by my monitor
> as these require pixelclocks that are slightly below the standard
> pixelclocks. As these are lower than the standard clock rates the PLL
> driver offers the clk driver falls back to a way lower frequency
> which results in something the monitor can't display, so this series
> now contains a patch to discard these unachievable modes.
> 
> Sascha
> 
> Changes since v2:
> - Use correct register values for mpll_cfg
> - Add patch to discard modes we cannot achieve
> 
> Changes since v1:
> - Allow non standard clock rates only on Synopsys phy as suggested by
>   Robin Murphy
> 
> Sascha Hauer (3):
>   drm/rockchip: dw_hdmi: relax mode_valid hook
>   drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>   drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks

For the complete series

Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

Best regards,
Michael

> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 40 ++++++++++++++++-----
>  1 file changed, 32 insertions(+), 8 deletions(-)
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
