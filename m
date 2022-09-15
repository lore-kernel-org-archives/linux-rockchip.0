Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3444C6FA8A
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 11:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vrFehtIIEyhv3sxgiZ6mIzewPTylz3eUKOapff4ta4M=; b=ruZlXYD1w19hHG
	aUDJfbCXeTkiho+9w8viTk/lKeBLEktkdgrV58+kmTl/DuOThB4DLLpzs5T2aia4P4fzYuuG7GMrD
	zUuQiFG+AhTu8D13gHN111ZAa0jLYN0SqpG+fV3O7OOxMY9pMU86P8ciaiRaQ3xO+rIPb1cDCdPW3
	VawNxVUXl5S+jUg83VsKD1oaddWllTrCFMiZcw85U66Lr1YXr1WDMqbn3BnoVNxqZOy6ZW83+LbrM
	UST3WAhd/za5hUMk9khPVusQ+H2mSi2dxDPvnQ1QzHtOp4sj3EC5ggdwBRm3Suly4OU8oiME9p8Gk
	Y25o6fVvhg57ggpFB8yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYmnc-007Qrk-Bn; Thu, 15 Sep 2022 11:12:52 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYmnY-007QBY-Ud; Thu, 15 Sep 2022 11:12:50 +0000
Received: from p5098d998.dip0.t-ipconnect.de ([80.152.217.152] helo=hermes.fivetechno.de); authenticated
	by wp126.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1oYmnM-0003Cv-HF; Thu, 15 Sep 2022 13:12:36 +0200
X-Virus-Scanned: by amavisd-new 2.12.2 using newest ClamAV at
	linuxbbg.five-lan.de
Received: from roc-pc (p5098d998.dip0.t-ipconnect.de [80.152.217.152])
	(authenticated bits=0)
	by hermes.fivetechno.de (8.15.2/8.16.1/SUSE Linux 0.8) with ESMTPSA id 28FBCWc1020749
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Thu, 15 Sep 2022 13:12:32 +0200
From: Markus Reichl <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc: Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add HDMI supplies on rk3399-roc-pc
Date: Thu, 15 Sep 2022 13:11:36 +0200
Message-Id: <20220915111138.1108-1-m.reichl@fivetechno.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;m.reichl@fivetechno.de;1663240369;02f4babc;
X-HE-SMSGID: 1oYmnM-0003Cv-HF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_041249_174693_B00C6BA6 
X-CRM114-Status: GOOD (  10.92  )
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

Add avdd-0v9-supply and avdd-1v8-supply to hdmi node for
rk3399-roc-pc to silence dmesg warning and match the name
of the 1v8 supply to the circuit sheet.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index acb174d3a8c5..51d1bf25faae 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -274,6 +274,8 @@ &hdmi {
 	ddc-i2c-bus = <&i2c3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&hdmi_cec>;
+	avdd-0v9-supply = <&vcca0v9_hdmi>;
+	avdd-1v8-supply = <&vcca1v8_hdmi>;
 	status = "okay";
 };
 
@@ -369,8 +371,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc1v8_hdmi: LDO_REG2 {
-				regulator-name = "vcc1v8_hdmi";
+			vcca1v8_hdmi: LDO_REG2 {
+				regulator-name = "vcca1v8_hdmi";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
