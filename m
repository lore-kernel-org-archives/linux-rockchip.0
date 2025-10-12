Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4115CCD184
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Oct 2025 12:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wrV5ynsyE64rupBYNikZyX+SJjpnE+UlLrkIxk81wMQ=; b=L5E3ywvj1AlhAN
	5GBogHnuEPzLx9GWRoUm2S8c7aASDwSLnNQVW8pQAam8eNmZIpKjdz43XOeZEZCl5FiJ3qfQWBYAX
	+d+eEvlVD3hUca72jwrXMkjCrg/e+HHVRCs6abMr5kRK4WWViVEHd9jKyyvQWnlFK3eDHsrxIzX/u
	29BtWa7ESGnH6/n//yyuRNQtk0sE68Yk1NrrpmmHmd/bE4GzT7dlJlYKLfyEUQqT7AEj40gn/z4ka
	V3bG8Izx8HzpjxfyJ+gonYKPT0dGnBMV1pgI4ld4KeB/sBIWeCkBEFZh67Flcd7BuVER23hhB08mF
	9qPO1xxl3ZOImf28C/tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7vGk-0000000BLGj-0KFO;
	Sun, 12 Oct 2025 12:33:46 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7vGh-0000000BLFy-3abX
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Oct 2025 12:33:44 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-b3d5088259eso495850666b.1
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Oct 2025 05:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760272422; x=1760877222; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pFLLYdbkRgAZWnhHmXH7fo0GfkcQe5REoGIKDLet53o=;
        b=SEQnLyaotrcdkH5RNe5v6W+D+ASEdbxs8zAxjSNla9d2DVmhdbmluYomHR8ZmGxp2e
         p7zA54BwXlfhsOPPzzMcyjcr1RhPyK44wP1SiqApg3quYgiT/YtalR611y9jw3fEcMHa
         aJsGuDsPg7H7e3w9QL0ybV+WSj3ScnZvi1YKxUgfARPUt2mE3PutN6/9PDM2J1bMaCWP
         UVOsPeY9FTiK+qmaHDajkS/17R4ZJ9y2SC23dep5S4ieT+Kb8TAHNKWj+Oqdp5R9Cm++
         KF2wFIIQFxbFevVX8qm3tWZCsUlUEv98Fs+ud2MNPtlN1m8CA5ekpvwAGvYLEGJYg27a
         OX9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760272422; x=1760877222;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pFLLYdbkRgAZWnhHmXH7fo0GfkcQe5REoGIKDLet53o=;
        b=v2axg0sWfboxV+VJ/i83YPt2oVqi5XCPXEqy/4RZbUV/3wpXGaFG9TSyny8kdJCDZ0
         KcbKOxKWDJctyw84xpHRKctG0WChNxbIJZ1o0M1jbT6w2R01hMiHgu8R4aD6O/mtsWMQ
         2fmtgFyM+OV8fX3YQLLh62m3xiU+0DLZYFHK8RQY3T2x1yy338lAscydY/WMvFoyzoQs
         UDhhf9ipuFp6HMZynaaaUoooHVKRouN2fSS4hIEV9UEkiM4R00ociHN1CKhsSyZnS7Vy
         nNhfg6NRIYcp7MDpnDEyAL9ZOf2R74YZUuAdZG5JyI68iuHxFd+/depNJpR4m5VLkdBl
         WZiA==
X-Forwarded-Encrypted: i=1; AJvYcCVSQx5cPZK09TiamEum0iOj6+3/46iQdJotNKUrqP1fkfhxdMhumDZxuWIWUhh/tfsOvGvxhUKK0v4oAsS5fw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwnPVHTO6UjKFNwFs0ToBOEAMfE7uPKU7nCjEsAQsBfGl/lA0yp
	2J6mmQUJ9FBECm9/Nx2RxIekaAOyHjgMQ6g6cDdLH7ba63X+iQmBGY0F
X-Gm-Gg: ASbGncvwxCbvej+7ho7gdFQR1mKzDB3hU7N4qzIX3RD2gReW4zQomr7f59Hyqt/UYpo
	yi4jLfUr+WWLnn/yOgKyQovqufltUakA1HsYLacjjMHEex1nvjPusHw0SfHZckzc3w9mtUBJgma
	1P8lAtz1LN8IsZRLh0Ej8CzyUQ7ZDH7wE3yhj3NUHYjIl+P0IW4qGy4cLDJrlkmXYf9kUfQu2QQ
	wFWcf2kk4SCTeql8HojfIbInPJBIH5+6TELnIrQELwhdU6KkOGup0RBxSvNg76AYO4DOnqU5kpI
	BJqySYEGeaBdGggvgRuq2KVoyS/8S5/l+fG+EoTDHF1gZosfreRzuZveQMSH7bGzI4p63JJ/NR0
	D9VYgR1SJ2MJSmz9Zuh869rMRFFQBeJOs/QIS9eTGjUIQDHGkAARtqYDUOKF9u03JzDAgDZ0vcE
	NG
X-Google-Smtp-Source: AGHT+IFAjyDvaV3oWT4PWZK+4NQ4+mKhqPinNjTBXV2nObp2QaUZEx9ZFWF36Ui7VatYnmT32IIKmg==
X-Received: by 2002:a17:906:f989:b0:b57:1f86:b30f with SMTP id a640c23a62f3a-b571f86b72amr448630366b.24.1760272421798;
        Sun, 12 Oct 2025 05:33:41 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d8c12a8esm708449266b.42.2025.10.12.05.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 05:33:41 -0700 (PDT)
From: Andrey Leonchikov <andreil499@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Andrey Leonchikov <andreil499@gmail.com>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Subject: [PATCH v2] arm64: dts: rockchip: Fix PCIe power enable pin for BTT CB2 and Pi2
Date: Sun, 12 Oct 2025 14:33:36 +0200
Message-ID: <20251012123338.344271-1-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251012_053343_899827_9A3E4823 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
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

Fix typo into regulator GPIO definition. With current
 definition - PCIe don't up. Valid definition have on
 "pinctrl" section, "pcie_drv" (gpio4, RK_PB1).

Fixes: bfbc663d2733a ("arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2")
Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index 7f578c50b4ad..f74590af7e33 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -120,7 +120,7 @@ vcc3v3_pcie: regulator-vcc3v3-pcie {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_pcie";
 		enable-active-high;
-		gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_drv>;
 		regulator-always-on;
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
