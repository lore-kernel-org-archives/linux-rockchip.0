Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ED23C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 19:57:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 234A660C3E
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 19:57:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 234A660C3E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhND4pFoMlj417VCHXFb1cX7C8jupSBv70SXSPSghNo=; b=0lOxqyzKDQ36YC
	bnW6vi9AnyYZwGCANdHtf+R3uv9zNBdDap0NBvzPSkdIEaeAVLtYADmHqbNnt2F5ndZ2qtd2Ay4yL
	PCyI4uBlqlWSmBiYCoF4EC+cERDUY127Ex2iNtZeIVYiqi8QvxdZsrKjBxb8HMTGVtRj+58omxH/W
	7u6G1T32/3mE0P3DaCIkiE6OpfCmjHfKqau6DFJBE2MEFOW60SRIInvSohieGhf52O/qS97epHKSd
	nRzjBx15qM6h+in/wO6CBLQBU2I2y4+dfk3hy8qwqVBf10kAFC13hXfeYuepcq+wVftL4rPARgCXy
	UIqlMa0ev1+pr23axyTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEGp2-00B5im-5s; Thu, 12 Aug 2021 19:57:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEGok-00B5fQ-Cw; Thu, 12 Aug 2021 19:56:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id F092860C3E;
 Thu, 12 Aug 2021 19:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628798202;
 bh=xI2ANKrTptZuL0g1T6wWH/TREaBWgYlzpNz1eedHMYc=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=AC1QL2KoCvUc6DA2m6M7vc/nvRDD4K8hdH+KUy0MgLvazrImVdudjSPBWI6aCUWoz
 dKB/0TcLqyjiVHyRBbrI8T0NTae+7HtyWumf4n82/kipxQKerPzenwk+Mkl3LCFUjk
 Y6IUhHw+zXJJGHQ7ribD3aBNApkXhuwmyMaOFKO36G0YJVtdex5SVoitwZxOuoYUWN
 +qBCvfp67fzJxtr00Dz9g9reZJNdgBcSUMNAReWQ4GHnBQaiPXPXof0JEgEWbxEAU+
 CFdx6XQGSkJpaiHf7lFTXZPCOEHUfgCoXueXwRNG9z0qYhlNSoTWm2QjSS/XgAeFSB
 2DmGLacvBu2OA==
MIME-Version: 1.0
In-Reply-To: <20210812170025.67074-2-andriy.shevchenko@linux.intel.com>
References: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
 <20210812170025.67074-2-andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v4 2/4] clk: fractional-divider: Hide
 clk_fractional_divider_ops from wide audience
From: Stephen Boyd <sboyd@kernel.org>
Cc: Rafael J. Wysocki <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Abel Vesa <abel.vesa@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Lee Jones <lee.jones@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Rafael J. Wysocki <rafael.j.wysocki@intel.com>, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Thu, 12 Aug 2021 12:56:40 -0700
Message-ID: <162879820032.19113.3430851588211208927@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_125642_501993_82BC8E20 
X-CRM114-Status: UNSURE (   7.50  )
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

Quoting Andy Shevchenko (2021-08-12 10:00:23)
> The providers are all located in drivers/clk/ and hence no need
> to export the clock operations to wider audience. Hide them by
> moving to drivers/clk/clk-fractional-divider.h.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
