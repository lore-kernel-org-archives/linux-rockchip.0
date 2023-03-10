Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F142EC6FD19
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 08:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HIvYeUXbqqM179H6qFdRnd5j+WwckzLPVnn1ERHJC5A=; b=oYSlRdrNcwe8Hf
	wxTBDNFUK2bc7+0Vjk1ARuoI9uvZYl7jqJKFUHcl7KvfbVgH3PWZUqBZLAJnxrZkLGm6ICO6jlFk/
	BM/x+J69d3jCUhQ8d/VKd17/Mn20dLXRCm9MjllB9HPCfz5qewmxiicLM4KlLoGi4PH9BJwUlzjYn
	lS9YKka8nNy49Wg3BgMOyCj7dGySzIpSRuJR0SmSj5I42G87ceadmMMOjn+ThF1DA9RQy7+7hlOxX
	JcFJlOVsCW34/p3lQxQ5di2FxrncgiPobVkIWFJrqAyRj44TpE4z9Zdhszsvkd5VF2tIf9suW/89q
	aeEQisVnVjpyJwMv6IFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paXmj-00DX45-2w; Fri, 10 Mar 2023 08:07:29 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paXl5-00DW3u-Iy; Fri, 10 Mar 2023 08:05:49 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3A2DE66030FB;
	Fri, 10 Mar 2023 08:05:45 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678435545;
	bh=LOi/siaqM76rHO4gX21yMZsTjTCPrx6+roVKTERlr6Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FbW3Tac8MSWHsTylUudxehstgS7z+O257JcutLLEmD5INT4MH2QtgyZbVEy5pCt66
	 MRxJ+De2AlznRsy52qpwJqrjUknHC2dlA4FpYxbdIGKJnNLqa+yuyuNVeIcP8ufRh5
	 zxU9H/kEVM7X27C1cqXcbOzYUxxclLJ4jEr6Mf6VTQywRMyyXSXYFCWN394LhLVZQa
	 dmNii/CIGrhpYdRqQEBTyNV276lzeZxyA9pQOGh39KOsOis2SNWYZ1oYrgGgwZbZEb
	 nT9F6xjO8g+1c12jBOyusPtID0w8jWmu4CIpZWFdYx+oZqGk+TnjAmBVrqTeMsAcHh
	 DB6L0qSbs4i4g==
From: Lucas Tanure <lucas.tanure@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 7/7] arm64: dts: rockchip: RK3588s: Enable PCIE2.0x1 @fe190000
Date: Fri, 10 Mar 2023 08:05:18 +0000
Message-Id: <20230310080518.78054-8-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230310080518.78054-1-lucas.tanure@collabora.com>
References: <20230310080518.78054-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_000547_796620_D0E56CB5 
X-CRM114-Status: UNSURE (   8.75  )
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

Enable PCIE2.0x1 @fe190000 for RTL8125 network controller in
Rock 5B board.

This is based on prior work from XiaoDong Huang and
Peter Geis fixing this issue specifically for Rockchip 356x.

Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
---
 .../arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index df8b135cf223..c4ae20ad2fd7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -36,6 +36,15 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3 {
 		regulator-max-microvolt = <1100000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vcc3v3_pcie2x1l2: vcc3v3-pcie2x1l2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie2x1l2";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
 };
 
 &sdhci {
@@ -70,3 +79,12 @@ &sdmmc {
 	status = "okay";
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
+&pcie2x1l2 {
+	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
+	status = "okay";
+};
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
