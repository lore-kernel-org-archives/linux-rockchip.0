Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5917CA5FE6
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Oct 2026 17:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ebPdSQaHOpEqYk5irH0ZKQzWhsAXlBqUICK6PBqA7MM=; b=HfxdQNaUWtHubS
	CJvccBNMTf8cWTkKpwt2+eJ/GmXl53MTU+k/7MyoSUnLeISlc4AdYaeAYU05NRtLO6fq4v9jm/9OS
	2TS4KmNMOisA+kyDd/spJsrfbnXlJzUV0U7zrmv955L5eLM3lc43ZbLiecyigU7o3JwLdEnuPZE3H
	bV22hb9PyEmgoKdhBovYP9rRP78lMx4cHr4RRrLklAxOSfRkj3B5CUxeAkh9HDgSIydIdMSBPSE/g
	2ow7T4apDs3KmgXXr6vpBogLXy8/u0+v56jzn1l46zg/+WXFlRd27MJ5sAjuAcqw09tp4JsVcAYHi
	6dhDylLPHSpN8XPfzw+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDPv5-0000000F6uK-1Fvr;
	Sun, 04 Oct 2026 17:22:39 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDPv1-0000000F6st-2zex
	for linux-rockchip@lists.infradead.org;
	Sun, 04 Oct 2026 17:22:38 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-3856d6fbcb3so476900a91.2
        for <linux-rockchip@lists.infradead.org>; Sun, 04 Oct 2026 10:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791134551; x=1791739351; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=f7rAIIfQRjf/DZlHIopzmqG8GHaCqWeari8L74hauSs=;
        b=BZNh0Kp7PsFGDPKlJjmq8/qsFSsJOeiQgI7Ijd3pStENlNeId3zHxJ8GikVwshY4ng
         5+mQ83X7CwscggvHgh+oCbYtqK9HViA8ApHmDzAWx6v+8Nirz6rjvlhtowDKg0qwNdHv
         g4c8uSHUtHIzzySEFICc4LYq1nm6Z6asYNiFONf8QupAM45mqwW9jN1blTgTd88NOGDY
         q5MLXF3HOH8/dYKZCIwveZCXNx+lvW9N73OhpIFYD8VbknsrO7Ri8TOWspn+bEJESMlw
         1C0MDLGKyn1+YqDqJHCt+7i/zkVKW0bC1Pyw1Dz3l4yFiZJr3yoJGJ1kMaOQ02tCLf9M
         ji6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791134551; x=1791739351;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=f7rAIIfQRjf/DZlHIopzmqG8GHaCqWeari8L74hauSs=;
        b=2UxRHeOk1dBxYl1U6g3Fdv8Jj/SxS0H/m7lqv/1lr9Kp4uZur48p5U5GsqR7xt23HU
         26+crSMVrmMzSTq1TGJlx22EF2sa8ILBFqQfWw93Qz+qB5uhL8LSHsU1Hw9zHMEQBUnU
         kxSSjFbuZuZwqN7Eomm0VSM17Op0wzvDOm+7aHGeFoesKFcmjK3FIB82YOvOSmI1t1qQ
         dgLE9IYx9/jR4xrRRiJKNaTqSTnvsyTwND6avIuidO4fVvhkAGjoGgGxF5SHoTYcUl3O
         7wU84eL8Botg7uio51D0LIUrarP/3zh2wzDAPSlyDq8FzychGmoSlisN5r/xqQloiH8e
         g7uw==
X-Forwarded-Encrypted: i=1; AKwUvBzcbLXfUXgF0l4ev66c9/eisZK7WJg2A6vIgnbdNke7IoNvHxPgEemhKpLMOsiccfu3AB+iIH/asbp+uA87kA==@lists.infradead.org
X-Gm-Message-State: AFq9FYKE7kYA+AbvpvLW/SGKf/shi1MpOTc5LTNUEHFmG/kuHmCTGuDR
	SaOBeFSzHpHUm4KRpwq27QAo0mBzdxk6ryQDBaSrDHzwJJbQeF57BEpB
X-Gm-Gg: AYBFou2LCaXaR0+KNLmlBhwSPwbDPk1NRDkGHZp4v1Soy/vkv7ttFMfVOO1irk/C9bQ
	Jr4WtSGy5X7LL8MzWOymiOHdTbikn33O1eg+3K0Kz0LkxORgpiueMa6nOWIJnzVo6Zm7W0Jp/oH
	avnwCHQqQ3BPNEbc3z586ZM4lC5SxmCDeIjx8JnLPwQl8nqIw+98A3zbh8OYrSdA/2ggzoln4TK
	yjM0hqq4tlAFlmpnvcSWb2FwAcWmP4RTrxa+CR4AH/BjPNptpw8ykPRo1BaI7k2iGu793IvD8o/
	HStD2TsirJjJhNvrKKwF+aOmLlUWZUeLPp16ArMeHrBsXIrjs2zeQ6/OklDCNoHUFI5OKjkU0JP
	XwuwyRGt9D8xaddHf9iLisiV79DL5C6n1/qGX+Mq5cGRiCREh9eSGFj4fh5cJhIvdtiW9/9UoVv
	RbfB2HWmDrKpI5SPi28C1c7YqPxH/fIHkfCAxQbuK45NpWuujt9Nl8TZPD01HPWx2FjQhxpF5UM
	WV5y0tRobA6Bg==
X-Received: by 2002:a17:90b:4d:b0:3a4:aee8:76ef with SMTP id 98e67ed59e1d1-3a78717db57mr4586561a91.21.1791134551329;
        Sun, 04 Oct 2026 10:22:31 -0700 (PDT)
Received: from SonYoungWon.skbroadband ([121.125.40.90])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a6dd4bd483sm5847677a91.4.2026.10.04.10.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2026 10:22:30 -0700 (PDT)
From: Youngwon Son <yoson5375@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Youngwon Son <yoson5375@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable the NPU on ODROID-M2
Date: Mon,  5 Oct 2026 02:21:15 +0900
Message-ID: <20261004172115.5105-1-yoson5375@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_102235_993717_D66A56EA 
X-CRM114-Status: GOOD (  10.75  )
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

Enable the NPU cores and their IOMMUs on the ODROID-M2 and wire up
the vdd_npu_s0 regulator.

As the regulator is now controlled through the NPU power domain,
remove regulator-always-on. regulator-boot-on is not needed either,
since the RK8602 state can be read back.

Tested with the rocket driver and Mesa Teflon (MobileNet V1).

Signed-off-by: Youngwon Son <yoson5375@gmail.com>
---
 .../boot/dts/rockchip/rk3588s-odroid-m2.dts   | 36 +++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
index 4e98fa3349..ea4d86a588 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
@@ -320,8 +320,6 @@ vdd_npu_s0: regulator@42 {
 		reg = <0x42>;
 		fcs,suspend-voltage-selector = <1>;
 		regulator-name = "vdd_npu_s0";
-		regulator-always-on;
-		regulator-boot-on;
 		regulator-min-microvolt = <550000>;
 		regulator-max-microvolt = <950000>;
 		regulator-ramp-delay = <2300>;
@@ -441,6 +439,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	hdmi {
 		hdmi0_tx_on_h: hdmi0-tx-on-h {
@@ -514,6 +516,36 @@ &pwm0 {
 	status = "okay";
 };
 
+&rknn_core_0 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_1 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_2 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
+&rknn_mmu_1 {
+	status = "okay";
+};
+
+&rknn_mmu_2 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
