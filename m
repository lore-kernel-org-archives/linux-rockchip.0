Return-Path: <SRS0=g/fF=LH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E87DC48BDF
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 21:53:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E25556108E
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 21:53:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E25556108E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Kkm/rJDAceS6t1BnfIZjrMgBGYnieJCQ4ZUg+rV6cw=; b=iPZEH7lO9SYWoz
	Rrwzmfii5XOty8mglRJNmeXeTdQklX3yATBZEcsE+VyGFMlEA2KvmloIcpsfZoOtZIQLRmswHxOmE
	Gpah0yfVk+m1v/rrdVyS322aWc7iyChPzkR+n9UQUDkZ9P0KZtJ4aS9608CowgbpyjiR7RHyT0+0h
	FV+LM20EiJxDupMI8P0zWI1ygjEi3JN0vT902z7H/RBCTpeyGPw5MzpQl/ypRPPZC5SW4d3jksVby
	iBGmibLLhjtZytoiuJ7eK5FuvoTUoo6caca8dlftxXkOv4UuIHnkQgi609Hbi2HC4wlLIngCL2wU/
	1PhPL7G7FBApz4MLTDTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsY2L-00BPEC-Q8; Sun, 13 Jun 2021 21:52:57 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsY28-00BPBU-3R; Sun, 13 Jun 2021 21:52:45 +0000
Received: by mail-wr1-x429.google.com with SMTP id c9so12254836wrt.5;
 Sun, 13 Jun 2021 14:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UBkdM2OngSfyRErR557cvoLFdJ2FoWtLX9r2vvB2bOU=;
 b=C55XHFZP+/4+fX1KvFAfo1nGQJJwSJ5f252+tdwRKPFVpRG6ygRcctbg8Zmxa9/rBv
 Iqjc1fJ3NKHw/tqcwz10wIidERKrXxiwlVue0L4SZ2wVF4CS3MPvq8n51hcIP4M4agLc
 JmovJ3Oue1gm6F27bzUe46s5YUkYi0QDfUsD/BlnHEcRNye+F6rGr4MdX0l2gmn2SsA7
 n+sFR0OI/fOLfP0vosGAazmJ/Lu3QLd3sO6X2dst2wtt8dAgPqNF59DxsfiWIN0P77au
 Q6IQAx+SbZcvaY5xD1kRJzXLVgxzMpKRpcsOjDq0dIWsNjAbxtSFYlPPZVrh4LHlfLkE
 pS5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UBkdM2OngSfyRErR557cvoLFdJ2FoWtLX9r2vvB2bOU=;
 b=fDIw3B1zYoPa8VpQD6aKcbip5N/n0HuCYc3Dt+Ua6f1R9LKM+k4NZHbYvqomLKYZQH
 EVtJpGj7MekI5o4Wh5w6t4jM9ZrxNBtkNWQMBBN/RNHMcB6rNxDJJFXHmMrBRkoKo8dv
 EQasmGAZnN8RGlw9FBpkjbBLykjIwH8UCqmA0sLSu86MhV7NRmfQTqdH0DnJoKu10oTa
 Tx8372Ug1X3Q+EFy673W7qgGhgfL/7f1C47bQB7On+pKAxQEcQVyRakwkXFQ5/3hON5a
 qCVOFOjYR8LUZvyGgPYj5zHevALKVDWhsw8fDrk4gj40wI4516YFQ76PF9Saa/grxa4Q
 FdiA==
X-Gm-Message-State: AOAM531MFVMVCCogIZ5kudFQmPhKsuu2Co6WqADcVtbp1nRdnIqM5FDf
 ra9WnvHSxbb6q5wVdH/QoWU=
X-Google-Smtp-Source: ABdhPJzxZhdPFU999eR5+I01B1oMlLIttLdMlt3XWz1Jb5txVruHwEH8buAQH/vdMNAHyZE1B15RkA==
X-Received: by 2002:a5d:6d8c:: with SMTP id l12mr15858317wrs.189.1623621162512; 
 Sun, 13 Jun 2021 14:52:42 -0700 (PDT)
Received: from morpheus.home.roving-it.com
 (f.c.9.1.f.e.c.d.1.e.0.0.2.b.5.5.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:fb11:2681:55b2:e1:dcef:19cf])
 by smtp.googlemail.com with ESMTPSA id a10sm12803883wrr.48.2021.06.13.14.52.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Jun 2021 14:52:42 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: Sort rk3399 firefly pinmux entries
Date: Sun, 13 Jun 2021 22:52:36 +0100
Message-Id: <20210613215237.830160-3-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210613215237.830160-1-pbrobinson@gmail.com>
References: <20210613215237.830160-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210613_145244_166343_B32DD7A4 
X-CRM114-Status: GOOD (  10.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Sort the rk3399 firefly pinmux entries in alphabetical
order and de-dupe the pmic entries.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../boot/dts/rockchip/rk3399-firefly.dts      | 36 +++++++++----------
 1 file changed, 17 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index a5c2cdaa7798..e56d47040868 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -614,6 +614,16 @@ lcd_panel_reset: lcd-panel-reset {
 		};
 	};
 
+	leds {
+		work_led_pin: work-led-pin {
+			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		diy_led_pin: diy-led-pin {
+			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		pcie_pwr_en: pcie-pwr-en {
 			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -625,6 +635,10 @@ pcie_3g_drv: pcie-3g-drv {
 	};
 
 	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
 		vsel1_pin: vsel1-pin {
 			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
@@ -634,21 +648,15 @@ vsel2_pin: vsel2-pin {
 		};
 	};
 
-	sdio-pwrseq {
-		wifi_enable_h: wifi-enable-h {
-			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	rt5640 {
 		rt5640_hpcon: rt5640-hpcon {
 			rockchip,pins = <4 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-	pmic {
-		pmic_int_l: pmic-int-l {
-			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
@@ -663,16 +671,6 @@ wifi_host_wake_l: wifi-host-wake-l {
 			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
-
-	leds {
-		work_led_pin: work-led-pin {
-			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		diy_led_pin: diy-led-pin {
-			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
 };
 
 &pwm0 {
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
