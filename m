Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22B31C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 02:18:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DF6896103D
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 02:17:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DF6896103D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8g53vS+z7xOU3rwmOStcvnbybGX5Y1GI3UJPqcMj5k0=; b=Y3JI4PYLD/wz9e
	GbxAbMq3psUS6kUpexwJQZ70i8wxKul+k+RZvT2e5e9Kj1cnk86bsK+JK7/fK+5y1RpyaeU6eYqaa
	vu7wP4P1dqmqzt+WLXe/9izWIAtPh1o7J9G6+Y6YXKwKFAqipEqGjY2/D16U+y9ckFjqtRTYQBpBd
	dXV2aLeabcCMWHiqbom7EdiHDUllwmBiGSxSCRjyw/Tpj+PxEznkKlDoV/YrtQnHilxR917Wr2pTW
	HzZfYx/NMCeOaaMkhBTf5i0yY5boD8tB8WSEIvqko9xpWMUfLtj7efN5tAoS2vgMsNYdkl0gcXJwI
	iBBTDpV+iVXFEEqoFtYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNn9w-005Ca7-Ay; Wed, 08 Sep 2021 02:17:56 +0000
Received: from mail-mw2nam10olkn2109.outbound.protection.outlook.com
 ([40.92.42.109] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNn9u-005CZI-3A; Wed, 08 Sep 2021 02:17:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lZRPuI2ZZkVBLgnZ2Q1pd0j4O20IX5cuEsxL4bNaK21W7sx0j7TRmwJiOc00Lk+6tsq3F9imBT+MlsKe4uUUoJ141lKZ4LsuVwv5MIq7X/OefUlGSUzfrWJM4LpPvgQAstzUFIu6Y6PbaWS69QC5YruruYDp4a/jDuJIBWlF9VvbHiDE1jtYx+zLbxnUWcYZn59AjTbsXdLdY/9OzEdA8UwxkLhRo69c1dLPPtDAEKHoLdOZCzOy66u0mthix16hXCHHq/YBHzvt04uenNv4aEvFSyfb9XHja/z5A7Fzsi70kQVlxoG20q6axMJYbuKCTcqLLsONYINyQxPIHM8S2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=ZRy1sCtZaUEgBGnNt77E858R5y1xDryo3D4j9vYklQQ=;
 b=Pzs3vMbqKw2SsOp96WdKpur9j/KRds7Yb0E9F4kwE8RrSEvYGpLFNGdnv0yUr2uUJPvvMfG5s1fU2X1acbaCmrGvSwW3ZPV+LH5ft+m3R/1vEedQcyQvYL76LytFl/l2zzNem4hMo8DfF8zsxhpYaiBZIO9VJdVykZbZTn6mTBnvMkZCwjSyHo7EgxEb8GnAG0xCLzwpc8jO+DcRiIsB+jysUsdVOM8OoOte07xBQu2JZ9tuhw0l4CZ1TGlxG4ls0ubRIr8PFD8U3PqBY7wKU5xDfszPKe7McovfEcnd3mxmJo7ntk9Aq8eRT4zU4P5Mv+X7l1za7752jEXSHSDJdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZRy1sCtZaUEgBGnNt77E858R5y1xDryo3D4j9vYklQQ=;
 b=hxlcjXxcAMEzB3ROBxi5V3V9B4hSL+O+363gxIfDQurn0+tQNxlT4pTgW1oTyujXZNRBURVBGHebWU6g1zhqNb+46Vk0S1ptH5f7XpcNhy91jijYXrS0yPtnk1Vutky6OMH7QjhPpjU+VFz1eooO4MQ3dcm7YJBWep1srxR7wQ/44mMeMlPL1xtBluFLhVISkM39p/wV+zr4zUNooC6U/Qay2xvkXwqYtQO0a0CEvqhB31y3OwCb9ZprvtU9woal9vxLup30gSmBqDHjqUZ8q9BqDMutxXxk1yquAQNouFJtnDlmCVn1sTWECAVcRKryah3OG0iy6IzJVlaV5v0AEA==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by SN6PR06MB5101.namprd06.prod.outlook.com (2603:10b6:805:c6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.22; Wed, 8 Sep
 2021 02:17:48 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::ecff:6fcc:9321:2810]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::ecff:6fcc:9321:2810%6]) with mapi id 15.20.4478.026; Wed, 8 Sep 2021
 02:17:48 +0000
Date: Tue, 7 Sep 2021 21:17:47 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, abel.vesa@nxp.com,
 festevam@gmail.com, heiko@sntech.de, kernel@pengutronix.de,
 lee.jones@linaro.org, lenb@kernel.org, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mturquette@baylibre.com,
 rafael.j.wysocki@intel.com, rjw@rjwysocki.net,
 s.hauer@pengutronix.de, sboyd@kernel.org, shawnguo@kernel.org,
 zhangqing@rock-chips.com
Subject: Re: [PATCH v4 1/4] clk: fractional-divider: Export approximation
 algorithm to the CCF users
Message-ID: <SN6PR06MB534203466EA3D4E22858479FA5D49@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
 <20210907154400.26656-1-macroalpha82@gmail.com>
 <YTenPMOOepGo2ZU8@smile.fi.intel.com>
 <YTeqEilet1p4vTAU@smile.fi.intel.com>
Content-Disposition: inline
In-Reply-To: <YTeqEilet1p4vTAU@smile.fi.intel.com>
X-TMN: [BPH7iGBA6TJZZgBG8NLCRAgBhx+HR+8i]
X-ClientProxiedBy: SA9PR13CA0071.namprd13.prod.outlook.com
 (2603:10b6:806:23::16) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20210908021747.GA18443@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wintermute.localdomain (76.183.134.35) by
 SA9PR13CA0071.namprd13.prod.outlook.com (2603:10b6:806:23::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.4 via Frontend Transport; Wed, 8 Sep 2021 02:17:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1ea4cbf4-c9bb-48f5-888b-08d9726ed9e9
X-MS-TrafficTypeDiagnostic: SN6PR06MB5101:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hoG/tvwdHTb5OIQHoU7ZxYgZuzPwX/9Jim5twPVTg8+XGzJa46gb3RjlK96W3jJYJqYz9kD+tMpURFX4Cmf7Q7B+yepE7mTw8JHJZV8Io7pXH9y+ACueY//DckcbxuMySk2/DP1XAgKOAk+jNZWdf3jW+9tby/QLfkZqzS5D7beISrXqcd+ZplXjctX45XYOlvMNQgxH1pPuunIgp7mTGlS3Z/qWGJ5nVYy1qAFXSWPFAD8g8a3+PHh43yWdzemFgy/I0AwSyOORhRfazjqsnUF9U60sSODTgRJCCd9fiz0PJesDRl+iHmg71tZ0z5yyvrsTV8f4i4FHsErtecF7P4oUz/q5C/LKjOm10aNARFGl/91ASLantyoBO/dDW+6H2mXxLMn4cxhb6cN9p2Z36hR/MA/nks7a1pZAb4YOcCoPfLP4rYFh0LCPb8SGmcI3
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: bCZRmY6SuyxynfdmS1xcZ5cckex5A3ga0mTAkWFSIWJMW5Xda8mX0927LNG5dFCcqAL3vR/Rm+BZe6AxIOtXcoVwkH4MzaqW61GwkOT+e9QXOk00qvqmLupPvrhlCEN0i98gGClAWB66ysb0NhRyFA==
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-94543.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ea4cbf4-c9bb-48f5-888b-08d9726ed9e9
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2021 02:17:48.3432 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB5101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_191754_272851_90944EB0 
X-CRM114-Status: GOOD (  44.67  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Sep 07, 2021 at 09:06:10PM +0300, Andy Shevchenko wrote:
> On Tue, Sep 07, 2021 at 08:54:04PM +0300, Andy Shevchenko wrote:
> > On Tue, Sep 07, 2021 at 10:44:00AM -0500, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Unfortunately, I can confirm this breaks the DSI panel on the Rockchip
> > > PX30 (and possibly other SoCs). Tested on my Odroid Go Advance. When
> > > I revert 4e7cf74fa3b2 "clk: fractional-divider: Export approximation
> > > algorithm to the CCF users" and 928f9e268611 "clk: fractional-divider:
> > > Hide clk_fractional_divider_ops from wide audience" the panel begins
> > > working again as expected on the master branch.
> > > 
> > > It looks like an assumption is made in the vop_crtc_mode_fixup()
> > > function in the rockchip_drm_vop.c that gets broken with this change.
> > > Specifically, the function says in the comments "When DRM gives us a
> > > mode, we should add 999 Hz to it.". I believe this is no longer true
> > > after this clk change, and when I remove the + 999 from the function
> > > the DSI panel works again. Note that I do not know the implications
> > > of removing this 999 aside from that it fixes the DSI panel on my
> > > PX30 after this change, so I don't know if it's a positive change
> > > or not.
> > > 
> > > Thank you.
> > 
> > Thank you for the report!
> > 
> > I'll check this. Perhaps Heiko can help with testing as well on his side.
> 
> On the first glance the mentioned patch may not be the culprit because it does
> not change the functional behaviour (if I'm not mistaken). What really changes
> it is the additional flag that removes the left-shift of the rate in the
> calculations.

I noticed the behavior on the 5.14 kernel was to set the numerator at
an ungodly 7649082492112076800 and the denominator at 1 (no, that's not
a typo). I think it tried to write 65535 to the register though, but it
would go through this a few times and eventually settle on 1:1 as the
fractional ratio (which I assume is all good, because that would work).

Contrast this to the 5.15 behavior where it would try to set the ratio
to 17001:17000, which would cause the DSI screen to fail to initalize.

After tracing through the code I figured out that the VOP was trying to
add 999 to the clock and set it at 17000999. 17000000/17000999 gives us
0, and subtracting 1 from that gives us a -1. The fls_long function 
would then return 64, and if we subtract 16 (the value of fd->mwidth
for my board) it would tell us to shift the 17000999 48 bits to the
left, which matches the ungodly large number.

With the changes in 5.15 if I remove the + 999 from the VOP driver the
clock then gets set at 17000000, since the parent is at 17000000 that
gives us a 1:1 where everything works and everything is fine.

Long story short I think this is a bug that's existed all along, and
this change simply exposed it in a manner where it stopped working
despite the bug being present. Unfortunately I neither know enough
about the hardware to be confident in this fix beyond my specific
board, nor do I have enough hardware to test it on anything except
a Rockchip rk3326 with a DSI panel.

> 
> To me sounds like you found a proper solution to the issue and that +999 is
> a hack against the (blindly?) copied part of the algorithm used in fractional
> divider. Have you read the top comment in clk-fractional-divider.c? It should
> explain how it works after my series.

No, but I probably should read the docs more. I just stumbled on this
series doing a bisect when the DSI panel stopped working.

> 
> In any case I'm not going to come to any conclusions right now and also want
> to hear from people who have better understanding of this hardware.

Yeah, I want to see what Heiko says after some more research, or anyone
who has more familiarity with clocks/DRM than I do or who has more
hardware to test on than I do.

I intended to send a message informing you that "hey, this breaks
upstream", but I think it turns out it's more a matter of "hey,
this makes a broken upstream break instead of limp along".

Thank you.

> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
