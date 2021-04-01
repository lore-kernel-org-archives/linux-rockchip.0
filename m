Return-Path: <SRS0=fCHL=I6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A51FC43462
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:44:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C1AAF6135C
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:44:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C1AAF6135C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZRA/2byzOE1YEGWKEC6t50PKI9D3g/kFTmf6a9B1cNc=; b=KtLNxYPLeUy7QI/LTtKw6eAnJ
	Cy+N8GxTX5MlZcyO4WZ3maAarvbYOimp0q/SMAg6mVP2Ozpk2GuWnGwHk3RIAdmfw7lIFc4mRyao4
	spXYEnzWpSvVflUvmnQyCz4kh6KuKjCxWBK84ciikhrxjo7hLGlP8WDK1VyRHO1lNbrSTX+c1z8R1
	2BnbMVSn2+ZyBwkDB4D422ZLAGzDWqKSNAMUrTu+z8cipYaJBlcyaE4fh8+lqeF6d/Mxf35liPvHp
	/GAiALyxk63WE0FiNAZ6Up92vFuTVLy48nS706YVBIWnlulFvxZMbRtFMyiEkt2lWEVFmgr5HfPi7
	IXfWEYQTg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRyYL-009sm5-1Q; Thu, 01 Apr 2021 14:44:09 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRyY7-009scl-86
 for linux-rockchip@lists.infradead.org; Thu, 01 Apr 2021 14:43:56 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a7so3277281ejs.3
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Apr 2021 07:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c9dnfwn3uUQXnRGTtGdPI5EXjcVR5rT5ZIvAQLeTWB0=;
 b=GDJXTN0HFj6eVKPH5TMDm6NIGcjzfywnofpIQvY30/bpMclQDTYXhbqaRs7Ct6+xEU
 arM9lX4UMRhxGi5yCMBxEeObbwH76zyTY+uTeURueKMwawjX7uS1bs+z08TTfo25mqNL
 u77h961Ii+Mq29Xzlj58mKsWMvLPpOzDc4AZTWVa36AS1/oS+L/vD7nw9mpz990Wh+ga
 4a/5Qy5s1uXhMSPvTz08ISCpkiC+8QB7ngcorzxToBFRJ4U2crSuPDDiZMdzSsNn9n1y
 8OQRxhEPiiuNFjM9G1vcuE8GMRICguqgOjbsVodi+yCBZHuHWwvNrYJwXkF5dOh8X49M
 xpqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c9dnfwn3uUQXnRGTtGdPI5EXjcVR5rT5ZIvAQLeTWB0=;
 b=BbasUwD7s+/mT8VcMAoeApeNaR3wDHlkzwMkH2jVA/vcNXd+bnjcZyHSZYbV/bQNKE
 wxq/1m7kcC6WnhsnD1fAvzP/dFb0TQFchUSf5ISJKBtJlHQQ7b6fxDO8n/HBB+fH8BPC
 /DXGAT1Ig/IEKHTEVFAP6SsDOIkCUjZNAwMqFOwxVnoBF4JgLVVweMQrh1MKiFehwGuO
 iEm11avljsJT9JaD9fiAxuoUobL0H+r+2LKLK+yH3v3XxzJIgVc0XsvET653QuGHccCI
 jZgo2cnURnx8/GDuLeX5XgSxvmg84V6klGZvkgQ38muJYb4mPWY8BKbxykhg1MP1ySj4
 OYyw==
X-Gm-Message-State: AOAM530eUcNAqtpmr4eAmrN61QMpFV2W0oJI0niqDI4LIXgQ4od1GXd8
 11JhSBLtVI1m2imFqeRG0Zc=
X-Google-Smtp-Source: ABdhPJwEdgYTRpOzaOCZ20hnOAYuVxYiUwWxcYARQTiQhaUcIT3j3xfkvUdqsKyHyPAV7qD+3Tda3A==
X-Received: by 2002:a17:906:aed6:: with SMTP id
 me22mr9618958ejb.146.1617288234968; 
 Thu, 01 Apr 2021 07:43:54 -0700 (PDT)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id nd36sm2854950ejc.21.2021.04.01.07.43.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 07:43:54 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com,
	Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v4 9/9] ARM: dts: sama5d4: enable Hantro G1 VDEC
Date: Thu,  1 Apr 2021 15:43:36 +0100
Message-Id: <20210401144336.2495479-10-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_154355_413488_A4773DB4 
X-CRM114-Status: UNSURE (   9.22  )
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
