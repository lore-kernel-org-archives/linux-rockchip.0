Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D246C636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ut42oz3buokBrIMPMXNr6YIN6H7YmJdArodTckg1RNQ=; b=lsGFhB0b/sf7qM
	d1JBq3rXzsK83m6Db/MF2YkExe7QC8EXVpRE9O8U6M+0eVkEpl18El4O4swd15Mt7Z1QBpDZ7oeDm
	Cdxli3/C5gDf6dGZgNmVvQsUZ96IGht/udIQVpg6GvrUfUve3HevPjU9k471PRwySdRNDYVoSWre0
	GqWVCCcv4dx+mElyCf/YMSm6pfvRIVraDa4Vz/XSMwQArI+c1Xg7MKAm2w2m3gz+eZyi/3MIdKrDr
	SUR+d1U/q0T67+BIGEPv/1G+QPxpzo6zd2IoPQpFqQSdBVo+9vOoeUOjHgg6yr0fMRpfRSuUaGot6
	zgI7ol7zw56HyWRimtfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOhQ-007EBk-3l; Wed, 15 Feb 2023 20:48:20 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOfL-007Cu2-4U; Wed, 15 Feb 2023 20:46:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 32B52B823B4;
	Wed, 15 Feb 2023 20:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87A10C433EF;
	Wed, 15 Feb 2023 20:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676493968;
	bh=pJ9qyWBsr9mPd+z6Cn2KF2wKt9ulc41prE/bP5SrksQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RgMToS6ccMA0FE4E/0CP528cLPQqMVUj1pzo7lP1AXyHeSoD4CDgi7spKT1YbPMz7
	 wmKRNivhUzgdbS1vmmfaGdqxrLR4sDfFJBovsCOlLhaA7oQ4lc+AI6osszqItOEg4F
	 kk4ret2U2JyjNHo++x0OY96E/h42LbsA7A/QkyRmqAlCM67D/D445EVYPTwuAKWpqM
	 Bh84+2MakV9SWs8/qc7HFd9RtkqQlhwtCnVyPSmHpxTQ2OCm2KIBg1Oa//d+zPMrrY
	 dLXWXknkMAjnGPb+ccP0WjzZHTSupaGt8cGmWISkAxrHxqaFJcmv8lKgsSrNpNJWx/
	 d/syj2kJBfQHQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jonas Karlman <jonas@kwiboo.se>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	amadeus@jmu.edu.cn,
	wiagn233@outlook.com,
	linux.amoon@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 06/24] arm64: dts: rockchip: fix probe of analog sound card on rock-3a
Date: Wed, 15 Feb 2023 15:45:29 -0500
Message-Id: <20230215204547.2760761-6-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230215204547.2760761-1-sashal@kernel.org>
References: <20230215204547.2760761-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_124611_420398_C0A5AC42 
X-CRM114-Status: GOOD (  11.68  )
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

From: Jonas Karlman <jonas@kwiboo.se>

[ Upstream commit 1104693cdfcd337e73ab585a225f05445ff7a864 ]

The following was observed on my Radxa ROCK 3 Model A board:

  rockchip-pinctrl pinctrl: pin gpio1-9 already requested by vcc-cam-regulator; cannot claim for fe410000.i2s
  ...
  platform rk809-sound: deferred probe pending

Fix this by supplying a board specific pinctrl with the i2s1 pins used
by pmic codec according to the schematic [1].

[1] https://dl.radxa.com/rock3/docs/hw/3a/ROCK-3A-V1.3-SCH.pdf

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Acked-by: Michael Riesch <michael.riesch@wolfvision.net>
Link: https://lore.kernel.org/r/20230115211553.445007-1-jonas@kwiboo.se
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 44313a18e484e..bab46db2b18cd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -521,6 +521,8 @@ &i2s0_8ch {
 };
 
 &i2s1_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 &i2s1m0_sdo0>;
 	rockchip,trcm-sync-tx-only;
 	status = "okay";
 };
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
