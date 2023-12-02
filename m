Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F117AC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3D8+xKkCLTogeJLBk+JMrRNgwrh/VrRSs7iv5e58NGs=; b=0/4+oMA/1N6Yf8
	gpchUIMfu2K0eSVize43Mw5YnbbSGvw8DCBiasbhEhgtpSguY56dp8tIm/lyi+6mtDfIEKSJc7CLk
	eL1x9TSRkyg+whjZUe0ZMfknI5s9KpUi9xdzOgDUJhjiSTpuZO1RGhj73OOuDDZaPCzuGK3K86PXh
	+03URBbuyFe92tgpN8eoTJr+Gmjd6E164coIcj03/WRU/Ooh9HQWys8vS5qF9NAq/gBlccZ2SQ6+3
	McqJfuXW2k4lWy0fUA5RaWtZe0P13y+rEMPn2CDMcKwliMc69xxSdBOZUwd4Iex1cCGlFoYCUb2cF
	z0xM5H5ejF8G218e+kPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9KAu-00FGAr-2i;
	Sat, 02 Dec 2023 07:12:28 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9KAs-00FGAO-0k;
	Sat, 02 Dec 2023 07:12:27 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1cfcc9b3b5cso12012375ad.0;
        Fri, 01 Dec 2023 23:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701501144; x=1702105944; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DePi2tn/vJxmuaMGw4qyE+kZCcU7rGnK+GXQQUXNgN8=;
        b=XM0XnNDMppdf7/P87ATYduLkFQ5XHs5IS5Lvb6r/V7Paf2gdhjmZWZ5rpLu4/rvoNu
         V44najO4ESsZ/hHfjuxWFNVJymZqxGiV7cH8i9q0mL371mwVbYdSlDpEYz/kk0Q2zMdX
         dr/8u3HkZlqyRZ1H5Uvlb48/OeKVUH0R9ATzzSjO9EW2IPnfsmbMyxj1wWTjZAkVhP1V
         p/Uw0FRpLYuDB3FfszCJwiETLpZTlalfjNVZ2tq4h4/eOG1PhfhKy6ArU9EYlGjKMwY4
         ikRivDepObxAny5QFxu55msVcjj2KyLaV7PNwKpAL9KH1IeDuYOlSjzXbEt0i2YLVA/u
         r2YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701501144; x=1702105944;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DePi2tn/vJxmuaMGw4qyE+kZCcU7rGnK+GXQQUXNgN8=;
        b=X/J4kNBS+4P8ZLwBRMOv/A8MuY9PWAPqHVPIZQh/wSq3fFopsn2UI3I7UOOZlW+Ls4
         W7O/6vjvEen8z1LlX6p9dRt8hacclBveYQJeXHvhcuOnCF/rgO6TZLgWwoda1UxTA4Qw
         EKET7K01JuahVn8TG+Ak5kh+OhTgAYDj5VaxftBKvFlqn7ZOfllCTOYFkWVWXOd5O0cn
         5cyzGiULzARTcOOnRQl/ItV/SyjWIfdJQai9TBipX43ypgFwmvOQWWKivKbaH20F+piv
         WC4KUymjJfCxSCSePT3Qc/TWUb63nHtfToNsH5+ZuHVcTfMVLQ5998OPuQvSOb04KuYr
         2NIg==
X-Gm-Message-State: AOJu0YxOaFsgNqnw+0x+T9RL3A22Z3Ij3s8bUIkW36fyXzJYqiub1QST
	qgTainlxtCV/w3tkpJfkN4U=
X-Google-Smtp-Source: AGHT+IHceCMsSA4BnZK895R/j71ue2epigtJIbZzftwrDluNIiFSttXleJr6L3zxWw2jr/MXGqFteQ==
X-Received: by 2002:a17:903:244e:b0:1cc:53d1:10b8 with SMTP id l14-20020a170903244e00b001cc53d110b8mr961200pls.50.1701501143909;
        Fri, 01 Dec 2023 23:12:23 -0800 (PST)
Received: from localhost.localdomain (static-198-54-134-172.cust.tzulo.com. [198.54.134.172])
        by smtp.gmail.com with ESMTPSA id i9-20020a170902c94900b001cffe1e7374sm4451957pla.214.2023.12.01.23.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 23:12:23 -0800 (PST)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Fix Turing RK1 interrupt pinctrls
Date: Fri,  1 Dec 2023 23:12:12 -0800
Message-ID: <20231202071212.1606800-1-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_231226_295720_3753953C 
X-CRM114-Status: GOOD (  10.60  )
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

The pinctrls for the hym8563 interrupt line and fan-tach input
were both mistakenly defined as `pcfg_pull_none`. As these are
active-low signals (level-triggered, in the hym8563 case) which
may not be driven at times, these should really be pull-up. The
lack of any bias results in spurious interrupts.

Fix this by modifying the `rockchip,pins` properties as necessary
to enable the pull-up resistors.

Fixes: 2806a69f3fef6 ("arm64: dts: rockchip: Add Turing RK1 SoM support")
Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index b517debf2b54..bbb6d38cd159 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -294,13 +294,13 @@ &pcie3x4 {
 &pinctrl {
 	fan {
 		fan_int: fan-int {
-			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
 	hym8563 {
 		hym8563_int: hym8563-int {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
