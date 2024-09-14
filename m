Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16B0DC021A0
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 14:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dXKXHSFKXIMtNRQiQfnQg/XqNdfFQQOVWn/2PAm7fMQ=; b=GXcIKYp2KFpZCq
	J4qm5PpBqryFZARP/hnkXK3TG07z8BW25ojJldokCpKBJ/ar9ctTfyRnTgNPxNXWpWi9Sz0CoOedc
	iYEmsFEiu60n7BV7dloOvSPjeMIE13VFBv3Ps7Kg681Nq1lKoWik15kO74PaDKq29NqVmWGzebPtg
	rNDKJiTnrOzldSjFpM8cq4iDbmuKwAZNxsw4bzCiO9KO4CslBmrNymufHsjDgrg5+cl99MLgsObOW
	JXKPCH1eLFWUAlSU7OnFGcaKccvEelVeP+me2qt4yc9ybWFB8gGaMTio9E8R47vFN9X6er6BO4H0V
	y9K1uxCxjXtj+dkepzEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spUEA-00000000po4-1phK;
	Sat, 14 Sep 2024 14:58:22 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spUC0-00000000pTp-3rtn;
	Sat, 14 Sep 2024 14:56:10 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.163.122])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 6EAB878924;
	Sat, 14 Sep 2024 22:55:57 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 6EAB878924
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1726325762;
	bh=SfYTR+8D3/OmwL+5x/MWEePx9/+uyPzD/SMFZc+PqOw=;
	h=From:To:Cc:Subject:Date:From;
	b=RnPLg1fZgaldrjVyjx7yFB78k5yh/d3j3k6keO8pR/YLfp4TlNHtmDgz6Eb6yv9Ex
	 h62BTRacDWky0I3Ncxj2391l2bmbNo2VJo0KQx3Mv0W3eHvWsfT1YLkUnOmjpQ4LoS
	 FT9ylt2UJpcWXd+4uHM6UwOOL1eA36EcOGwuJ9pM=
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
Subject: [PATCH v4 0/3] Add support for Ariaboard Photonicat RK3568
Date: Sat, 14 Sep 2024 22:55:46 +0800
Message-ID: <20240914145549.879936-1-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_075609_314390_B0F5C459 
X-CRM114-Status: UNSURE (   9.67  )
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

Changed from v1:
- move some general nodes (firmware, ramoops, reboot-mode) to rk356x.dtsi
- gmac1 change to phy-mode rgmii-id
- corrected some regulator to be closer to schematics
- rename rk3568-ariaboard-photonicat.dts to rk3568-photonicat.dts
https://lore.kernel.org/lkml/20240904111456.87089-1-bigfoot@classfun.cn/

Changed from v2:
- remove unused headers
- corrected some regulator to be closer to schematics
- remove usb_host1_ohci, usb_host1_ehci, usb2phy1_host that have no connection
https://lore.kernel.org/lkml/20240906045706.1004813-1-bigfoot@classfun.cn/

Changed from v3:
- corrected some regulator to be closer to schematics
- changed to using clk32k_out1 in xin32k
https://lore.kernel.org/lkml/20240911122809.1789778-2-bigfoot@classfun.cn/

Junhao Xie (3):
  dt-bindings: vendor-prefixes: Add prefix for Ariaboard
  dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
  arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 591 ++++++++++++++++++
 4 files changed, 599 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
