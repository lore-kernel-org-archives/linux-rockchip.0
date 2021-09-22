Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 835A6C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 23:04:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AFE5B60FC1
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 23:04:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AFE5B60FC1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxbAmBznERETCDg+INawEWJgsg0LLf7griOLS7s+d4E=; b=TVQE8fHeQ55Uj7
	XBDVh9B4OOiL3efoVDvQdn2Q+0KluPX8+YDcYBlUpTfrD02p0RP2WcMbBvoxQlBh0VQOmmVDc187o
	/5VbDzS60jNSuyOBJFQGwfYXuIFbWPgxgqVRjsvJFtd2oHJiO/sE6Gp73/hYUV7g5ZIF0feJTLjpz
	26PGRvv3S+R294NQuIoUNxT/II0gc4LG0d/rgNVd0Gb0zX9p+v0ecR+w1pkMAMAM2aslK71+9Gopp
	WSVR55+nnEqgoUN6BQtgFWwG3k/9IKEAq0UUaKaUERCCwtRBmGZad5RpRoE1B1uWR4N2ida4Opjtr
	I4tFL+Bi8IUppZKWU/dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTBI7-009tPO-Bv; Wed, 22 Sep 2021 23:04:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTBI4-009tO9-SU; Wed, 22 Sep 2021 23:04:38 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mTBI2-0002xp-JY; Thu, 23 Sep 2021 01:04:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: define iodomains for rk3368-lion
Date: Thu, 23 Sep 2021 01:04:28 +0200
Message-Id: <20210922230429.2162535-2-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210922230429.2162535-1-heiko@sntech.de>
References: <20210922230429.2162535-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_160437_004702_8435B67B 
X-CRM114-Status: GOOD (  11.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>

This is not strictly needed, as 3.3V is the default,
but good to have for descriptive purposes nevertheless.

Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
[fixed ordering]
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index 6622f11a169f..8e82ca3f1c6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -273,6 +273,18 @@ &i2c2 {
 	status = "okay";
 };
 
+/* The RK3368-uQ7 "Lion" has most IO voltages hardwired to 3.3V. */
+&io_domains {
+	audio-supply = <&vcc33_io>;
+	dvp-supply = <&vcc33_io>;
+	flash0-supply = <&vcc_18>;
+	gpio30-supply = <&vcc33_io>;
+	gpio1830-supply = <&vcc33_io>;
+	sdcard-supply = <&vcc33_io>;
+	wifi-supply = <&vcc33_io>;
+	status = "okay";
+};
+
 &pinctrl {
 	leds {
 		module_led_pins: module-led-pins {
@@ -292,6 +304,12 @@ pmic_sleep: pmic-sleep {
 	};
 };
 
+&pmu_io_domains {
+	pmu-supply = <&vcc33_io>;
+	vop-supply = <&vcc33_io>;
+	status = "okay";
+};
+
 &spi1 {
 	status = "okay";
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
