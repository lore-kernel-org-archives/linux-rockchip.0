Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50C05E95A8D
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 13:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VlrbEEkD4Lh96Dyq0wO/6hCc7JHHb4Xvw0ggvXmEpIU=; b=jtN474R3DEaYpA
	6u+zmzouKJjNE0S90Kdh44G6SK54RvN5JorDiqw1Y0suT3zm7OAGMUF7SO8dHSTx2cneGrJQZU0B+
	EkCAmag8PqT7bT2manWyBPxEdsl/MgkdXrYhvP0lbOeDkfJCcyvWyMnEqDK/MdJzvERhUobvmsEUY
	24WlDa5e9ZmAY/YaNIQhY8RMy7Xpi8/cBMzzGlZFyio8S5eliXR20BpORp05m9gBBPckkgiKUrq/q
	aySXRIqe6+YLkgLrANfSmNR+58DJmuUAXhyFT5W3C7sC4ciISCSA/G4PoquiQLyzZ4eDVYSP95uV7
	Czx1pWqh+Ee0CeF0QhGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaZhW-00000004raL-1zxB;
	Tue, 30 Dec 2025 13:23:50 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaZhT-00000004rZZ-2hWL
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Dec 2025 13:23:49 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so105254055e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Dec 2025 05:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767101025; x=1767705825; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bzWnrkrlR5q++h42uLlncPmWAMWNl0rJ9nbD7WUwTfQ=;
        b=INyKMsqHmBilv9QcyzyxGc3cgIGgT/+FBhiBaFGKpC0PDVKtAO0sL3ImwyHBPp9pq8
         nzFzzJI2taYBjgdKgMHKOB20U5Xmkc8oEwJEKYbPZFkTh1WAS9afJobbfOXDYzkNS32S
         KAW7AkAyN6kvvJjWfsO5LoU5u75Wk/eouQeH/+XJheED8CT5NqKIq5lyDouz1jozOuAy
         prunlUnZjE8O14lqs/+kyu+SjriLFbDRJQEIRyEz3VU3EmSyP+27M6amm46yydXROiUT
         dP6mM7jXinTRBPGgaVOc5nKwwdZA1hnVMLMyDP8w4w5XfgFe3/VZTZoEfY/mlS+0szAg
         vFyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767101025; x=1767705825;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bzWnrkrlR5q++h42uLlncPmWAMWNl0rJ9nbD7WUwTfQ=;
        b=ewJhNNC3fFbon3XfryTciBOzTXJzyOT/9EjIPFKhePyRF0PMjdRv/LGAu9escRdFWU
         tRXxGLDnGufwTI8n3xRQ1Cs1jP7I2/aAuuFqY9TwucI4VDBbkITpGmMYg7oywFMPLGPS
         4MbHUtKDOxiBclggFt8jVpHBdQ1gyQMzGHt67b5vob4BKNkieWsaOIJvVxdTI0FK+Qlk
         YwHGe099cI+6oUmAt9G1aOezMhLDetVGl7sDc8LzfHqH+6S+JcOyw/tKYkMopIFnaNH1
         1JbDPPr1RbdnAziu4QbRtni1R4MSY5BOfeuhh3nVtL3lvVJTp/MJGsTNNVbCvMEPbRWC
         h3Uw==
X-Forwarded-Encrypted: i=1; AJvYcCXD511qs7rXmpx/bSLrR3iaADIi4Kl25kqe7d86Ww1BSjFEuGxpTBA1nI3G0sBgCAQotnmrUXkPSawxZz9i/A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwKdYzahWn3K9jEHe3sSr6TpTYyyPSwWBNN10NVC2zWeALpakAo
	/mGfAiRswy+LSvMdZQhvrgLZKsEhE1Mqe1mhVCRTn1OVb6i9uqau8hUM
X-Gm-Gg: AY/fxX6HpEfAGfdCusFLzRjAVT9zOh0fTDbbKKYGlYSY8yvuafGOSEx3NW6f44X3dII
	1CtM+1KTIQw7VstWXIEE0tbfTeWQsH6EqDzk7fPM2fv4v1Qh4cc8k2eAQKfNsuG3btgvNlXfOGt
	5SaZ/o4IdlCnseBHrNDP2uiY0ZPZINMrIy0Mq2RGPoDndjkK6JesCMreLnb6CxQrIZCwrVuwCam
	MHDBohA0FA0/iLw7Kcw4a9CA1o5ITf7S6Q5KrHQvuvLRKCen9pkIiDaQd1quQ0mqQEIry92uJ6W
	CPWRdLcMr98qN4XqnUYB85MrlQvXTshqruoUsz5NkiY7YoEJB52gRBITsBcWLW+CXNJij00e/AU
	QatSY2C1qQGOz6YLXZ5UBwlz7nRkBAgiPDcP1cO1fN6MH5pueXGHitq5wN9wQbah/B3f1tPIYbE
	2CVavhttIrNumk0755l9oBYSeLLxaCEW1ZUJlAHJyBmV07yFQ07k7VsFDw5+nvINbFy9Pap9c=
X-Google-Smtp-Source: AGHT+IFUxDCYOfLilQ6lfBDnwhOcL2E6VOHW1djgaGHT1hjypUZN67hw/Qlj7b7P8zYClnV8NZsXzg==
X-Received: by 2002:a05:6000:1844:b0:430:fa58:a03d with SMTP id ffacd0b85a97d-4324e70ef05mr36872432f8f.63.1767101025060;
        Tue, 30 Dec 2025 05:23:45 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea830fesm69332312f8f.20.2025.12.30.05.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 05:23:44 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 30 Dec 2025 17:23:34 +0400
Subject: [PATCH v3] arm64: dts: rockchip: enable UFS controller on
 FriendlyElec NanoPi M5
MIME-Version: 1.0
Message-Id: <20251230-nanopi-m5-ufs-v3-1-ed188ae34fdb@gmail.com>
X-B4-Tracking: v=1; b=H4sIAFXSU2kC/3XMQQrCMBCF4atI1o5kRmPUlfcQFyWdtgM2KYkGp
 fTupt0ogsv34PtHlTgKJ3VajSpyliTBl7Fdr5TrKt8ySF22Ik0GkSz4yodBoDfwaBIYasgZbTX
 urSpmiNzIc+ldrmV3ku4hvpZ8xvn9V8oICLqmQ43GWiR3bvtKbhsXejWXMn00afzVVDQ7PjrNj
 NbtvvU0TW9ja/Pf6AAAAA==
X-Change-ID: 20251127-nanopi-m5-ufs-52f2c5070167
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2289; i=alchark@gmail.com;
 h=from:subject:message-id; bh=UQ5DWsXFkrEb/TWPrQyCX2bixd/4Ob5s+086Cxhqs8I=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGX4o7EtZ/bd/e2hyd6JaNJy59lZ/Wbv6rJ3NDHmfK/
 N6LE5/N75jIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DA11jHWMGLg4BWCqL1sw/A9aqLEx9z6DTEq9eoCSQcfu/7Z/dS9uFT0Y5dVywlFes4Lhn21rzdx
 1P7fMDpo+M6TPeeYdefaco9pvbG7Jn/m16mCVOQsA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_052347_700169_F87FBE3D 
X-CRM114-Status: UNSURE (   9.54  )
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

The NanoPi M5 board supports pluggable UFS modules using the UFSHC
inside its Rockchip RK3576 SoC.

Enable the respective devicetree node and add its supply regulators.

Link: https://wiki.friendlyelec.com/wiki/images/9/97/NanoPi_M5_LP5_2411_SCH.pdf
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Changes in v3:
- Dropped 'en-supply' from fixed regulators, as it's not envisaged by the
  fixed regulator driver and seems like more trouble than its worth
- Link to v2: https://lore.kernel.org/r/20251201-nanopi-m5-ufs-v2-1-ece9c0ee17c4@gmail.com

Changes in v2:
- Describe UFS supply regulators
- Add link to schematic
- Link to v1: https://lore.kernel.org/r/20251127-nanopi-m5-ufs-v1-1-0d28d157712c@gmail.com
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 25 +++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index cce34c541f7c..c5b34069a443 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -110,6 +110,22 @@ vcc12v_dcin: regulator-vcc12v-dcin {
 		regulator-name = "vcc12v_dcin";
 	};
 
+	vcc1v2_ufs_vccq: regulator-vcc1v2-ufs-vccq {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-name = "vcc1v2_ufs_vccq";
+		vin-supply = <&vcc5v0_sys_s5>;
+	};
+
+	vcc1v8_ufs_vccq2: regulator-vcc1v8-ufs-vccq2 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "vcc1v8_ufs_vccq2";
+		vin-supply = <&vcc_1v8_s3>;
+	};
+
 	vcc3v3_m2_keym: regulator-vcc3v3-m2-keym {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -906,6 +922,15 @@ &uart0 {
 	status = "okay";
 };
 
+&ufshc {
+	vcc-supply = <&vcc_3v3_s3>;
+	vccq-supply = <&vcc1v2_ufs_vccq>;
+	vccq2-supply = <&vcc1v8_ufs_vccq2>;
+	vdd-hba-supply = <&vdda_1v2_s0>;
+
+	status = "okay";
+};
+
 &usbdp_phy {
 	status = "okay";
 };

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251127-nanopi-m5-ufs-52f2c5070167

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
