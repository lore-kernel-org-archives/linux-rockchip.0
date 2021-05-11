Return-Path: <SRS0=2pai=KG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30081C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 11:30:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 967DB6186A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 11:30:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 967DB6186A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O8OoWDcq2yn3QXsx4kXuNNO1AxmOLGLZpU8ZcFXM8lo=; b=bf+3vwLEX9Hei43MhX8JVscXtW
	WLQPJqGrFw3oIV7TVf/0G/84ko5fhQs+qYxpRGBHnyMijNx+YLWpCHOCkdTGxNd5kRsUEwcsFgOks
	V8kSdvx3AdByjmXYaj0jK9gnrnjJVyJfQwT2OEWNxQCubYThCR3QJ4CFP4QmiHckLhYpVkh14clmI
	XY6OKcrHNAOzOpfPxwABRGfhw+QfvmbwPRBgfUYgvtxy9KSUJSNocd42LKP7mxF3ew8KkhovfhkGb
	HGNNlJ5wcbvitS7OuMJ/Q7DHGCCfiQxce6cIF+9r3xA9NchLvNVgzkQNQLOX+7Xgb6gZeTBZQXXF9
	sdzM9nUw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgQb6-00H8UY-Io; Tue, 11 May 2021 11:30:44 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgKaH-00GJM6-RP; Tue, 11 May 2021 05:05:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lihGSNM/MK5Li+Q6R5o1M4YyP4+yQiLVtLIt/qjFJZU=; b=JiaJKlgvqaYkK316GUUsgQBDfK
 MXazyTpew1Y7DI/BbFyjdSTAtCBZZYrr6+gtXPaHKdX6Fq2F+quPABw1iMFZ6Zzv5Id1kZch21cdB
 imhedUgXmfBgCHGwQWbZEGXStn6fRoCFOp4srV7HRGavQd9PtUd7cEoUWhINJiqpG2SSI0kOovDJ7
 cRTIHuGG4Os8XsdWT45g3TxTBpS87zR1+Kj7V/sDi3tN5Ip/+vfHjvUvuAyZUegocGX2jrt8S/wRD
 3btHDPvz/w9T5JlAkef4HpBF4OHwJpRXsnp7M4q6kh0qAPEsZoG1YPZOdck8Qx/xjVPZn4DiStFFs
 xmmQ50jg==;
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgKaF-009JCt-CU; Tue, 11 May 2021 05:05:28 +0000
Received: by mail-ej1-x62f.google.com with SMTP id l4so27809095ejc.10;
 Mon, 10 May 2021 22:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lihGSNM/MK5Li+Q6R5o1M4YyP4+yQiLVtLIt/qjFJZU=;
 b=t+wjXYVkgy53FjomWEutEsYXEoEkI9FXdfvx0ULt2+dz9sIFUCdVAspGI7VJmeW55E
 miJQrZQ6RaxwEyTDyMDWs45trO7FgbUMOnT3VWzasBQ+dChbeakr0SCkZcOjqB3RCmP6
 ZXYeihewUuyzfPTHtWXmlEg6wyqME+L4zbMm4pHNoEuU9boLdUlIlAav6kGRK9Nz5iY+
 YU0h4k/GUY5mqSH8HO+7C7qM/DY2ZUsfanArUoO9GkKAskTj2oUYZsYloZB9yg1W9hgb
 e3uLuRi6gJTtJ7YVjMg6CKRxHpJqNHujr0P4sVB7KfJTgDR1zZzO8+pO0jA4kcOf2BMo
 iEfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lihGSNM/MK5Li+Q6R5o1M4YyP4+yQiLVtLIt/qjFJZU=;
 b=HKcbm5IhqhvNKNWCIGtTUglE7bI1X2xEMBlDmviJ0UIaSTUmB9JGtNWumFydd0xS9U
 5lcdHm9wafxerRIV7fnOl7NIoZrIwASWXHKs0TDf9h+FCiBSOXR+7VYSfy8JZsvA/b5h
 RGNcDuQ+dTkFnn8xxa72a0hnBNK33ggrAox3jBsk/SOhWdudgQ6q2YSaNLGl8LEyfO1S
 ///GSY2MMY2eo1vI2U7dFeWeUTpv4/FK4Sk1Ob/MoqIh/VLlsXLUA7RJds4++n/UL0T8
 S+aFfwuPzgloj81GcJISmJoG+fiDa9WtrjJG/gy89a3HYS1p+wngcBC0UBgvpuNog8eJ
 oBZg==
X-Gm-Message-State: AOAM530zPGfUHq36kbRkmpxIbrsl/mF7df/jc2PkaDbl8G6bJwn2dARO
 Gda5r8Gqzf35OSBezZNeTJg=
X-Google-Smtp-Source: ABdhPJzqM9YNrmuN9wdPMgmg05Ls16o6Joxm6uMV+4TpB0/t0g1jYcoArddpzJDRXkbEW2waGMreww==
X-Received: by 2002:a17:906:9141:: with SMTP id
 y1mr30782293ejw.111.1620709526044; 
 Mon, 10 May 2021 22:05:26 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g24sm3620302eds.41.2021.05.10.22.05.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 22:05:25 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/4] ARM: dts: rockchip: add grf register compatible for
 rk3066/rk3188
Date: Tue, 11 May 2021 07:05:10 +0200
Message-Id: <20210511050511.5973-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210511050511.5973-1-jbx6244@gmail.com>
References: <20210511050511.5973-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_220527_440042_61CEFECD 
X-CRM114-Status: GOOD (  13.87  )
/bin/ln: failed to access
 'reaver_cache/texts/20210510_220527_440042_61CEFECD': No such file or
 directory
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_220527_440042_61CEFECD 
X-CRM114-Status: GOOD (  10.13  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With the conversion of syscon.yaml minItems for compatibles
was set to 2. Current Rockchip rk3xxx.dtsi file only uses "syscon"
for the grf registers. Add "rockchip,rk3066-grf", "syscon"
compatible for rk3066/rk3188 to reduce notifications produced with:

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3xxx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 755c946f1..c34bc59c9 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -256,7 +256,7 @@
 	};
 
 	grf: grf@20008000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-grf", "syscon";
 		reg = <0x20008000 0x200>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
