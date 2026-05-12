Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD265CD4855
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 09:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0OOwExQxldRy7CBktKqLqo5IjYYRasbgma+choKs7Vk=; b=R8ATITi1UDbC0J
	UmJnEeLhzBYTq7h9yRicRITtk1uOngVTIRjAMQB3Chstup/uK2obQ4agEurZ+O8fPPu06U+9SOaCF
	2n6G8aDG1G6PoG1QzeYDllrt79T39DpJ/BHwOPIeF5kDN9g1Za6++vYvnArr02XdpgaGORQpnmsBF
	upc91uaPpgbdJ2mhlenPp3QzKVVyI0oLJtqJT1y9RILYPG8hg3SDMHGHQUFB4a5hPH9brLka3GbN+
	w30b7M23zjInRpEXdEd3d8tpLppWU+ePgfK8rC5b52bdMXN4NGwV+9/LNnyikTSyk/gwiU5ghTO6a
	pkz3hnm+S8qFp3xSi4ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMjMX-0000000GFiI-3g42;
	Tue, 12 May 2026 09:25:13 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMjMV-0000000GFh1-2Mu7
	for linux-rockchip@lists.infradead.org;
	Tue, 12 May 2026 09:25:12 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-48d102471a4so52290115e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 12 May 2026 02:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778577909; x=1779182709; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4BQTc4T1OOXSNZ2RCg5v8h0CYbT+t3RxhIuDD3tfTiA=;
        b=XZEZQIPneSOFQWA6YTtaeQiRM1jQBolmLZjdVbjVg27f+3RiFGebUla/IpkyWgGJIR
         UjoybhjNBMKVoB6U4N9IyfZJpWf2kXKKQ/+BxVdUYo8iCLQ7UCsRAFc7vWpOMh5PN3et
         KsuFXq6Fq/OAA0gOq0hOdr6OUAvyB2/mINqUEJX+5PjsTkIx+HTo+LwwlPRl8eeBW5FF
         oKlrLRgmWgiIljPr5hPucwiGi7reh3sdOr1gyf6XSN/N0j24IBRIq0BdyFgnqTBzeAex
         fD/vwevP3gx2+ymC/ZN+8w3Z7dbsuYKDUaqruD7EjLkPbWIsKABtQSfiDtgKWivM/DuV
         c+ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778577909; x=1779182709;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4BQTc4T1OOXSNZ2RCg5v8h0CYbT+t3RxhIuDD3tfTiA=;
        b=Js6c/oBayZIto0eBfzlZos8y9Qu3qJhP/ZYburprxqyZNFVM/+ZyYOM2DrUfevrsey
         ws5wh3z/yVQ+5QDzPccFCV7Sg+A+5xjme/dvpyMV9i1+rvp/j6LV0eJzyI0h3KDwfZr2
         sfv0UGKcFWooWwYYP27YGRtnqBsK/u8wzvSLkmXELDrrT/Wq8LHmrZVKlmh0GNiK+CZy
         lSoryq4T7isgpAvl5wnU6jUpTZnDx4/a/9GKTx3PzCzd7FEmdy2rElzrBZW4Ld3A3PoJ
         F9fOluXEBV8haLoFcG2MXe7m2al9bXe4VKJjfdj9HSIOU8GuDLFN70luHQHU9PlwzkPw
         qIVw==
X-Forwarded-Encrypted: i=1; AFNElJ+WqKtRrDiEw51hfe47foexsiVDb3jXSTs5L343om67c38cmvQ4x7XCVzKK3loh2/VZh1mWSDfUAig9CAjjjA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyLk+mjQhuEBQrtEvO7maDDIEEF5JDHDaaPA8aPqEtHPVNAqNMb
	7lkR5iw3NR8q2q9pOWPYayVzh+Zd83d4IFyswMO0GiduUNFsSnvmkKEv
X-Gm-Gg: Acq92OGGNFUdNgZP1seoASplgF/vFpl2/Vftig7cgKyQzs+O2ofh02Pa/L8N1ibPMM9
	XBNj84NHw631AngHHNe9wTI0VyQk7+73IGNAtUlgxIh00jKDoBpvHtSFu9ul/zqQOHjKV2Tqrlu
	2n79M6vCvK88RCnUkEEF4nvJ3GSBI/akXbz1jCY0azSewew/hBuDT7wCW4tTRhfVpeWXAgIgN9X
	33x6JdbgaBOn6fcNnKDXjWM/2o5t39wEEvdpqoHxvlnW4qZWmGrra3cYTB1N9ZGnxIB2Q1SEHr/
	yPdWVG/nc5e7lhsELFBy9SCZ0OycOJnsZqg2IbI+onBvFgSCrOR2P86IiPLIx9j+YUNCDo93N/8
	hVmH2L8xTZEnZVWUVNbr+bdLZX7H6f6uo6TmmkfGoeMBg1hjFVvv5pzA/I55TKJPArcM1GlyRca
	Xzl9e7Fme/flVAJz7yk87lME38aMZO9hNjy4VniDMOB5T3G16aJjtl/Hrm7Rifjg7G/Zlb5pbUD
	qIGLtQA74umDRwCsBnc+jdPaKNMRtXBX98MABLBsyp7
X-Received: by 2002:a05:600c:4686:b0:488:aa33:dcbd with SMTP id 5b1f17b1804b1-48e676b6882mr288356675e9.26.1778577908947;
        Tue, 12 May 2026 02:25:08 -0700 (PDT)
Received: from thinkpad-l14-ju.lan (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e904bf792sm59883195e9.0.2026.05.12.02.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 02:25:08 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
X-Google-Original-From: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
Cc: stable@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: fix emmc reset polarity on px30-cobra
Date: Tue, 12 May 2026 11:22:09 +0200
Message-ID: <20260512092225.34835-1-jakob.unterwurzacher@cherry.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_022511_600746_39C7C603 
X-CRM114-Status: GOOD (  12.20  )
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

Technically, the reset signal is active low - it's called RST_n after all.

But it is ignored completely unless RST_n_FUNCTION=1 (byte 162 in extcsd)
is set in the emmc. It is 0 per default.

For emmcs that have RST_n_FUNCTION=1 we failed like this:

	[    3.074480] mmc1: Failed to initialize a non-removable card

With this change they work normally.

Cc: stable@vger.kernel.org
Fixes: bb510ddc9d3e ("arm64: dts: rockchip: add px30-cobra base dtsi and board variants")
Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
---
 arch/arm64/boot/dts/rockchip/px30-cobra.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi b/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
index b7e669d8ba4d..90751b04f95c 100644
--- a/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-cobra.dtsi
@@ -35,7 +35,7 @@ emmc_pwrseq: emmc-pwrseq {
 		compatible = "mmc-pwrseq-emmc";
 		pinctrl-0 = <&emmc_reset>;
 		pinctrl-names = "default";
-		reset-gpios = <&gpio1 RK_PB3 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio1 RK_PB3 GPIO_ACTIVE_LOW>;
 	};
 
 	gpio-leds {
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
