Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3528C0218F
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jan 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvyJd1KVgpYNEsHEKrHa4IaPbTS0xv9Eg1trbIG53tg=; b=fUNnMq0ry+GypE
	cMCygOr044Erxwdc/p9bsZex1nqrzjD2EvV821yDgq3uFPwmhDKVgcwtgfRBm7zBmPa0HmBKEQQBp
	ChHuRQry9nK/j7YEaZgYuSd6PyYbl71wlMWVrHMq5GbrbFyA4sXVnig/Ic5zIBLbK/dnR4WEbIsem
	2Glyk8uQjE04fiVMk0t0gEzXIrRdFd0QcUDRDEjv4asNUW9LVUJzyUW9IGEkxPvyaub0r5sGEx7+y
	vBn36/6kzEUqMHx4Q2pETHAwFtERlwsz8NFLCzxUXX5zliZXHprwgRZz2NYtfINj2dtI/XuYdudJt
	okzX/p9sgnU0sLugPUnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tduMu-0000000B3zr-3VbO;
	Fri, 31 Jan 2025 16:59:48 +0000
Received: from mail-sn1nam02olkn20805.outbound.protection.outlook.com ([2a01:111:f403:2c06::805] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tduMr-0000000B3y4-3UzJ
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Jan 2025 16:59:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O5NRopePNKjcACvB/FmbmsJusl3Yb8vrBDRBQsqxasMXv6iqdHTXJy1dfVPpjz15ubWQIutVw6/TW2looUTbYhZivU4cjGVa/XDSYLVGih+Wif5MJus/pBZDFjYphE+ugtrdKzHRQg5ZBRSqSBs/EkrmFsek0umXaM9rN2VL5NPD0uqvJ75cjzbATbUxb17X7aA0pHZTdZ5mw+6SZpvrIyhJx5hk2p+sAS7yTob8XBps6ZpPCB6Ncvo7ecbkMBKbjUbUj4jfWv17VjKcXwLqZVlItd2uNYhM3qmok9W/Y7O2oNFh91hSvvUBfd+9zE2ZMikTIGMaL4kadOSO96hP9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4v562k91Rgf3e3nWTg9dsdcPmIDOHt/O5ogiG7ekvRU=;
 b=FpFh12CNTOB9RPC2eADJcHT77mc3R5qQC5LdsJPCcmuk6PK4pHOK8WTyCO2A/MRuXZQTTyE2dU3PtWBBySPQ58gYjaVoaF0QXc6d4eZOHczgIhMx/7dJQ7oTW2UAbgY1ATCLMkS5h+Jfqdo3/7AEBtF6PLuO36rTEoNG0bcAwXMsHqUm8Jgrj8Y24uv6h9vLum1QJ7jksydGDcqiRXhbKZgxy1R5+Nyke0OsrEQ+auCBqp7Rx/gGe9QJzyvnVT8baItvLQqZnQwrmxhjKA6TAi2DQYlBQvtw/XtbKSUtOUTnotfEftJr7bOTPen2Lo8kgvB2hn9fRGk8CU6oemVHcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4v562k91Rgf3e3nWTg9dsdcPmIDOHt/O5ogiG7ekvRU=;
 b=Te8vzpZld+af7gNMUAey4FE7HxExUBJB5ppoirP8fXijwOvt9OHDtLtXDEq1WV5wP/9sMPpZZ7uG1vlNG/ADOtdeAKIKwFHLg/YGhJnr+vPfasmOVkc/wzUYle3Z+/ix6yhP7yVYJYYuLZv4sIuK5fY6N6bVGQ1sV5m9nIRbGWQkoWAFoJbfe9Vb4N8i4P+uHQeaqNbNpOKiv24Fenz+QXuvpI3JsRT7YPAsDmodR/rTViLX4PNb1UDHWXjRMkl71169XvVAYeDI6CaCXeGn0Hf1tXFMgCp5nAzT4FvGlVryy2R+zzp8PdREZEoCPdHWWo4bpM+xfHzbY3cJ5JeP/g==
Received: from DM6PR19MB3722.namprd19.prod.outlook.com (2603:10b6:5:205::25)
 by BL1PR19MB6107.namprd19.prod.outlook.com (2603:10b6:208:39e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.20; Fri, 31 Jan
 2025 16:59:37 +0000
Received: from DM6PR19MB3722.namprd19.prod.outlook.com
 ([fe80::bcae:8341:5687:fb8c]) by DM6PR19MB3722.namprd19.prod.outlook.com
 ([fe80::bcae:8341:5687:fb8c%4]) with mapi id 15.20.8398.018; Fri, 31 Jan 2025
 16:59:37 +0000
Date: Fri, 31 Jan 2025 10:59:31 -0600
From: Chris Morgan <macromorgan@hotmail.com>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com, heiko@sntech.de,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
Message-ID: <DM6PR19MB3722A5CCBF3FBEAC59189642A5E82@DM6PR19MB3722.namprd19.prod.outlook.com>
References: <20250130181005.6319-1-macroalpha82@gmail.com>
 <5d0ae245-1ad3-4e3c-9c68-28babc7290a6@cherry.de>
Content-Disposition: inline
In-Reply-To: <5d0ae245-1ad3-4e3c-9c68-28babc7290a6@cherry.de>
X-ClientProxiedBy: SN6PR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:805:de::22) To DM6PR19MB3722.namprd19.prod.outlook.com
 (2603:10b6:5:205::25)
X-Microsoft-Original-Message-ID: <Z50Bc9afK4TDeyO2@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR19MB3722:EE_|BL1PR19MB6107:EE_
X-MS-Office365-Filtering-Correlation-Id: aaade68a-2652-46bb-d9b8-08dd4218a520
X-Microsoft-Antispam: BCL:0;ARA:14566002|7092599003|5072599009|461199028|15080799006|6090799003|19110799003|8060799006|3412199025|440099028;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?kuySOO8tGSYcwE9OQz0g6SYZAGCLpcDM/C1fHhENNO5BB0FQZKR3Ml6nzwd/?=
 =?us-ascii?Q?nz9LLq/egXur5OOkUmV/ky2xzIp1fA9SZCo+MVnMNx+XxWc5+L7WCrKRKnrE?=
 =?us-ascii?Q?eLT1HD6a/KC08xiOqNgUj5pwl7zHyZW6+RTys54cieqCz+i5zaa2kok5S8Ja?=
 =?us-ascii?Q?tPy8aWx1WSQT7V7ZdoXcYgrpR5xFii4/Vdc6H0ftULaPE9P93ZCAlE3/VvqN?=
 =?us-ascii?Q?97VAQTdIb+VaCOdlD0NXO3dBKa+AZ93A4FNuG3xZDxr5XJza+VnTqlMPVhqj?=
 =?us-ascii?Q?9qpfrta84ylMDMPCl6kJCq8577mTGtS2moj28YihfkIW03mSZROOMEiOUm3x?=
 =?us-ascii?Q?WoNRvH4vqSL56RyBPkLGzknCWKgegIn4oSFsjMBIGb1AVF3xYDl6mTQOfwMo?=
 =?us-ascii?Q?lkq78ig2PwedR6WTDTMpWqzMFP5yhwHNSMyJKg6a/exOcIGu+o8v+nWltbnZ?=
 =?us-ascii?Q?cHIleh4Ai7aWsVlfCMlq9sg10hUPeVM75RgIsWufAtp7Q/9YoAIQW5ucrgiK?=
 =?us-ascii?Q?39oh2gidQ/Zkr7o8H1kS8PyYItjs2qLlWc6bFVLlgNReCc+rsECNamdPy/lE?=
 =?us-ascii?Q?sBsEYD5GwBVhe2iSWmXj+7PjXil84kEsNxnjPNdbUF4d2nB2Hft0JHOxMPIP?=
 =?us-ascii?Q?IvAjiseIudAU42ZXWvAHFM1uxlz4vN1psSsDUljvVhIETmuowSMFmlK0JoV1?=
 =?us-ascii?Q?sjv2hG6AzEFERVada0BegcEhGRkFJ4z+hwiY7RRgikyRkjSYq4qFknnn0h0/?=
 =?us-ascii?Q?EixYgJtKoXzl6RrLEWDliqqkNjXp9YlMlfrDVFOtgEJpChMmH3HoWdLVuj4r?=
 =?us-ascii?Q?2gn7C5tayt5CQzGkaAk3R/o6MVTklkmHMxL9SJ/XLfuy6j9Mt9jwHLOUJdb/?=
 =?us-ascii?Q?6Z2YTVHTUap3othjR5FHgBTXFaUGpcAnV+vuJqv+WoGp15TG12LDNh3JxGU3?=
 =?us-ascii?Q?sAvMJl5YI8ce9HcZzPwJezylJXvrmDYWnP5oOk43H3tcwPJKzbB2IqIz5yGX?=
 =?us-ascii?Q?f0LIynAwUazQ+c1SmEVM9ylaBSLm7QLKnu8nbPjkNmpRZYwYQHX+I60N9mKY?=
 =?us-ascii?Q?u4Y47YyXYL6MidNCdXj+Zd8Mf85OzGWOBIXa08/KqDSgWQyiRG4=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FeojqXTf0KnRwf8Vgv7NYCl0C4FDMMGAVnCrPoP0kY9zS7K5eBmnJaMxkSW0?=
 =?us-ascii?Q?4HN4z5tuESTUUlxVy9+IIGW/7Hr4BEgdp4Eb5go/jzRXCr5uA7lhaEsisypx?=
 =?us-ascii?Q?DY4XN5lKm0wmmzm2lRVCaq7AwHk2sEUbBYXq/E6fF7X9LiVxvT/03YrbmfZD?=
 =?us-ascii?Q?UA4pbAcM+WkBCJG1DGas8EsoyFR+jYk2TmCWx81MqWRf5zBKHT+RT+2K0NhH?=
 =?us-ascii?Q?4u++WvXxT6Q+HXuGpZwsZN7Q4U6WS9wdBEMptDPQLsY2IpA1PZA9DAPIw0hb?=
 =?us-ascii?Q?K39vo7OSju4dh08rcpWyz41qp/UEJqWbJ/KXDdxxjsayPr4tQjfkeaeopUBi?=
 =?us-ascii?Q?dEmb1IsapOzlNW482biZn+WA/dahqQGvxfq/MXKSzeGzMCY/0a/F4l4SEjHh?=
 =?us-ascii?Q?k9ghrCxHU+JnyNzbs6HHiCWxF8wxqNe4VENnp04QePIGIl17AgCMq6VfFw3J?=
 =?us-ascii?Q?11cQAQvYokZjtAm8I0fgVBYoWyY31DpFkzEbRhqEbqruLG/plEhAjTm8tWQ/?=
 =?us-ascii?Q?rNlgboqIpg72ZCaAPkWTYTQnnXBwMZSwZmieIufVrpQG/vFd7sf2nmk7nRX2?=
 =?us-ascii?Q?6VO5WBppucTn06psdhzQiGunEPQBn/7bNUpeJEswo1VGbyjo06G3lZQQwRx+?=
 =?us-ascii?Q?o5Xx1ql3XLwDJlUmN/BOOmHZv7SgQ1o4sA4BT2+mNOIq3r87RwCG/+lljjDg?=
 =?us-ascii?Q?UaOPnP6cxpSnj8gCh3NJtg/6FeNZqDcV9Z4RvC6HS7av0OJmmgs5kQ61qs8n?=
 =?us-ascii?Q?1iidr8qm2/WHbfa2AJFFFxnCcKN6uJf8nn1RkIxCwJJjh1fvVHEAb3/Ex52P?=
 =?us-ascii?Q?LOJzAsBhhzw0J/fnu4yIs1hieFG7DruCds+Exokb4H1mgZDi2kTOdFkiG5SM?=
 =?us-ascii?Q?DRyhMMOgZlmKYhLrt1PKV1xXwDCO6pCvCaJV6fLwF6lghKuXiq2MJh3pzH9s?=
 =?us-ascii?Q?boJzkPoV9TovNjAA5fFdivgXRlK9QuVGfvST2kpv6uurYSWgh44hmK9iYwqP?=
 =?us-ascii?Q?sxcomwUYXrztVvXNfT7+ZZjBMmAWpoWnCIu0nAvW6Hr0vN0pDNNufTJYdqL1?=
 =?us-ascii?Q?Ejn609g9I5Vdqxe5UxcRwNbajbIk23hM9GMDtw3/OgKFK/p3yeifdvvRXMeY?=
 =?us-ascii?Q?Bm9JV68VjJiaM7tq6Rvf6W/jwIU0cjcYN0DmBvvS/A+nHsfLmC2rxv5Ippb2?=
 =?us-ascii?Q?cVGRQRvrfTV8gI6KZ/z0GA9z9FNuUrSIbEHy/IGajiQXq2TOhQ4cLRFocKLx?=
 =?us-ascii?Q?bvujaYOir2REHLk8EeruR41aKYgm74AAfo4pdJZTZyu2a+grzD5MLVuWsezJ?=
 =?us-ascii?Q?iHa5/51rpkmCfuaqncYEOIFM?=
X-OriginatorOrg: sct-15-20-7741-18-msonline-outlook-c907d.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: aaade68a-2652-46bb-d9b8-08dd4218a520
X-MS-Exchange-CrossTenant-AuthSource: DM6PR19MB3722.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2025 16:59:37.8758
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR19MB6107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_085945_881749_557AE934 
X-CRM114-Status: GOOD (  26.00  )
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

On Fri, Jan 31, 2025 at 05:46:20PM +0100, Quentin Schulz wrote:
> Hi Chris,
> 
> On 1/30/25 7:10 PM, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Remove Optee node from rk3588 devicetree. When Optee is present and
> > used the node will be added automatically by U-Boot when
> > CONFIG_OPTEE_LIB=y and CONFIG_SPL_ATF_NO_PLATFORM_PARAM is not set.
> 
> This is too big to ask for right now, 100% of the RK3588 products in
> upstream U-Boot have CONFIG_SPL_ATF_NO_PLATFORM_PARAM set.

You don't have to change it if you don't want to. But if you want the
devicetree to pass through from A-TF to Optee back to U-Boot, you do.
I wasn't even planning to make this the default change for the board
on which I'm doing this work (the Indiedroid Nova), but I was going
to update the documentation to note these steps.

> 
> Does it hurt to keep it forever?

CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y is a perfectly fine default,
especially if you plan on using the BSP A-TF binary.

> 
> > When Optee is not present or used, the node will trigger a probe
> > that generates a (harmless) message on the kernel log.
> > 
> 
> And what if we have OP-TEE without this node present, which would be
> possible if we have CONFIG_SPL_ATF_NO_PLATFORM_PARAM set in U-Boot?
> 
> I guess we could detect from U-Boot if a TEE is loaded as part of u-boot.itb
> and fixup the DTB otherwise to mark this node as status = "disabled"?
> 

Based on my understanding of how each of these projects communicate
with each other, Optee can only work if you either include both the
Optee node in the firmware AND the reserved memory nodes yourself, or
if you have neither and let U-Boot do it (by including each of these
patches as well as setting the CONFIG_SPL_ATF_NO_PLATFORM_PARAM). So
basically just this node alone is insufficient for it to work today.

The core issue is that Optee requires you to map the memory as
reserved so that Linux doesn't try to use it. You can either do that
yourself or you can have U-Boot do it automatically. Having the Optee
node in the devicetree makes no sense today unless we also carve out
the memory.

Thank you,
Chris

> Cheers,
> Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
