Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF9D8CD4847
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 11:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uTgvdHaHoLgxgZO41x3WWnXk7IxO/VEHva++GEbtAUM=; b=acoojfB6J+imiH
	++P8M6OQ7IyUzCn1OjwBPnwJAdiCtZ3uqrVSy94UnpMoRZT3Op9ambju8Wan5hSaXFQ5yXY75vA9X
	MlYL+i+l+ncINYHHSERXbHIIyA+/ntQh8g/D/VU4sU+IrsUE0YElLAEIrptM6aJ24FIlipnpwef9w
	Ve6OvAiP3SuzeQlUosutrtFQbgUsAqdVMGH3Bt1iP1gCBMIYOzEz6i5lX4xZYWoh2nWnUs0Y886yq
	LdxxEsv3pyG3pUq1Z9h2gdBknz5HhfT8LSdnJ0E6oXFRZTUwNrwVH2DBa+eOETm9zJ3IrvZMNEPuE
	3L98EZMaQB6E7lZWpPWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sloAw-000000048DM-1d50;
	Wed, 04 Sep 2024 11:27:50 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slnz4-000000044uc-2wqW;
	Wed, 04 Sep 2024 11:15:36 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.162.211])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id EEC2478906;
	Wed,  4 Sep 2024 19:15:24 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn EEC2478906
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725448526;
	bh=oDu0rx3ptdV2NHSJHD6e4BCpRovAxaXvbyquJY/zCiE=;
	h=From:To:Cc:Subject:Date:From;
	b=qrZKaO/LCzRWudZIO3yJgbCa+pL9QA6Arefta8hrqC4HO9JIV/FaB4wKibDONrdT1
	 Ygcw0jjyQ4zI8tH+2HN/lDYeCpgeGHSksyicdgmKPG4UHbFV60uWKioFNUJqUz2YDU
	 RMbrsbMZDYku/cAWDeCkBqumDFwFNsVg/9UU07Qw=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Add support for Ariaboard Photonicat RK3568
Date: Wed,  4 Sep 2024 19:14:53 +0800
Message-ID: <20240904111456.87089-1-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_041535_260973_6D357BDA 
X-CRM114-Status: UNSURE (   8.44  )
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

Add dts for Ariaboard Photonicat RK3568.

This series bring support for:
* Debug UART
* SDIO QCA9377 WiFi and Bluetooth
* M.2 E-Key PCIe WiFi and Bluetooth
* M.2 B-Key USB Modem WWAN
* Ethernet WAN Port
* MicroSD Card slot
* eMMC
* HDMI Output
* Mali GPU
* USB Type-A


Junhao Xie (3):
  dt-bindings: vendor-prefixes: Add Shanghai Novotech Ariaboard
  dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
  arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3568-ariaboard-photonicat.dts  | 598 ++++++++++++++++++
 4 files changed, 606 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-ariaboard-photonicat.dts

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
