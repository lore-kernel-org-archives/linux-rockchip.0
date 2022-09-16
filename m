Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7894BECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 16:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oo8CAUxfwtFzs6gwgyu459f1kBgf5Ko+FiCC4aLDolU=; b=yhn1+ryzU9s3By
	hWQpz1/0XlTRY9Kh4oOj2lwl2eKhr2N4BxmRyznx+aovaA+L8tGO+Nk3jrOBk3d+kD6DINQswsVEy
	suoNU/lQBlZvlzwNh945lIoBHpzKgoq8c958LEpWVAN9bXGnw1kkgOraRmI7I0sccrf4ocX8HAmZY
	c4srxoV02S2fwgBOjhZC1Y0fDG0X6dYYTFRooTcQWG+FVCLvKB6v73r+XrzSpRm5OboVthpFsIDVE
	rsG0PditmrrO74+YNOuFk3rdGsUbFpgOjxZJGon+nvmdChW3AnFQoN6bpDeHBE8aY2F4w5ayTgv04
	INy8QzXn0L1wKZeq22yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZDtR-00Es79-5b; Fri, 16 Sep 2022 16:08:41 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZDsl-00Erhw-Sr; Fri, 16 Sep 2022 16:08:01 +0000
Received: by mail-ej1-x633.google.com with SMTP id go34so50476653ejc.2;
        Fri, 16 Sep 2022 09:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date;
        bh=X7BPGnF6bQ/0IRe6FDfv4l/ZtO8PuWKe/uq2hZ61y7U=;
        b=Jdabwp67LYUAW9I9VxvpApOfvHk68AjZMmlOdtwoeMK912DF3zdtPYzK7kgJ9Pnu1c
         Ur0EpX46LsFHclT6w3+VaiGR/EC9NHg+qYY6ePxdZ1fJAu4blA11vCT5y1TvM0h23j7F
         KBghYRSJfKem7P28MKbN/i7/6QsmZI3fgvIbOsqC/HiABX9XU0PTIQpki6pdmS3C5nfw
         +6Ctzf0gBuVcau1ypj260B5p8rN4APHrKwCAN5PrSSUo4XNIiNgfllbdEWtCW8VfiznC
         vQWGAoco7B4HlfxsHlv8xy7cySp/S+OLcSb0DX8c0QYYjWp085rdyCOLN03dIsMUEx0g
         PTqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=X7BPGnF6bQ/0IRe6FDfv4l/ZtO8PuWKe/uq2hZ61y7U=;
        b=tbCM18jE3GmjAdFDZev/Az6tm12wF7wx0jo7AePxZytbiEFxVNZiaSR0n58wSynxyk
         O5cpIJQYmdjROQ/P0W8gIc4PBZN1vZ+ilhd/CHPTh/sx1SgtjhtlE3IQKRik6ngk6X09
         YPUX4gl1AIcrPRgFjTmKzKICTUsqvuXX53b5HFLEjtWG7+NrW7O6mQZEH1THqtj/4tyl
         +0Zt6BKO0gJyTnsHvnqvZsLkoCBcahGQhgmoqZ+NQKN+740FaZjZnP4+G8Oeuh44n+mT
         cl2dprSGD8/C0Ika4X9fJet/moecU7UttOr2JeSm3J+qywTWfC7jVnI4BCvkeQu+gykq
         tq0A==
X-Gm-Message-State: ACrzQf1FZny/lQ4VePVptAKyiYjybWdMK2lGXeTFDLPUIwwvJ/Lcrx1v
	PVrJOUuI0JI660IvnWCAMAbJuJkluw4hYe2F
X-Google-Smtp-Source: AMsMyM4NMrkny7V6n7+dfQMX6Ljm9KhAyl+R5E60PQt4/m8P+4y5f90uayPLL6lGRpbQVAu1vwwIFA==
X-Received: by 2002:a17:907:dac:b0:775:58d2:defe with SMTP id go44-20020a1709070dac00b0077558d2defemr4080095ejc.231.1663344461400;
        Fri, 16 Sep 2022 09:07:41 -0700 (PDT)
Received: from lab.hqhome163.com ([194.183.10.152])
        by smtp.gmail.com with ESMTPSA id e9-20020a056402104900b0044f2564c28csm13425046edu.20.2022.09.16.09.07.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 09:07:40 -0700 (PDT)
Date: Fri, 16 Sep 2022 16:02:53 +0000
From: Alessandro Carminati <alessandro.carminati@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] arm64: dts: rockchip: k3566-quartz64-a: refactor
Message-ID: <YySeLfQp5aXt0VY+@lab.hqhome163.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_090800_054387_18AE097D 
X-CRM114-Status: GOOD (  13.84  )
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

Splits DTS for accommodate the new versions

Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile                    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-usb3.dts  | 9 +++++++++
 .../{rk3566-quartz64-a.dts => rk3566-quartz64-a.dtsi}    | 5 -----
 3 files changed, 10 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-usb3.dts
 rename arch/arm64/boot/dts/rockchip/{rk3566-quartz64-a.dts => rk3566-quartz64-a.dtsi} (99%)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index ef79a672804a..8c843f6fc3cc 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -59,7 +59,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a-usb3.dts
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-usb3.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-usb3.dts
new file mode 100644
index 000000000000..1739c00ea9e9
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-usb3.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3566-quartz64-a.dtsi"
+
+&usb_host1_xhci {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dtsi
similarity index 99%
rename from arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
rename to arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dtsi
index a30b17fd3c27..f92675627575 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dtsi
@@ -788,11 +788,6 @@ &usb_host0_xhci {
 	status = "okay";
 };
 
-/* usb3 controller is muxed with sata1 */
-&usb_host1_xhci {
-	status = "okay";
-};
-
 &usb2phy0 {
 	status = "okay";
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
