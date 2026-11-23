Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D0A606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 16:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tNMUOfsS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=PtTwDStN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0OsoxIiv7UAizPAih3zmRdyThLvGMS6FbeQTAk/v5K8=; b=tNMUOfsSbzj+hXjCQLVq4CINqE
	QqhirTD3SidPE7CHuT9jUm6TstfEQRnXj/Mr+t8K3iSUdksismqNoXx7Nt9pSfC1OrvOULJ1yciAJ
	uAa4C7ovK0aPUsc2T2jg41QarHowLTcNTj2/YIDSVl/SMdANao/R7Wpvwzu3xhZtdLEAuNgQdXrd0
	+9rWSsx8TI9faK7rti3xYXAHFoFijr1+p6+rZBm2ExiFrD+d7eSH6CSS0+KKDxpQWJM5+nim8S7a8
	yVqerHL2YMPlxz+PVlTKgF4AT7Ozd+jANZkNRoEX+QhRSCYzuEnvqoU0HOYDJKXcvP5kUmIqowVK8
	1DGyvlnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVXNP-00000004HPS-10OU;
	Mon, 23 Nov 2026 16:58:47 +0000
Received: from mail-dy2-x07.google.com ([2607:f8b0:4864:36::7])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVXMi-00000004H9r-1XMB
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 16:58:07 +0000
Received: by mail-dy2-x07.google.com with SMTP id 5a478bee46e88-382afece6d8so653875eec.1
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 08:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795453084; x=1796057884; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1w51x/PKCtrb5fNAPvfXEuoWbCAe37FjN4HnJ6V/8YM=;
        b=PtTwDStNgPa8hjTaBuuBAYfc46F21f1JqGB0GzGjRUb5cuqnfV8m2IvLdj7KdQPx39
         V4qjP2XIBghS6xW/zJQEget3EtOQq2FvJoOfP9WUlqlkYJD+7Y5nH/M2eEgy1L0rxBir
         pwFAlgKvNNZk71tmgZYo4+v7uLslDEUZaN3eH6rCoJJxety1YzZO9N9CqtzYKsNBhHGm
         dPzwQDDE6ucToYLyilH6jeQXlCpapSy6UPeI1QtzkYClxaUdIIYVRL+/QGL7t5UUZ0gp
         8GXrbqhQseon43tz+gWTwctU2zKmgkVn66ldpOjj0nEpMzBz80ZUVlx57vuuGV1tef6Q
         qUoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795453084; x=1796057884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=1w51x/PKCtrb5fNAPvfXEuoWbCAe37FjN4HnJ6V/8YM=;
        b=pxO0wP+GalxPcK1iI+0ExkFe172ThAvR4T7K3XBe6AUe0xO2tK28GtlDTbo5qqJWgT
         zVIQLYYm+YLxIpOCsgW9BOSPLJXyKGCUs+pmf6qEdDk6SniUSs3g/JbFvCxuqRHetk49
         xxU9A0P9QlQGeui7MPVVX1wS1MttualstoY0fMWynE1Xuwb8l9Yqf47zn9QDpZno3pI0
         Z2l1HJ0WLTnYIW/C0Tft7sJACeaSodxRci49VDZPkk59JDzKI3CtzEk1aBu/vDM77J+O
         SqfYSBPBSsadgXbUVuyYDG2LKnj71x+J2+ifhgBiovhlPvumN6RAE9lo4D5DlXYldA0K
         phxg==
X-Forwarded-Encrypted: i=1; AL+hErHKSP/St0Oj1w32ymOhh5ka6KAyI3pTBWs75L9osfTANBWdGOmysiUhP+5xeOB+BiKpQnpPzq/uN3XEL2q/fg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+Mo4Z9YlkGQPaqAF1SudTJ7rKIodyPmWepTO409ncy/3ob6qaM
	QnGuXlp1rQ7O0FKcWuJxsTi3O8XSwGSejd9hS+rpYvC9i4eFNwhcJcrf
X-Gm-Gg: AZFdTZdWQ8JoXeauv41cVGJAxD6UCC1Jel3apsSO/MFIlKzbpmjx91koSLjA25RWUTb
	fiOLjNmepPxvlXKDV4Dt+TI2f3f4pwcgCs+T/C97ExpV5vND1vAJOBakLEGGu4P2DHGeW5ED036
	N2JlKuADIsMKXHZKTkHbCLDvu0KOBFvhjePzkGQjeRxXgn9onT02TJsFaMnGQ7v8I0iNDrlFuxA
	xK8AmE/KW/GxFMwWmO2a2x91N5ZqGqZpKskKsIWSzUM08CdgvdakEYnGmdS5GCI1/ehKfJp7lyP
	Mz06HpUqO4mSTXpMUBFfk5eWrWPQThTmdvk7bXOeef0GMRA9sikrIT/XxqKFNGkUyYf3QjjlzjX
	q5DlRzEK4XK/Z5fnE/9cpwkbSYzajUhnVfogArQmHwXsnuFYDRUnnPSYguTAzSnVkraVn1M0zDx
	QC1UM46mOH/9Zr9bFxiF27ppyG6i9Wc2K15+I9jsNdmXpueqDEYZ1nqdZdBicsMlNyaCXGPoqku
	qAb9hUOhe7tk1eZvQFWS9S7MrQWs6CSM89v7ybsoLVs9FRDjgZlwcbf5oar8mzaP0bYivX4bNUN
	13O3Q2ki+TI86lVV7QlrOz3cwdrJ/sPqfRVvJhhNZ6pXwVzCSkKWYyUJBEg=
X-Received: by 2002:a05:693c:88cd:20b0:386:a16d:1bce with SMTP id 5a478bee46e88-386a16d1cb0mr6943823eec.36.1795453083560;
        Mon, 23 Nov 2026 08:58:03 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aa203267sm13315280eec.0.2026.11.23.08.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 08:58:03 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v13 3/3] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Tue, 24 Nov 2026 00:57:03 +0800
Message-ID: <20261123165703.667564-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261123165703.667564-1-coiaprant@gmail.com>
References: <20261123165703.667564-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_085804_511280_4AA5E92B 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Ariaboard Photonicat connects a Motorcomm YT8521SC Gigabit Ethernet
PHY to GMAC0 through the RK3568 XPCS using an SGMII link. Enable the
required DT nodes to make this port operational.

The 125 MHz GMAC reference clock is generated internally by combphy2 and
is modelled as a board-level fixed-clock, since it is specific to this
board's SGMII wiring. Configure GMAC0 to use it as the RX/TX reference
clock.

Enable the XPCS node, route combphy2 to GMAC0 through
rockchip,sgmii-mac-sel, and reference combphy2 as the SerDes PHY.

Add the MDIO description for the YT8521SC PHY, including its reset GPIO
and LED configuration.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 55 ++++++++++++++++++-
 1 file changed, 53 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 3cc05f08f429..522778a36423 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -41,6 +41,13 @@ chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	clk_gmac0_xpcs_mii: clock-xpcs-gmac0 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac0_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
 	hdmi_con: hdmi-con {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -283,6 +290,7 @@ &combphy1 {
 };
 
 &combphy2 {
+	rockchip,sgmii-mac-sel = <0>;
 	status = "okay";
 };
 
@@ -302,9 +310,18 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
-/* Motorcomm YT8521SC LAN port (require SGMII) */
+/* Motorcomm YT8521SC LAN port */
 &gmac0 {
-	status = "disabled";
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>;
+	assigned-clock-parents = <&clk_gmac0_xpcs_mii>;
+	managed = "in-band-status";
+	pcs-handle = <&xpcs>;
+	phy-handle = <&sgmii_phy>;
+	phy-mode = "sgmii";
+	phy-supply = <&vcc_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim>;
+	status = "okay";
 };
 
 /* Motorcomm YT8521SC WAN port */
@@ -383,6 +400,35 @@ &i2s0_8ch {
 	status = "okay";
 };
 
+&mdio0 {
+	sgmii_phy: ethernet-phy@3 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x3>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PC6 GPIO_ACTIVE_LOW>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+		};
+	};
+};
+
 &mdio1 {
 	rgmii_phy: ethernet-phy@3 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -653,3 +699,8 @@ &xin32k {
 	pinctrl-names = "default";
 	pinctrl-0 = <&clk32k_out1>;
 };
+
+&xpcs {
+	phys = <&combphy2 PHY_TYPE_SGMII>;
+	status = "okay";
+};
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
