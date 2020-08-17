Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02ED8C433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:10:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C3898207FB
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:10:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ft5uNl+d";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bq4a/wY1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C3898207FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YcHUzNvKhyi0WjZTCw9+tZTvRn0LPlRTL6ZS4qUITPg=; b=ft5uNl+di9T9yLErZYI+1YI2D7
	bdFnqBrimlbRULcjgbBjHbHhFqPQ2EX2EBpJcWMoSUgk5enuDdxYN8YEnc6PqPiOAgDHB/tcZnOlH
	gHth07o7r8ufasUDlnqW6cE/FMWenokLMHyknZ54/jIsjX46YyvtVWZHN8AXh7ErW9vSDSRZaVZGw
	I3kIV+UkBlEdQPkU6dPlLOE44t8bMjODgBRQiCMKUT8smYzgGf3YWmgzNNS5J0sc2itgMYf3FUtc+
	Xeew08hRNlRwH37QNwOvVYDxKUOcuWTW3dn4JX2TSfRf4hELR09Zg3Z37pwOuA1a78W7VIDSvE2H9
	buZRM2+w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aDc-0002go-BH; Mon, 17 Aug 2020 08:10:12 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aDU-0002dq-Rr; Mon, 17 Aug 2020 08:10:05 +0000
Received: by mail-pj1-x1044.google.com with SMTP id kr4so7440440pjb.2;
 Mon, 17 Aug 2020 01:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AVM5Ee6U/PgM24p71AdP1zEptNAhtBHiH/J4elOBoDc=;
 b=bq4a/wY1jTCneE+s/N9XkoTRDfi6FFrXjPFbCX2hyjjVTa0rjLe1BFehd0Ubudyjvy
 2tQCKoiZ7neD1DxzuuX3L/LvtPDeXxuRaXOv48JfMePwptC3F9IB2vlDZMn/VUwBGUYC
 UWtSZ6o5moTekCXzFqTsBLa+GAfSZbT9Hhk2J5nUiAnQ6lPZQ9vXCS61X57fhtyxR9gu
 4zymCvU86fkehj29z6T4OkVDhu3T78E+BBF2HHfHJa/IgAKr4Y7apXqDt+nVMb3Yl1kd
 vvm69unP3toBPnFBDyQjpXmm48RzPMuxN08tJ9N2asske3r0dwT1wjWEbozcCPMoN3gS
 hbUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AVM5Ee6U/PgM24p71AdP1zEptNAhtBHiH/J4elOBoDc=;
 b=G5XO4dyXgllrdFuvmMucEtkl8cfmOWT5dSX5E7YKk3RGh/vOlwEbyXIR4VSZAUXMGN
 CBuWLeBS8F4wyCvMnJj2xbOqqcDAeyGh2Qxhsvoc+yVdHJj3MwU8SXa4cGDvLnwd8V+i
 PrqHVEYHfsj21zhxNkya7YpOfJXZmrUD7kgEOfiFvT7iGeIiGEGfhXvcyWpM4VMc7dtV
 S4M+I369jVbTWLh3LOy5kekOcwr/OnUrOK5OSRmtUiSNKiTtjaB3SN1MjZbe6D6z9njf
 xXdG1XxdbVKeorlvlnYUdhuYWO2ACopYzUDFsSXH3YaUWZRaJVl+lAmuP/xfY90yyvaI
 m57Q==
X-Gm-Message-State: AOAM533Xt662fjHfXHJQ8O8QP4JXWhuYSYqznrAb3XJ6Eok87pvHBdpy
 9f8pB8/WO3UHf+OAlUa8qRQ=
X-Google-Smtp-Source: ABdhPJy71ZdpBfF9NUMopXz8WNjxk40FSx6iYagIE9KHHij3vLBK71JeyUDcHvmRwLjZ+oTEhlfPiA==
X-Received: by 2002:a17:90a:9405:: with SMTP id
 r5mr11870057pjo.74.1597651803126; 
 Mon, 17 Aug 2020 01:10:03 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.09.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:10:02 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 01/19] crypto: amcc: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:23 +0530
Message-Id: <20200817080941.19227-2-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041004_980827_D0C8CD6E 
X-CRM114-Status: GOOD (  13.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Romain Perier <romain.perier@gmail.com>, keescook@chromium.org,
 Allen Pais <allen.lkml@gmail.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, inux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 drivers/crypto/amcc/crypto4xx_core.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/crypto/amcc/crypto4xx_core.c b/drivers/crypto/amcc/crypto4xx_core.c
index 981de43ea5e2..3700446a99d8 100644
--- a/drivers/crypto/amcc/crypto4xx_core.c
+++ b/drivers/crypto/amcc/crypto4xx_core.c
@@ -1072,9 +1072,9 @@ static void crypto4xx_unregister_alg(struct crypto4xx_device *sec_dev)
 	}
 }
 
-static void crypto4xx_bh_tasklet_cb(unsigned long data)
+static void crypto4xx_bh_tasklet_cb(struct tasklet_struct *t)
 {
-	struct device *dev = (struct device *)data;
+	struct device *dev = from_tasklet(dev, t, tasklet);
 	struct crypto4xx_core_device *core_dev = dev_get_drvdata(dev);
 	struct pd_uinfo *pd_uinfo;
 	struct ce_pd *pd;
@@ -1452,8 +1452,7 @@ static int crypto4xx_probe(struct platform_device *ofdev)
 		goto err_build_sdr;
 
 	/* Init tasklet for bottom half processing */
-	tasklet_init(&core_dev->tasklet, crypto4xx_bh_tasklet_cb,
-		     (unsigned long) dev);
+	tasklet_setup(&core_dev->tasklet, crypto4xx_bh_tasklet_cb);
 
 	core_dev->dev->ce_base = of_iomap(ofdev->dev.of_node, 0);
 	if (!core_dev->dev->ce_base) {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
