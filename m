Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 497CEFF885C
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 09:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pl1GU1Eml6JR5TZ2LwSW4ieDliMdnt5vQ+d1XAhc2p4=; b=dX7rVer/Sm51Ck
	GH9tw5p/x/VVWT2yzCLdVkwp/tpfjqdZ3Q+61hhNmhhA8yxKM/ixjM3fAWvz1IJlpmrg5vs+DbLCq
	Ycrhou4xvjUZPC4q7M0XIlQc0x7dyxd9N/Iosy4UuEV23GXtIF6SUYtoWxiYx/uYm4XAPYS9c1wLj
	nwMbWlVuRfuEYxMmuSL/PuYOmrlFVPAL+sVic7l8+jTp9noQeGZTfpFqvIExDwGuEXEwdGk0X4H8E
	rqWXz2gtb8/d8dnZP8uW6zRlyb3Ta7y2KaLDram0uLBAKsc3AOZuHzUGP8799v6JVZL8yOc2AYhEq
	sPVC4uirYvobhb14SGUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGZLM-0000000EHhX-2ZnM;
	Sat, 25 Apr 2026 09:30:32 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGZLG-0000000EHcy-440C
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 09:30:28 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-488b8bc6bc9so61866615e9.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 02:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777109425; x=1777714225; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NFcunWIpYnqUnWj/RVVTZn+6mdgY5gobPpPfEuSRWIU=;
        b=IxN0YkOVf3NTYnr3ppUC/1URjjnNeXjBoL48N2sMgDhs2eGRzI6zctlD/hBES+JvPU
         bIuq/NRm00ov3u8RBjG+zn/JcxklortzDBzqbpZejXGAPIhIaAsEoBlZhXb19Cd/yfOO
         aApT9Tkr/XuqZAfJarXUzWO08MQAD53PokHtXWxgvGGNABcoHw3Yjf4m3H3HjDh6Ioyw
         S+DoKnRPCZ25YS1zeRO6RJUiPcMpcIwRHyThxn8uKalq9zRq1AvyT74gft+o2A5gYAb9
         5+0WSPRBmQTvKzzQW+UTwTtSeIwCpQRdySFQ4JonWGXlNgwCowNxBcNo9xivnk1X3aOG
         KFhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777109425; x=1777714225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NFcunWIpYnqUnWj/RVVTZn+6mdgY5gobPpPfEuSRWIU=;
        b=ZFJSSU3APlJN2i5Nif+w83PKuskm51UN0CC46PMRCy7DSJptDdCWAwnY/XyfmNlE3V
         1Y1RWP46iCMK72/UeMA6stzB0Q8jYoMs3O0TZyodHCVkMe5ofN3ekfP+8FdQ5WNt2I03
         AZrxWVcdcWNOF/JvXJqXZQhSWnoQShv+22fnNyFcKrRlWtZrUUMnZMfini3mkYc4lTGf
         fpqIUCcmDbC4UqH435cXNHhhpBhOM5tbiBXL1o0DN3/L0xqRUWvz69fu5GFCvkPhwu38
         O3raUenKBpTS4mZrsx0n9r1/o1x2CNnhNxLr25zMq8dQEVehmkJEnGlrW3hfCwA/W+rs
         VkJw==
X-Forwarded-Encrypted: i=1; AFNElJ/6Tn1WjhUAwmiwGUQRBvZWafv+Kq23JDul2wrqWaoG5uGj/FMQ4vfx42PlrV4YusU/BF0I2qOginzQtQkvBg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyxE+SoH8R2hRNEIfEdfkARbp72sPZ6ACWUqU9OGrzcZdp8t1DX
	hiviXMg3OmFLW8No/rrGkdHbeK0MB+X91gzX+w8DQkeU0r/g3so+n9n5
X-Gm-Gg: AeBDievF1SDLkQlqfKBjjzYyN8/N17SGgvDf6wXq0SOVyC3zn5k+oc7JgSSQOG3G6cv
	zdXw4tm/aNTc6UNLk226t70ZV5NdfnIFFZaG6ld1pjyCAKEJ7vURX22Vim02AbbmfujCqI2wLZV
	kA0C63mBZ/+gvLYyY7x+EzqCnDyWNSG3LKKbjFQ4bwPOLmk76UWx9z/epgAUaFcEqyWZdBCBstl
	FNcOUKsaXsDO3GRiaKsooVRGtdLSq29QIYLLj/wke7QDer9cSK5kkY2jYb1hJKqsnJtABWp4aRP
	Rr5KGEs9xaegIX4xOLgEuRwGIDPZjTxa5dopYxyuaanlFLxI+OAuKbKj1GBJHLmSGAeX2eksb5W
	ZH8HZT9RkndAr0BOCCShzey5p+GAuCT0GVwaRFaPCtl9M4wdRDJs46qhQw0RvgI+TIrfihSGbsv
	KG9mAioMITU9x5Pmyn0EztSVaATEqh7KLAK/w0/ukEhwFn7fjhCmQzyzDs+QX03Wcx8EPrdmPJ+
	+lw
X-Received: by 2002:a05:600c:858c:b0:48a:55d8:7882 with SMTP id 5b1f17b1804b1-48a55d87a58mr238596535e9.9.1777109424887;
        Sat, 25 Apr 2026 02:30:24 -0700 (PDT)
Received: from localhost.localdomain (ns31537009.ip-141-94-163.eu. [141.94.163.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fb7b2716sm204422615e9.30.2026.04.25.02.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 02:30:23 -0700 (PDT)
From: John Madieu <john.madieu@gmail.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: jon.lin@rock-chips.com,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Madieu <john.madieu@gmail.com>
Subject: [PATCH 2/3] spi: rockchip: Drop unused and broken CR0 macros
Date: Sat, 25 Apr 2026 09:29:35 +0000
Message-Id: <20260425092936.2590132-3-john.madieu@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260425092936.2590132-1-john.madieu@gmail.com>
References: <20260425092936.2590132-1-john.madieu@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_023027_024251_F1D33413 
X-CRM114-Status: UNSURE (   9.46  )
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

Two CTRLR0 macros are defined but never referenced, and both are wrong:

 - CR0_XFM_MASK shifts by SPI_XFM_OFFSET, which does not exist anywhere
   in the tree. The intended symbol is CR0_XFM_OFFSET.

 - CR0_MTM_OFFSET is defined as 0x21, i.e. bit 33 of a 32-bit register.
   The value is meaningless and the macro is unused.

Drop both. They can be re-introduced correctly when an actual user
appears.

Signed-off-by: John Madieu <john.madieu@gmail.com>
---
 drivers/spi/spi-rockchip.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index de39f5da62cb..231fbcf0e7aa 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -98,7 +98,6 @@
 #define CR0_FRF_MICROWIRE			0x2
 
 #define CR0_XFM_OFFSET				18
-#define CR0_XFM_MASK				(0x03 << SPI_XFM_OFFSET)
 #define CR0_XFM_TR					0x0
 #define CR0_XFM_TO					0x1
 #define CR0_XFM_RO					0x2
@@ -109,8 +108,6 @@
 
 #define CR0_SOI_OFFSET				23
 
-#define CR0_MTM_OFFSET				0x21
-
 /* Bit fields in SER, 2bit */
 #define SER_MASK					0x3
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
