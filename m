Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7618C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 18:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6pWXVVlzYZtKGm4GcvNuSo8mhCFKpR5J5jAFs91o98s=; b=QHnWcFAGbfwBpT
	Y8Hygvt7xI9jb1MPav7WXztzQ3I8WPVX0GuljyVidKcCN2MKv2ejCPsBkWhFoBQBuzacEr69J/fIm
	4N7Smp4Xb0NkD9rSArjwb2R81UhQC1agiQbxhAnUSBQ7AR9j2oaF+Bd+wziRwmNCf5ru7cLmC206u
	Hdqi2RyZspxgBVFePIRMBGxBbz1tf9f5OL0BIohSQRWWJJP9ftvXk2etnAj7RkhrpjK4m6YmpRvPN
	4Xsoexv3rB+r4AA2UjXeweNV893TdIHdn+FvLRy/pIAN2/+UL9WrBnb+mb3v1PB/8OQHC2i2h4RjG
	W8yVPgK58deXwIgK6BRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oziS3-003Li4-8M; Mon, 28 Nov 2022 18:01:55 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi8D-003APK-OK; Mon, 28 Nov 2022 17:41:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 57B82B80E9D;
	Mon, 28 Nov 2022 17:41:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17F34C433D6;
	Mon, 28 Nov 2022 17:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657283;
	bh=Hk/OvMoDD//KKQxtJVrd3EP9uTZttIgO519l/iryzjY=;
	h=From:To:Cc:Subject:Date:From;
	b=JJ1Y/AgpU56coBjWpL4OX825/nta+OPZLhrI6+68xqaapCc0g3Zm/n/+dfV9mYpKW
	 8t+1GL3tB0Zt4AINuMcn/DuKtoUGCELhj7ShqPorQdwu3qUBTmm4fYOgGNOcoKRhaf
	 bsEd8oTnEQSHl6awwzYDYqaW6UGcOJVF1fv3dwm3ADPXFRfMXPFAMXucdJ2cGWAUFN
	 lYlVV+oZxGrWxuQ85a4Z7zhVzFnvTvUC3Aeu6a0JRsnNulLo8W3VbB7azuY7bXF7M0
	 pIfUkUtpw4Kw8X+yVrUWFZr9iwxF9ONBWlSMq2kxv8LuzstYTy1g+JMRNf8LnKhslt
	 v1AUtWvFZzCMw==
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
Subject: [PATCH AUTOSEL 5.10 01/19] arm64: dts: rockchip: keep I2S1 disabled for GPIO function on ROCK Pi 4 series
Date: Mon, 28 Nov 2022 12:41:01 -0500
Message-Id: <20221128174120.1442235-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_094126_015545_AF84D558 
X-CRM114-Status: GOOD (  11.07  )
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
index f121203081b9..64df64339119 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -448,7 +448,6 @@ &i2s0 {
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
