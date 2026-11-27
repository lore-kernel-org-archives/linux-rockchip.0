Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BFC8606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 08:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QApJE/JO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gahingwoo.com header.i=@gahingwoo.com header.a=rsa-sha256 header.s=fm2 header.b=TFexu2oi;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=U4SptANc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=GgFxjripVqUtAUy59v39xIe2cB3EfuWkhwjlM2rzI2U=; b=QApJE/JOOn73xFS5W3xm1HznLH
	hk0Wspa/m+Hj+eLUKW11Bsf7GkH1kUz59cjrXf72VQhP1Ssb68Q4Yr3GBasyLx9lvYiHfZG7p59S6
	/PPn4LuI/0Q2Py5EpftCIYPiOaKIlMG4XsDwTSTFA1FGeuzHhIxLsQCMnb7E97I2hkI731SJAnN1v
	JW/gQj/SEJL+6kf6sHkfodpby3gMfg1kpWaLchW7/+o34k5wwV9q6cEmFz1+LjUQSatbiWGhGodnf
	zxbbCGBDdHrojmwz8G7yh7f3smIJYyxj8htOrZOsmA2hiv3m2h3ECynXJ8dK/0l1mP8mF32mK2e6X
	CMW3X15Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWrFI-0000000FFIP-2Sv1;
	Fri, 27 Nov 2026 08:23:52 +0000
Received: from flow-a5-smtp.messagingengine.com ([103.168.172.140])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWrFG-0000000FFHq-1NOv
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 08:23:51 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
	by mailflow.phl.internal (Postfix) with ESMTP id A873B1380D0C
	for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 03:23:46 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-09.internal (MEProxy); Fri, 27 Nov 2026 03:23:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1795767826; x=1795775026; bh=Cv4+1Xfr83
	9+h7qcIeYZ/jNwJfWC9c1igxZwvPTAJ+0=; b=TFexu2oiLqPXqW6iJnEDF8gtd7
	3hkqAn1fPh+i5sLJzaBXdfXqgmjT+X7E9j/CvIJ6gQSzP2oQ1mLcKXorNxKL4L++
	C4IQ7GKDIHWuJ4lM5ek5QEtrEPabJN/xnB0rZn2PGlg4vAzvfkvD5cY43q1osAMo
	F1NKkYcTgrFi7qhvB03NRNQHnpHrUjUkhTrwFDuxk+ihhca4RghR7N9H2XMk33vY
	tons1AJ8Tvi+Rqdsh79CvGehvTFsqYpTpKMKUwreXILIPRBoDZQuUvQCa+coVbo5
	ytzW267w8AcOkvlMlTXVBvmG6gI7//jbIuml0cP4FijqJ5dsjxegXK0lK+mw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1795767826; x=1795775026; bh=Cv4+1Xfr839+h7qcIeYZ/jNwJfWC9c1igxZ
	wvPTAJ+0=; b=U4SptANclt5YgEsq+wm79HWhRnldb0IA8LPcVX09ywri2l05xIf
	SPSiyGGfCGwV7cVOGl+cZGsh6QMix+64raT0DUyY1EKdZamR2yodGR8+Xi1kmgur
	BZVlUb/GG1psGYRNh0adLwr4WAUtLq1az02W1XzZelAtDbQRV11GXSbFs6NS+dQ8
	zlYJNy8R/riqSfJvD4rFYSF26bN7sgMTI0W4kQUU0bbYCX2QyB4k41FHM4DdBgZf
	WpX2VoZ7LnZW7WdBo9IgbVISQgyY/rr2pgtz/vwmzZf14robRBcgAOk1h275boRa
	qBZLhpcQJWmzV0SgjUdETJh34FhW6Ux0SRQ==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=gahingwoo.com a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1795767826; d=gahingwoo.com;
	mf=PGdhaGluZ0BnYWhpbmd3b28uY29tPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm2:rsa-sha256:Uom6nChEOUsSYT0PUUNwF3IdWXIsh8v3osAQYHfSzQhKRDg
	VOv164cKaIIdyIOTD9KmMqImQY7GTuG7HIhwdu1WuxTVvFDa/+C36JeMT9DuuF6f
	pOmFHvcHBZ3oJydeywaBcwyM0n8tn1pl19X3WWQ/Bl0vCV4ZUX6DkTM1jhvmFNnu
	4CY4B6LU++KagU7lNMo38j761d7CXukGg4fyh6pUzxt/OTuT3skk/5TLr5CZbYIC
	HH+sfSm1wbSjig3QEp+m2GmPFScC4+2Y+zcAtw6p7o2c20FIE0h6ksgoDs5zu7Aq
	1GrCJsOs9fAy3YCfNtsrdgQpa1cK24KfxPFHoIw==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=9;
	hn=cc,content-transfer-encoding,date,feedback-id,from,
	message-id,mime-version,subject,to;
Message-Instance: m=1; h=sha256:rygoyZPL1u+UVUmkNGGaiiqQfcN/RqjD9KBaruIY4Fg=:Rn3DoyUg+bNZtxOMK4Zjb7TItUkllrEEKyE8Mqlia8o=;
X-ME-Sender: <xms:Ej4Jaw3ySWLz6lqp5GFvyQwH_27JnqMUSdvWK24V_e22x0Awom_lXw>
    <xme:Ej4Ja3qkuyrNP8JefuP5l7oFeo1RgFc4p3253ZQ32nXsczSiHKW5MHUi-OscVYqO3
    Z1RW2k9JVoRmR2lBJ4OBAy4tfrICvU09mirqMy2OyjLLXMk9RLMyPpq>
X-ME-Received: <xmr:Ej4Ja9XcyKeHHJTgtuicRsM2JZKbSDtCqkQO62VQ-8d4h6-ixj-veZPwC9377SaNJWFuDgvd>
X-ME-Proxy-Cause: dmFkZTGjqEJdCCdkToT1ymEPOxN7ZB6H8+j3Xlolm6YU09DyG4QPfDv+eCsmWTDd2bQ4BT
    E8yhE1qvj70nkFTa/nN0PxFDePnjYXlndXvEGJegnV0j8GUf/JjHauMzxhtxqEynQS+fxI
    eOPd9cOsc3bUwvRSDkoPJLz78gey0XShzEjfmDbl+py4vPIoq2fzlgjhguILc5aii/Mg//
    Eiz/xQJx+3CPYbjrOkPO/X28szkIwdeVlJwbDF6EJuJ9nTb5I72UHcZNvHREPUCY4Pb8Dp
    Yjq+STILo7DVsNKtOgm7Q8npT1ZYWUyUzNtF3ZnyR1EPbShfYkmqCmasmanXJNIIwVsVU+
    iLhLkABVUa3DGWpzvSXu40TZHQ9mtUfRvFDsTvCWdyB5s3yFVqcZ5Fmzf+YnTAivMX6Saz
    +3aZLLV8pjRm6wLCQUflKxMtWTgPqC927FPLw+KElRlAiMuvHq7e+4wBfvWwXYdUjhIz5P
    yEB1RIilec+63Givv3DD34Za2tFzof9ozHvc9Uz0O8f8FQooOQsF2mul9AR9HueW1dy50w
    NXQar2IVf+Zj1klAd94Tu+xefgQmue3UU0MnibtOeVEjT7un63DnWF/YnvPXnnBw2vsu5q
    K5fNSh5/l3saF3WKQQ7qpdNfT6/eXxgVvtNLAkKTPga0KsjfVyh/tRI8oNKQ
X-ME-Proxy: <xmx:Ej4JawpmvmHBZiziakneIzj77V8vcW2CgZjKB5-qhgLVqzwA0mP6GQ>
    <xmx:Ej4Ja0BGFMdRcImb25-Bt2q1rsED1EE-_N61H_BIPg8mkQl8g0gMJA>
    <xmx:Ej4Ja8jgwRaIFreKyx2QdgqTxhCaN5bBxIbW86OnLiJlgvxDGGvsmw>
    <xmx:Ej4JaybOoBzIl07ZqOXDpqAUXT4pA0rJ9zyGYpZeXZOq6BX8pqYcSA>
    <xmx:Ej4JawkxbLTSSwHpnadAOiLKV0HsLTxMtr__Z2xkQf9hLjLoK_60Nkz3>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 27 Nov 2026 03:23:43 -0500 (EST)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add Bluetooth to ArmSoM CM5
Date: Fri, 27 Nov 2026 21:23:40 +1300
Message-ID: <20261127082340.644739-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_002350_497375_129A3DEC 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The CM5's BCM43752 (BW3752-50B1) has its Wi-Fi described, but uart4
has no Bluetooth child, so hci_uart never probes it.

Add it as wired on the module schematic, with the HYM8563 32.768 kHz
output as LPO. The binding has no BCM43752 compatible, so use
brcm,bcm43438-bt like rk3568-9tripod-x3568-v4.

Tested on a CM5-IO: the firmware loads and a scan finds devices.

Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
---
 .../boot/dts/rockchip/rk3576-armsom-cm5.dtsi  | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-cm5.dtsi b/arch/arm64/boot/dts/rockchip/rk3576-armsom-cm5.dtsi
index 71ea11e1f8ce..667e37100637 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-cm5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-cm5.dtsi
@@ -548,6 +548,22 @@ &uart4 {
 	pinctrl-names = "default";
 	uart-has-rtscts;
 	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&hym8563>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio1 RK_PD4 GPIO_ACTIVE_HIGH>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB1 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wakeup";
+		max-speed = <1500000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_h &bt_reg_on_h &bt_wake_h>;
+		shutdown-gpios = <&gpio1 RK_PC7 GPIO_ACTIVE_HIGH>;
+		vbat-supply = <&vcc_3v3_s3>;
+		vddio-supply = <&vcc_1v8_s3>;
+	};
 };
 
 &pinctrl {
@@ -557,6 +573,20 @@ hym8563_int: hym8563-int {
 		};
 	};
 
+	wireless-bluetooth {
+		bt_host_wake_h: bt-host-wake-h {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		bt_reg_on_h: bt-reg-on-h {
+			rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_h: bt-wake-h {
+			rockchip,pins = <1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	wireless-wlan {
 		/* GPIO1 PC6 - WiFi power enable / reset (sdio_pwrseq) */
 		wifi_reg_on: wifi-reg-on {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
