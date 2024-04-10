Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C63C6CD11C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 05:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Bdv1yXsWr7jARxDAxrABqp7zaqZTqE51uLWgCQdRzA=; b=LD7RiVLJQNFfNM
	MTw/jFslqiY0BB6mpZA04R0Vlx9wSYEqVyf58KM2I9607OMeHmpkTbgirER33EsIHhVDJ7IGLZmAM
	7lHLYZEZ19UuSubr6NvVW4tYtROu7ai0cxeAyWRWNMj/Vzr8eK1pTh4BPAvMMimd9dEfdoM/MyUEP
	zdaQhLYeQ+clB3mRjdjZwjJVinrwjFHtF90dvhbwlxDEDjeWY/2azfnxHmhqYac1OdEG9hut1cZlq
	cu7Minfra+N8zAhZ64gGTz+N9Tlae7XiRMAT7u+6euggWq3FugPdnGkntjw8Gaes3cb9IpuNLrAv2
	CUdsG8M9Eq9l7JadpPgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQIo-000000058oA-0cvd;
	Wed, 10 Apr 2024 05:15:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQIk-000000058nE-2wHj;
	Wed, 10 Apr 2024 05:15:16 +0000
Received: from ip-185-104-138-50.ptr.icomera.net ([185.104.138.50] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruQIi-0008Ut-76; Wed, 10 Apr 2024 07:15:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: add Forlinx OK3588-C
Date: Wed, 10 Apr 2024 07:15:00 +0200
Message-Id: <171272604793.1867483.15724948920615504695.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240403151229.30577-1-dmt.yashin@gmail.com>
References: <20240403151229.30577-1-dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_221514_838706_B56087C2 
X-CRM114-Status: GOOD (  12.68  )
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

On Wed, 3 Apr 2024 20:12:26 +0500, Dmitry Yashin wrote:
> This series add support for Forlinx RK3588 based SoM and carrier board.
> Devicetree split into .dtsi (FET3588-C SoM) and .dts (OK3588-C Board).
> 
> v1 Link: https://lore.kernel.org/all/cover.1710506373.git.dmt.yashin@gmail.com/
> 
> Changes in v2:
> Patch 1:
> - no changes
> Patch 2:
> - rename dtsi to rk3588-fet3588-c.dtsi
> - reorder regulator nodes
> - reorder properties in sdhci
> - drop regulator-always-on from vdd_gpu_s0
> - enable tsadc
> Patch 3:
> - update dtsi include
> - set more generic names for tca6424a, nau8822 and sound nodes
> - reorder regulator and nodes in pinctrl
> - reorder properties in gmac and sdmmc
> - drop vmmc-supply from sdmmc and update max-frequency
> - enable gpu (depends on for-next branch)
> - enable usb_host nodes
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: add Forlinx FET3588-C
      commit: dbda7254e7df661fd4022c07dda3a7c9660eee47
[2/3] arm64: dts: rockchip: add Forlinx FET3588-C
      commit: f7a9a80da93178fe43b72f13dd55d717b5efff21
[3/3] arm64: dts: rockchip: add Forlinx OK3588-C
      commit: ae914513b2f566d995a41638b643ac8589b6275e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
