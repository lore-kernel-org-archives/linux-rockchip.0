Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F53EC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 17:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0OgKUmr2Y6+tiH+2hSuYAMZRPVhCc6XxyRr6U7I5GPk=; b=jdjVupbDzct0x4
	eaxWrxfR1Oy+tobhQSKi2gkdQm9fzkp7IXOmiF1vWOcvQMSU3CWPi80HmwDLfYRqvOMcWXIslSij6
	CunBfGiDkL7JF9fZ2mSRGr11kL1HnJ/Ff9sBXayKMPac2o7zmGSrPTupWahVGa56p3gFy2GOpJODL
	J14hEixEAQxiagrIRFA8MJvK9h4jOuNLH5fX3+oVQTCME2dsBupu2lOUuNPWLAIwigxMNvYI84Zx8
	IJ101YNYDwFzTeCL2X91+k/Z19ZHVfxMEk21J7E7AZnA/BzhNfoMGTlqdVZLHq5bKaFh+vVFrUBnD
	4GJ9ksXbaRob76rwSlgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oziK0-003H9F-Ej; Mon, 28 Nov 2022 17:53:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi7K-0039qd-Ts; Mon, 28 Nov 2022 17:40:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 737E9612ED;
	Mon, 28 Nov 2022 17:40:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDA6CC433D6;
	Mon, 28 Nov 2022 17:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657229;
	bh=6EVL06EKmQLLO098KWtUicdZHL7THTd3FmfR2UBoFHo=;
	h=From:To:Cc:Subject:Date:From;
	b=KeK2MEer+nbL8ziBDtaAr0lx0i7voH9mjXv8FS9z4ZzoK/lUOm9Wixl6jPrVKPbnw
	 4+pbQotUO6Zm9O3efQslFEAG+2RFf162Ck7EsR5v1tGiR5K0wtfP2a9yOFCJtrvJbf
	 5JU//y7goblnHRifL+3Vobc6Lb9M4EdKPyMPdKhc4XfC69Fw7XfI4Y37DoAfz/2bci
	 sDAKpjsD76TB/aEkGIWkiwhF8b8SsRNsA+YRwLp8HwO6AoNzum095OZt4HoDFxRV8i
	 O0RpQuOZaMpI2HLWwROgLncQuOj3D/WnM5G9MzoFARNYF+B+jMAZ4rDEjfZTrMl7Mt
	 2Cg8urNXcwLYA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 01/24] arm64: dts: rockchip: keep I2S1 disabled for GPIO function on ROCK Pi 4 series
Date: Mon, 28 Nov 2022 12:40:01 -0500
Message-Id: <20221128174027.1441921-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_094031_045474_131DFF63 
X-CRM114-Status: GOOD (  10.98  )
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

From: FUKAUMI Naoki <naoki@radxa.com>

[ Upstream commit 849c19d14940b87332d5d59c7fc581d73f2099fd ]

I2S1 pins are exposed on 40-pin header on Radxa ROCK Pi 4 series.
their default function is GPIO, so I2S1 need to be disabled.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Link: https://lore.kernel.org/r/20220924112812.1219-1-naoki@radxa.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 100a769165ef..a7ec81657503 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -446,7 +446,6 @@ &i2s0 {
 &i2s1 {
 	rockchip,playback-channels = <2>;
 	rockchip,capture-channels = <2>;
-	status = "okay";
 };
 
 &i2s2 {
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
