Return-Path: <SRS0=bvCK=PO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5768EC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Oct 2021 15:10:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 06E3E60200
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Oct 2021 15:10:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 06E3E60200
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mef0xGFm1abA87T9Wp0Szi5B1PbmpCLBDilhlqR7vsg=; b=kVBElBScTHqcju
	YrCDa1CNKoHTe3n2AMA7kr0/pK4ruuqmBXEBVTCgDSKphUHYIYnkaiy1A9JbeCPActVdIIsYgjj+7
	8dFfA8GEorxh8aXaF/0sODFW9/BzwGQ31VVfgKXp4QCexWOlHKdBKVSGTKlLQrTs2K/UFF+fsBUS8
	jGfTOOSlqET2wPAlf9rDXejK/kCGKdM7chwWYWR/N9N7+NYUP7T85HG8vMwl24maLRS6fD92ggb4y
	EKacGAamikpXP20Y8cn/orcxv3Jl6iKjgIuO3cidvUNCbmTZ+1RvvkRPiW30LHg1gbr1AIWoANwRT
	L5IV2vzTVT+QBHpqRyrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfO5L-0026xt-4o; Tue, 26 Oct 2021 15:09:55 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfO5I-0026xA-6D
 for linux-rockchip@lists.infradead.org; Tue, 26 Oct 2021 15:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635260989;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=RhWBGhTPUXjWCenxI84mF0qWi0IwhDx4oi/aU2tmg8M=;
 b=TQ4yvA9VainqVIF/u8eofsFiBKoLY0HmDaWkXkqFSuzkbE0E3a/+4tzCtkXpUu4Enjs0Fn
 VkIPStCRAuJrQFbROyCsgLIu5UYQ5p6r3QzM1SU2pguHEEOMukzhnR26nx/mOK5pXGE1Oy
 DgdusJAA1+oD0KmvanJt6ZSsDugoqWg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-41-dCr9twRMPm2CU3kpYXEgmw-1; Tue, 26 Oct 2021 11:07:58 -0400
X-MC-Unique: dCr9twRMPm2CU3kpYXEgmw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B1E210B3940;
 Tue, 26 Oct 2021 15:07:56 +0000 (UTC)
Received: from dreyauc.ausil.us (unknown [10.22.9.58])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F09B19D9D;
 Tue, 26 Oct 2021 15:07:54 +0000 (UTC)
From: Dennis Gilmore <dgilmore@redhat.com>
To: linux-rockchip@lists.infradead.org
Cc: dgilmore@redhat.com, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Florian Klink <flokli@flokli.de>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] arm64: dts: rockchip: helios64: define usb hub and 2.5GbE nic
Date: Tue, 26 Oct 2021 10:07:47 -0500
Message-Id: <20211026150751.70115-1-dgilmore@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211026_080952_408783_D1C5D6EB 
X-CRM114-Status: GOOD (  10.81  )
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

Add the 4 ports on the internal hub and define and turn on the 2.5GbE
nic.

Signed-off-by: Dennis Gilmore <dgilmore@redhat.com>
---
 .../dts/rockchip/rk3399-kobol-helios64.dts    | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 26d45cf7ce00..1ffddf860375 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -125,6 +125,18 @@ pcie_power: pcie-power {
 		vin-supply = <&vcc5v0_perdev>;
 	};
 
+	usblan_power: usblan-power {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PC7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_lan_en>;
+		regulator-name = "usblan_power";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
 	vcc1v8_sys_s0: vcc1v8-sys-s0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc1v8_sys_s0";
@@ -465,6 +477,11 @@ hdd_b_power_en: hdd-b-power-en {
 		vcc5v0_usb_en: vcc5v0-usb-en {
 			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		usb_lan_en: usb-lan-en {
+			rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 	};
 
 	vcc3v0-sd {
@@ -563,5 +580,43 @@ &usbdrd3_1 {
 	usb@fe900000 {
 		dr_mode = "host";
 		status = "okay";
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		hub@1 {
+			compatible = "usb2109,0815";
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@1 {
+				reg = <1>;
+				#trigger-source-cells = <0>;
+			};
+
+			port@2 {
+				reg = <2>;
+				#trigger-source-cells = <0>;
+			};
+
+			port@3 {
+				reg = <3>;
+				#trigger-source-cells = <0>;
+			};
+
+			device@4 {
+				compatible = "usbbda,8156";
+				reg = <4>;
+
+				#address-cells = <2>;
+				#size-cells = <0>;
+
+				interface@0 {	/* interface 0 of configuration 1 */
+					compatible = "usbbda,8156.config1.0";
+					reg = <0 1>;
+				};
+			};
+		};
 	};
 };
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
