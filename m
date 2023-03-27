Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34EA9C76195
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 15:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4D3WUtd8F98BJIPnASwadBm0zaZfXo+RohbUPJT2a4U=; b=p2WMcE6HVZbnqL
	r80QgdIp5KZ74QvO10knL9OFKybdL+68N7DP8M+lvAyMpWZweNqjcEH8EJrIofOOhj0qLfK3swRSy
	8L2W07S0jeXy8Nq73oVz7ae9LbGRWez3s9L9em2GgVI2uz0fgcBdA89QgqSkPZw7fm0vsfj+WJIiW
	ZnL9zUBlwI8oeCwRHA8yJMxiEtnIc1OqLRXhNfhA4fPAmWMD/E8s1Xkauq/KRzuL83KdR2uUiX9IR
	/q4UBDyV53nzgttGQqqThdw4cT+4sHrhkFkWGzPtCZDWk/63i8dcfq+t9t68oAT8cdAN1dbhnKhPZ
	PpbT6q1PzXQQPkEJW6NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgot2-00BYWh-0S;
	Mon, 27 Mar 2023 15:35:56 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgot0-00BYVd-0W
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 15:35:55 +0000
Received: by mail-ot1-x334.google.com with SMTP id k14-20020a9d700e000000b0069faa923e7eso4742002otj.10
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 08:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679931351;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lvH2wwh5ilVKrGxPTUn0cBva2EIuEqu2IvcB3AtAx+o=;
        b=jb52HQakdyH6iclqcMk1O0LY26oENvXN4HUJpHYe2Y/zRlshuUMAKyDkJPp64aG16M
         2030GJyCQ7jg03WUEE2+6HOvxSSnaj7Nsn8ysYnIS/+j8QPWLw5/mn4psEHVP0gHY/0Z
         /fuidn07JEkvLqPaq3LlJB6+vT0OzPf4iEGnOHsCWZrO08QrkDBjfKYwOa9o3uflkGZL
         0K4KV5p/5jQrQuz0a8Iv12rTKawzYU8eP6ZZrm1s04v/WPZAUjP+KdX5BnHGTfwdwSIk
         rO0ZyCVfyxJJNXcg7RYKKDcTyzmsJ1/UQyGf/UGwg17DcYRSZY9f+jMG/sMFO4Oa0zj5
         Xv6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679931351;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lvH2wwh5ilVKrGxPTUn0cBva2EIuEqu2IvcB3AtAx+o=;
        b=auO8IZD97mBQHlb2+RO/bVzmVBcGoed3/arDcJsPhK8yEPGA73iZRSeXPIvf7UxTi6
         Jxav4O0hs1xznB3NqOlymJcy0NctQUWycNfADIzcWPohUunKIgTsY0w3Q+rAOLfR8P+5
         ow+IujrE0a1WHmEev7gKF5RzSkX+eGBN7iIqhX3KD1+l5UQUNKNGS6y/4k/VjjeUPPwl
         bLsvX43Rwwsck9kjbpgvpIiHVcloK4K6zY5f7d3fks9iPmSneoNTUq9WBGjk58OzO36C
         pj/kmi3zU2aYSXs0A/cfC7yO3mopKseGSFzt8OmcmHbKDqdrpVricoEPOu51ocM1ee8M
         d74w==
X-Gm-Message-State: AO0yUKWdia09W0vtLXOipyi2Cy4MAr5IMI0tGrMa8RaY3BLfj4co6VeG
	KO9Ed14FVQJ7/255GeC+eKg8xeduyhI=
X-Google-Smtp-Source: AK7set+cj08VsQuilXZ3ti0UfuXnFbiatsG1Zk3ryzbwhkzyi0UQ3WfdUkBWC6F4SC0NyX7sle7PJw==
X-Received: by 2002:a9d:63c8:0:b0:69d:27e8:998d with SMTP id e8-20020a9d63c8000000b0069d27e8998dmr6732126otl.2.1679931351662;
        Mon, 27 Mar 2023 08:35:51 -0700 (PDT)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id n12-20020a9d740c000000b006a0ae1c4263sm3908913otk.48.2023.03.27.08.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 08:35:51 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	jonas@kwiboo.se,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add clk_rtc_32k to Anbernic xx3 Devices
Date: Mon, 27 Mar 2023 10:35:47 -0500
Message-Id: <20230327153547.821822-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_083554_216007_AC19C92E 
X-CRM114-Status: GOOD (  10.45  )
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

From: Chris Morgan <macromorgan@hotmail.com>

For the Anbernic devices to display properly, we need to specify the
clock frequency of the PLL_VPLL. Adding the parent clock in the
rk356x.dtsi requires us to update our clock definitions to accomplish
this.

Fixes: 64b69474edf3 ("arm64: dts: rockchip: assign rate to clk_rtc_32k on rk356x")

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi | 6 ++++--
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts   | 6 ++++--
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
index 65a80d1f6d91..9a0e217f069f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
@@ -16,8 +16,10 @@ backlight: backlight {
 };
 
 &cru {
-	assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
-	assigned-clock-rates = <1200000000>, <200000000>, <241500000>;
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			       <200000000>, <241500000>;
 };
 
 &gpio_keys_control {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index b4b2df821cba..c763c7f3b1b3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -105,8 +105,10 @@ spk_amp: audio-amplifier {
 };
 
 &cru {
-	assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
-	assigned-clock-rates = <1200000000>, <200000000>, <500000000>;
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			       <200000000>, <500000000>;
 };
 
 &dsi_dphy0 {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
