Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD5A5C77B7D
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 06:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijzrwdrZoaDM1I2yZtxX184xUyUnCFtMASetBylaGsg=; b=iA2H8WIV0/xiJS
	PBLjo3aa89VAjpOhZKjHdJuzN+HjIBDOEmCizBySpENmRhtPqf0bbdUNmnzplNzcAk24ZNmOij6Wq
	Uxkj15jo9vc8r49DyaHH6eH5yIiXfJQOahGliMf5c7o/MWBNP6gZ8+Udls01zhKVzGNZc8CE+o67U
	cEwWNba5jJStsUZdSQl/tlE5WrvcAVhtxPO87qLyqzBML+kskkcuNgWW4KRwKHwd6WXLKT1HG+vCA
	HZ97E6g1squQvKgPgOzpU7nCAlVsKtmMw2dxts1QuTdTyIVy7acIHj6H939njBvIMhCr3TmUPI5d1
	M1DG9lqjKQeh8E8oP6oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxj7l-00Dtn0-37;
	Sat, 13 May 2023 06:53:01 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxj7i-00DtlZ-1K;
	Sat, 13 May 2023 06:53:00 +0000
Received: by mail-il1-x12d.google.com with SMTP id e9e14a558f8ab-3352b8b9b70so72169195ab.0;
        Fri, 12 May 2023 23:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683960774; x=1686552774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c7poAuU7GKF0H6xZoqZuq9nRfOuiUUzrRo0xSPUQing=;
        b=oRWdBwiiuzQZBr++kNKA0PLswR7yMuniAq5pZ86Jgtofh2NxHmeIMG7Q6FhkV6XNHY
         cYpQw0/li2FbXi+PBJuLPMsDuVqb8Z0bY8WW/F8nTwXKSb4nZHI+jGTyOsbjwFR0Mfck
         LFNFf11ICiwcXQ5harywfirXFmZDjKICKZKhVIKbpr5gRcgnZqp5XjlCmTfViAh1TJBQ
         qU/2UsLEK9bG4NsazlJBnN/OnZPHisoDcp1s8QzqNSqdc6hylN17qX4Fc4pXCL7KOi2q
         vyaI6g/zOkHKULAp+fE1BY5JfouEyjPN7FWzfoDsBMLAHZc7RN0fEtWPeh8vx2qX/mu4
         ZfNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683960774; x=1686552774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c7poAuU7GKF0H6xZoqZuq9nRfOuiUUzrRo0xSPUQing=;
        b=gNbHi5/+Wn5hudMeF+UMvoQrQ4C4KolECUc0ovn4gj56LYsQu38TsBM+yPWs2lCCOn
         rHADfRZZ17ii3uCRarejSXUiYhGLteEWemtW/vYpdwuYR6HNUk+b1q4OyPmtOD408wjx
         wgVi7I7ksknNV79tRxvISZwIKN40jOcuzL/xPxBkX8eI3JgqYsQHvMi79ZVq121VCff6
         VIhR0hrF3oEH8JvssiuoA75j6G4KXtYJLyy8s8Qp/e7fiipbcpApy4WfPgBj3P0uWeVZ
         XEH4vv8HZ5PyhV41mJEz+9jOoo2XnfMG6xO3fsfAhwADcSy5R4++ET1KBxDwH4BirZ8c
         HTzQ==
X-Gm-Message-State: AC+VfDzlzUuPiDFgHOs7nwjns4tX0f059lvod7Zv4uNMmqDB5iWCTFPM
	0li6heB+72lirX59hIV2ZBA=
X-Google-Smtp-Source: ACHHUZ4lwkOgllV3HPGClc8F8+9ZRw24JpvcLCsqOEOaT1Qp5jmbDGnLn0Z5Ol3nXl/ErNvpPqZyyg==
X-Received: by 2002:a6b:f40d:0:b0:74c:89c4:8e03 with SMTP id i13-20020a6bf40d000000b0074c89c48e03mr15369532iog.10.1683960774537;
        Fri, 12 May 2023 23:52:54 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id a11-20020a5d980b000000b007697fe48ca8sm5371396iol.47.2023.05.12.23.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 23:52:54 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andrew Powers-Holmes <aholmes@omnom.net>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Add FriendlyARM NanoPi R2C Plus
Date: Sat, 13 May 2023 14:52:28 +0800
Message-Id: <20230513065228.25971-2-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230513065228.25971-1-cnsztl@gmail.com>
References: <20230513065228.25971-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_235258_476047_244392B0 
X-CRM114-Status: GOOD (  14.18  )
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

The NanoPi R2C Plus is a small variant of NanoPi R2C with a on-board
eMMC flash (8G) included.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3328-nanopi-r2c-plus.dts   | 33 +++++++++++++++++++
 2 files changed, 34 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c-plus.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1cf105d7407f..794da4d41f14 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -15,6 +15,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2c.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2c-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus-lts.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c-plus.dts
new file mode 100644
index 000000000000..16a1958e4572
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c-plus.dts
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2021 FriendlyElec Computer Tech. Co., Ltd.
+ * (http://www.friendlyarm.com)
+ *
+ * Copyright (c) 2023 Tianling Shen <cnsztl@gmail.com>
+ */
+
+/dts-v1/;
+#include "rk3328-nanopi-r2c.dts"
+
+/ {
+	model = "FriendlyElec NanoPi R2C Plus";
+	compatible = "friendlyarm,nanopi-r2c-plus", "rockchip,rk3328";
+
+	aliases {
+		mmc1 = &emmc;
+	};
+};
+
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	max-frequency = <150000000>;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
+	vmmc-supply = <&vcc_io_33>;
+	vqmmc-supply = <&vcc18_emmc>;
+	status = "okay";
+};
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
