Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49F1C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 19:33:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 289D923AA9
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 19:33:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 289D923AA9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+ogJOw+aHKN4sBvpfc+pe2dzDtxDJ7FK3pINWm5YL68=; b=1jqu9S/qcniLptozsvdAUEiSQ
	JNjhmyhJvfECGL5oDNDK8dDuwCYg2KPtPwL0Dz7oiBCyp+mkOkINrEyGlTNxKkVHTsodpBm5eB2Mn
	OyTW3b2vufV/WZUbbY9Z3HHzs/UgYxmJ9SpOBB46SWyquZkdeuusa8AGurgjj09vB36Jwc2VAIYF3
	HkmQq2yUFElv4e6CrwNJcICJuNXGge5d9KtApectAacM5pWwaxr/8b8tVAXRKZKMGipbUsZFLbklT
	DA4DgoHsZF2gz3N6fPKKxV2RJcJW8Z0+vOftTYFcE93yc7Rh9XI6cTYivPQKrwmbab55z9+v3TozU
	cdt24unMA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxxWD-0005xJ-5v; Fri, 08 Jan 2021 19:33:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxxW8-0005tz-Lz
 for linux-rockchip@lists.infradead.org; Fri, 08 Jan 2021 19:33:51 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kxxVv-0004Zr-RM; Fri, 08 Jan 2021 20:33:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com
Subject: [PATCH RFC 03/11] arm64: dts: rockchip: hook up camera on px30-evb
Date: Fri,  8 Jan 2021 20:33:03 +0100
Message-Id: <20210108193311.3423236-4-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210108193311.3423236-1-heiko@sntech.de>
References: <20210108193311.3423236-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_143348_979964_A839CF08 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com,
 mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 52 +++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 5fe905fae9a8..52e788e983af 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -422,6 +422,58 @@ sensor@4c {
 	};
 };
 
+&i2c2 {
+	status = "okay";
+
+	clock-frequency = <100000>;
+
+	/* These are relatively safe rise/fall times; TODO: measure */
+	i2c-scl-falling-time-ns = <50>;
+	i2c-scl-rising-time-ns = <300>;
+
+	ov5695: ov5695@36 {
+		compatible = "ovti,ov5695";
+		reg = <0x36>;
+		avdd-supply = <&vcc2v8_dvp>;
+		dvdd-supply = <&vcc1v5_dvp>;
+		dovdd-supply = <&vcc1v8_dvp>;
+		clocks = <&cru SCLK_CIF_OUT>;
+		clock-names = "xvclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&cif_clkout_m0>;
+		reset-gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
+
+		port {
+			ucam_out: endpoint {
+				remote-endpoint = <&mipi_in_ucam>;
+				data-lanes = <1 2>;
+			};
+		};
+	};
+};
+
+&csi_dphy {
+	status = "okay";
+};
+
+&isp {
+	status = "okay";
+
+	ports {
+		port@0 {
+			mipi_in_ucam: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&ucam_out>;
+				data-lanes = <1 2>;
+			};
+		};
+	};
+};
+
+&isp_mmu {
+	status = "okay";
+};
+
 &i2s1_2ch {
 	status = "okay";
 };
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
