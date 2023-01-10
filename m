Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3029FC46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 13:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYsDcOX0Jjz7vmptOiQ5R+YB7cHG1X4gKvDw3EZse84=; b=3+HWGUqqndhuum
	AGGl5GeRROa6cPlqh5nGlHKGvdioRSPoddx3ZFq6D2ax7/A7+XYgAwJ1rRre+S8I8uCCWr4FbUzKI
	hMmqbG24SIrJDPMsP6QX+upQJ7vO7NC7T7isJuiu5IICMjO+R0i9/feF2rLFr2YWnrwFYMCSWDDJ0
	S6wYH7M3nl184E3pyPlEXDlzIBEBjSEfJ0NwEY+EX1AuPUxUUXdyPHjGafYOeAHcQWx9nq/xC6w1/
	IjqfNKvRUakMOj2EdMEJVjxJepEJsw0/7lJCoHHg6ga03ikV3c2W1MBtoaPZD74WUpKHHPDnQun20
	Io2sHItzrLzqzN+tMUog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEyj-00770n-P0; Tue, 10 Jan 2023 13:47:49 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEyS-0076uH-4K
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 13:47:33 +0000
Received: by mail-pf1-x435.google.com with SMTP id 200so2691753pfx.7
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 05:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jSJ0KZBBL/yfEsl78winGD0uUa3WWtiVfEdJovBY5ok=;
        b=ZhRoKxNQTTjXYnpcX0qoQ+DOoXoDzyeB395r+MQL/NIpYnXrb8U10kgP262ja8PJyl
         CpHIc09O7CiWRq54r/741FfShp5qFAQ0Mcph6NPGB1OW/EBkYLLSMQ98Wf6n9u+Cgsu2
         1cKDVw72aBfFCHigWwQ9LPMZTiY+p2hBNayjCcuFKYAoPWksR+ovIAG/85wbwY6FbR+g
         7AZU/YBMA97LwHsq/9MsYy8Cnl/IT0o/oUWyFu5IuuX9wsHa2mfnNhd+xBhtJkEQv+g7
         tKXMIEGF4J7j+hUGnkPlMXi5qgiZ8kNx5RjyNEQTGn6m8F1PujyiA5Ry5v3ovhxO7Bz+
         yVgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jSJ0KZBBL/yfEsl78winGD0uUa3WWtiVfEdJovBY5ok=;
        b=yPUmZMqu5ueRyIeKtvQR+TS68F6Q/fU9tamteE5R1HE1dMpjkgoyMSafD6XsoxGnn4
         onhGB9/mXA2H/83FaLqInbu3d7DiItvKcjrFrp+dKmBMg2Z6WknGGiMWM/rwkO7YkZIS
         nSMEMgXP/CC9odDANn2792wdHb086SKPHG8qsmhC7wo4yt+tMpa3J2+mijsXiO0k90cg
         1wRjDz0BWSI1/eJGCYLTXOItDbmVlTE0OmqOyeC7Xxlg4DIaCTKp4IpqEcyJyoz+hTgy
         aR0yA8W9JaqSmxLptLlg6Gc0WD1mA7PVArRl1NSXlkVoJ4/+PHFPFDeDkmzpCIRGka31
         582Q==
X-Gm-Message-State: AFqh2kpOoxJiMSfH3I/kfNHNJb/NJ9mZQsWJqmlFMnZmOzATj3DUs6wz
	RbC9Nc0gIMLUqvwwovjAhUTcLg==
X-Google-Smtp-Source: AMrXdXty5zBUtQhIKXhfu6ei/Gzcz+1+IRuUjbzKYG1PCRVS6Blz3VM0+qhtHUuJAH87ypIDRCbyrQ==
X-Received: by 2002:a05:6a00:24cd:b0:581:4260:a650 with SMTP id d13-20020a056a0024cd00b005814260a650mr79439304pfv.33.1673358449157;
        Tue, 10 Jan 2023 05:47:29 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:d32:8399:ca6f:14d7])
        by smtp.gmail.com with ESMTPSA id y12-20020a62640c000000b005819313269csm8077426pfb.124.2023.01.10.05.47.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 05:47:28 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/3] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model A SoM
Date: Tue, 10 Jan 2023 19:16:57 +0530
Message-Id: <20230110134658.820691-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110134658.820691-1-jagan@edgeble.ai>
References: <20230110134658.820691-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_054732_181192_7145E224 
X-CRM114-Status: GOOD (  14.56  )
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

Neural Compute Module 6(Neu2) is a 96boards SoM-CB compute module
based on Rockchip RK3588 from Edgeble AI.

General features:
- Rockchip RK3588
- up to 32GB LPDDR4x
- up to 128GB eMMC
- 2x MIPI CSI2 FPC

On module WiFi6/BT5 is available in the following Neu6 variants.

Neu6 needs to mount on top of associated Edgeble IO boards for
creating complete platform solutions.

Enable eMMC for now to boot Linux successfully.

Add support for Edgeble Neu6 Model A SoM.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Note: Patches on top of
https://www.spinics.net/lists/kernel/msg4644731.html

 .../dts/rockchip/rk3588-edgeble-neu6a.dtsi    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi
new file mode 100644
index 000000000000..38e1a1e25f33
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/ {
+	compatible = "edgeble,neural-compute-module-6a", "rockchip,rk3588";
+
+	aliases {
+		mmc0 = &sdhci;
+	};
+
+	vcc12v_dcin: vcc12v-dcin-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	max-frequency = <200000000>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
