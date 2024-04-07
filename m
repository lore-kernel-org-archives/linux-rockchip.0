Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDEC9CD11C2
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Apr 2024 17:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fRcM6a02gQ0YcpxvoucVLaOtfMhbbrfPl8IC/bKk0Io=; b=0NBNekJb8BuVCE
	EdK3rZDipYK3Uu7U8j9bMa7w+EaXgmqbz1lMOvdi1oYo/e8YleHP//JT/9TVPh8iVAVIeOXc0Zs3R
	hdfwtsy2XDdP+/vMtlurvQujxi6ZgjyrbAGy9vuhbaLmXevqXJlyPDlipxuhIDglyAJEgNOG2huU6
	eu2vx+rGRwU7voMvcU5TqJXLJ13uwh2LNcMk1SQGYUmWUPsNZJC2OvyNLMQETxEYxW3su/iMIUMYl
	3G+jE2mp+7whl0GTi9h7CUhfJfMp3c9Y7PNTs2I6q8KzDhF5QDdKlBzh0sL6ufpDsu+XwNl7y4a+E
	dkrEaf6xANHrhf7+jQbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtWkr-0000000DDcC-18rY;
	Sun, 07 Apr 2024 17:56:33 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtWkn-0000000DDbZ-20XK;
	Sun, 07 Apr 2024 17:56:30 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712512587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=f5Jw1TP9e/00pRBHBUER+O5BjO8OkjYZAyYWioClWTw=;
	b=ISsNHBQI4TjeZZ5WgEiLqbTJwL1HRg05wrZOioI3Lb2wCIedrSb6I6Ebb+p/yOtaadc4zN
	1vyGHfraSkxYAqKi0BP1HrD3yJbg+eToN3cPsR62qnQs20iTDl/vVigC23mP0D5KlaXp6x
	MDx1LSGJJBZ+8q7f9fQjyc/Bp+XmJT77Yg7ZhM2pf9Qi2Hn4PLaP93igLqN/olEZ4Xwb72
	T71pQBlMdjjol07Cx3D8/lgpkE4O+tdwnEsw9cbApRXK8WPLX2YJC6GgjbkPFIstGjJTGl
	fW/v924249sGoDHHg+c8i5eixorWZS1rk6T4OmEQjVjOBoz7uetsHC8ugedJ4w==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH] arm64: dts: rockchip: Designate the system power controller on QuartzPro64
Date: Sun,  7 Apr 2024 19:56:24 +0200
Message-Id: <c602dfb3972a0844f2a87b6245bdc5c3378c5989.1712512497.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_105629_685411_B4961E44 
X-CRM114-Status: UNSURE (   6.51  )
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

Designate the primary RK806 PMIC on the Pine64 QuartzPro64 as the system
power controller, so the board shuts down properly on poweroff(8).

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index 67414d72e2b6..22bbfbe729c1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -456,6 +456,7 @@ pmic@0 {
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 		pinctrl-names = "default";
 		spi-max-frequency = <1000000>;
+		system-power-controller;
 
 		vcc1-supply = <&vcc4v0_sys>;
 		vcc2-supply = <&vcc4v0_sys>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
