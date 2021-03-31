Return-Path: <SRS0=G7C5=I5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C955C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9EFC96100A
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9EFC96100A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZRA/2byzOE1YEGWKEC6t50PKI9D3g/kFTmf6a9B1cNc=; b=PEBrLbXft+c2c9jG1uTVZnVHm
	gqdmuRZ+bHOZF09/m3AQra6wgS16dhf17CkNYX/xT+M7FBoWCwiDDJrmh6me0gJSvmxE+Ss9x3n/F
	Np8/rfyq2c8gBvNYWVqOA8QYs4EGQZ+4tQND8PksLfUBDZW9ZLRsp/E5cAoH1PkF9N+gBm5IY6hmc
	Av0G9lXJ+npMgsd7COC2Ey2vbx/C+VQFfdVb5SWr3kDP1nMYYr2BsGE/JYpc7hUigS7FJr8U5GnYx
	0crBSYbWhzIcTKKzuHGS1HDkyzxoN/5TcwcLytutVFR+A6GG9wDeOcti6MJ0OQppSLogWV0rNQ1fA
	uLgIgtLFA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lReku-007CcE-NX; Wed, 31 Mar 2021 17:35:48 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRekk-007CXz-7I
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 17:35:39 +0000
Received: by mail-wm1-x32a.google.com with SMTP id d191so10539890wmd.2
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 10:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c9dnfwn3uUQXnRGTtGdPI5EXjcVR5rT5ZIvAQLeTWB0=;
 b=WCzlqR6P/SJcQRG8ZJhW0JgDKZwNXWVNT0P8HMH4MCT5hPUS6PXalp4CoXzfamAgq+
 zBQ1utZxjBRsVGd23sJ9ofKZbKQxv1krZ0EHv3gDMkzrsXFSdI2bx7/JT7+YPpajylsS
 ugbM5qPu7Yzowim/m953+AXX1SK5CKZWA13mPgLMKqcyaat3wHKSNSGVL0cYtX30pNTU
 sMzFUF2J3LMfVh8kLYG17BQSa8qrryJPyvLpbqmweoAnlaIXcKpFEm4DNCONU4+X/zCT
 YQ2TE7NNoPS+AbhcKNB1j9HPw/3dLlUy8L6/Le1ESMnNKq+hd5m5c5rNr3gqMKbV3JZD
 A/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c9dnfwn3uUQXnRGTtGdPI5EXjcVR5rT5ZIvAQLeTWB0=;
 b=PPKZdiJi7lIAhz/DEWuHqKfvC2Ikjj2XOvkjn1AAEtIywmyV2fX46ZkGhkSO/Gzo/l
 Fh7xGZb8Io03h7kAfANnbsqWbwZdsV5gOW0RC7V2b6mvelJL0LgoIZrjdKpfXsxZkS4k
 IuqgeXRF6siWwp1ctvrTDJKvYOS6b2dMrHfxdEoQsq/lhKVgUCD2njVOedgaFaXjYfwv
 yUkOXc3ANPo2ZTJYR0hw+QLyStJSm/9bJI++RIa+Nke+p9x4eLoFZ1d1OMWu4om8cRhN
 IUOrCPa1zb4A3b06jrOxroVvKyhxdTGcXbgvjvSnXyVAIvOCP/qZCWHYEtzJtMO1x0MO
 cxpA==
X-Gm-Message-State: AOAM532MR+O/p8icaBquKiPf/Ufpxix9G8du+YLEbmbPwaBVcc8ypc8q
 Hj2rwD1Eu48mzjNpu2sDfp4=
X-Google-Smtp-Source: ABdhPJxVIpTnZ6aBrQGee2qYidNtRG733Qb/IoI1wVPHki4azaPWSOVPcGbgOfhdcfiXWhpV4GfaVg==
X-Received: by 2002:a1c:1f4c:: with SMTP id f73mr4183679wmf.25.1617212137932; 
 Wed, 31 Mar 2021 10:35:37 -0700 (PDT)
Received: from arch-x1c3.. ([2a00:5f00:102:0:6e1d:cfb9:fb12:552d])
 by smtp.gmail.com with ESMTPSA id 12sm4714200wmw.43.2021.03.31.10.35.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 10:35:37 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com,
	Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3 9/9] ARM: dts: sama5d4: enable Hantro G1 VDEC
Date: Wed, 31 Mar 2021 18:35:20 +0100
Message-Id: <20210331173520.184191-10-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210331173520.184191-1-emil.l.velikov@gmail.com>
References: <20210331173520.184191-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_183538_364013_FC2FE3C6 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
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

From: Emil Velikov <emil.velikov@collabora.com>

Add the SAMA5D4 VDEC module which comprises Hantro G1 video decoder
core.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
v2
 - Split out of larger patch (Eze)
 - s/Atmel/Microchip/ (Nicolas)
 - Drop leading 0 in node name/address

v3
 - Drop the clk/irq names (RobH)
---
 arch/arm/boot/dts/sama5d4.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/sama5d4.dtsi b/arch/arm/boot/dts/sama5d4.dtsi
index 05c55875835d..e47e1ca63043 100644
--- a/arch/arm/boot/dts/sama5d4.dtsi
+++ b/arch/arm/boot/dts/sama5d4.dtsi
@@ -101,6 +101,13 @@ nfc_sram: sram@100000 {
 			ranges = <0 0x100000 0x2400>;
 		};
 
+		vdec0: vdec@300000 {
+			compatible = "microchip,sama5d4-vdec";
+			reg = <0x00300000 0x100000>;
+			interrupts = <19 IRQ_TYPE_LEVEL_HIGH 4>;
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
+		};
+
 		usb0: gadget@400000 {
 			compatible = "atmel,sama5d3-udc";
 			reg = <0x00400000 0x100000
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
