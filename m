Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1AACCCD187
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Oct 2025 09:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jxz5GzJSbolftZi4VxbruthJi4n55ftFWqor36zTqUg=; b=Uv8UXi5SRYuS3r
	hob1R7qEa1NIr2eNCkw469skxAUdPb8x9cDeUbw5iQW6kn7lBgSadVSW4i9IlpUettoctZ0BK2B6r
	YZA4zPSuAcvXrFQtt/+57Nk1qJ4MXnX8KFPQgpHtFOS2CBjjK0Mzr7RQGUNrQgtT68PA9g5FnMGQR
	a7nCNvZliVDcc6shZ51Esz45Kekhn/ojGVh5tISsOrpwxuFmgI2vyNXlZ+QB6Zpj3e1HbWYP1GHjW
	qu1hYnueHpMtolfOTD0jyrWLAYFLOdLdGTD9ww4uq8oXxVGTtxgOx8VjtTOxwjhNXqqMu89cOBikn
	Haa0nZufpYU2TaRa5udA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7sR1-0000000BDYJ-2sGD;
	Sun, 12 Oct 2025 09:32:11 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7sQz-0000000BDXf-0nC6
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Oct 2025 09:32:10 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-6318855a83fso7433428a12.2
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Oct 2025 02:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760261527; x=1760866327; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2mWiXoQDcNyCG/Y7xyEyX/kKrmiQYrpx8gb/fQ9TCTQ=;
        b=lezAkIR3gnMr4e+tf44kp/e2txAtRhrNq//N0lDolfEc+bXWuH6mUaoY9+2EVrcg45
         wBGCsY7EyEt4qowTUZ0jhhTDR7uZEwuArOEI6wwZnVOhllG2f97TDUilSJGH6IjAcpFD
         WHpy8IpVBRKWCz231Rm6T5DkYwLVh/yz6NV+63FHNI6CjjuoOjA43pkbfeqkrQKJDQS5
         NHinVrOoXdQ06rv7tFkeAUczXZLeahaGBw1KJBbgM0VNbW06MOOQFh08xOSyd9PE11Z1
         aLaqBqQPmlPcTNzHYVT8VG7ImL4TrrhZ2FyxLCPul/eSPH6uawGWdyyahJXIHxT2ZoA5
         H9vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760261527; x=1760866327;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2mWiXoQDcNyCG/Y7xyEyX/kKrmiQYrpx8gb/fQ9TCTQ=;
        b=IZMGI1HlLrHfHK5VvpqfIyckm1fW8NKXQhT+O6l+01eaFoPP1Lx1cOTYk8Zd3M35wU
         gPtRARvV2ZxUeuR2jV1TLkIY/2GLjs68ngQnuQJifTdf/5BVt2IVAhl6nxPYyUKOSu3Z
         QvkNJjncs4n8o0GOBhQQs+nTmvekH4qyYYfDmno8m5niGWWeAnrHaXwIHE5SGMfEE1Ls
         3PQbYRsOjacVm3VN42RbEFOgz2BO+0jjH4/cGJXkbpO/E8tBTzNEB2omoIZH+pqOHbvL
         0Hq8Lwc7MFqF2Ury5Dnq9kh12MCiU/bUQP3mVx84sEOG6Hm0/b47ZDB+6bkiwg/799Zd
         x1ew==
X-Forwarded-Encrypted: i=1; AJvYcCUtNSsQ8x/yJx0rTdr8obvE/mEIQfeZJsjE4QIuLXP6uibKkneLBXZthWZzBU5cijGIHkvmWddJO6DqFQVtGg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+qBWWl0OLHZkjSz2SSjCAzzm+yCnIcFLm6v9fCzp4QfejvuSz
	M22sOuleTsRD506ZN93VtC+ZNamivvDCsBVl72dcgFR7vj1fRyDPrfQ0
X-Gm-Gg: ASbGncutQ0CgkdpxSyy2oYKC34sO63GsVYWkBTsrl1cZoHIZNzRQONlmhGhjPVOEhWj
	AFEjTrSS49loRwxLv9eAIkC1o2JERe1MRkNwsjD7QKg+Bmal/p2fl5PdG7/Yqug9FAYVmwHqJC5
	Zw6HiN36oEFcoe2sosfkYplOSO7NqBIq/EFeJ/hT025YFeQi8wF5/HqrO4Tc01p1DrvNy/Pb/FR
	cpy/XSIzN7BUbFJNnH6dFkaN/Jjuer702mw1xv2m5uriifAxMtW/SnXn35eezYFn2Oo0zq9sOlB
	p7VcsA00dz3R8Jw8M1n4v07pvbeKKJqSLYozZECP1qHkNPqFvcmmISPMK4I5ZHhi75UlxR6Kfaa
	Hfzd0Pn570CCBGX+D+8vRS7uTRz4KkfEnImr6kqmAsIlypOTa/Eg8o/EhGff3WMLAatNc4RsdNW
	NN
X-Google-Smtp-Source: AGHT+IHAMPc4GhHxYPiu7DN/dGgE3XL8AkmpYnNc4zzqqyTd0Vqq0XFfmmQ8/O+jhhO8SpuritDGUg==
X-Received: by 2002:a05:6402:27cd:b0:63a:35c:6ec4 with SMTP id 4fb4d7f45d1cf-63a035c73cemr10344738a12.21.1760261526877;
        Sun, 12 Oct 2025 02:32:06 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5c323423sm6331597a12.42.2025.10.12.02.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 02:32:06 -0700 (PDT)
From: Andrey Leonchikov <andreil499@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Andrey Leonchikov <andreil499@gmail.com>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Subject: [PATCH] dt-bindings: arm: rockchip: Fix PCIe power enable pin for BTT CB2 and Pi2
Date: Sun, 12 Oct 2025 11:31:26 +0200
Message-ID: <20251012093135.80395-1-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251012_023209_236324_4F513E3A 
X-CRM114-Status: UNSURE (   8.80  )
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
