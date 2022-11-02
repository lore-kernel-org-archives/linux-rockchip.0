Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63DD3C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Nov 2022 18:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaOb4NxvBN02cEDcb7M+bRiUVgNx1CzxGLyS0obRTK0=; b=EwhQ9GcpYO2xtA
	KIkAwnasyfpYjScQ0Az8vTsuWmsku8zvh3H+NIsAdNRkjAzqgyi6fk1p/QYI35FR+78vzsyZnHbFf
	29TGcC6sf6W0b+WZxD37vU5s4K1Xx4EGlGQXCQlnrJMFh2Wef5m9MxIr4/3VZemWNqj1OUzykVL+p
	QKJ7lCI4C9ZWQFw3Me8rwPj3384QVrLPIr61j580m2MW9GyrPRqFcujA8orWWc/vA32UROmS2OG2+
	YipSTfOKHmSye9AOXtn5y51O91PT0Wb27CZxBkwThgJfU/CzT3ts/2cAMcv3JLGUjzq0FVHC1pGvi
	E1eA4jV9W+39HW32Drbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqIpz-00DIl3-PK; Wed, 02 Nov 2022 18:51:43 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqIje-00DE8s-DW
	for linux-rockchip@lists.infradead.org; Wed, 02 Nov 2022 18:45:12 +0000
Received: by mail-qt1-x82a.google.com with SMTP id z6so11924562qtv.5
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Nov 2022 11:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OaJC1NoewmXjPxS0Lyt64Qa/JvMUE2LWOQneWFWHmgg=;
        b=midHby3kR8uErqu/QMklWynWJ1iNS4A6IADiLuugjxJDxFM2F+urA+6P4RVv7Xes8R
         COsOFSMAurr8NGV6v7V+gWlzpbPx1qYL8oqOpONVecxzTEoY5iIUrf1Btb0XWRi8IvzG
         cMWzZZFBwnDfI042JdRV5dCMwSXtHINOzz4Az2HF6+BltG9GGJ7ittZQnpCQOBfvwlsX
         ifqzr8I8mx1SabvBWpbjH6+/dCBa+DHmEj3PGb0UVtkxUEeMNbVCqymH0TzC8YjJhIDy
         WTXDVKYRIp7MfmP3JH5c87enlyHRgMDbs+tA1+rSw51FGSNPIrE0SSqzeaOeaz7+xOpw
         c9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OaJC1NoewmXjPxS0Lyt64Qa/JvMUE2LWOQneWFWHmgg=;
        b=DMVAOvYxhtXeEugz8ge9BFQF10VVSeGdBUqHt2eqAfGLbOVsZKQFq8nAkPiXrq3CQQ
         4wABWLLkiX62PG7PvJsasyFoyeXRr0H1HcypUslrhM42KG2MbIv7wme37qIq4IQ9kMF2
         Jvw8423mo1Pdal78JHsqAunjpfuSkjMBCQ3d1lNu4SaUQafZ12dOU382SzDvPE44vv29
         yYZMOl13nZLEWhX7LRfwwYTuQLaivck2xij+5VwoIRISLHKTAGAe8H/vc0GZ0OF/EVtn
         jWi6etDb/EfOAFWgEyKtadc9BV/L015QWGCJEsMyf9VK2FplHUFmIoivVaer+XoEtDds
         XGGQ==
X-Gm-Message-State: ACrzQf1pzlvO42Um5tteuM6z1Ajs8Hd1YNKznaM0fn235Hp+Ug7oMbrJ
	ujVFZL0UpDplGdWmOtlNUHwoEQ==
X-Google-Smtp-Source: AMsMyM4Xsbl0+npXWymI1g53Xuyz+ex5cxhVd/HsL/qqxgeky19y68fomQ9rZPZYd9MZ1kbNFoA2NQ==
X-Received: by 2002:ac8:5c11:0:b0:39c:fd77:336d with SMTP id i17-20020ac85c11000000b0039cfd77336dmr21164500qti.479.1667414708952;
        Wed, 02 Nov 2022 11:45:08 -0700 (PDT)
Received: from krzk-bin.. ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id w16-20020a05620a425000b006e54251993esm9090413qko.97.2022.11.02.11.45.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 11:45:08 -0700 (PDT)
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
Subject: [PATCH v2 3/3] dt-bindings: power: supply: maxim,max17042: allow power-supplies
Date: Wed,  2 Nov 2022 14:45:01 -0400
Message-Id: <20221102184501.109148-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221102184501.109148-1-krzysztof.kozlowski@linaro.org>
References: <20221102184501.109148-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_114510_506656_6D2ACCBD 
X-CRM114-Status: UNSURE (   9.87  )
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

MAX17042 Fuel Gauge uses power-supplies supplies:

  arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dtb: fuel-gauge@36: 'power-supplies' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. New patch
---
 .../devicetree/bindings/power/supply/maxim,max17042.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
index aff5d0792e0f..64a0edb7bc47 100644
--- a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
+++ b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
@@ -59,6 +59,8 @@ properties:
       Voltage threshold to report battery as over voltage (in mV).
       Default is not to report over-voltage events.
 
+  power-supplies: true
+
 required:
   - compatible
   - reg
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
