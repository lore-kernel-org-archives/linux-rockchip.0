Return-Path: <SRS0=HIU6=B7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 228FAC433E1
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2020 02:53:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E4595207DE
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2020 02:53:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Kzf+deof";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lixom-net.20150623.gappssmtp.com header.i=@lixom-net.20150623.gappssmtp.com header.b="DGxvlbCv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E4595207DE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lixom.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UYKgGXJ0KRFbOjwf1D/qdriANIJPz5Dp/4wqODeEO4k=; b=Kzf+deofH/LDDaNpxzIcwkUFA
	Bl26/UYadYlUlY7AIvf4W++qlD6qAabJySv9tyeE2yhnzmwDj2QjBDzQatDVVF3YfIJdtfhnUM4aS
	RM63NJgUKcnYQeDHuYlav4Jfwr/N+zR0IH+R2lQAusEwY5/q4R36Ine0v6akduUPTW2QwQHKXvMmm
	91B1K04N915Am7S0A7gbSHFCibC+MbTtahmWNpsJQz7uf9VxYDSrfAr5yBURBA26pKweWV2+qFzSz
	JT3lEN+m5RCpUcfeT2XaurgZ/wY6WXnmCjI424IJGg9R5l/zBhDsLHokopIggMZDBu9ZKTInye6hp
	bYD7UShKg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k8xBH-0007Et-W9; Fri, 21 Aug 2020 02:53:28 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8xBF-0007DU-NZ
 for linux-rockchip@lists.infradead.org; Fri, 21 Aug 2020 02:53:27 +0000
Received: by mail-lf1-x142.google.com with SMTP id 12so197485lfb.11
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Aug 2020 19:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Wzatctpc+FvYoJ99XNB10sH67rwujcIhjY3BuCzGmho=;
 b=DGxvlbCvoNaXKOL43sWgecH+O/rJOe8W4VqpjFTJYxFzJBroPwv6ZW7nKDSZ9cXAE3
 XNV/WYUct8UNPtotuM5AqBb/psyW1ucP/6ChfXPdOyK67XVSz9pLhfkrViLGuRH+6jOs
 G/tFEYlVdK66gecWM6blGG07JniIdL56mxlmkXr2ODHNHAi11yDYQFZI3vuGgc2IFQns
 S/PMahcl3DrE60IYZGBc60MD14C5gbRplDkxJW7B7oS5cjBEshx669zny+WUpzTEe0HX
 1DM0Ib5EXEWOKDWYWaLTSSDjXtV+8r4kaLoQB3MCwPLTeDbdL9IftChcG57HMlOnWTjT
 IezA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Wzatctpc+FvYoJ99XNB10sH67rwujcIhjY3BuCzGmho=;
 b=V/qXeoNJql5dx2V0ntXsEzGhYm85YSxuKP1icXpqSgt3MxXjCR7lvtNgIJuEz7yI1D
 kxZuAleD2K7KFVJrpkBlK30ILk2Y7aDwOHBGRsVCgx2ltqkONVSdwwRVgPTuvbfzqrKA
 c38E8dNOUquztXZ3Eo12G9NFxHgRCLQzuKLZs+HatX/ooZcs8+hzhzTxkdKVXOdjsZ9U
 9IppmD4Z7XhSI/CnhsWDtPXtKCkU/STYLWm79KAN32cSd9DCAfo13tW35IcruidLF/zy
 +hG7lNize5j+6625+NrJkFAV902IGaoq4mOB79vQxb7YpjC+y0Nc8v4u+1aaa3bJHqVf
 JNpw==
X-Gm-Message-State: AOAM53205qDFmxaIxV5xwESpJTKkq1x6OCFKYKgzpLlItX+5T6Esjylp
 MOji/Z/G1snTa9KC2A06/NmK/A==
X-Google-Smtp-Source: ABdhPJx5BACHGdQcQmOu4crig7h0bACuVOhuDxlrNBnorAknrztXwhtNeu8pBf3h5iwfb1sTggzNHA==
X-Received: by 2002:a05:6512:3444:: with SMTP id
 j4mr350206lfr.161.1597978402213; 
 Thu, 20 Aug 2020 19:53:22 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id a12sm89140lfi.83.2020.08.20.19.53.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Aug 2020 19:53:20 -0700 (PDT)
Date: Thu, 20 Aug 2020 18:12:37 -0700
From: Olof Johansson <olof@lixom.net>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: Reformat PCI ranges/dma-ranges entries
Message-ID: <20200821011237.GA4527@lx2k>
References: <20200819221750.2055932-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819221750.2055932-1-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200820_225325_877931_A02E3573 
X-CRM114-Status: GOOD (  10.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
List-Id: <soc.lore.kernel.org>
Cc: Nishanth Menon <nm@ti.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Michal Simek <michal.simek@xilinx.com>, Wei Xu <xuwei5@hisilicon.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 soc@kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>,
 Tero Kristo <t-kristo@ti.com>, Robert Richter <rrichter@marvell.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Aug 19, 2020 at 04:17:50PM -0600, Rob Herring wrote:
> While bracketing doesn't matter for a DTB, the DT schema checks rely on
> bracketing around each distinct entry. Reformat ranges and dma-ranges
> entries to fix warnings such as:
> 
> arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml: pcie@f8000000: ranges: [[2197815296, 0, 4194304000, 0, 4194304000, 0, 31457280, 2164260864, 0, 4225761280, 0, 4225761280, 0, 1048576]] is not valid under any of the given schemas (Possible causes of the failure):
>         arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml: pcie@f8000000: ranges: True was expected
>         arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml: pcie@f8000000: ranges:0: [2197815296, 0, 4194304000, 0, 4194304000, 0, 31457280, 2164260864, 0, 4225761280, 0, 4225761280, 0, 1048576] is too long
>         arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml: pcie@f8000000: ranges:0:0: 2197815296 is not one of [16777216, 33554432, 50331648, 1107296256, 1124073472]

Seems like a bug in your tool? Why would we bother with this churn?


-Olof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
