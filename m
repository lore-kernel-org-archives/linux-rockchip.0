Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6A98C77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 16:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDpHKlkC82bgFHRxPux257btFcWC6EnJPa8FbhGdW6A=; b=ulX3YCwUpCYs6w
	3S4nB35t7LFaAqLx16mER/7Ve1m4IQSenuhN4klfptIUuVbf3djHp9h0WXYcw1T+L1XXhkcvMoGSR
	QuraRIL+gqKk+MusQEbm3SOhCnPbmFCQ6cUSXbSGzV9yyaxOUKmC0SHx+qaqnw7/Giia0JHU4Mgul
	bhc2/sNwUbVE3xt7wTjeINCN98BHYRTS8v3mjZA8oeNZbXGKal/nhh0TmqZX6sLxXEVxCpwj+bF8r
	XBIATkbWh1TLcSPnj/E8LdSHJs7tU8J5N9BBr2v4gd+2OZ0miSJOnzIUH3DZSszfCn08VQXGjkHE3
	l+s+JnmhFvthhtLGDA6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxel-006UYS-2m;
	Tue, 16 May 2023 16:36:11 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxed-006UT3-13
	for linux-rockchip@lists.infradead.org;
	Tue, 16 May 2023 16:36:04 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-6439df6c268so9444642b3a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 16 May 2023 09:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1684254962; x=1686846962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ea2YayJLBKvMXOborY5MNIRy6faIAQn1yQrzm0Y50Jg=;
        b=SCbK6tdgB7fqWtPFLOlCGlB3qBXaiY6LinI+ZWqFt/dTRagE/Cnk33PGGY9Y97siWW
         b/tyhcLHyBiSsVWr9oIzyPzDlAYEQzmBXhcoJ+5gyfybGXBBkI7HEHc0fiU6s+bgZEu+
         ZifDa7KxD+54n3VmCvbi+8FiiyznL8HUm+NtMln33wn3E/oABhML6OkeYnrvQDQh7WOQ
         oayiTdbu2f4BVF5sJv0tEu9vZlqi2Iw2d7al0Byg8XTewtlV68LasKXymtyz+LTWnqX+
         9dyskCK2X1/H5dfH9GOuuLeKWbcjfv1Uv2xj/aJCh66z1ok9nXGQcmkRh8phVNcte0mg
         GWcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684254962; x=1686846962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ea2YayJLBKvMXOborY5MNIRy6faIAQn1yQrzm0Y50Jg=;
        b=B37RD12qqbX9DkaHUXgvPBUNq6sTmm0+HiZLqZdPBF7z0r2h+Z0nG8vbJTA3RVfbvc
         5HPVvWhqU/9jxfNTpSPJNTKujKoes4ZZ61j7CqzkbJZrVZk3Aiakqi/0neLIyfMjbXBI
         g5ecQQyc+1uQlL5pA7HS5f0D/QpJdQeVFgcZ8ZqstfHSH1EFDUcwcAVu/UzesjggB3ol
         Y1toYhXAn4Mli7oUm7k+wv+hP/jc9sSHhufExAoDzjl9FRe/UAmc1/H7k4wutfTUd6WR
         3eW88p5Awu6LVXLvkvwNM0K6TLs8j4drz00l2rh6UkilwtN8RHWaUcPww51uRzpab0Ss
         SHFQ==
X-Gm-Message-State: AC+VfDxTFo9ZQCJweCRezEryoBq6a2WZb3z9EQB4L6kj71NXEEkEAVsw
	b7kW/v5uJpO0BpSWmPI1Il9xfwMW3zC+p+cTVxzJ1w==
X-Google-Smtp-Source: ACHHUZ4Skk6VRRdtdz/Bbe/xbuYycfbh+licm5pACX8tVIz4psA4iEqNdxTMk+0JHDx3c924XngoxA==
X-Received: by 2002:a05:6a00:1828:b0:643:9b40:103e with SMTP id y40-20020a056a00182800b006439b40103emr48025941pfa.30.1684254962583;
        Tue, 16 May 2023 09:36:02 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a181:890:d993:6673:2242])
        by smtp.gmail.com with ESMTPSA id u19-20020aa78393000000b00642f527cd28sm13686983pfm.33.2023.05.16.09.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 09:36:02 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 3/4] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model B SoM
Date: Tue, 16 May 2023 22:04:53 +0530
Message-Id: <20230516163454.997736-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230516163454.997736-1-jagan@edgeble.ai>
References: <20230516163454.997736-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_093603_360956_B573D9D6 
X-CRM114-Status: GOOD (  14.43  )
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

Neural Compute Module 6B(Neu6B) is a 96boards SoM-CB compute module
based on Rockchip RK3588J from Edgeble AI.

General features:
- Rockchip RK3588J
- up to 32GB LPDDR4x
- up to 128GB eMMC
- 2x MIPI CSI2 FPC

On module WiFi6/BT5 is available in the following Neu6 variants.

Neu6B needs to mount on top of associated Edgeble Neu6B IO boards for
creating complete platform solutions.

Enable eMMC for now to boot Linux successfully.

Add support for Edgeble Neu6 Model B SoM.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6b.dtsi    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
new file mode 100644
index 000000000000..1c5bcf1280b4
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/ {
+	compatible = "edgeble,neural-compute-module-6b", "rockchip,rk3588";
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
