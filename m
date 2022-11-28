Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDCE7C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 17:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLL0yxblQr9yCA2UWliAyYSB/Er/7t6bYMfaCHEI3Qs=; b=TPUzyjGl1Fl+6a
	ZejsEn3iHvnJixj2bYi1nP9gUQ+RTkwAz00u0yscT62+BD38pZNat7iR2oxady/PhQtunKHuxzvRy
	McEa6jdUV7YmY+sBJIwAdOts9EyNEW8vAcyO12I7WTKctoLoRs/OdXIpJeHtG6T3DDFetB/SQzr7x
	EbntkmMRtwTUvP9YfNuHp3ZpUEMuPOwOjazdIhVCtJgdIwDoNPv0zDld6XOcSuqsE7xPoawmtcNXc
	VNxPBL89D5lUjVYTLyPbEiGpte490Mmx8/vCPeSSuShT4gFSotWTuVi8Q5KOXZyOQXnj2gwBa9Q3i
	cbTjnLmF8gm9SNMcVv1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oziCT-003ClT-5w; Mon, 28 Nov 2022 17:45:49 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi5I-0038Xj-9U; Mon, 28 Nov 2022 17:38:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E1DE9B80E96;
	Mon, 28 Nov 2022 17:38:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B68D9C433D7;
	Mon, 28 Nov 2022 17:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657101;
	bh=mf9g8Jzxt8+BJw8DJW82769uhbvhnyc0Ydp5BQkt4Js=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=myBzYndT5wPW/bA4JYORJdOyrExw6t3HLu6lx7LAnKuHU7AKaUUy/wUu4IDRVvs6B
	 qRiz5dhrsFTCS3jCJOEQKejEH/y4g6fajqa3tdgubW36t4Zwk2CnB9K194Fo/AVZHw
	 HD2XyEh/2gq7oO3vJH6cJRW7R+k2W8KznXsH0C4JCTQpIHAXp8QUerYDS3yqEXcCKe
	 33Xb37KrW4LlTk17MTJmy43Dd0nDfLUQEm8kl7xQV2G8TtVbubC8Cr4OXsWgMvziaF
	 zIW2drrCFB09sEgu72rRkw9Zoc0/bRLhDoC2mTBkWkk17UphT1pE65sX++GKpisJh6
	 sIc0C7msm/NOg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 6.0 12/39] ARM: dts: rockchip: rk3188: fix lcdc1-rgb24 node name
Date: Mon, 28 Nov 2022 12:35:52 -0500
Message-Id: <20221128173642.1441232-12-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128173642.1441232-1-sashal@kernel.org>
References: <20221128173642.1441232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_093824_541423_E2D977FE 
X-CRM114-Status: GOOD (  11.56  )
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

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit 11871e20bcb23c00966e785a124fb72bc8340af4 ]

The lcdc1-rgb24 node name is out of line with the rest
of the rk3188 lcdc1 node, so fix it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/7b9c0a6f-626b-07e8-ae74-7e0f08b8d241@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3188.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index cdd4a0bd5133..b8f34bef0efa 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -379,7 +379,7 @@ lcdc1_vsync: lcdc1-vsync {
 				rockchip,pins = <2 RK_PD3 1 &pcfg_pull_none>;
 			};
 
-			lcdc1_rgb24: ldcd1-rgb24 {
+			lcdc1_rgb24: lcdc1-rgb24 {
 				rockchip,pins = <2 RK_PA0 1 &pcfg_pull_none>,
 						<2 RK_PA1 1 &pcfg_pull_none>,
 						<2 RK_PA2 1 &pcfg_pull_none>,
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
