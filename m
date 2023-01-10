Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8098FC54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 14:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEKF2W4tIcCWS1ySRtuu4/hWp+OIwtzmj6OtUE3c1lY=; b=0SrKyGIaXqbi2m
	tjFSzcSXLektUERlXBP47HzVb1nQl9SUAu0Vz2HsIlfDs9CoazMx7D8cEllnexLe3GnDFoDySxF1/
	p6o+ddsMIYbklVQ/unkjVAP8X26x8Xz0aZx09p/WtUCLXlbIWsINglyZUjwmz2TpvKiu+Wn+s6D7A
	D/rLuVLBQcmCHZczexi5TTuGn5xhrV2W0bDmvsek/QvuikV9C9BkY+oYk2+k0C8M6SUbX5hQEgtTz
	UoxjhUEHMgS1UwggTuhHmn/oXzGvB/8TkkPu4AH3NrFkyUr6x4iU98lcJ75skYLyPfsQ4y6w0nw1g
	kcDdfgA9J/wcc72UhLZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFFq-007Bbj-DZ; Tue, 10 Jan 2023 14:05:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFFA-007BDa-B9; Tue, 10 Jan 2023 14:04:50 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFFF5-0004vx-4K; Tue, 10 Jan 2023 15:04:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Yuteng Zhong <zonyitoo@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Peter Geis <pgwipeout@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Wenhao Cui <lasstp5011@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v9 1/3] arm64: dts: rockchip: Add EmbedFire LubanCat 1
Date: Tue, 10 Jan 2023 15:04:39 +0100
Message-Id: <167335938203.2550251.11515354599498861656.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <Y6UdjhBD/Xa7ALya@VM-66-53-centos>
References: <Y6UdjhBD/Xa7ALya@VM-66-53-centos>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_060448_396256_3D61FAF7 
X-CRM114-Status: GOOD (  12.17  )
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

On Fri, 23 Dec 2022 11:16:30 +0800, Yuteng Zhong wrote:
> From: Wenhao Cui <lasstp5011@gmail.com>
> 
> The LubanCat 1 is a RK3566 based SBC, developed by Dongguan EmbedFire
> Electronic Technology Co., Ltd.
> 
> It has the following characteristics:
> - MicroSD card slot, onboard eMMC flash memory
> - 1GbE Realtek RTL8211F Ethernet Transceiver
> - 1 USB Type-C port (power and USB2.0 OTG)
> - 1 USB 3.0 Host port
> - 3 USB 2.0 Host ports
> - 1 HDMI
> - 1 infrared receiver
> - 1 MIPI DSI
> - 1 MIPI CSI
> - 1 x 4-section headphone jack
> - Mini PCIe socket (USB or PCIe)
> - 1 SIM Card slot
> - 1 SYS LED and 1 PWR LED
> - 40-pin GPIO expansion header
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Add EmbedFire LubanCat 1
      commit: 8d94da58de534634c835f22a43070f56caa2fcb6
[2/3] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
      commit: 1e83f6bfaf84d9e0bcb221304bb47e74c0e80924
[3/3] dt-bindings: vendor-prefixes: Document EmbedFire
      commit: 43ba22818788f5a8fff5b1feaa329fa4991a3225

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
