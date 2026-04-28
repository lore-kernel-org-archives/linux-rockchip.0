Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CC77FF886D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 20:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHJA5E2wNaH3Wq3MLowvjmbuQmwgym7vfu8YGtcX8dA=; b=2cFMzibR7ZiHXI
	2tLqjgB0DNcBXUkaEPh6I5FFv3BknCxoEVJfA1cJJfaemW9Q/Jb18I1c5H6ZoC3IMSPac3qsT1d8V
	t56pSs2lXwjviuNk9hbvttXPRd7yKP/yenG3jyShdYo4JyoS010FFwHgBeKl9kYCkJDh4horhZONU
	wV6pE0bfsNKuqMOfnW+hL1JhL3hSl8lYr8LZkwTwV2sORMN0A9IT6iJbqYEXFnmJ40qdAmHHSIrv3
	VmzKBhw6pFxHHGrhJkhBDAiQLPqPffM+bzLXubIjaRAFwleq1oWiDwlgj26wubXoS9H08hnjz3W4x
	DoIKQO+8qjOlxUtyyyvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHojm-00000002E9a-1Jqt;
	Tue, 28 Apr 2026 20:08:54 +0000
Received: from mail-dy1-x1334.google.com ([2607:f8b0:4864:20::1334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHoie-00000002ChR-05D3
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 20:07:45 +0000
Received: by mail-dy1-x1334.google.com with SMTP id 5a478bee46e88-2dec803f9f0so164097eec.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 13:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777406862; x=1778011662; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iwWtduOWgbcJH/5sVxzLGAMHPFkXvP7oJuezZGoggcs=;
        b=LunnUpRRjPYcsJfabJRCcsHfqSybb0lb0tQVdurNo84y8Y+SmVLXKEQdNSre67rWd/
         hX5CngrnQ8J+42hFMvwYIyl1rrZbreFoSgwGyvH5y3jD+k5PJb/fnS97tXE8k56fACPP
         xWwIpXIzYasQnmVPj4rOB3q7suddyc0EmvIPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777406862; x=1778011662;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iwWtduOWgbcJH/5sVxzLGAMHPFkXvP7oJuezZGoggcs=;
        b=fVbeVhENSWTCPcyhCu3c91GlgIN8MXY2y5mrkLDz3xCNmyHkHIfutPvSTssDLxnBAD
         1DeMHE5r8IAljoxSh7HUJ10029sgZagdAN/2gJdPQO/vjhX2dHQZO8Cux7KiwczUUMAl
         xWErX5O4bjiioiMF6XoL5di2QXnEUXIS5sGSuQa0ZYN0JU0RudzH+jW2cHL+zBk2Qkuy
         eys82UI4kKVfkN+RcV1ltF1IeG/dLS/5Yc16yCW8Gkbj5fFTccMOj4R80+T5Nc3dN1Cj
         lm1Xo4UPhrsC5lXoFoOUjbCFTibQs9fh3vE0B2POJOCnMsBEaJfX160YmTQuhjzZqQVL
         xyTA==
X-Forwarded-Encrypted: i=1; AFNElJ9/IgktPFXzSOW9zeNH+TomSPU7xLOP6SvZjH+sQ8dQN0FGHq6u1BUkulKO7YYBMT/x0LzdVI4r2UukQvwC6g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzME2d4oBwHC4Qepjlv9wOfLlEgN5tfMXkpJ9UlDv/zYXv32FHu
	kzoZRsRyrfqHYpxAqiD+3os1CZ8uuoekU+1QT/x2MSIYRdkcGIIHLaPaLdiYzTi1Kw==
X-Gm-Gg: AeBDiet7q1W3wfd6nCsXgky3UvGleTegZd+tsC2bhVXujf7RAKy1jGLBAAnrY8WDMcp
	3uU5CxnK2AM2UqhNo5w2kQU6G+7QIrpkXmwSCHHLNsrmKE3qMT3fLY2gmU63aMU6Jwu+kwsjrK5
	WMpfriKmg1J2I5ftuSPMAFpkPf33a2C8FvEtAn6nOmAjBVwS3NPwGlrwwSuQ2bcAt9z/O2abeO/
	laD1u5DpzGAaqUP8c8RFNtoPjO4wUT4HnhnER6oiEASu82I2JKuWHE+gURvz3BUzOhi5wAfb0v9
	j5CCpdP8GMDVNA3LdA9XeKk4XH3FH/JVKkotATu4ZUzpk/OJDn/h0JtmTu0jIDLZMYjhxNSOsii
	luNtMy0YdDLVCu+kIS3ZXwsRaBRM6y1n1IUZC3q+L48UdVFBVXGbA9ITkjLbs7FuWTGyJhi/NzX
	UgSHCF3m1gww/hn3cwaOzEz+ri6RMF+YAfpPAR2EN+alTDXnwDRW/BeB+TFFI1qCBJNjKZAHVV
X-Received: by 2002:a05:7301:3d17:b0:2be:ca4:e114 with SMTP id 5a478bee46e88-2ed1b4057a0mr129402eec.9.1777406861689;
        Tue, 28 Apr 2026 13:07:41 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e7c:8:4ff5:9607:c7e5:48f3])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-2ed09fb712bsm3068754eec.12.2026.04.28.13.07.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2026 13:07:41 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org,
	Doug Anderson <dianders@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	chrome-platform@lists.linux.dev,
	Brian Norris <briannorris@chromium.org>,
	linux-rockchip@lists.infradead.org,
	Julius Werner <jwerner@chromium.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/7] ARM: dts: samsung: Add #{address,size}-cells to Chromium-based /firmware
Date: Tue, 28 Apr 2026 13:06:56 -0700
Message-ID: <20260428200712.2660635-5-briannorris@chromium.org>
X-Mailer: git-send-email 2.54.0.545.g6539524ca2-goog
In-Reply-To: <20260428200712.2660635-1-briannorris@chromium.org>
References: <20260428200712.2660635-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_130744_167105_1FA64814 
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

Chromium/Depthcharge bootloaders may dynamically add a few device nodes
to a system's DTB under a /firmware node. A typical DT looks something
like the following:

/ {
        firmware {
                ranges;

                coreboot {
                        compatible = "coreboot";
                        reg = <...>;
                        ...;
                };
        };
};

Notably, the /firmware node has an empty 'ranges', but does not have
address/size-cells.

Commit 6e5773d52f4a ("of/address: Fix WARN when attempting translating
non-translatable addresses") started requiring #address-cells for a
device's parent if we want to use the reg resource in a device node.
This leads to errors like the following:

[    7.763870] coreboot_table firmware:coreboot: probe with driver coreboot_table failed with error -22

Add appropriate #{address,size}-cells to work around the problem.

Note that Google has also patched the Depthcharge bootloader source to
add {address,size}-cells [1], but bootloader updates are typically
delivered only via Google OS updates. Not all users install Google
software updates, and even if they do, Google may not produce updated
binaries for all/older devices.

[1] https://lore.kernel.org/all/20241209092809.GA3246424@google.com/
    https://crrev.com/c/6051580 ("coreboot: Insert #address-cells and
    #size-cells for firmware node")

Closes: https://lore.kernel.org/all/aeKlYzTiL0OB1y3g@google.com/
Fixes: 6e5773d52f4a ("of/address: Fix WARN when attempting translating non-translatable addresses")
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 arch/arm/boot/dts/samsung/exynos5250-snow-common.dtsi | 5 +++++
 arch/arm/boot/dts/samsung/exynos5250-spring.dts       | 5 +++++
 arch/arm/boot/dts/samsung/exynos5420-peach-pit.dts    | 5 +++++
 arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts     | 5 +++++
 4 files changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/samsung/exynos5250-snow-common.dtsi b/arch/arm/boot/dts/samsung/exynos5250-snow-common.dtsi
index 65b000df176e..a64cdec3a2ef 100644
--- a/arch/arm/boot/dts/samsung/exynos5250-snow-common.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos5250-snow-common.dtsi
@@ -30,6 +30,11 @@ chosen {
 		stdout-path = "serial3:115200n8";
 	};
 
+	firmware {
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/samsung/exynos5250-spring.dts b/arch/arm/boot/dts/samsung/exynos5250-spring.dts
index d126fccdcaf3..a337fd9e3473 100644
--- a/arch/arm/boot/dts/samsung/exynos5250-spring.dts
+++ b/arch/arm/boot/dts/samsung/exynos5250-spring.dts
@@ -33,6 +33,11 @@ chosen {
 		stdout-path = "serial3:115200n8";
 	};
 
+	firmware {
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/samsung/exynos5420-peach-pit.dts b/arch/arm/boot/dts/samsung/exynos5420-peach-pit.dts
index 3759742d38ca..f24356784492 100644
--- a/arch/arm/boot/dts/samsung/exynos5420-peach-pit.dts
+++ b/arch/arm/boot/dts/samsung/exynos5420-peach-pit.dts
@@ -50,6 +50,11 @@ chosen {
 		stdout-path = "serial3:115200n8";
 	};
 
+	firmware {
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
 	fixed-rate-clocks {
 		oscclk {
 			compatible = "samsung,exynos5420-oscclk";
diff --git a/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts b/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts
index bb019868b996..3df27eddba15 100644
--- a/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts
+++ b/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts
@@ -49,6 +49,11 @@ chosen {
 		stdout-path = "serial3:115200n8";
 	};
 
+	firmware {
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
 	fixed-rate-clocks {
 		oscclk {
 			compatible = "samsung,exynos5420-oscclk";
-- 
2.54.0.545.g6539524ca2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
