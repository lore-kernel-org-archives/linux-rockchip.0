Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80C49C28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 23:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nlaO6Ha2Y7NG7xBb/v2O6i9CqHTBMN3JXXaxvpNNCRQ=; b=CJMJeUlEtNKc8e
	7FxwGvLdGtwq3qTdTyg1IWt822WZZOWUZaNrMiQK3/swIasNXefUmPahKPV/+JSCAw05c0GtIOPzG
	LwYJmhL1fi9GFrqqwHroMh6kGe1fPqkn/kUSy17xRO3IqhnWlysEyAoJcRHaQALGc/YyByR9k94bl
	uvNHu4+LPDVwleio6uS/DQ/7+IOM9+TkXCJKYoLPvF9wnmEUdD1RNVhw1tVgH55OnPs4+HbMc6Lak
	OR6NPMY0znPusIk5lXBxlRw3ZTM5Mc0imQS183pRU95eGJSqHer+JCwZMohfpLPoeu67910kMMFX3
	926o+k0YbC/q8UatundQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQH6a-00G6ow-8m; Mon, 22 Aug 2022 23:45:16 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQH6V-00G6kF-Tq
	for linux-rockchip@lists.infradead.org; Mon, 22 Aug 2022 23:45:13 +0000
Received: by mail-pf1-x42f.google.com with SMTP id 1so4661461pfu.0
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Aug 2022 16:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=d0Csk6K/KRDvQOW2pJh/wb18v7EwQgVkPuj58liA9sk=;
        b=d0OjFOtnA74HEPODGOej0roBiHJdXfjGLLMCSA7Dja6dRiZnZ+AIa+/Zq6lX5Ml6bR
         UhWPfGcABUeKPxY8LkSuTJTdmMgY16YD6uRueoeouqYr0jwXhuQd/vC3haQPN33MOxo8
         p3cbT1GhwmDy66zEiQ8KCJgxILUB/5DBIK8oc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=d0Csk6K/KRDvQOW2pJh/wb18v7EwQgVkPuj58liA9sk=;
        b=Woy38qrej1XqgyXKUHM02DHzdqfraP4HzxTya9irMtNdPddhA9Mtb8FE9wY21RjDX2
         /KhrYiNy/PsKkFszABuzG/jnjTW+kwFbi75/CxOXcZmu5dGdFlqrO1z2LYvBoQUI8/ux
         GuIJkk2yDJp1l9NPJEp9TXXUSPXrRQp6n827HQwZ7OR82EaB2thVlUnp4GK1CFBLNfuC
         4P+GWm+qB6ExY1fUFjxaE7T1EV+PtYFxRjdBBhWtX9540cddiLrert2GskeJQDPUKvxq
         QNU/48Hhzh1LPiAqJFgM7U/5QtDN76wSUCXTScpK53+KSD1sHJSJOQu6yIRZF/K0AG9o
         K92g==
X-Gm-Message-State: ACgBeo0ySPB07MPn77Ix7ICyPpu4ISQxlwUUWeZJVo9R3QhrMXoAWmR3
	axbga6hLmhSpOpn64HZqim/x8A==
X-Google-Smtp-Source: AA6agR4N9JHSXn0/iMlmacfOfIr0W8bQdy9dMMxR+LBeppeS0cmq9y8V81RI4gycpJsfnvP43c5qaA==
X-Received: by 2002:a63:8749:0:b0:41d:89d4:ce3d with SMTP id i70-20020a638749000000b0041d89d4ce3dmr17913148pge.344.1661211910403;
        Mon, 22 Aug 2022 16:45:10 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:34e2:c40e:42d3:27e0])
        by smtp.gmail.com with UTF8SMTPSA id h196-20020a6283cd000000b005367043e163sm4063261pfe.28.2022.08.22.16.45.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 16:45:09 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Douglas Anderson <dianders@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Brian Norris <briannorris@chromium.org>
Subject: [PATCH] arm64: dts: rockchip: Pull up wlan wake# on Gru-Bob
Date: Mon, 22 Aug 2022 16:45:04 -0700
Message-Id: <20220822164453.1.I75c57b48b0873766ec993bdfb7bc1e63da5a1637@changeid>
X-Mailer: git-send-email 2.37.2.609.g9ff673ca1a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_164512_026603_7D29F082 
X-CRM114-Status: GOOD (  12.71  )
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

The Gru-Bob board does not have a pull-up resistor on its
WLAN_HOST_WAKE# pin, but Kevin does. The production/vendor kernel
specified the pin configuration correctly as a pull-up, but this didn't
get ported correctly to upstream.

This means Bob's WLAN_HOST_WAKE# pin is floating, causing inconsistent
wakeup behavior.

Note that bt_host_wake_l has a similar dynamic, but apparently the
upstream choice was to redundantly configure both internal and external
pull-up on Kevin (see the "Kevin has an external pull up" comment in
rk3399-gru.dtsi). This doesn't cause any functional problem, although
it's perhaps wasteful.

Fixes: 8559bbeeb849 ("arm64: dts: rockchip: add Google Bob")
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts         | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 1 +
 2 files changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
index 31ebb4e5fd33..0f9cc042d9bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
@@ -88,3 +88,8 @@ h1_int_od_l: h1-int-od-l {
 		};
 	};
 };
+
+&wlan_host_wake_l {
+	/* Kevin has an external pull up, but Bob does not. */
+	rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index cd074641884b..45796b9fd94f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -578,6 +578,7 @@ wifi_perst_l: wifi-perst-l {
 	};
 
 	wlan_host_wake_l: wlan-host-wake-l {
+		/* Kevin has an external pull up, but Bob does not */
 		rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 	};
 };
-- 
2.37.2.609.g9ff673ca1a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
