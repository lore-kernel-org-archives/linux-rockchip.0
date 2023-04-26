Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41C9BC7618E
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Apr 2023 10:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5PK6yDWuJSyfJPv8j+DWV3Ikw/a/DuNQNhoTOJvKo4=; b=HTrDHnQfXhqCKl
	BGq358V8BpcfpzJWNKKsN0l8zi6KHTpCwIpsanpYfBvzUxH134/giclg7oWjAmf5tqv2UNs9s9I5a
	gSG4Eq/FFd2yXyIpfA0Ue4plhD+uNCKTjPDqefV2uJq4VfFKxxwdBIsXZiwMr96nu2/SFP9eQsbZE
	TGgiE9PF/zgMcU8MwoWULRYgK/KMGzAyMn0m1PSyXAB2s0rSGgW1MapivqnQwgfM5Q9Gcv4ZNByll
	DdcGjaHfHeBhCMuCxTeS23DMuBFl0sqq1vzymB855f+HAIqznu47YiQ+z8ysLjHm10LubTs14xY2Z
	yc5Th+i7vbgRXVvdy59w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prcqH-003h6d-0G;
	Wed, 26 Apr 2023 10:57:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prcq9-003h1U-2i;
	Wed, 26 Apr 2023 10:57:39 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1prcpi-0003hk-K1; Wed, 26 Apr 2023 12:57:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v3 0/3] Enable rk3588 timer support
Date: Wed, 26 Apr 2023 12:57:08 +0200
Message-Id: <168250659572.356856.7990087922862518615.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230419181309.338354-1-cristian.ciocaltea@collabora.com>
References: <20230419181309.338354-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_035737_897234_B1F95DDE 
X-CRM114-Status: GOOD (  12.31  )
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

On Wed, 19 Apr 2023 21:13:06 +0300, Cristian Ciocaltea wrote:
> This patchset enables Rockchip RK3588/RK3588S SoC timer support.
> While here, it also handles a minor DT binding issue related to RK3288.
> 
> Changes in v3:
>  - Updated commit description in patch 1, per Krzysztof's review
>  - Added Acked-by tag from Krzysztof in patch 2
>  - v2: https://lore.kernel.org/lkml/20230418120624.284551-1-cristian.ciocaltea@collabora.com/
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: rockchip: Add rk3588 timer
      commit: 9558529472d72a79ee6cd02da6c4439ec12a63e9
      [will be rebased on top of 6.4-rc1]

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
