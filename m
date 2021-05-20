Return-Path: <SRS0=PymM=KP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42902C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 19:03:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B680E60E0B
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 19:03:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B680E60E0B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KEEAbFfHZvhbhO8oINV3c9WAm9g47lALgEWvScPCLjo=; b=BNHeXTNuSrb+hRZtSxmBqqX0bT
	1MQE4NoPGg9737f97DtcoKpycI1Ti8xUz1ZI4aCWzbz5qW9L2hViJnGCas0s6B8C5GVK/LqXsDWiT
	5JV6Lz9JKdN/gAQaheOF3gNd78aYn7kCrc+IrJpegVAbg4mW/iDZOL7uag3gzqGBeCps9GOkrZxKc
	WvjpxOYQms5TOBiCLAWsOn9dctg6WE/I2ewVlDX86lyZ9IeIvKyHYBmqvDovxHrpt/kHiaVkS0rt7
	AsSYhsL9vzTYaeQy/eb2Jz7EpQBeqn6kAqaqTuDhH938odamY9yRT4MGwwl44SJHbvh6A8hN2UN5Q
	PdAXDF4A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ljnxZ-002PMC-DB; Thu, 20 May 2021 19:03:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ljnvD-002Ogj-7D
 for linux-rockchip@desiato.infradead.org; Thu, 20 May 2021 19:01:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=BZ7o0VkeJdaRCEBQCoylzsFR/PU7XD67806SChIDBfA=; b=3U1n/Q5d8p9fpPmkQIp0L/Q0jl
 6wDMG/15mnhUFtk0vPqFIm28qZazjgJf8Ot9KvGNHyBZ5BZpxQgkqPk+1zc+elNhO13CdIJLhtdoH
 DajQ2lPDpvX8V02g+yIx0hydPZ81ywdfrD8LcomqtBGXXzHEUuFasmlUPJlog+fLxaV1lK949qDoL
 WQTGJWlVeV8oIkSMPmlhqC1sN3oMJXlKdWVyC0MXWb0NMmNoGL42raxK6mhpiCmH546QwWEhD9yzz
 TRI2WatAg8x5k5Q4ZYGG8BJpJ+9KdFJDORAXPYJvgEOVFbBuV0ZFH3l86qyXQYM+rASa3rxIipRdL
 CRrYHYvA==;
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljnvA-00Gaqu-Fh
 for linux-rockchip@lists.infradead.org; Thu, 20 May 2021 19:01:26 +0000
Received: by mail-wm1-x32c.google.com with SMTP id o127so9796396wmo.4
 for <linux-rockchip@lists.infradead.org>; Thu, 20 May 2021 12:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BZ7o0VkeJdaRCEBQCoylzsFR/PU7XD67806SChIDBfA=;
 b=wbPg+IuSfX0setQllon8nmJmPS/4cMhSLYh+OMtByDo5xn7lI8FHKHdoVNbV/LGIrP
 ER51hBIw9kz45SxLR+H4payGvH5vH3Xe2a1B1+JjDCJmCFgUw+a+aBLOG/F4h35D9Mh+
 lrLdT+ouYR2uAXXht4QXwLI0Vy1CSdH9ZXkxId5A68ASNvuRvGvO+d3PbD8Hfih/eq/1
 tlFN2dojL9JyyElWP7Ks/N2j2uJe5zaBYsnOJjZGIlBLbwAKGrzlX4Zv5bUpiwLXv4Lm
 Zhh9rw24DY3J90i4yH04shJ2WWIroytFFauUUHB91/Ib9LM7kHT76rgqfKPHuRgV7t7j
 K33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BZ7o0VkeJdaRCEBQCoylzsFR/PU7XD67806SChIDBfA=;
 b=RiEN5xj0iZIiaEO4MCLD5Qm8Evv+3394Shn7v51Rhsc2/mSRZKoXJIu2yHuLcjDAG8
 v1bcD3JQ8XWGK5PvckZ0MBImJg9w6Cdsgc9YJjcd8L+Pe/qbrz2fpzC6osmJnrOzbbC3
 5lX1MU4lQTGxLRCQqF//1S+rZOzCyvGPlHpelfGUbkPjJkstkdqeafSgZDDdwmKTtdKD
 i8GcwAhifCjhblryIUYUQ7d/U/DI8LMKR+U0/TOrl1xN+r+NtBa4sLaEdv2bz1DJTE2n
 a9n09ajtdRtuIBZfHZ18fX/QcO6/e/VfNsrFV9lRBT7Sz4ms9uO2P+WDcWZqaDoQKixa
 d41Q==
X-Gm-Message-State: AOAM5331bhaCFXcbAjSvj0aSN/m+shWCfwlc7DJdIPPBHEtHE/LHl9EY
 YeDw6VjwisrtDU2HWCUZZg3Zdg==
X-Google-Smtp-Source: ABdhPJzCaBtFp/3KcYEZ8YBWuCPtiaGYbMJURAiEOo9oNOZ0QSrbORhEb5JrppYxCy4bVZwNMF4jzQ==
X-Received: by 2002:a05:600c:2312:: with SMTP id
 18mr5660601wmo.0.1621537283254; 
 Thu, 20 May 2021 12:01:23 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id p20sm9011899wmq.10.2021.05.20.12.01.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 12:01:22 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Cc: linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Max Schwarz <max.schwarz@online.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org
Subject: [PATCH 12/16] i2c: busses: i2c-rk3x: Demote unworthy headers and help
 more complete ones
Date: Thu, 20 May 2021 20:01:01 +0100
Message-Id: <20210520190105.3772683-13-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520190105.3772683-1-lee.jones@linaro.org>
References: <20210520190105.3772683-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210520_120124_550233_3020F2F1 
X-CRM114-Status: GOOD (  12.46  )
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

Fixes the following W=1 kernel build warning(s):

 drivers/i2c/busses/i2c-rk3x.c:242: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
 drivers/i2c/busses/i2c-rk3x.c:261: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
 drivers/i2c/busses/i2c-rk3x.c:304: warning: Function parameter or member 'i2c' not described in 'rk3x_i2c_prepare_read'
 drivers/i2c/busses/i2c-rk3x.c:304: warning: expecting prototype for Setup a read according to i2c(). Prototype was for rk3x_i2c_prepare_read() instead
 drivers/i2c/busses/i2c-rk3x.c:335: warning: Function parameter or member 'i2c' not described in 'rk3x_i2c_fill_transmit_buf'
 drivers/i2c/busses/i2c-rk3x.c:335: warning: expecting prototype for Fill the transmit buffer with data from i2c(). Prototype was for rk3x_i2c_fill_transmit_buf() instead
 drivers/i2c/busses/i2c-rk3x.c:535: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
 drivers/i2c/busses/i2c-rk3x.c:552: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
 drivers/i2c/busses/i2c-rk3x.c:713: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
 drivers/i2c/busses/i2c-rk3x.c:963: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
 drivers/i2c/busses/i2c-rk3x.c:973: warning: Function parameter or member 'i2c' not described in 'rk3x_i2c_setup'

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Max Schwarz <max.schwarz@online.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-i2c@vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/i2c/busses/i2c-rk3x.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 819ab4ee517e1..1dfbd1185aefc 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -238,7 +238,7 @@ static inline void rk3x_i2c_clean_ipd(struct rk3x_i2c *i2c)
 	i2c_writel(i2c, REG_INT_ALL, REG_IPD);
 }
 
-/**
+/*
  * Generate a START condition, which triggers a REG_INT_START interrupt.
  */
 static void rk3x_i2c_start(struct rk3x_i2c *i2c)
@@ -257,7 +257,7 @@ static void rk3x_i2c_start(struct rk3x_i2c *i2c)
 	i2c_writel(i2c, val, REG_CON);
 }
 
-/**
+/*
  * Generate a STOP condition, which triggers a REG_INT_STOP interrupt.
  *
  * @error: Error code to return in rk3x_i2c_xfer
@@ -297,7 +297,7 @@ static void rk3x_i2c_stop(struct rk3x_i2c *i2c, int error)
 	}
 }
 
-/**
+/*
  * Setup a read according to i2c->msg
  */
 static void rk3x_i2c_prepare_read(struct rk3x_i2c *i2c)
@@ -328,7 +328,7 @@ static void rk3x_i2c_prepare_read(struct rk3x_i2c *i2c)
 	i2c_writel(i2c, len, REG_MRXCNT);
 }
 
-/**
+/*
  * Fill the transmit buffer with data from i2c->msg
  */
 static void rk3x_i2c_fill_transmit_buf(struct rk3x_i2c *i2c)
@@ -532,7 +532,7 @@ static irqreturn_t rk3x_i2c_irq(int irqno, void *dev_id)
 }
 
 /**
- * Get timing values of I2C specification
+ * rk3x_i2c_get_spec() - Get timing values of I2C specification
  *
  * @speed: Desired SCL frequency
  *
@@ -549,7 +549,7 @@ static const struct i2c_spec_values *rk3x_i2c_get_spec(unsigned int speed)
 }
 
 /**
- * Calculate divider values for desired SCL frequency
+ * rk3x_i2c_v0_calc_timings() - Calculate divider values for desired SCL frequency
  *
  * @clk_rate: I2C input clock rate
  * @t: Known I2C timing information
@@ -710,7 +710,7 @@ static int rk3x_i2c_v0_calc_timings(unsigned long clk_rate,
 }
 
 /**
- * Calculate timing values for desired SCL frequency
+ * rk3x_i2c_v1_calc_timings() - Calculate timing values for desired SCL frequency
  *
  * @clk_rate: I2C input clock rate
  * @t: Known I2C timing information
@@ -959,8 +959,8 @@ static int rk3x_i2c_clk_notifier_cb(struct notifier_block *nb, unsigned long
 	}
 }
 
-/**
- * Setup I2C registers for an I2C operation specified by msgs, num.
+/*
+ * rk3x_i2c_setup() - Setup I2C registers for an I2C operation specified by msgs, num.
  *
  * Must be called with i2c->lock held.
  *
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
