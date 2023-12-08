Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B340C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 16:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIj5ZJLE8vJu8rRo5cuyGK2WhzR6od9fZFAjobq4B3g=; b=NdN5mx1Ur7Li6s
	sq/1JJbymFUfoBdlaCb0rMjGgOpQD0IcjFGbzyMwUMQfRE41rR8VojPAbLAkW+UioioN9Am4FdtTY
	X/hQ+Y2Mwak+keki8VtjJlOcGXEwhHJOF6KgEpndUaH4DAkptmCWzW0DFGp7aq2nCFicCKapSO9rf
	eyCs+PWSS/zgYX0DlPqvNbqH4yScAPBPUBxo/jU8XzrxO1Q+SMstl8BPSyWlHCptQ+l5dF+rpBkVf
	viuHuoq8rbE1OaO/WVzon95bcej6MYkTVO3BtjicJkWm0SxAh074UUPUXnWqRJAOqPCLfwkastHpY
	ADy3dcYqnVKg5hU1TmCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBdOc-00Fyv8-1Q;
	Fri, 08 Dec 2023 16:08:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBdOa-00Fyu0-17
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Dec 2023 16:08:09 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBdOQ-0000BK-RJ; Fri, 08 Dec 2023 17:07:58 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v4 00/17] Add VOP2 support on rk3588
Date: Fri, 08 Dec 2023 17:07:57 +0100
Message-ID: <8765245.NyiUUSuA9g@diego>
In-Reply-To: <20231207075906.651771-1-andyshrk@163.com>
References: <20231207075906.651771-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_080808_379912_A8D4964B 
X-CRM114-Status: GOOD (  19.28  )
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

Hi Andy,

Am Donnerstag, 7. Dezember 2023, 08:59:06 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> This patch sets aims at enable the VOP2 support on rk3588.
> 
> Main feature of VOP2 on rk3588:
> Four video ports:
> VP0 Max 4096x2160
> VP1 Max 4096x2160
> VP2 Max 4096x2160
> VP3 Max 2048x1080
> 
> 4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
> 4 4K Esmart windows with line RGB/YUV support
> 
> The current version support all the 8 windows with all the suppported
> plane format.
> 
> And we don't have a upstreamed encoder/connector(HDMI/DP) for rk3588
> yet, Cristian from collabora is working on adding upstream support for
> HDMI on rk3588.
> 
> My current test(1080P/4KP60) is runing with a HDMI driver pick from
> downstream bsp kernel.
> 
> A branch based on linux-6.7 rc4 containing all the series and
> HDMI driver(not compatible with mainline rk3568 hdmi) picked
> from downstream bsp kernel is available [0].
> 
> [0]https://github.com/andyshrk/linux/commits/rk3588-vop2-upstream-linux-6.7-rc4-2023-12-07
> 
> Changes in v4:
> - fix the POST_BUF_EMPTY irq when set mode
> - use full stop at all the description's end.
> - address Krzysztof's review about dt-binding in v3
> - keep all VOP2_FEATURE_HAS_xxx macros increase in order.
> - address Sascha's review about debugfs
> - Add const for rockchip,rk3588-iommu compatible

very nice, the error messages on "mode changes" are gone now.
Display and even combination with panthor still work of my rk3588-board

Tested-by: Heiko Stuebner <heiko@sntech.de>





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
