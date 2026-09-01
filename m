Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EDB7C61DD6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZbAOhlnnP5FEZSIXIM6GpAlvZBQ4soUaRFMCH4jwtw=; b=DUB/JLNHye011T
	dcxfOUm5iuyUnY46Hh8V4pSxj52LNIU7nTOKIOBsSyiqscbuyxR/zIwrM9kT7wNN2I9PvDSWGiomx
	WmAK7p3Ds9LHAYSE2PX4irSrTw0mQgvQbN3Jxdbz8giC4cnDrlBXHaAltXCM2+FgVowFnBAHl8F+Y
	4xX+YCZ+lKj1xMF7AP7i4OXr29o+qAN0RJHmVsq9ruxj/vmkwI7NQM1mbqeKZDcphJuf+e9M0xHg3
	VFPi10o8DzJ2XnFmut2HgiNUuYoX/Hej+qR/WmgN4+G8QXJYdkG+Y3rstNq7ahBb/TiKttvQFtHwe
	wBBczYWmzFNGET4QIrrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QUo-0000000CW3u-1FE5;
	Tue, 01 Sep 2026 15:33:58 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QUl-0000000CW1n-0F0m
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:33:56 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-49556f97a9dso34149015e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788276833; x=1788881633; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MR/cQZoK7JPxTk5LPqkidwaMJQfEv51POKdRxNvWHUE=;
        b=ahtQUN7deCnhSB0DI87v2V5QnCxi4i+8cJ0hse4oUg1dWZ1Zp3+axt0bSZeUdIqgE5
         L3H6iRiKfZMsiFLJ/y8wfcPz8nKqZPCw71ALfIwErTTaHmXZ6Ou4cA/kirGiDspqo4kJ
         e+bWUA9shEgaqriowWWon8v1NKGxuvM3VPMtF01DBHVZ0hyxIudbInuAuk7ipuahVTaK
         WjmGn9EXu4jPTznMf35xBh8WmgcuoMJzRASnIr17qHePGxv60PaT9ETffaq+I/8yOSt4
         +d9Yy97wzMrJkWOtnUZM1aKssqQLx4J0CvgVauLKxYJ640KUJA49mWAx+Fn+b0TPKIQA
         1FTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788276833; x=1788881633;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MR/cQZoK7JPxTk5LPqkidwaMJQfEv51POKdRxNvWHUE=;
        b=imTLqztAl7L2cUk0xO5JrhRtmaLzOhwWth/8GZ8JiMCRyNUIVSfq6fbAYHFWs0WLYj
         EIKeCeowAML0dPmLOftr5nWkaRBjhycun6tD7fdnAg2+B4O59Qv0LBE1qVGMKYuKPDKg
         4lUjUQtfIJFYSu2OxY1sfeEwpOe7w+qMuYCnXpqkupP0wseQIW401j4UHoWTCsJGTUbs
         QTueg19TKJ9oVFYQ52jnCnmvcDKn7U/lKmULqv9EL5kaUu38YGUrFg/YVr9PigOw2BMA
         UGP2JTua8GJwKphLp4B3A9HnTenoiNwo/ZNs6DmprV5iZJTIDKV/XHutmEI5xXHamyM5
         PoSw==
X-Forwarded-Encrypted: i=1; AHgh+RoW9jbX51AkCUhLMIivgAz1zlUEJT0IwxIOsos5iq9eljM6H8mXfrPDfk3UeatMXZ8HSg7a36j9V3YelFN/ZQ==@lists.infradead.org
X-Gm-Message-State: AFuF++n9uIgJh/7Ma+lMiX+453+mOFBMx7RckqVcPI0hduK2s8UYOwzI
	BeGVt6CfQs21xRUA/54RWEJrFUfb5obl9e6M7WwDM29vZyWfqYpDle055Z7AM5ahSdo=
X-Gm-Gg: AR+sD11kXwUTy3jWjlObZhnBTWDatGZu6Xl+3X6gOHoZpi8Nt0ELyqIlOWjGQr0+tq/
	sZ2cO1IBAeaRtUV5eAbi+8ab10x8syEZr+OHnwDpGGsH52+vItvxS3YdL9z4Ahzjv3o+gvKj5Vb
	OhHIvoXF8DwrVrBZRZDUVvRB1QQx7g6oSzv4LwPNds6nHmFk4ZOChXWqnr3r0NxsKBEpzkC/kvz
	TH9oydm88bVYt1Ycer2FExx6ZxSSzO+62n1osTafwNB6arO05psCSIAb885OHpAspmwwb0lN3+g
	FLhGZ/BbAuLd0g8babDKec6yz/ydhUwQNGKcUSb/1NULPIvB+xeJdW9TG4XAEhP4vkCCVd7K1Gy
	Ml7q3ittCY5NJh5UJvseDN95LdLomlWPdFy/OietX6xM0wZxDMaOcXt1XoNMXvRHtpGOyCSbj3h
	U0RYa5qt/3GvsGFozI/BJsGrgNu8FQv/laDiQ66DpSns6GnQxJi0R+alrNGT3rXu15fDTo9osDT
	a1W9X0Cq5OFpcjkmUQI7B4gWnJomYYss3iG5W9cK3iIuRazZRE=
X-Received: by 2002:a05:600c:5391:b0:49c:cedf:f870 with SMTP id 5b1f17b1804b1-49cdc555577mr180831445e9.16.1788276804848;
        Tue, 01 Sep 2026 08:33:24 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-2-51-220-108.alshamil.net.ae. [2.51.220.108])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b91c5790csm314541845e9.0.2026.09.01.08.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:33:24 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 01 Sep 2026 19:33:11 +0400
Subject: [PATCH 1/4] nvmem: rockchip-otp: Serialize reads
MIME-Version: 1.0
Message-Id: <20260901-rk3576-otp-cpuid-mac-v1-1-ea9135270fc2@flipper.net>
References: <20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net>
In-Reply-To: <20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Alexey Charkov <alchark@flipper.net>, stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2712; i=alchark@flipper.net;
 h=from:subject:message-id; bh=amm6IB2QVHQmS41llynjCeEO9qHZu2xpesEVqtnd22I=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRN+2C3xbXrK4OeZYvDjPdrr1mZbp/St7fnwfTot49W3
 TD5HCSf3jGRhUGMi8FSTJFl7rcltlON+Gbt8vD4CjOHlQlkiLRIAwMQsDDw5SbmlRrpGOmZahvq
 GRrpGOsYMXBxCsBUx35iZNibP3We43yhXZ16Wn+qpl7LuCJ44ZzTmxzTjRy/HlSF/clg+GfIZX2
 of9I/hUiz98vtfcUeTXiyUHIf56ZrjJturNqyaAEPAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_083355_128703_971C5B87 
X-CRM114-Status: GOOD (  16.85  )
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

The OTP controller is driven through a single set of registers holding a
state machine which has to be stepped through for every word read, yet
nothing keeps two readers out of each other's way. Concurrent reads
interleave, and the outcome is either a reader bailing out:

  rockchip-otp 2a580000.otp: timeout during read setup

or, worse, one of them silently taking delivery of the other's data.

Reading two cells in parallel from userspace on RK3576 reproduces both
within 150 iterations - 53 read errors and 9 corrupted results, the latter
either losing their first word or, in one case, ending in the two bytes
which belong to the other reader's cell - whereas the same reads issued
sequentially never fail. Concurrency is not hypothetical here, as six
thermal sensors source their trim values from the OTP and reach the driver
straight from asynchronous driver probing.

Guard the read path with a mutex. Reads are the only way into the hardware,
as the driver registers no write callback, and they always run in process
context, so a plain mutex spanning the whole clock-enable, read,
clock-disable sequence is enough.

Fixes: 755864feb729 ("nvmem: add Rockchip OTP driver")
Cc: stable@vger.kernel.org
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/nvmem/rockchip-otp.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index 2c0feb036f3f..b034b7455016 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -12,6 +12,7 @@
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/module.h>
+#include <linux/mutex.h>
 #include <linux/nvmem-provider.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
@@ -80,6 +81,8 @@ struct rockchip_otp {
 	void __iomem *base;
 	struct reset_control *rst;
 	const struct rockchip_data *data;
+	/* Serializes access to the OTP controller state machine */
+	struct mutex mutex;
 	struct clk_bulk_data clks[];
 };
 
@@ -272,6 +275,8 @@ static int rockchip_otp_read(void *context, unsigned int offset,
 	if (!otp->data || !otp->data->reg_read)
 		return -EINVAL;
 
+	guard(mutex)(&otp->mutex);
+
 	ret = clk_bulk_prepare_enable(otp->data->num_clks, otp->clks);
 	if (ret < 0) {
 		dev_err(otp->dev, "failed to prepare/enable clks\n");
@@ -431,6 +436,11 @@ static int rockchip_otp_probe(struct platform_device *pdev)
 
 	otp->data = data;
 	otp->dev = dev;
+
+	ret = devm_mutex_init(dev, &otp->mutex);
+	if (ret)
+		return ret;
+
 	otp->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(otp->base))
 		return dev_err_probe(dev, PTR_ERR(otp->base),

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
