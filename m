Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E09C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 19:57:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3039460F57
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 19:57:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3039460F57
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sBiat7lN3fxZ6Q96NGi17Gm8zS1PbWtCV/lo/ByZ4zk=; b=J96OddgjGqmGSu
	rEmVCIAZ/S7V32hQ2Kw6cUr/SThqV2PoHPnvKd5chbe04J9Ag/CTI9BWmWPHfgNcbK4HVc5ZqZxAn
	8s5BM+MHj+XAoeoFrlVGjTL7lwXFepMKZIixS5toUzHlhH2RDrYBRDGO1HEqWyuKRsv3BX5NIJRko
	KEArK8D2dl6xnqqf9SeXJzp3xi76mJwo/rt3hyALi5YPncz0BhVrdUhdLHUP7Etq0hHe6IBKRwkKk
	RtfR1s+x+HUTX2gZKpYH21nYa0ArCfHTz40qNuoO9EkMa0brKKTXsodjtivawp6i+UPA02AGsdlJ0
	BTLUQwMcDorzuOdq11Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEGpW-00B5xe-Ur; Thu, 12 Aug 2021 19:57:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEGov-00B5gs-6N; Thu, 12 Aug 2021 19:56:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C614F60C3E;
 Thu, 12 Aug 2021 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628798212;
 bh=i+iHAHQEZxgzPWsBXZpS6OWK2GN9mm61bYvEAAIedxY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=PbDJcbRIktiOdGAFhIShmv7e7COvfN1s2n+tBIePCLv9JWOxiVcqv3/dP1viY0kU8
 YCDRv6zmlt4xdreZ+JikZgKddB6tw6N+3wobQvPeZlelvMOlCAEan+Aw75C/fh7HyM
 kfSEmPYaYwNHX3Op1knSmFLXmQHcbgZc4V5Nxafxz8ZZ0f8FFtecHB5+ohqaC1MzMt
 cSjPeIa5s40liaow4XYn7Ws5n999QqTTKfjMYgRSAe3WNL7pOSqIqvVeZbWHNEgm6m
 GinQVOlZuUehFz3eIgFDsAn1vX+ZKVSGbpoyhVHmXrziwKxdGvcB45l8JDPiCh1htk
 xbWYo0/OqIkxQ==
MIME-Version: 1.0
In-Reply-To: <20210812170025.67074-4-andriy.shevchenko@linux.intel.com>
References: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
 <20210812170025.67074-4-andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v4 4/4] clk: fractional-divider: Document the arithmetics
 used behind the code
From: Stephen Boyd <sboyd@kernel.org>
Cc: Rafael J. Wysocki <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Abel Vesa <abel.vesa@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Liu Ying <victor.liu@nxp.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Rafael J. Wysocki <rafael.j.wysocki@intel.com>, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Thu, 12 Aug 2021 12:56:51 -0700
Message-ID: <162879821159.19113.17550166363142634282@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_125653_318366_611CD98D 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
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

Quoting Andy Shevchenko (2021-08-12 10:00:25)
> It appears that some code lines raise the question why they are needed
> and how they are participated in the calculus of the resulting values.
> 
> Document this in a form of the top comment in the module file.
> 
> Reported-by: Liu Ying <victor.liu@nxp.com>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
