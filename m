Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82D76D232C6
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 23:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qd6TMNf9O8h3ioB0hST6BD2K6XTDuv6Z3eY4itANLRg=; b=0/Thn1CR7KpYaV
	BmMELy5in98r6Xv6VG8tL6UcG5U1F95FJwPWYCPgXN+4u73eiycDOSaCH+K66zMS1DYPLHDeiC6LK
	EkFSWPQ0YonEojvcvcSBrKG3Wu/C1wCl5Q7ZmlJwbyoEyi1rmr+lQCmD4qKtX3GNUdGI3/PIG9N5w
	pBw7UHE2HSMUR/lL1Y8jEDSliREHRht4qhxOfm1NvWssXA3VtBzRoh5uZJUxdfa1/Iw0mk69sORWh
	vilww520JNrL7MwDkM2Oxorl6h5wECsHeAR6qok/HROggf9YhrcyPL5oj9YL372JEd3BTPlbHoCVm
	Ms/pLKjyI6M6aGkcbPOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdz5C-00000000yVQ-1UtQ;
	Thu, 08 Jan 2026 23:06:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdz59-00000000yTY-3s6p;
	Thu, 08 Jan 2026 23:06:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 288EA434B3;
	Thu,  8 Jan 2026 23:06:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E699BC116C6;
	Thu,  8 Jan 2026 23:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767913579;
	bh=lpYcV9gaFVICm+OV5hThQh4LXmGP/93/zbRqYv5uQ08=;
	h=From:To:Cc:Subject:Date:From;
	b=RYv5fElyNvHhVN5pAP8GE9ju4c62b0sd/zx/OZCTn00GkCUWPpzDuribmTE8dbE7+
	 EvPRYKDZ89iGX2KwUEwKy/bAC0B0NMEaNb8LwiscunRlSfFCz46eerxHkBTIxYZYVR
	 jREPKDD3G43UVyVhOG6M2fAyuoMkDPgiqodCafmHhsmwOzGjGLi/vrrlktaSHQhTUZ
	 qE1flRsKz0XjDLPHVb8LWNty8uRSKnn3VEJIvOfZ8uXnt5COZUrACiAGuI8aSJPIw0
	 Un1qI1ovBrENtJq9aFx5xb590NNZLw/2fq1KkM8UkTLDvBnmY+Q0BAP8tXUT6Bk1jn
	 NX5SILHcPzC9g==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3326-odroid-go3: Fix pinctrl property typo
Date: Thu,  8 Jan 2026 17:06:13 -0600
Message-ID: <20260108230613.1349060-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_150619_984636_4CDDF43A 
X-CRM114-Status: UNSURE (   9.84  )
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

"pinctrl" is not a defined property name. The correct name is
"pinctrl-0".

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
index 35bbaf559ca3..7f6f3c5040d5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
@@ -14,7 +14,7 @@ / {
 
 	joystick_mux_controller: mux-controller {
 		compatible = "gpio-mux";
-		pinctrl = <&mux_en_pins>;
+		pinctrl-0 = <&mux_en_pins>;
 		#mux-control-cells = <0>;
 
 		mux-gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>,
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
