Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8CD1C43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jun 2022 21:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mrlCqwlmN16bNBLKWsEtdOtJ6HC2QOS93y7T+DC3NIY=; b=JzjXlA7JQtRAm2
	kDjfBX6TA+uQTQGbsW1EdPtUpJIMnHlefc6O19iAVdrZEuVHPffpnt11Eqi/WHoEK0G3L5TxZY5Qj
	Bo9YQ8J1hcPBAZ2KBDno5ZArWq+Hc/WOnB6+GfBvsopoq2k/rZZ49FPhAgKh66Op3MUQ3zZDWVpYe
	3gZ9dOPU1DzjvnY1kv9jNuENuK0H0MaFYJiNznSkT5Yqun92P0BZVdozkTgFHwNLAsely6GaA/hQ2
	S4TraWgyt/yrDfoifhf703mgIWlMVcyh2xuYW8fuwbnsJoGQdruAAjlyn+Na8emhhTW4k48xk8tco
	2eV7iIE4KLpb7bZYW3Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygYU-009j0O-Dq; Tue, 07 Jun 2022 21:16:02 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygYJ-009izQ-AA
	for linux-rockchip@lists.infradead.org; Tue, 07 Jun 2022 21:15:52 +0000
Received: by mail-pl1-x634.google.com with SMTP id u18so15900627plb.3
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Jun 2022 14:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jT8DLfbyhUAC8YupnNkx7/WPeiPnBTRo6q4n9p3S9IY=;
        b=VlUgXcU9owX1EBIje6hBA2fwQ9kjFpI9bPxIwfz3BBF+P0QwC14EOuzXoFF8wDys4m
         LvFexAAmIgm9t44ySB3iZn4tl5NRcrd+xFuGu0qVyxf3w/br+VLAlQmjgGoWKBREO2gT
         mBi4xnNl9LeVoaIH1Mm5CLnk7Jt6LFoQ9GNFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jT8DLfbyhUAC8YupnNkx7/WPeiPnBTRo6q4n9p3S9IY=;
        b=w3J3169PQarBCoof9ok7yHImdwD7CYMiuC1Whum/cFsN62k7rwV44RIUKKYn6b5Qnq
         FZrWoLT7+7zM9r37in2d2vSzT6o798QHcJKB8iMyQWbyucZg3JUhb6kAqiraLR6zfoLm
         DAvz+bCtoj4j+sfwbRgD96E62tT4OMdU8ph90ZYXp5M1YR/9n+JMHFECws+GqkkElUv3
         L3BW8T+SnediCXpcjsouyNSK5bY4NIFMTNZAFegYMRK3J9f6aPawurjk3D8lQsskFlLY
         B+crpEKEWZHj5BCmeWcCAbtd65pU7DaD03/lz0295FAsMZ7KguW694IILYHk0Op7G24q
         j/sA==
X-Gm-Message-State: AOAM533ULTWhfImgIPI/D25GiUm9k76qMAFo/yVhEefiIufY3Q+NGNkK
	CUNkrbkTEHf0yoDA26DTQJk35Q==
X-Google-Smtp-Source: ABdhPJxhFzWqzH75FBiSKGcGqopAKv26dB/QVu2+AEpLNrGFVc0gxO7a4bpodDrd1FVbJmDNPWR2Tg==
X-Received: by 2002:a17:903:110e:b0:167:8847:5d9d with SMTP id n14-20020a170903110e00b0016788475d9dmr8945619plh.3.1654636548284;
        Tue, 07 Jun 2022 14:15:48 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:b689:cc5b:e6ad:930e])
        by smtp.gmail.com with UTF8SMTPSA id g7-20020a636b07000000b003fd3a3db089sm8589907pgc.11.2022.06.07.14.15.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 14:15:47 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Brian Norris <briannorris@chromium.org>,
	stable@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Assign RK3399 VDU clock rate
Date: Tue,  7 Jun 2022 14:15:36 -0700
Message-Id: <20220607141535.1.Idafe043ffc94756a69426ec68872db0645c5d6e2@changeid>
X-Mailer: git-send-email 2.36.1.255.ge46751e96f-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_141551_418552_3AF38F7C 
X-CRM114-Status: GOOD (  14.58  )
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

Before commit 9998943f6dfc ("media: rkvdec: Stop overclocking the
decoder"), the rkvdec driver was forcing the VDU clock rate. After that
commit, we rely on the default clock rate. That rate works OK on many
boards, with the default PLL settings (CPLL is 800MHz, VDU dividers
leave it at 400MHz); but some boards change PLL settings.

Assign the expected default clock rate explicitly, so that the rate is
consistent, regardless of PLL configuration.

This was particularly broken on RK3399 Gru Scarlet systems, where the
rk3399-gru-scarlet.dtsi assigns PLL_CPLL to 1.6 GHz, and so the VDU
clock ends up at 800 MHz (twice the expected rate), and causes video
artifacts and other issues.

Note: I assign the clock rate in the clock controller instead of the
vdec node, because there are multiple nodes that use this clock, and per
the clock.yaml specification:

  Configuring a clock's parent and rate through the device node that
  consumes the clock can be done only for clocks that have a single
  user. Specifying conflicting parent or rate configuration in multiple
  consumer nodes for a shared clock is forbidden.

  Configuration of common clocks, which affect multiple consumer devices
  can be similarly specified in the clock provider node.

Fixes: 9998943f6dfc ("media: rkvdec: Stop overclocking the decoder")
Cc: <stable@vger.kernel.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---
This is a candidate for 5.19 IMO, since commit 9998943f6dfc landed in
5.19-rc1 and is being queued up for -stable as we speak.

 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 4 +++-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi             | 6 ++++--
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 913d845eb51a..1977103a5ef4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -376,7 +376,8 @@ &cru {
 		<&cru ACLK_VIO>,
 		<&cru ACLK_GIC_PRE>,
 		<&cru PCLK_DDR>,
-		<&cru ACLK_HDCP>;
+		<&cru ACLK_HDCP>,
+		<&cru ACLK_VDU>;
 	assigned-clock-rates =
 		<600000000>, <1600000000>,
 		<1000000000>,
@@ -388,6 +389,7 @@ &cru {
 		<400000000>,
 		<200000000>,
 		<200000000>,
+		<400000000>,
 		<400000000>;
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index fbd0346624e6..9d5b0e8c9cca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1462,7 +1462,8 @@ cru: clock-controller@ff760000 {
 			<&cru HCLK_PERILP1>, <&cru PCLK_PERILP1>,
 			<&cru ACLK_VIO>, <&cru ACLK_HDCP>,
 			<&cru ACLK_GIC_PRE>,
-			<&cru PCLK_DDR>;
+			<&cru PCLK_DDR>,
+			<&cru ACLK_VDU>;
 		assigned-clock-rates =
 			 <594000000>,  <800000000>,
 			<1000000000>,
@@ -1473,7 +1474,8 @@ cru: clock-controller@ff760000 {
 			 <100000000>,   <50000000>,
 			 <400000000>, <400000000>,
 			 <200000000>,
-			 <200000000>;
+			 <200000000>,
+			 <400000000>;
 	};
 
 	grf: syscon@ff770000 {
-- 
2.36.1.255.ge46751e96f-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
