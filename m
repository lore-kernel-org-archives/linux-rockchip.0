Return-Path: <SRS0=2I9J=OG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB984C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 19:09:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7FE3D610D1
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 19:09:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7FE3D610D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nluHPWhrdDpZDTrzQh80eAhveCv70vJB3PLDw4sNwEA=; b=Gf5Q5rcv8G0Nae
	RVACk4qHlztcCvEnvbf09uarQ5pHMlPdFEHBAqHVtezp/Xtd4Qt/eYdydKyo6Qxl0rddc2DUSRhnv
	2ARYBWc891VgvD/rZogu3ieDOGHvnfOlxl4jwOA+5DxO1sf+jzLple1qLgJBpfF0Lx8ZEUVK+9xHc
	nuk2A1x8AUDUKqu5uCMwimHx4Dg+3mLkQii0iM13Hwc5NrpOU81cIqth9c3329f88Le9kY1YsQ9fc
	r/h7sdM3kLoN6wQ1TLDLublFF0abV16MXodrA6zKxQVKdAaGGK1x/u3GPtKpm2PMTW/mx12LSdeWq
	uOfra65aFwjY4rP1hyDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQwlZ-00CEuO-8e; Thu, 16 Sep 2021 19:09:49 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQwlW-00CEti-4q
 for linux-rockchip@lists.infradead.org; Thu, 16 Sep 2021 19:09:47 +0000
Received: by mail-oi1-x233.google.com with SMTP id v2so10456119oie.6
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Sep 2021 12:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RLRBlnVNi17+ow5TrySaM4i4u5LdTRHPbnI02x12qH0=;
 b=Bj6VSBPwrKgMAmJr7eDmeyOqRnppCyyGPf+Z87vDRoG5S1ecfOYekYQFzOByKwPjXL
 yDaTu1LOnvDyNC0k02nWOdLBjKXTKSomzMrSCnZudMYiy+qwiNBUWBOuEwVJgvhKWXC+
 B6TBr17aalAOPFw4/Emp5/ajJxwXT5x3BVIRjvBbHcjkUa3+4LyjSLJqE9unofpIPO/K
 NXXCZkL/YjBaZzjN4pQgBco2Rr90MNIbJy4r1+IYt/gokzXIPklrlO+FUP2T3U0gq7Dt
 RdxiTqVv9oLu3DAVeh/DXGWqYSqPtUuUFMw1rDHOCIJLFMK1qzM7pzkQb0CmC3FIe9Y2
 4t8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RLRBlnVNi17+ow5TrySaM4i4u5LdTRHPbnI02x12qH0=;
 b=QrqNngER/K+Wjk/nelxPY7HIVAiSibfnxdXt7HicriCLCLAVBVAPi0H8NiedE8x50H
 refcm6X5w97EEw8MMBVAzdrtp+UyZQMl04C4XJz0pxeT7Z1nDgGacTqMJ4wpfmVkddkU
 PM9nYYmiBv6Tlt4/mpKp1T72mcQ6WglDVQe0qYUE8CIt/+qg2UxRrnAjTeZaR/Rkrr/z
 aFd1yfVzaRlqIjuKbDMwBGzNZVxMJM58IKNyc5KfFWPQLl1ytzeIFoFPGfamY7K5dkWH
 /iNU6tf3n39F+5PCxReUdEZL/r13OflLZju4tFj11e6sIzI477bMc5Wt7HVoFRbR6gMu
 +Fiw==
X-Gm-Message-State: AOAM533VB2pWWFnk7wAKPg4GuLEVbFMZVKIh6z0HQz3nf2TbCoqwFm8M
 UD4ZfGcotMTnJ0YUfOKsgmt+TUMtwdc=
X-Google-Smtp-Source: ABdhPJwBtS1W/QntHfjSnkquwQuMfavF2gDEgmczU80Lll3g6PeZc2vnPJicVDXeID5MBsQ14lyfgw==
X-Received: by 2002:a05:6808:997:: with SMTP id
 a23mr10600919oic.11.1631819383749; 
 Thu, 16 Sep 2021 12:09:43 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id w24sm318260oow.5.2021.09.16.12.09.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 12:09:43 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, heiko@sntech.de, robh+dt@kernel.org,
 maccraft123mc@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v3] arm64: dts: rockchip: Correct regulator for USB host
Date: Thu, 16 Sep 2021 14:09:38 -0500
Message-Id: <20210916190938.6175-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_120946_240269_9A0AC551 
X-CRM114-Status: GOOD (  17.94  )
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

From: Chris Morgan <macromorgan@hotmail.com>

When writing a battery driver, I noticed that the USB voltage was ~3.7V
while running off of battery on a mainline kernel. After consulting the
schematics for the Odroid Go Advance, it appears that the BOOST
regulator is involved in the process of powering the USB host. Power
for the USB host goes from the vccsys regulator into the PMIC, then out
from the PMIC BOOST regulator into the FC9516A (which is controlled by
GPIO), which then feeds power into the USB host. I named the regulator
usb_midu because on the datasheet the pin is described as "MIDU/BOOST -
middle point of USB power supply / boost output". Making these changes
solved the USB power issue on battery and I'm now reading approximately
5v.

Note that on my board at least there is a difference in time from the
USB PHY probing and the regulators being powered on. This causes the
USB port to be undervolted for a few seconds during boot up. The
solutions to this problem are either 1) to add the proper phy-supply
on the host port, or to 2) add regulator-boot-on to the regulator. I
chose to add regulator-boot-on because there is an issue with the phy
clk that causes a warning when booting (see v1 of this patch series).
Basically the clock usb480m is a child of the usb480m_phy clock (used
by the USB PHY) and also a critical clock. Setting the phy-supply
causes this driver to be EPROBE_DEFERed until the regulator is ready,
however upon unregistering the driver to be probed later the system
cannot remove the usb480m_phy clock due to a child being marked
critical.

Changes since v2:
 - Added notes about clk problem and regulator voltage at boot.
 - Added regulator-boot-on as a workaround for the voltage at boot.
 - Removed note about fixed regulator warning, as that has been
   fixed upstream.

Changes since v1:
 - Removed phy-supply, as this generated a warning in dmesg.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 7fc674a99a6c..8985efccbb4d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -207,7 +207,8 @@ vcc_host: vcc_host {
 		gpio = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		regulator-always-on;
-		vin-supply = <&vccsys>;
+		regulator-boot-on;
+		vin-supply = <&usb_midu>;
 	};
 };
 
@@ -311,6 +312,7 @@ rk817: pmic@20 {
 		vcc5-supply = <&vccsys>;
 		vcc6-supply = <&vccsys>;
 		vcc7-supply = <&vccsys>;
+		vcc8-supply = <&vccsys>;
 
 		regulators {
 			vdd_logic: DCDC_REG1 {
@@ -460,6 +462,14 @@ regulator-state-mem {
 					regulator-suspend-microvolt = <3000000>;
 				};
 			};
+
+			usb_midu: BOOST {
+				regulator-name = "usb_midu";
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5400000>;
+				regulator-always-on;
+				regulator-boot-on;
+			};
 		};
 
 		rk817_codec: codec {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
