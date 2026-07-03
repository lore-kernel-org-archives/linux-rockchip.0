Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AAC7C43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 20:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/KAr96fUEyjbscFYeP87iafF8H9sxY8CoH0TpmxJic=; b=cpdNo3IDYoDAfd
	NlGVqnrgbbzsLjBJHJh/y/f2RmvoGtZNRyX804iz8dvnOsV52Q/x2qHc272eGNnk3YH/DN6/Xery8
	Ag1D2f5KeaE0UWQvXufiza1iZuaNl+muPnpMcNUg6U8W1odcu5bk1T+vCOz6WBt9qzcBwn1qHMPoZ
	ONGJgvBxc69REg/mb+Mf4OiKQrgGZocNt4GBybS60bcZUXBESbx245vj5UbMvS2RyYV2oVudCtVR+
	PWqQzIbtUosmT+ryOz/JeApyp7io9Qsoet+kYSDQCHN7R7OA+sEH8tGWYApzdl/B2EK8K4/aETyqQ
	0xsQvoGrS4tnz9m3bTDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfkDb-00000007paf-2vw2;
	Fri, 03 Jul 2026 20:10:35 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfkDY-00000007pZu-2G1Q
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 20:10:34 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-51bfb91795eso5274761cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Jul 2026 13:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783109431; x=1783714231; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VqnVxuePfzGralo5ejKJTMgkZosmeyctDuCT0QENgCw=;
        b=Eos0Z6AXv75qU7RwQucXQIYVoG534w+nc49oV0r4ZcAJFEpFm1cCdCWhf89N5wxQZe
         yPW1DDeMSSxv2O+VGA4RsJhMyiffL+8t8PZ7JVnCwl+Bb8hQ6gz486qRhNN18knWjbH+
         yTm0dTAYiByNOhJLd9gnjCvoz3Czk6OUyn5eRwJm0VD9gulJJOgvOB2n8kb4ijZhx9hm
         lRfvd9RyC7EKJOkSHbvSTx7vRYFevafwWiAeryv67kGeiqVqkwjggkCpfAbg9XJvVpAz
         kmBnxo6Er4rkQTvYPONAMmCBweAoly7KxYLcvtd4+IY6VfQpcTe8b7IwHNpcCwjPUHJv
         OqdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783109431; x=1783714231;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VqnVxuePfzGralo5ejKJTMgkZosmeyctDuCT0QENgCw=;
        b=WY2psKY6H+rEM7zNspggu+qOEvgOdHvXc9QhujT4EyDClb00yctdchwEYVwPTglEEQ
         uGV/B4xDxU/+yS4e5uoCkHdgXLG0oe56kEeZX9jguQWYpeAhm9lJvvz5nXXlVkGmCL/w
         KBZKSFfJaLQAmZb8BvVkxTvioRCseQTQm9JQa9BPCx24tLGACn5vFmlwepZxXgWxo2L1
         InjbAiDuks6LhuRVr2la5ZvCCOkX6ZTs8EU/uIlkRuxcBH5NiAtPtIZKQZNnappbxWyb
         85d5otrus8Kl3YKRs4aUeOZAF08ijWXwRP1fiYLxN8Wel7SffNGBO1QWZbNVX27ExUtE
         8WNw==
X-Forwarded-Encrypted: i=1; AFNElJ8hiqsb4skGPPV2FqxmOqwVMPXSlHAQL6cXJksXoONcll332fc7YXZZumWXDvGNexDb8Nqoq2cqtrbIyBqtEA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+IF+9Eubd89EXvbQOCrvZ8oWpfie9GWsXuavPm71O9qoyfOlK
	8Igrt6RdKQ+FdhZq11pfZvkGVvJEnkDrAsfLvnYuSJ0UmPZt6ga7WgbV
X-Gm-Gg: AfdE7cnhRvXh34SOX3HKGDlQStddTYSWCdcoadG8pnUbSZ3ijjoG+TpEqkd3PtC8d6U
	hdrtEtHebSX24h3+3tArbqSQDQ0abmhsTh4oTTPGbu9y1PmeiQsUXGRdRlZZxAFHSGKRtdNiM9a
	zZt+uU/09DBdOswICe9cbhtYKrW809ibWyfrHxezo/zm29Ep807HtnpP5GCFd/cKsyLd92LQB9e
	Drz9/xqMqlwPMjjBcy/Obux/DMAQ0fWZWWUs7rvNO8aQtovGO/jI0VGgSpzrnrY4WisuGgpK+4U
	yHXdOcuI+x6ZYiohjp2p/GL+hVGSTX/GqMlsoWubiX2awKUl4NIF0pFZti6AY8x+ZGFuLjMkZpx
	+SRRc0IOmmUl6vYQtaje4SsH2PBgAI6cjKq4Hpukf1l1QD4fgZxQEg7sz27Qk51BUUSwtIcqI3x
	9aw2iULAMIpvQKdJqaIh1bxieMWQ9LTN6Skzeld2lAueNRRQUvff8RfAtgYfA/QqWYZW6e6m/Ef
	Q==
X-Received: by 2002:a05:622a:85:b0:51b:ecca:f2e0 with SMTP id d75a77b69052e-51c4c1e6500mr15034181cf.5.1783109430605;
        Fri, 03 Jul 2026 13:10:30 -0700 (PDT)
Received: from oklopfer.hsd1.ma.comcast.net (c-73-167-46-184.hsd1.ma.comcast.net. [73.167.46.184])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-51c41df52a6sm22259141cf.27.2026.07.03.13.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 13:10:29 -0700 (PDT)
From: Oren Klopfer <oklopfer37@gmail.com>
To: oklopfer37@gmail.com
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Robinson <pbrobinson@gmail.com>,
	Thorsten Leemhuis <regressions@leemhuis.info>,
	stable@vger.kernel.org
Subject: [PATCH v2] Revert "arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro"
Date: Fri,  3 Jul 2026 16:10:10 -0400
Message-ID: <20260703201010.67311-1-oklopfer37@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260615225014.219115-1-oklopfer37@gmail.com>
References: <20260615225014.219115-1-oklopfer37@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_131032_617551_5372A7D1 
X-CRM114-Status: UNSURE (   8.78  )
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

This reverts commit 096bd8c679185f898cae9933c6a68650fa26ea4f.

Just as with the Pinebook Pro, there are multiple chipset variants for
the Pinephone Pro, and multiple firmware binaries for different
distributions. The change causes issues with some of these combinations,
and reverting it resolves the issues. See the Closes below for the full
report.

Similarly with the Pinebook Pro adjustment, the original commit only
indicates "further description" and not indicative of fixing any
existing issues, so reverting should not kick any back up.

Fixes: 096bd8c67918 ("arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro")
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Peter Robinson <pbrobinson@gmail.com>
Cc: Thorsten Leemhuis <regressions@leemhuis.info>
Cc: stable@vger.kernel.org
Closes: https://lore.kernel.org/r/20260607225901.64019-1-oklopfer37@gmail.com/
Signed-off-by: Oren Klopfer <oklopfer37@gmail.com>
---

v2:
- Repair malformed whitespace

 .../boot/dts/rockchip/rk3399-pinephone-pro.dts | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 8d26bd9b7500..d46cdfe3f784 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -734,12 +734,6 @@ light_int_l: light-int-l {
 		};
 	};
 
-	wifi {
-		wifi_host_wake_l: wifi-host-wake-l {
-			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	wireless-bluetooth {
 		bt_wake_pin: bt-wake-pin {
 			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -766,19 +760,7 @@ &sdio0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
 	sd-uhs-sdr104;
-	#address-cells = <1>;
-	#size-cells = <0>;
 	status = "okay";
-
-	brcmf: wifi@1 {
-		compatible = "brcm,bcm4329-fmac";
-		reg = <1>;
-		interrupt-parent = <&gpio4>;
-		interrupts = <RK_PD0 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "host-wake";
-		pinctrl-names = "default";
-		pinctrl-0 = <&wifi_host_wake_l>;
-	};
 };
 
 &pwm0 {
-- 
2.53.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
