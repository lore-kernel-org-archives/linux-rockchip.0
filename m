Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E1CC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 18:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eUWDm5B87m6eIlxvBdvSBYLF6qkneR4+b0oVRV7H3A=; b=nTUT+jm3wmG9v8
	ZVNHdNmQOLMVH/kG9Nax3LgCfKnZPpFoJc3u4j7VtJscUhohlilP1iN+dLkOiPKTEHEX/nZiAhiEX
	hrJzObX7VDUmj023AjYo5qKOcRUfUPnbriNTWDqW/+42bUjJk7PVly28OcZcsq8Q5Td98mm9iIj0+
	rihvFcYDgFM0zTCUu1t+Dkact8XolPKZU/tk/MrQZlA8RAaCnfQWpwQkAS72jnjQi7gmrpv3UeZPd
	+LYlyW2i2Cp/FWFfxRTcBvXSmlZ7Ok21eIJVB+CILz7BRH4z2QeyX3TSr7BRp6ZNyxEl3DREickw1
	4emEq6yhlPmRz+0/o+Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzBz-0000000DgyB-0mUL;
	Thu, 11 Apr 2024 18:30:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzBs-0000000Dgu3-3dwv;
	Thu, 11 Apr 2024 18:30:31 +0000
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruzBa-0001so-N6; Thu, 11 Apr 2024 20:30:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	efectn@6tel.net
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org
Subject: Re: [PATCH 1/9] arm64: dts: rockchip: Add cpu regulators and vcc5v0_sys to Khadas Edge 2
Date: Thu, 11 Apr 2024 20:29:50 +0200
Message-Id: <171286007463.1886699.8424532199460774699.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <5a7bd2cd8703e51382abfc11242de59d45286477.1708381247.git.efectn@protonmail.com>
References: <5a7bd2cd8703e51382abfc11242de59d45286477.1708381247.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_113029_066589_3031D9C7 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
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

On Tue, 20 Feb 2024 01:34:17 +0300, efectn@6tel.net wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 
> This commit adds 5V fixed power regulator and CPU regulators to Khadas
> Edge 2.
> 
> 

Applied, thanks!

[1/9] arm64: dts: rockchip: Add cpu regulators and vcc5v0_sys to Khadas Edge 2
      commit: 925273ba9e71184a6dcde0f902b4245ed64885d1
[2/9] arm64: dts: rockchip: Add PMIC to Khadas Edge 2
      commit: 3b5d2327cb749017322ce09f7107cdc82f1a92fa
[3/9] arm64: dts: rockchip: Add TF card to Khadas Edge 2
      commit: 4a3afe9cf3711f222a9dadf50bd2e9770bb6a095
[4/9] arm64: dts: rockchip: USB2, USB3 Host, PCIe2 to Khadas Edge 2
      commit: f786eda805aa91340e151322ccc6c0ba4a591f9f
[5/9] arm64: dts: rockchip: Add ir receiver and leds to Khadas Edge 2
      commit: af6943f502b6db1ba3bc5199069c662218e23261
[6/9] arm64: dts: rockchip: Add saradc and adc buttons to Khadas Edge 2 and enable tsadc
      commit: 25e31aaebed4b0e242d9a71170f8dfdf9cc8a304
[7/9] arm64: dts: rockchip: Add SFC to Khadas Edge 2
      commit: 8711dca3b5f7a3834ae1129512f98a2367940a07
[8/9] arm64: dts: rockchip: Add UART9 (bluetooth) to Khadas Edge 2
      commit: e438acfda8a0088a3c7f450a7ffefeb56074e41e
[9/9] arm64: dts: rockchip: Add RTC to Khadas Edge 2
      commit: c0b3c764b64a5c8eee056e62580de0f44e7dcd0f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
