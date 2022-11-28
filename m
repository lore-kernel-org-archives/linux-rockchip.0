Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79C59C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 17:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9L1WHjFAJfAbvDLy/q7qeyrgO2SClE2mw1V6pRACR4=; b=Dv9ST9p+aVsGi7
	V2VJGCvijJUPENO2JJsUAge30c8RbwQUtnaeVAUnMuEM1IdrNDyVXBO9rdJlhKw2D4d5ya0pe+6Nd
	eoey3rnCcjPzB8SZoQx0+MsKGUBxgJC+IW5K3RwlxOi0Yb8HYxFTRwQpHp6uudEjxAxO+OF5Cr4tk
	lRt6zsS60XUyMrMTHmE+nfu4ca/pElC2xwBAuq8mnpWi+3bp/RsMe6z4JZCJLt4AxlWvr2ViLxsdm
	2KynJq/s91wqt9VMtymKGR99Grb7/bbAWPBE1slae8VXqD0R92WQiWHweyENDlkUv+1ov3jgFiEtc
	LMmWumkHdDRafw274/jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi7H-0039nL-8V; Mon, 28 Nov 2022 17:40:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi4i-0038AI-CN; Mon, 28 Nov 2022 17:37:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D3D34612E4;
	Mon, 28 Nov 2022 17:37:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A5D7C433D6;
	Mon, 28 Nov 2022 17:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657067;
	bh=YyU7mChH0/BPR9SsGJGZjBDTLtDxjphLY+Vx4U7JK4g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NMHacSZkYMKzLJLTDLpWKVtTMUEKVWpwOv5Luca37JmzyVSBpEk21/7IT1BFqIxwD
	 zGvY0KDzPWSZEruejvDDyOmwe5n2h84OpKIEv+pH56NSIFfMtsdEFa6w9UEDnXEFSj
	 bwkNMwILduQE3ZrjP3gEOZXfDJnnquI3m01l5nAwQ4UUTTU4cZRrP74fGDxWqznURU
	 6T3AVDVgGsiV8ojt76Bih2IOEj7xosPsz5gdC2S0+qXihnFYNN10SApos4dOKY82yE
	 VvGm/w2peD2AtmqQ7NDJE9RK9V645NNujuRWWxFSGs197sm0zCBXhLalpYwuyurMtQ
	 n6stN6JWDB3FA==
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
Subject: [PATCH AUTOSEL 6.0 08/39] ARM: dts: rockchip: fix adc-keys sub node names
Date: Mon, 28 Nov 2022 12:35:48 -0500
Message-Id: <20221128173642.1441232-8-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128173642.1441232-1-sashal@kernel.org>
References: <20221128173642.1441232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_093748_529013_07FE47CF 
X-CRM114-Status: GOOD (  10.94  )
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

[ Upstream commit 942b35de22efeb4f9ded83f1ea7747f3fe5a3bb2 ]

Fix adc-keys sub node names on Rockchip boards,
so that they match with regex: '^button-'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/7a0013b1-3a55-a344-e9ea-eacb4b49433c@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3066a-mk808.dts | 2 +-
 arch/arm/boot/dts/rk3288-evb.dtsi   | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index cfa318a506eb..2db5ba706208 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -32,7 +32,7 @@ adc-keys {
 		keyup-threshold-microvolt = <2500000>;
 		poll-interval = <100>;
 
-		recovery {
+		button-recovery {
 			label = "recovery";
 			linux,code = <KEY_VENDOR>;
 			press-threshold-microvolt = <0>;
diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288-evb.dtsi
index 399d6b9c5fd4..382d2839cf47 100644
--- a/arch/arm/boot/dts/rk3288-evb.dtsi
+++ b/arch/arm/boot/dts/rk3288-evb.dtsi
@@ -28,19 +28,19 @@ button-down {
 			press-threshold-microvolt = <300000>;
 		};
 
-		menu {
+		button-menu {
 			label = "Menu";
 			linux,code = <KEY_MENU>;
 			press-threshold-microvolt = <640000>;
 		};
 
-		esc {
+		button-esc {
 			label = "Esc";
 			linux,code = <KEY_ESC>;
 			press-threshold-microvolt = <1000000>;
 		};
 
-		home  {
+		button-home  {
 			label = "Home";
 			linux,code = <KEY_HOME>;
 			press-threshold-microvolt = <1300000>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
