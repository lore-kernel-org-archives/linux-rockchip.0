Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93F82C3DA78
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Jan 2023 14:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMvbXBUHURSRke9fGq2QZ2UV8z7kVkv/KyNpirWu8Ag=; b=LQtHfR1Q7+m7zU
	vWi+zLS3Ok/Vil2lThi7L8CkzQeGJlIyZc6YYcc6rUDjEABOBBL22OHpm2FxWE/jxMM+d9Gkzj43U
	PJRRkQ3ydSip5Ammkh4NolLS3ttnw0yHjqUh8d7MwoYhWIwj9yaNgWT021p+fROrN+ev4jeO4Z4Jk
	EBJgTFEAu0X+WC0aN2nZnIRovb0up91i3At09gWX3zBlnkEWoaN1nVmXY5feFlRN2A1J4Hu2rxJEO
	YWoTAKgyzvwGhEucjuMym8jfy+UJZzefb4kvDgn7JeFoJHvQjnNSwOvZWdola+rMG3wN+ArtUoZu4
	QSQQ+0/PCkUmM9pG66iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pH4I2-007Tfd-Qo; Sun, 15 Jan 2023 14:47:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pH4Hl-007Tbb-GT; Sun, 15 Jan 2023 14:47:02 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pH4Hd-0007bK-Py; Sun, 15 Jan 2023 15:46:53 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: dt-bindings: arm: rockchip: Add Radxa Compute Module 3
Date: Sun, 15 Jan 2023 15:46:49 +0100
Message-Id: <167379396101.36245.3129099751878177714.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230112105902.192852-1-jagan@amarulasolutions.com>
References: <20230112105902.192852-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230115_064701_583956_32CF7617 
X-CRM114-Status: GOOD (  10.85  )
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

On Thu, 12 Jan 2023 16:29:00 +0530, Jagan Teki wrote:
> Radxa Compute Module 3(CM3) is one of the modules from a series
> System On Module based on the Radxa ROCK 3 series and is compatible
> with Raspberry Pi CM4 in pinout and form factor.
> 
> Specification:
> - Rockchip RK3566
> - up to 8GB LPDDR4
> - up to 128GB high performance eMMC
> - Optional wireless LAN, 2.4GHz and 5.0GHz IEEE 802.11b/g/n/ac wireless,
>   BT 5.0, BLE with onboard and external antenna.
> - Gigabit Ethernet PHY
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: dt-bindings: arm: rockchip: Add Radxa Compute Module 3
      commit: 8f590d9a049438f0fcab156690394be82060e800
[2/3] arm64: dts: rockchip: rk3566: Add Radxa Compute Module 3
      commit: 206cf8403c9e9e46b74995b5bb98c6f4162d8a29
[3/3] arm64: dts: rockchip: rk3566: Add Radxa Compute Module 3 IO
      commit: 856d168ab16b99b2a4d75d8f8c66390aafef996b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
