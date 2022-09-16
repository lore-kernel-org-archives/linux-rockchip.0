Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82B3BC54EE9
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 12:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ISqhJB8nEpwJQ5NfwN0tB8vO87566PVGi1Nd+rQeCiA=; b=sNn8MoxIIpqh+6
	fiXijP3pX9us0o5FeiPipbG2KemFlUSMjxyeLjgJbdlhHdZuWFlgePtSeXJv+GK9eBzrBXSZDGfjM
	N8JlqupvfV4AVDfk5hn0NgpPHQBbCUt7N/VrtP25TuLluAdP10jeeJ5z/CnDeqGZVHSYUUUpXIPNU
	licFRSN2ZTARb74mvf2hHMfjYRR1HDQMJF8tIoim5ZXx3ll4+YPNUu4ezDuz4QGj6PKd+wO29ltQG
	gaDMau15xULFqIwBAtrAyiuM3RUJN/g0oZHFzOr2APtEfpWhRNpzfnc9z7wEX4e7VoP7l1cpNITqm
	Q0Z03604RoJPNJ6wO//A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZAvQ-00DQYD-4c; Fri, 16 Sep 2022 12:58:32 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZAvC-00DQQ9-4X; Fri, 16 Sep 2022 12:58:19 +0000
Received: by mail-ed1-x52e.google.com with SMTP id y8so24454981edc.10;
        Fri, 16 Sep 2022 05:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date;
        bh=IG4b/9qkVqXv7kLI2B6K6D4fsAXw0d141JxQKyJNYJk=;
        b=NTTHo2e/DLNQhPAGpNTyU4dy3HZlapFC+TotD6eGY2iPZWGaQKNtP+zZNY6b8s3nNM
         6VflsjiW6wsi/Ez5G42TUhdjM9bxVNHHgBsUs0SgIv9rDGlcqSJ9XdZszt3SbJKCiXTb
         IjWkYFXfsrnjsKJ4iKBK/cp17oyHgREi0y7O40gMwt9H3GJPxGYN60SCS2hX/Afcyegm
         iOZZpXbm0Ak1JndAxZlTMGFRAzRq+GqdZh6sMSsdf8wBm03VuXXUl6XIdH+JhJxAqX5M
         cznDeN8eLwa5yc4gjy6hcyBP5/Nti0JD6LEgZoRt7cEE+qxiMjfYCE/UMglfooyZMIgy
         aNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=IG4b/9qkVqXv7kLI2B6K6D4fsAXw0d141JxQKyJNYJk=;
        b=mYmjjBsRKs1+54ZyJesgRQ3gy6TA/xcyzI+8geW7u3/Zf2VabVqYPPn82/EJkOnSaF
         FqERIYs5/uEgy9EVen0hxleYt8JHORBij98fSzi0FWgbAMqTAWJqYJ6xxR+A7HZQeYd4
         yIpNZCPytpYW+3ak09kyk877WCG0aeXdzgFuRHJUO7o6iimq4bIgNNdLjyGBc/d2xN9y
         Bv7Q5rmVJ0y0vt/eZ/6K76uPdkNIMwjQs/kgHI7355wI1Dv8OmGY0TTK+NyDIoEDGH+e
         S/G4syRVvsrnijhjOGAkZPjuyxl+7lV8rc4aUJLj/Di2BQiyCeW2fJScC3HcQZKqW/u3
         a2pQ==
X-Gm-Message-State: ACrzQf15t9X+cgjLaPeOErDISoZulWCyTavcJG2W6N3pDLTvMmOFbxMt
	5hfxO6PCJ/dSdbqd0vBV8fM=
X-Google-Smtp-Source: AMsMyM5CExtLOFCePMl0RMPVGwK3oViHoN7dQl3B8bnKvLCi6yrSzLlQag+b8ZIbNeRC9aLaK3v99A==
X-Received: by 2002:aa7:cada:0:b0:452:5b04:efd9 with SMTP id l26-20020aa7cada000000b004525b04efd9mr3877637edt.84.1663333094399;
        Fri, 16 Sep 2022 05:58:14 -0700 (PDT)
Received: from lab.hqhome163.com ([194.183.10.152])
        by smtp.gmail.com with ESMTPSA id n8-20020a056402514800b00451319a43dasm13358711edd.2.2022.09.16.05.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 05:58:14 -0700 (PDT)
Date: Fri, 16 Sep 2022 12:53:27 +0000
From: Alessandro Carminati <alessandro.carminati@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] Add sata version of the quartz64-a board
Message-ID: <YyRxx4zovhMMeQYV@lab.hqhome163.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_055818_197625_1450E35E 
X-CRM114-Status: GOOD (  14.97  )
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

The Quartz64 board is built upon Rockchip RK3566.
Rockchip RK3566 has two combo phys.
The first connects USB3 and SATA ctrl1, and the second PCIe lane and SATA
ctrl2.
The second combo phy is hardwired to the PCIe slot, where for the first,
the hardware on the board provides both the USB3 connector and the SATA
connector.
This DT allows the users to switch the combo phy to the SATA connector.

Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile                   | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts | 9 +++++++++
 2 files changed, 10 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 97ec6c156346..5c82881a92d3 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -60,6 +60,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.usb3.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.sata.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts
new file mode 100644
index 000000000000..8620df7ec01e
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3566-quartz64-a.dtsi"
+
+&sata1 {
+	status = "okay";
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
