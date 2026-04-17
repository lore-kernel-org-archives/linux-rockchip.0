Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9D2FF43688
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 09:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEYLuI4X/n1h1r3wZlHbVj9xk6fpPnLS39cOTn+h82M=; b=YqlVNtJd87ZmLa
	PwZi74N8pPZhtqR+jPz8ywTuyLzbsgCq2IKXk/eng9ti3V4oGdkA6yffWT25CRzADZQ/zCcxJzlQc
	9gzpw0pihvvRtxQF9jxtm94LfXvHN3ULXDS0uvyWTcj12V7V2k7sfxVIs8pLjNmKrz/GR/PeOKNl1
	N0MKbRi8cOw7FuV0glnBKTvbfUg/VypOL0x0UEUMW9vyfgIWyqy1ysx5FtJGB0YQ5W7waSUyYeSdG
	6GaSPof8IJgn6aedMfkz8BNBJWgjugB9xHsvnNSJ5bxciX2BkBwX6F0CgTTGdp3tAzLU1928HwJfW
	A5iZRNDD3dbrIR3MREeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfSk-00000003lwZ-2S91;
	Fri, 17 Apr 2026 09:26:10 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfS2-00000003kmH-2JCz;
	Fri, 17 Apr 2026 09:25:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776417924;
	bh=VEHvR/rfFEr/wjIRsp05a//STrl9Mt3CF6cDO7GtNQM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=LKmZd7fN76gs+SCFEUqD7SBckpSnNVM64A1e3INTdhIWrBFUNlE+7TYrGU0K03xgW
	 sokVRHgrzlEIzfMCPkSlZIQB4f3spElTT91SrvTy7c32Li0aFS9Y/tN20Ymh35nso8
	 as2u2YjTLcwp8MzXYOkAm3PakU4aOFisUBCivxsteh+CDzJmw4yT5FOxoKkh2+37e0
	 kjdL4u3lEtHea5zJdHqk93RaArL8wmaFqmXt0NIGbLlRxGHR8c4XmdVI9kg3t9944d
	 4p3nkVeWg4chr4TSGi/+ZGPa99TSC5Lr46UOrze+dt1SfQYbMqPvZhEJnOw1igNG5+
	 oXJ5pED9tt0bA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2B78B17E127F;
	Fri, 17 Apr 2026 11:25:24 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 17 Apr 2026 12:24:54 +0300
Subject: [PATCH 20/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3588-mnt-reform2
MIME-Version: 1.0
Message-Id: <20260417-dts-rk-frl-enable-gpios-v1-20-a19c0dd8c9f6@collabora.com>
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
In-Reply-To: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_022526_835421_154CF950 
X-CRM114-Status: UNSURE (   9.57  )
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

The board exposes the GPIO4_A0 line to control the voltage bias on the
HDMI0 data lines.  It must be asserted when operating in HDMI 2.1 FRL
mode and deasserted for HDMI 1.4/2.0 TMDS mode.

Wire up the HDMI0 node to the GPIO line using the frl-enable-gpios
property to allow adjusting the bias when transitioning between TMDS and
FRL operating modes.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts b/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
index 78a4e896f665..9e657d953566 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
@@ -148,6 +148,9 @@ &gpu {
 };
 
 &hdmi0 {
+	pinctrl-0 = <&hdmim0_tx0_cec &hdmim0_tx0_hpd
+		     &hdmim0_tx0_scl &hdmim0_tx0_sda &hdmi0_frl_en>;
+	frl-enable-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
@@ -205,6 +208,12 @@ dp1_hpd: dp1-hpd {
 		};
 	};
 
+	hdmi {
+		hdmi0_frl_en: hdmi0-frl-en {
+			rockchip,pins = <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie2 {
 		pcie2_0_rst: pcie2-0-rst {
 			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
