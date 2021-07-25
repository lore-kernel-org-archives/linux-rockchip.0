Return-Path: <SRS0=01nr=MR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 150F2C4338F
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Jul 2021 22:59:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8EB5460E78
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Jul 2021 22:59:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8EB5460E78
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ukC5K7rTONjKPd8RF8kdLnxs7fMpP3EVweiV9fGPlGs=; b=MC3L3Qobx7Fq94
	BI9I/P2JmEaNEGK9Eg7CF4IEV124KXLz3ZO1lBh0nzq/k3gbThj5brVKjer+BFhO2CCmaclOAF55+
	s3dA9LJkJShfkQjFVZFJ52+cQvkcxJeoPHoDcVF4hyvJWzDIv742+pd/lvg9K7Zu3wni705Hep5cu
	rEayv8DXvsDvwriQ21Z99grcey+dSeHYnk29G1wGm07NCBh+/lV73C8MNlAFU1dFxm5cVL4A9JAka
	W/L2xBzWtUd9+FqNs+MN/haNobX2Q3HkPek9ts1S121iuYuhY/vNgooMvjz40htwOvQmr4xqJPlEv
	e+gspLLXgtOHHhikqUvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m7n58-009DpN-7a; Sun, 25 Jul 2021 22:58:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m7n4u-009Dkr-Tu; Sun, 25 Jul 2021 22:58:38 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m7n4o-0007er-IY; Mon, 26 Jul 2021 00:58:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 hjc@rock-chips.com, robh+dt@kernel.org, sebastian.fricke@posteo.net,
 linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, cmuellner@linux.com
Subject: Re: [PATCH v2 0/6] Support second Image Signal Processor on rk3399
Date: Mon, 26 Jul 2021 00:58:29 +0200
Message-ID: <7055305.V25eIC5XRa@diego>
In-Reply-To: <20210210111020.2476369-1-heiko@sntech.de>
References: <20210210111020.2476369-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210725_155837_022470_D60D8A7B 
X-CRM114-Status: GOOD (  22.91  )
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

Am Mittwoch, 10. Februar 2021, 12:10:14 CEST schrieb Heiko Stuebner:
> The rk3399 has two ISPs and right now only the first one is usable.
> The second ISP is connected to the TXRX dphy on the soc.
> 
> The phy of ISP1 is only accessible through the DSI controller's
> io-memory, so this series adds support for simply using the dsi
> controller is a phy if needed.
> 
> That solution is needed at least on rk3399 and rk3288 but no-one
> has looked at camera support on rk3288 at all, so right now
> only implement the rk3399 specifics.
> 
> changes in v2:
> - enable grf-clock also for init callback
>   to not break if for example hdmi is connected on boot
>   and disabled the grf clock during its probe
> - add Sebastian's Tested-by
> - add Rob's Ack for the phy-cells property

finally found the time and applied patches 1-3 to drmmisc-next
after fixing the alphabetical kconfig ordering Helen pointed out
and also applied patches 4-6 to my rockchip tree for 5.15


> 
> Heiko Stuebner (6):
>   drm/rockchip: dsi: add own additional pclk handling
>   dt-bindings: display: rockchip-dsi: add optional #phy-cells property
>   drm/rockchip: dsi: add ability to work as a phy instead of full dsi
>   arm64: dts: rockchip: add #phy-cells to mipi-dsi1
>   arm64: dts: rockchip: add cif clk-control pinctrl for rk3399
>   arm64: dts: rockchip: add isp1 node on rk3399
> 
>  .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  39 ++
>  drivers/gpu/drm/rockchip/Kconfig              |   2 +
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 349 ++++++++++++++++++
>  4 files changed, 391 insertions(+)
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
