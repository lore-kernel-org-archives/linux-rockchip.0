Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FE06C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Nov 2022 18:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVnPujv0gTt0EsepbTZEObYnHjCE9gdoRxguU1nVw5o=; b=fNoJ6D6BDVBGyD
	biZqoyagYcynmvgvmk+BiEH0hgmABLoXbaJ92XoNpSx1JjpsfkB4vONKJJZ3yFWbyAe5Gz+ldNB7w
	H6k6mvmKOGWQP1M3O47xQUr4HHdoFL5pxwBtqUGML0VtjFbDtegUE5ARHH+GBmVNw0Iid4Ap9sF0T
	AwXxz1VdbwETzxmqVFaY8Ld0E8qqwUvxGMEb8FiuoeliW6kvb2xTvSIa5e6/sEqLz3X3WudCNOf5K
	ummwW/15/g6lEC4Z41sWVQXgJQAwHclPxoprYDsdU+pKa9ID1UgR+y2fa6FQScDFRTU2Ag+YPAzTK
	nu4QfeXxHXQYkJM6e8Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqInf-00DGxW-1m; Wed, 02 Nov 2022 18:49:19 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqIjd-00DE7b-0z
	for linux-rockchip@lists.infradead.org; Wed, 02 Nov 2022 18:45:10 +0000
Received: by mail-qv1-xf34.google.com with SMTP id w10so13084152qvr.3
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Nov 2022 11:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sw13xCxrWW7/c5Fz/JcFaLDrTASeOurUe6I0AYCZbD4=;
        b=udIT0nxuenxnrydYnnneSbq1kxmcFyNXi2DVAJTm3kehndEks41kjDCpG0lzbYIf78
         PgCCATBleZBo7Vmex+/nXIzct+osTedJjN/dNlgPOt8N8ZoYVlvmtRs0jU09kjnYRlIt
         B5BJuNKg9fpJsLQWfJqifZIjK23+wXtJDqPhrtj2FfIWf2iyeddQNcpi6ZJRMXVD0lCc
         8nP0Uc2etqzmXqbOPjSBuKvTwx9cpD6NkjY9NwEtvXriCZ1wxd0iYIkwfqnOJ3NDqcUO
         PkND7tSuTILfNdQ/i2KkV1f7It+RrVobFs3lvrm8j+xfNnmfaS4MPvkDRa4WFBLqcBf/
         RZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sw13xCxrWW7/c5Fz/JcFaLDrTASeOurUe6I0AYCZbD4=;
        b=oChpQv2qa/npDmJzL0vALHmWVqaD37jCnaJD7GDN1/xtuekpDo+KpruVwW/yj5sJA6
         7azxukXMfJoIYXdi6+ghgooMupRlSUKWtxMjgpuWPKjeMsIC4kBr70FOoFRX+TfnUPSy
         cr+ExDSx9hiLrejBPWW8Dzs8vTcL69on7fUnl9iL8Fs8Cc0UrNKzJtCMOtIEOVvkUili
         kXfCSJHy6lYREpGPHdZY2FQx7/R71/7gj+Ne2CMtZQscwMiYGyVoXgvhGLykqSbbns62
         +vL4KES92YZ4nE+LClSIBRGdNEAyVQC87dinzzmuVKbirIn8ZzscLxp2yfHuiMbAF0Fp
         waBg==
X-Gm-Message-State: ACrzQf0eDZMRNnZ98R9YfJGBtNF0nmDi73SP2Xw7vTmUBw0k8BlpZ1Ic
	WYcmS5fz5DXOHtPKt5rIRKTrww==
X-Google-Smtp-Source: AMsMyM4oPJF+sU24TOosWCSqTLZRNbJTu8UlWiOtm53FD1sSIgM2j2p83IQQj7zV5DX2nVcByTzDFg==
X-Received: by 2002:a05:6214:300e:b0:4bb:704a:ec5d with SMTP id ke14-20020a056214300e00b004bb704aec5dmr22066032qvb.42.1667414707185;
        Wed, 02 Nov 2022 11:45:07 -0700 (PDT)
Received: from krzk-bin.. ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id w16-20020a05620a425000b006e54251993esm9090413qko.97.2022.11.02.11.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 11:45:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sre@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>,
	Purism Kernel Team <kernel@puri.sm>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Dmitry Osipenko <digetx@gmail.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	=?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
	"Andrew F. Davis" <afd@ti.com>,
	Artur Rojek <contact@artur-rojek.eu>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Markus Laine <markus.laine@fi.rohmeurope.com>,
	Mikko Mutanen <mikko.mutanen@fi.rohmeurope.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/3] dt-bindings: power: supply: bq25890: allow power-supply fields
Date: Wed,  2 Nov 2022 14:45:00 -0400
Message-Id: <20221102184501.109148-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221102184501.109148-1-krzysztof.kozlowski@linaro.org>
References: <20221102184501.109148-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_114509_102586_9E97DA9D 
X-CRM114-Status: GOOD (  11.23  )
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

The BQ25890 schema references common power-supply.yaml, so allow all its
properties to fix warnings like:

  arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dtb: charger@6a: 'monitored-battery', 'power-supplies', ... do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. New patch
---
 Documentation/devicetree/bindings/power/supply/bq25890.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/supply/bq25890.yaml b/Documentation/devicetree/bindings/power/supply/bq25890.yaml
index b7e8eeb940b9..ee51b6335e72 100644
--- a/Documentation/devicetree/bindings/power/supply/bq25890.yaml
+++ b/Documentation/devicetree/bindings/power/supply/bq25890.yaml
@@ -97,7 +97,7 @@ required:
   - ti,boost-voltage
   - ti,boost-max-current
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
