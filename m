Return-Path: <SRS0=iGaN=IJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2995FC433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:37 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9931364F99
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9931364F99
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GtUV5yKMdVjNHsdvZE7LQXuDX6EP/FqIh//bC3Bm6dw=; b=COUnjEHrHdXps/7FlH+gwprab
	9mKsGBYHVecHE6bcUh4qi2gC/YH8Kza6D9pzygceKalumkm4iGdxCksHD08tgRon9LtoLEN58ngXa
	7EY6iegTz0ar8DJc2XY+poXOcqRSFFJjvadro1amenm3WU+laOtYyXCl3MCQr47u8iLCrs936CV+k
	rDu2fBR7An+g7FiEEn9HzN2Y0qFx+t8teMO0LdTKkijuHD6FRAay7CoSUNg5+l9+CYEJOAiHKA2uR
	Y4I7UuN9pJ+YsvW77Vv14Ygypq2g3O98EShGwa4lqsShRrLsYE9BbHMIr78TX5bnSFqcJlkhUZkZU
	166r8X40g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKNRL-009UMi-T9; Thu, 11 Mar 2021 15:41:31 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKNR1-009UDa-DS
 for linux-rockchip@lists.infradead.org; Thu, 11 Mar 2021 15:41:15 +0000
Received: by mail-wr1-x433.google.com with SMTP id l12so2392547wry.2
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Mar 2021 07:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2LSJdNzI10Uzadt8Nfbff+p/pjnmY6eCoDYVHbZS0BI=;
 b=jk4TUDGTRQb0WrtAIBIrDEGB+N+EHoOx/CWb1rrpdeCt9/+QQflENTvHgSGb4cCidG
 45D5yr7yxWIDSvPnNksRdGovpxpIpXyzJBazRLXF9y0xZBdLdYWYTNOP/ER07fgNJl4z
 a70DcFB+R6uwCyEMM6QDo4iXZ348n63WaDmx2A9ZwutNi1ScGXomGHen+GJSEJv836jC
 WzzjuiM2UL2ZbxW9ZIOw275PCQsofz5BKkcW15plxb9F3mNi6jXYruO34wM47Am8VJMZ
 pC86kmi/7jj0Thw76590R6mByJ1KSwR+nwqCHtbQO9tRS1KYQGq1jzlHl/kDn7vbLusw
 qKHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2LSJdNzI10Uzadt8Nfbff+p/pjnmY6eCoDYVHbZS0BI=;
 b=PGk6K6XH1Z1whcnBR8fe5AlKxaHl5Fsemp3iUyyjC+aBObeAn80Fh4WYRU7nejHWOr
 86uD+VPBAI2XZu7BcNPamxmoIO7ALOSdf7lqS4O3KzJieLA1AMm/hPhZJKsJFTRUiuOC
 iBI2z7V2ew8jOH86FiJ2Z9OPVZhw1ErpMBYJKRwgmcbB2BVo+J9XusCM3DNCwQrHjrOa
 U6pyCNSKXh7NFGpGPQR+K2Oen+QTMv0A3CPA0xjBpTLzvI/papcnYIXtEvbbflTkl1BC
 5Tc0wJ2MvaOwVur6QoQGSw6NZ3IicMQ+I3JKvVBeGFnkoHh5aBH/QzijuE+F9xHFOvPj
 wMLQ==
X-Gm-Message-State: AOAM531E5mg6zx8nYQ6qm94+Kd7Z9E1y004Fbz7ES5LtbKxOU6AuyhHE
 YayeWIIuKuedUX1JShjfw56O5lzXajCMiA==
X-Google-Smtp-Source: ABdhPJx85w5D5mT/Nq0DQGWDwzHjyIlxwrp8M2xgn2lGZFx7xp6QayXKc3+tZBKXpfRtukgCNlNfrQ==
X-Received: by 2002:a5d:4445:: with SMTP id x5mr9570311wrr.30.1615477270720;
 Thu, 11 Mar 2021 07:41:10 -0800 (PST)
Received: from arch-x1c3.. ([2a00:5f00:102:0:b16d:9752:8f38:7d6b])
 by smtp.gmail.com with ESMTPSA id a17sm4008547wmj.9.2021.03.11.07.41.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 07:41:10 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: emil.l.velikov@gmail.com,
	devicetree@vger.kernel.org
Subject: [PATCH v2 08/10] ARM: dts: sama5d4: enable Hantro G1 VDEC
Date: Thu, 11 Mar 2021 15:40:53 +0000
Message-Id: <20210311154055.3496076-9-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_154111_533008_DB59973C 
X-CRM114-Status: UNSURE (   8.54  )
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

Cc: Rob Herring <robh+dt@kernel.org
Cc: Frank Rowand <frowand.list@gmail.com
Cc: devicetree@vger.kernel.org
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
v2
 - Split out of larger patch (Eze)
 - s/Atmel/Microchip/ (Nicolas)
 - Drop leading 0 in node name/address
---
 arch/arm/boot/dts/sama5d4.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/sama5d4.dtsi b/arch/arm/boot/dts/sama5d4.dtsi
index 05c55875835d..88284f60feb1 100644
--- a/arch/arm/boot/dts/sama5d4.dtsi
+++ b/arch/arm/boot/dts/sama5d4.dtsi
@@ -101,6 +101,15 @@ nfc_sram: sram@100000 {
 			ranges = <0 0x100000 0x2400>;
 		};
 
+		vdec0: vdec@300000 {
+			compatible = "microchip,sama5d4-vdec";
+			reg = <0x00300000 0x100000>;
+			interrupts = <19 IRQ_TYPE_LEVEL_HIGH 4>;
+			interrupt-names = "vdec";
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
+			clock-names = "vdec_clk";
+		};
+
 		usb0: gadget@400000 {
 			compatible = "atmel,sama5d3-udc";
 			reg = <0x00400000 0x100000
-- 
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
