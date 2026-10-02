Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2040FCA5FCE
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2026 02:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kBdHsch1yZurojdsSsL0d2Ny+rYg0e7KNa/WX2Ubqqo=; b=ZkgDLaRu6OZC11
	Oy/ZnAm657oHRrK458zXEF6xH2aG6FOGlDJa/0Gi3GuMb+3ru2o7v1hKkQC13FAXq/YAx9UXyxpOJ
	Ihp6talIKI/5lga+aSD3aHe4slKFkZDqH538OXpqJgEaYxpvNdM6/VaswnmOZg/EHEKcnE2rbhOez
	sJ/BslmHH9+dgiqa/PGQiQmLn7sBv3bgr8X/scniFdiS4HSO63M7KxSpljU17SA3oHYdL20eI6/J2
	tXeRe83+8YZ0DMt/CQo/6RhiJMAedMF6M190zYDT+6cchi7OMoq6063wSLN7UhBB6VRHAF+hsYFZY
	E79upPUoTFpKUDVFytvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCTTA-0000000AWxD-243g;
	Fri, 02 Oct 2026 02:57:56 +0000
Received: from mail-qt1-x863.google.com ([2607:f8b0:4864:20::863])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCTT7-0000000AWwP-3tZ2
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Oct 2026 02:57:55 +0000
Received: by mail-qt1-x863.google.com with SMTP id d75a77b69052e-534e6545939so20491cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Oct 2026 19:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1790909872; x=1791514672; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=/8JFUeE5MEiIb7ITcrTZk76VTtK8zyPJORxw7JyUGnA=;
        b=M6DLs/y5snG6C+KZzbedIHzRjfwyN79zkw4oK3C4FNoGtDZEO1j5/aht9DZlO+ag0m
         LcD21bPyDQn49/p2wB2avxiQKvdy011B/nenUj5/P1wRFL8vmiH3EDQGPe+1CVVduxVu
         UcbdTLhdW5h7a+gpjjqr5a2FGYrOpfsiuJVXm7peRBjDyNYbLRUFz/fiHFnXucQryBN+
         G18ou4nyxPRB3dVwhZ7K8Mqs9NJVFXSI644jfvqy515l0uON7/lkuoxqiYxrsphH7dnr
         uZ7MCudzU86mtCZejIvfXJKkAbY7EisQtG3tPKt3D91vCYz3XrLTL4kDrAjZBiBzJOrH
         Jyjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790909872; x=1791514672;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/8JFUeE5MEiIb7ITcrTZk76VTtK8zyPJORxw7JyUGnA=;
        b=uS5ew/C9VfVX7pMG3WWuG7FEpVoWK3kcNTNl9gs3l8uLVkWl2o4AzmkNXbRHsD/yls
         UwDRwORO2d3XLu9/D5gqFC03rz/wf5woUg9dNBEzGGMCWVXNn6a5YoNpSwu2xrOoMvBx
         1/6X1EHNzXGIO8CkoQstlXMesRTtLOAHptPnLETNiu/T8Gqazo2NYKNufgxrNjoCC21P
         XypHaJotJMkZ0mmBLv7/Sw3tfmXeQcEqBhcZso4luCQPNyqEkMZ8LcGLUD8mKB68Vu6z
         X5gUTR4KCjdzyyaQsmPYcB9TPYseKR/rT5+xmyrkgwDqR6qkGitWrix1+Tuaj6A9kGc0
         Z2GA==
X-Forwarded-Encrypted: i=1; AKwUvBzgU+dBod3NXQ6GAB7zedIjhPwcoMfe9hQSLYEEeY4o/Lks67fOibdLjSuHSUxsaq9jwOreYGGgs/LSrCGinw==@lists.infradead.org
X-Gm-Message-State: AFuF++k7nhrS5A3dHWwnL7sz2cy/bMwtWV7PqWnNYyugwLc6FadNUs4h
	HVKcSZHN7rcRpTDqFknXdONxjYliIby+EyxSMp+EtaBB/lrB/Cpmzqndc6hMfGQqXrQXIAFWEW/
	a9Ftyti8fKfFyBIGgHyECfJTakkQhPGABsWWO
X-Gm-Gg: AYBFou3ORn7z+Oq3WCD/sD6AkYCPoIg2SCB2v2kwbns038WttRpd/MtC8YSG3Zv+jya
	Fs9+ok3GCHhL4tBTzCDxAWYdrhgjzskKPTcju6YG1u55qqPzGKd0sQcWLMgN1glVYJxeJSRVBrQ
	+Qc7GiJKqDw4WG3JhgzPiYqbU7P6Vm71a4iA2vvogIUcNQC/4Fog/VbYWUW0aTeixmM8LAaLyTS
	S9AJTT8TKwyeTYtsRcS0dA1gJNzEnRzjSuz6U5Q+5I6M9rXl76NmqMPc7D0GQ98HQkFjMX2u+nt
	vI86Raexh3OLbv/24Lgr9qYcCH0IjaLIM7QV2kqojG9vBK/99Ndhwrmv/9TIp0mYpPG1SxISlPl
	zqea6kqDfZMDio+lvSgsu4yc=
X-Received: by 2002:a05:620a:d8b:b0:93c:c987:7f70 with SMTP id af79cd13be357-93ce7c0dd2emr226556685a.21.1790909871950;
        Thu, 01 Oct 2026 19:57:51 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id af79cd13be357-93cca1ea26fsm54885385a.3.2026.10.01.19.57.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 19:57:51 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Alexey Charkov <alchark@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Dennis Gilmore <dennis@ausil.us>
Subject: [PATCH] arm64: dts: rockchip: Use GPIO function for PCIe reset on Orange Pi 5 Pro
Date: Thu,  1 Oct 2026 21:57:46 -0500
Message-ID: <20261002025746.3284691-1-dennis@ausil.us>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_195754_015484_061C6FF0 
X-CRM114-Status: GOOD (  13.87  )
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

The PERST# pins of pcie2x1l1 and pcie2x1l2 are used as reset-gpios,
but the default pinctrl state muxes them to the controllers' dedicated
PERST# function instead of GPIO.

Linux happens to work because the pin is switched to GPIO function
when it is requested as a GPIO, but the devicetree should describe the
pin function the board actually uses. Bootloaders such as U-Boot apply
the pinctrl state as described and do not change the function when the
GPIO is requested, and probing pcie2x1l2 then hangs.

Add GPIO pinctrl nodes for both reset pins and use them in place of
the PERST# function, like other RK3588 boards do.

Fixes: f47af8ebbe53 ("arm64: dts: rockchip: Add Orange Pi 5 Pro board support")
Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 .../boot/dts/rockchip/rk3588s-orangepi-5-pro.dts   | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
index c9679bac1db7..783675337ab9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
@@ -188,7 +188,7 @@ package_fan1: package-fan1 {
 /* NVMe */
 &pcie2x1l1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie30x1m1_1_perstn>, <&pcie30x1m1_1_clkreqn>,
+	pinctrl-0 = <&pcie2_1_rst>, <&pcie30x1m1_1_clkreqn>,
 		    <&pcie30x1m1_1_waken>;
 	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
 	supports-clkreq;
@@ -199,7 +199,7 @@ &pcie2x1l1 {
 /* NIC */
 &pcie2x1l2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie20x1m0_perstn>, <&pcie20x1m0_clkreqn>,
+	pinctrl-0 = <&pcie2_2_rst>, <&pcie20x1m0_clkreqn>,
 		    <&pcie20x1m0_waken>;
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_eth>;
@@ -223,6 +223,16 @@ ethernet_en: ethernet-en {
 		};
 	};
 
+	pcie {
+		pcie2_1_rst: pcie2-1-rst {
+			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie2_2_rst: pcie2-2-rst {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		vcc5v0_otg_en: vcc5v0-otg-en {
 			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_down>;
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
