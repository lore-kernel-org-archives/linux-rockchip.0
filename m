Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCEACCD612C
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 19:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8qqgIeApwVmrVJci7Zrjd3NLxSgj20tDphZBBao8as=; b=K2sDY/zn2lY0Zh
	o5j8vxw0EsbQ45pnpXVA6mPJvsurYY5zhhCl+WyNHrpksmCeLwuDcj4Bb97Ft9lSPebqXZBk4GS/V
	XKNbZkpPd8ecK+q9QJyBfz9T8KoXvCuPq/2ex5jUjJ2OXeXrdjCoGfZsVoricRvuHaVPTGd0fQtG4
	DkyNyi9oY8MJVLNqTcnd/7UaPA3SSDnBBk1Uarq2IdIENiDixS51N/OLAdpXuckKxIL0SV1CCaSpX
	6JZha3shgAj2q855mE8G+qf3+l+YpUMhcR4AwCVdFKGL17V8vriFx1icA1WFTnTl+vK3fD/ZVgW7q
	gwPQzfpyXbHtS/0PX2Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpvvX-00BUbX-2j;
	Mon, 09 Oct 2023 19:28:27 +0000
Received: from forward101a.mail.yandex.net ([2a02:6b8:c0e:500:1:45:d181:d101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpvvR-00BUXW-0G;
	Mon, 09 Oct 2023 19:28:23 +0000
Received: from mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net [IPv6:2a02:6b8:c1d:3e8e:0:640:2b73:0])
	by forward101a.mail.yandex.net (Yandex) with ESMTP id 90E26608C8;
	Mon,  9 Oct 2023 22:28:16 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id cRi0fk6DeCg0-P3KRCj0L;
	Mon, 09 Oct 2023 22:28:15 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1696879695; bh=Kff/5COVR/DN1EcqDEcpGH9rcYf2BJlkCWi09bhh0iQ=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=G6KQNUVHI45o8Q4aVsFyqMHK638jFUE1jspH+xZwQwUnXwGNmH+92NL3W0sWiCiwB
	 ALV8kzIfH3YjQM2fJvhx3CxcDw2Nyv32I3CNevgFg8fhOedOXOjhEQIBJCIEySd2FS
	 oDGXbvLxBM7MpHuAAykNGRA0lMr0SBeEfS0Izu6c=
Authentication-Results: mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: Muhammed Efe Cetin <efectn@6tel.net>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jonas@kwiboo.se,
	megi@xff.cz,
	d-gole@ti.com,
	Muhammed Efe Cetin <efectn@6tel.net>
Subject: [PATCH v4 2/3] arm64: dts: rockchip: Add sfc node to rk3588s
Date: Mon,  9 Oct 2023 22:27:26 +0300
Message-ID: <d36a64edfaede92ce2e158b0d9dc4f5998e019e3.1696878787.git.efectn@6tel.net>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <cover.1696878787.git.efectn@6tel.net>
References: <cover.1696878787.git.efectn@6tel.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_122821_300945_58357380 
X-CRM114-Status: UNSURE (   8.74  )
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

Add SFC (SPI Flash) to RK3588S SOC.

Reviewed-by: Dhruva Gole <d-gole@ti.com>
Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff4..1a820a5a51eb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1424,6 +1424,17 @@ sata-port@0 {
 		};
 	};
 
+	sfc: spi@fe2b0000 {
+		compatible = "rockchip,sfc";
+		reg = <0x0 0xfe2b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	sdmmc: mmc@fe2c0000 {
 		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe2c0000 0x0 0x4000>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
