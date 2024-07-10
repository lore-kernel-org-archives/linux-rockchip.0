Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2520C3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 14:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=prA1l/tC/oyQShjFDl593/FzuXaJCoJbgN8qZkpobaM=; b=Y3X2xp8hrNB0rE
	q74FynlAldmgwqLCtahyNT9tuGDO/AFcgW6VFQYaqyfeIqAEQofiXyAcM9V42TDYCQEJUaLgdqmqG
	cSjP62VpKnRHVw6dYb2OhrTSsslVbJ+uWosntM048eoy1JuuoNyI/p8ize/BU24GXZYK60QoEwxKJ
	PfPgh31MbN1362Q2UMqkKfXzTj5GvcNe565BqX2y4at+dpGOn3FvxtFFMIi/+s35sg1NAghhYsDZN
	Y4HCd6jOVlocPiLiySU0xx2JVMK0850BfaeJ+7oMyqSS89noL1z3zwYrBCbgz5MMZJL2b+6ajJdQd
	b9FBSVea8RDOqtiO5Zgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYBr-0000000Anmo-2Av3;
	Wed, 10 Jul 2024 14:21:03 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYBa-0000000Aniw-1xEA;
	Wed, 10 Jul 2024 14:20:47 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-70af5fbf0d5so599264b3a.1;
        Wed, 10 Jul 2024 07:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720621245; x=1721226045; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Yq8qmUxe7OsJ3HiUvrOPY7PKG0OHbBgQEkBnBrk1gZs=;
        b=YDarDhKvrjZaPW8Z1pMn9HauFiPVx8P9gPIh+FraMzg5GyALy9603KihuytkRPwmp7
         4VcLzMJVaOU8muyKNSVFH0iSA5Kf3gQ1lC/LwWMTPn75MMApsq5ODxyy0TyuKVTQR8of
         tcIFEDZf4RpKFjEUBDcDX2rgEsCz26DJAe1bJgP5GDaFsE4Qxou2qf7SlvILhJYRgjUq
         S6GOqurVaRiTSngJvVG3W6LpA707QxHqziGR/ax7DwZqC+rN7dY11k8fBinT4NIc7Bx6
         Ip9I6BbhsvoZx5/tqDhntF0yLUXyMMJBX0dL7xO/2/q/zEWXjyLifpH8IJK/7j/JdUHi
         ytwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720621245; x=1721226045;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yq8qmUxe7OsJ3HiUvrOPY7PKG0OHbBgQEkBnBrk1gZs=;
        b=iljqa5VxOC8j0rVkMDIwrPSiELZHgwXE0uTlGACYy0dSmJ8i5ZcVaBSzCZwtewIwse
         royucrYn36Nvx2HHZ+PGjANlii1KaLyrf8OOj7LppLenVjVI+U4SdSW19Ncb66bSzkC9
         UcpCsVlUumaZcdyq6qsu7pb8D/fNBfDW4N8HPbZ6JYNE5IPEtEGftRIDtXzFNJDHqL9h
         lLavH5xehlZhVYPpFKUgF5qHMGirWUF1SANVn4N6LL7B6NGpy/pZdsBTdwD3Y/vqUojY
         zoBhnhzK5UuvyE7X+vFuWoDlQk3K5tkWH9uKnYCJl4Uk6cNbJSRdmGFvNPYBqkPrIYHr
         gWIw==
X-Forwarded-Encrypted: i=1; AJvYcCViTcagluBuRsa7o/85oX3bvvo0GDgVKl4iSBqt6AgSyM+GyUFZ82ARB7+NAf0aQU+IIImFQK50AaUkvCwNN5V8Hrtpc+/JcAhLR/xsM5Dx6eMypRyYE5Bp5lk+AcwZ8itmDDaUhQUOyTgZQuIxGfxs2r/suWq1f9I=
X-Gm-Message-State: AOJu0YyHIS9ksGIszQdJhARcixMGcmkb4qmUze8vVdYSODUtJccxOiE2
	XJ8BqGrLA9G2O+yZFIVFp3yBsD9BlwRBOCPsSLEGly85+1R+RZRx
X-Google-Smtp-Source: AGHT+IEdyu26qqjrFh1xLle8XNfPPT+H9pNpc9dz7TvWDJQ33IbIaIpaJZR2a7bDRg86cri1br4WUQ==
X-Received: by 2002:a05:6a20:9145:b0:1c2:8c0c:e60e with SMTP id adf61e73a8af0-1c298c46605mr8533514637.15.1720621244910;
        Wed, 10 Jul 2024 07:20:44 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b4398002bsm3943440b3a.148.2024.07.10.07.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 07:20:44 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
Date: Wed, 10 Jul 2024 19:49:56 +0530
Message-ID: <20240710142001.7234-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_072046_525870_8ECB244E 
X-CRM114-Status: GOOD (  12.75  )
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

Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
signals. Rename node from 'pcie3' to 'pcie30x4' to align with schematic
nomenclature.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 20 +++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 2e7512676b7e..a9b55b7996cf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -301,7 +301,7 @@ &pcie30phy {
 
 &pcie3x4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_rst>;
+	pinctrl-0 = <&pcie30x4_perstn_m1 &pcie30x4_clkreqn_m1 &pcie30x4_waken_m1>;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
@@ -340,14 +340,22 @@ pcie2_2_rst: pcie2-2-rst {
 		};
 	};
 
-	pcie3 {
-		pcie3_rst: pcie3-rst {
-			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
+	pcie30x4 {
 		pcie3_vcc3v3_en: pcie3-vcc3v3-en {
 			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		pcie30x4_clkreqn_m1: pcie30x4-clkreqn-m1 {
+			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		pcie30x4_waken_m1: pcie30x4-waken-m1 {
+			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		pcie30x4_perstn_m1: pcie30x4-perstn-m1 {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
 	};
 
 	usb {

base-commit: 34afb82a3c67f869267a26f593b6f8fc6bf35905
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
