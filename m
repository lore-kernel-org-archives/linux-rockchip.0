Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEA86ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 16:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wI/q4gv0TBXyH5rgMJ5TeedOWulpA2JEBdW76YQRaro=; b=Vx3zr9AIHToL8H
	s/UtlQAU91aLKSoGMPU/tjhzrXt+jp06iPa31ZOqAoIlxr8E65+dCTlMIo9eWdJKFF8coiqeZSkz9
	xXVrdWrWY3w08DpsWN3yT4+L20WtCyIxeGeusz5Iq/9EIqfvJR81upnMyUFkV2tYMKgqto/8YpjGP
	uc+/eLyehkqqFRBCzQRsvwePMigCwNvxmwvFxZ3Igk56eWdI4GlMNjT3wOLeD2JaKohQDR5DmMKlD
	wdKg6hAcL+LGi8NLfbF2ZVFq90xgCz9GQg2j/B54PlZLnqOKVgZj1P6NDwj5bkL+TLasM4i7lV84f
	FWhLAmoxO/M+2dMv5nMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZDqs-00EqmL-NO; Fri, 16 Sep 2022 16:06:02 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZDpo-00EqKT-D6; Fri, 16 Sep 2022 16:05:02 +0000
Received: by mail-ej1-x62a.google.com with SMTP id u9so50518329ejy.5;
        Fri, 16 Sep 2022 09:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date;
        bh=rWlVk7ot5GMMn9gnnexE4i/HZ7oMWylQw+SYWISjb7w=;
        b=KQWlDVekylhNECjjWL5VUYXDLjrEGnEgeePRlJ+fcRz4TxVe/yd9XiR2/7cdBLsaC1
         S+qIUcORifWveIn1x0utE+U5BRA0gT7weoY9MvGbupg5M4FYDlTFE6BYKXgwfKX5DI0L
         7UMUK/L4CSXIVa1KX9McEpI3+WJF0fOPS9be+HcH8xXOPD0KFyVTuii5IkRnXFVaAKtO
         dbe9xM0Ryt+FXrscbsqYc2mjwf9atXNt7YSroeAC/j2BhTleaMllP2EK2Iy0BSUoGOR3
         yKqFit7s4nzMOskG897V1l1sfXve5rXMUacH8NNo/1Wc6uuuW+qOQiCIbn+XYLaC5yBq
         7tfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=rWlVk7ot5GMMn9gnnexE4i/HZ7oMWylQw+SYWISjb7w=;
        b=j0AmW/RsKkj9RUgSOcgyzHlcrIXInuglIwojmcEtBy/L87ZKZ5fR3XkoWsSNKad4+f
         qKqGnzh/9uLO8FhESHiutMkqWLV9dHf0CJFVRkduUF9r9BSO+R6SVkHmqsLSGeUmxf0x
         b6sRprI0CjfcbJoKcbMa8hzRMDQ5MkZFW6kYCffPB9kKdXXHGr65crNkxe3EAN6TJk6L
         A6NydF2LIRjj6mZlTBvpAu6K0umuYPNbMiF2KoxHcTchsIO33fNTp6ykHqhSpk280Cjk
         +94N68gmHo2FBfejaaGzeFhrHDImpRYfkpGOGB6HElN8li8i1YOc0T1lGAirxh/W2ZEZ
         a7KQ==
X-Gm-Message-State: ACrzQf3RzCG/SWQT8xec2inm4XZq/E9HuMW6DDtNNLMUnz/6tCpIZ1+t
	ku8BpJm50NOi2YXYcpRmU65sVTmssgoq83xU
X-Google-Smtp-Source: AMsMyM4FoBNxwSDfv/emZhgJyQZb8xhjBq8mKQJiagaeNUBC68wRS0o0c6l8zzYJ1GrquinfXrE74Q==
X-Received: by 2002:a17:907:3fa6:b0:77c:3420:ab42 with SMTP id hr38-20020a1709073fa600b0077c3420ab42mr4192729ejc.141.1663344294022;
        Fri, 16 Sep 2022 09:04:54 -0700 (PDT)
Received: from lab.hqhome163.com ([194.183.10.152])
        by smtp.gmail.com with ESMTPSA id f4-20020a17090631c400b0073d6093ac93sm10859434ejf.16.2022.09.16.09.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 09:04:53 -0700 (PDT)
Date: Fri, 16 Sep 2022 16:00:06 +0000
From: Alessandro Carminati <alessandro.carminati@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] arm64: dts: rockchip: k3566-quartz64-a: adds sata
 variant
Message-ID: <YySdhiqZgXpl0q/g@lab.hqhome163.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_090456_547921_D97446C3 
X-CRM114-Status: GOOD (  14.95  )
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
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts | 9 +++++++++
 2 files changed, 10 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 8c843f6fc3cc..1d5dd91d1a34 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -60,6 +60,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a-usb3.dts
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a-sata.dts
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
new file mode 100644
index 000000000000..8620df7ec01e
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
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
