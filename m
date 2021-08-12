Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4160C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 19:57:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8222860C3E
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 19:57:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8222860C3E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfnqfIWyD8wCo8FUpfMUXFpkq0HkX9BlFOnmTHYJQ3c=; b=NV4471v1UAkLr+
	imaifCDqF5LfD2QSmbdud8smsUC/iBuEf22pNC2aGDvvg64yhzPescghghO5oT103VtwTD8D2xAYq
	wKyYaftF7I8m+8GWRI6ROh0F4VjbSN+hfFVUcx59A6vEfYAD3T4uKJGBcMCvRxDjM7NMvOzaXf221
	9vgYAcLIxC3k9gIMynQUFscJaNPTpNTslRdeQzPiCl9j03ERsaclsOTy4yuHnAkp7pcrTXhLp4Jgc
	QlvKBEmRBk7jhsNlPSGx6b025pX3dS8uCUfylnjD2cpakFIk7t0wkkkzS+3mpu2J16+gfKAEc8vSv
	ZBQzdc9ZI0DNaQPj4r0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEGpD-00B5n7-TZ; Thu, 12 Aug 2021 19:57:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEGop-00B5ft-OH; Thu, 12 Aug 2021 19:56:48 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5A55860FBF;
 Thu, 12 Aug 2021 19:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628798207;
 bh=jgHd9MF8YJ49fLfAfgkMr4G9YnGVcoWYDJZDSaif5pw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=mlmnQd6Djt1mQXUZs4OHOF3y5OrZNk6sb6fL4XcsAVQkFXTv4V9SQM0Oqht81yT/G
 GPjgtLPTGgnML5n11Tfh1caX4Htga3w0NkdGKQU7u9Mx7n8TaReWvBVAYpCv2B0Mor
 CgIdHHmUtcM+ZNlSO3jEyGM7TMRyVstm/42VRPvHBrwerQB/76t6pvoSontr19lWfi
 NR5JKwmCFTlCPhKh5Q14ZePvIFFIRtmDsrqD4HotPRNTXe/ikcwJzU9zxuIcCJYT8z
 0VitWmQwihyYdX56//vMKMpfBChaJfmeByIy8LfmR6hUY1/hp/3UpkgkfzBRWVSkSv
 7bJPK9/Q1zoIg==
MIME-Version: 1.0
In-Reply-To: <20210812170025.67074-3-andriy.shevchenko@linux.intel.com>
References: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
 <20210812170025.67074-3-andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v4 3/4] clk: fractional-divider: Introduce POWER_OF_TWO_PS
 flag
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
Date: Thu, 12 Aug 2021 12:56:46 -0700
Message-ID: <162879820623.19113.17032663481008109735@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_125647_831316_5D983F47 
X-CRM114-Status: UNSURE (   7.52  )
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

Quoting Andy Shevchenko (2021-08-12 10:00:24)
> The newly introduced POWER_OF_TWO_PS flag, when set, makes the flow
> to skip the assumption that the caller will use an additional 2^scale
> prescaler to get the desired clock rate.
> 
> Reported-by: Liu Ying <victor.liu@nxp.com>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
