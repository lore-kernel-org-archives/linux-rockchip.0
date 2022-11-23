Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86A85C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 18:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Or2U+UrQj0FIkU3It9lkV4k/tNBtLHuG3q1mYMygnqo=; b=kjOqkqNqZ0Nbe6
	IWtWwonyTvZs009JvCBeWnnI6pWXClTcgMc7ef9biZgXeTgIlx6osO3WPAuCk2jeWgyoM5hELFadr
	gDfXIS+5/ocLQvVigmovt1QHyl6vxjYsr6y8soFnkgpWCD7BUn6vWKBN1b0mftAbcZMnate4GAQyh
	b00itAhp6MHLVyrN7A8w5LE3b2QXK2Fp1uH6Uev9U6be9/6Ibph9rfD924y2rTxz5vZJoiF3LyacU
	oXa1lfWynJQsmZCJxrlj5Srgn8jk2FLa9Xk0O6tAPIrIRBarZAoH31J8BuuytgxYCFSj7/nHYCy7Q
	EtLiX/4eNFy8F5rXLmrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxuhW-001j7E-Mj; Wed, 23 Nov 2022 18:42:26 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxuYm-001ey0-R5
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 18:33:26 +0000
Received: by mail-pj1-x1034.google.com with SMTP id q96-20020a17090a1b6900b00218b8f9035cso2589146pjq.5
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Nov 2022 10:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jPbVvPps35d9qSmRicMnyfKxv7RaFTM2lFdzVKFiQc0=;
        b=GjVa3I9DLIVr/b1xkrqj+nLz/A1pDKu716OKgzMMClvA5VnFJY4vE4V6EAU9AzjiY5
         +VqLd2uI5L8J7kqsWIZRIE8lTVzjA3y8pK8gv8UI+0/0WfXemVoMI9KF4LnBQVOoZ1p9
         nqM4dbBOyPUoKsx0MtqdUjgG3wXAUoKuFgjyEiPltQKBAtMaQW6tuCCZfNNUoRLbe5Gv
         YpjjsT4TJh9JAYd6bnCrOehRRJBZQw5fPxwk3/VzDAYajhR6rsQTHs2ZfVFMmvkR/Jkn
         2BxFeAOg9P5f9lKtmbfkmwdixVzj+hXcJu9Hh+X2vlAR6gbAs7bGvl1AfJ9oHoIsfOJ6
         4g4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jPbVvPps35d9qSmRicMnyfKxv7RaFTM2lFdzVKFiQc0=;
        b=Rli8vY0QK92aCRSaDrPYEgjPOSqb5DWC45j0bFtF5IkWMKvUsggHTZFJIu1WvN6Nuy
         9dsWtOxMdRra6aO4KHBxKMSzAMg1wXbYmG6X1oBnaNoQ1aHqBNL+k7VCBh9+PdnhPmdS
         Hr2Iv4AOOUCysoPLgaQ9/MF51PqSgzhbmXRLA/wtxxIip4TjI11gCQ5EFsugQ/kGFq1Y
         22o65bPUq10vThO2Af6JaFN1SYK1zItosyRw41wYGHJQnJST2IT/QFg8FLTVTIGfaB0M
         pV21NJbotP6dTpt+mIfExVVUUyhbSiXGbrDxaD7Z0bhXQcJvCdJ8/eS4AKNqjQ6Y8PpS
         TGfw==
X-Gm-Message-State: ANoB5plZ9f28CjoWgoguq4vQ5jrBdbvbpGBvyj02txmeWSP4Mi4tZKgm
	0pcb+NxFlQp73PhzyAMSBSsv8w==
X-Google-Smtp-Source: AA0mqf7dAPWZzf40dx3d0O3bkXKMBgurnduSmGOZHlNfm/ahurULbBuk5/AdotG3WbK7zhruBkWH6Q==
X-Received: by 2002:a17:90a:5918:b0:213:ff:1cda with SMTP id k24-20020a17090a591800b0021300ff1cdamr30955608pji.86.1669228402771;
        Wed, 23 Nov 2022 10:33:22 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:a055:fcc4:4677:827])
        by smtp.gmail.com with ESMTPSA id x3-20020aa79403000000b0056d2317455bsm13006732pfo.7.2022.11.23.10.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:33:21 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v8 8/8] ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO
Date: Thu, 24 Nov 2022 00:01:24 +0530
Message-Id: <20221123183124.6911-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123183124.6911-1-jagan@edgeble.ai>
References: <20221123183124.6911-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_103324_925924_B4CBB820 
X-CRM114-Status: GOOD (  15.09  )
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

Neural Compute Module 2(Neu2) IO board is an industrial form factor
evaluation board from Edgeble AI.

General features:
- microSD slot
- MIPI DSI connector
- 2x USB Host
- 1x USB OTG
- Ethernet
- mini PCIe
- Onboard PoE
- RS485, RS232, CAN
- Micro Phone array
- Speaker
- RTC battery slot
- 40-pin expansion

Neu2 needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 2(Neu2) IO platform.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v8, v7:
- none
Changes for v6:
- update the carrier name.

 arch/arm/boot/dts/Makefile                   |  1 +
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 38 ++++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e48cfbc4e8e4..40cc34bd4945 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1122,6 +1122,7 @@ dtb-$(CONFIG_ARCH_RENESAS) += \
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
+	rv1126-edgeble-neu2-io.dtb \
 	rk3036-evb.dtb \
 	rk3036-kylin.dtb \
 	rk3066a-bqcurie2.dtb \
diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
new file mode 100644
index 000000000000..ae1cf344239b
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rv1126.dtsi"
+#include "rv1126-edgeble-neu2.dtsi"
+
+/ {
+	model = "Edgeble Neu2 IO Board";
+	compatible = "edgeble,neural-compute-module-2-io",
+		     "edgeble,neural-compute-module-2", "rockchip,rv1126";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	card-detect-delay = <200>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_bus4 &sdmmc0_det>;
+	rockchip,default-sample-phase = <90>;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr104;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
