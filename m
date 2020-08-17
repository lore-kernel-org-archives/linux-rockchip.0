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
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3CBCC433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:13:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AA2352078D
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:13:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ASAJkKO2";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bRgt5XvQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AA2352078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lVWpu1apyLzXg8JIXJQox5wHHjB0wiC0EsyaCs1ZyQ0=; b=ASAJkKO2zwil29tElNR0nUJOHe
	vzqJhtlC+iOaBir1n4vur2TuwLQSnN3lalG9SaC/wIAptrqeAqQZ4xah+SJPEF96LcuaKNELHCEh8
	fWHKqZHR/34qWlDAPlAvt2YdYfteo96jtcrtTtq6htvcw+USnV6WaRck8rg5jLSSP2CvhN+uQ9zmB
	ytSUmlAT/ltlkhMcVwlSCoQEKraus1OrwRjcqxi+1THwlYDTTrfb9EIzvvqfx96vxGksg3LxDr6k0
	Wg11Y5ujqQ+nOQlXjTF7Fs+J9b7ZVqVXo0/1xxBI1667HX81P9hjw/wDn6uHx/bddqihGPBJX4jA0
	aT9bsefQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aGV-0004N9-NP; Mon, 17 Aug 2020 08:13:11 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aEU-00036e-KO; Mon, 17 Aug 2020 08:11:07 +0000
Received: by mail-pl1-x644.google.com with SMTP id bh1so7110087plb.12;
 Mon, 17 Aug 2020 01:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QaP8DINxDsuq2i3hJ8sJPBp0gJbGxyzKBcVj40ZfIHk=;
 b=bRgt5XvQ3AUktQa2vCokcQj+MeQZPYkIk6vnFPw6IBG+xcRxtqne9ZNSgBv9LDra+p
 7NfbPuWxZCqrbXVZeEcef6x/YdwYhClCbJeJtvk7Suw0KyDoZNAqJv3Fs5x3Ug4kk9oQ
 eisa0G+cHHV5rnB6t55SztjvZq57qsh5wgujX77NsrE2ylqkiBB3qtQhttoqg/ubjuTR
 uTtCl9eBBFQiN74Tv9V2IQPD9Zv+OeHMNonaPYbfTKsVwkjDfpU+6iU/tZjETQGvOVIh
 SzewaHsipx7KzhS7KVefaNhX5A94UAkH2ObH+6CkFOyc3U/eDyULBxyYU40ZmHhEgwAe
 1owA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QaP8DINxDsuq2i3hJ8sJPBp0gJbGxyzKBcVj40ZfIHk=;
 b=jha6y2lerkm6HYllgVkVuKZOyuCJ5lSMRjoinJM7zMoYA7BTkTGAQy5X5N5AbAz0Dl
 wt9HEDtQoBOQGeze26ooNZlYRBaw9hR21XxksnvdRFjf+ZRzw4jsCVG6wI2kXX4evquU
 e96LJe5glCaVf+H4CBm/JpLp1K0yJwoqtaTF4UCgW3c1ovvYkX6OI2Sz/Fqfr9Gc2vf+
 MkW9i9KL6o+QOJ0EhqYCH5WGBJORlhWSAnfQWPsje2QuTw2AymAX5FlPe4XRY7rYo+Tk
 qRE66/iIizkj26deYmU7mxm+EV4trkTBkoDx/nOkUVEB/C1u6om6eo+LmYrCEt5drMmN
 XFCw==
X-Gm-Message-State: AOAM531TeEXJ0V3KNSXzNeLw0P6cE/gWSJd6+nF8hU7ADLbHn9MEaQ+l
 oYun2TtAlyN4EMAeO/3T4cA=
X-Google-Smtp-Source: ABdhPJwWx9U4dwEOuvx8zZZhWSxZrW/QTfZvVwvzjU7vTTOa870r6Mdybq2AgvVeVI1eNan7GZHkLw==
X-Received: by 2002:a17:90a:ec0c:: with SMTP id
 l12mr11456530pjy.90.1597651863782; 
 Mon, 17 Aug 2020 01:11:03 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.11.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:11:03 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 13/19] crypto: picoxcell: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 13:39:35 +0530
Message-Id: <20200817080941.19227-14-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817080941.19227-1-allen.lkml@gmail.com>
References: <20200817080941.19227-1-allen.lkml@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041106_810748_7040C933 
X-CRM114-Status: GOOD (  13.37  )
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
 drivers/crypto/picoxcell_crypto.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/crypto/picoxcell_crypto.c b/drivers/crypto/picoxcell_crypto.c
index dac6eb37fff9..a394d51f8d44 100644
--- a/drivers/crypto/picoxcell_crypto.c
+++ b/drivers/crypto/picoxcell_crypto.c
@@ -1136,9 +1136,9 @@ static int spacc_req_submit(struct spacc_req *req)
 		return spacc_ablk_submit(req);
 }
 
-static void spacc_spacc_complete(unsigned long data)
+static void spacc_spacc_complete(struct tasklet_struct *t)
 {
-	struct spacc_engine *engine = (struct spacc_engine *)data;
+	struct spacc_engine *engine = from_tasklet(engine, t, complete);
 	struct spacc_req *req, *tmp;
 	unsigned long flags;
 	LIST_HEAD(completed);
@@ -1648,8 +1648,7 @@ static int spacc_probe(struct platform_device *pdev)
 		return -ENXIO;
 	}
 
-	tasklet_init(&engine->complete, spacc_spacc_complete,
-		     (unsigned long)engine);
+	tasklet_setup(&engine->complete, spacc_spacc_complete);
 
 	ret = devm_add_action(&pdev->dev, spacc_tasklet_kill,
 			      &engine->complete);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
