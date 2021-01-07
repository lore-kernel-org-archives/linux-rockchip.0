Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E2FC433E9
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 12:30:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E88923356
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 12:30:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4E88923356
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HVqiw+W3GLMaLRLoGbf08WbGWYwM0wF2RDwflbxr1PI=; b=TjcwgdNJf4J4uuuEtmdfu62Rv
	Fb3KOtVb9XOsrwm2BM0t6JHgKlxtQHzRvg5CP+gkKFEethHYKAkqXBxFvBWtv/qUXDnnIwm3qwxqP
	iie/WyqRemPEArVaKuoHkjRUikqE/StBpFSj69nTY0kd0HQmdt0nrZ72vhKJ1wU2S5lBmniu0cm2f
	OVjdIKbwFSvkIlRSRPnCDiInRgJ6n/zAhYvPmUS0HT3bgp/3kBHneaJaJot1sMb62QibBaDy6LbGh
	gC5V0w5TH06M5E1ZGmWCVK8zLU0+4Yc2aPepHGMfuSIRgUuyNHzkyHG+lA/COcrp+jgO3pvXzsWUt
	cNOsohxKA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxURI-0004H2-4x; Thu, 07 Jan 2021 12:30:52 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxURD-0004E2-H2; Thu, 07 Jan 2021 12:30:48 +0000
Received: by mail-pf1-x430.google.com with SMTP id w6so3779961pfu.1;
 Thu, 07 Jan 2021 04:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HNZLvmQAqbtAqMEvJP1wVGbLyEu2FmrY5NiRBOEZCk0=;
 b=r/Samj46HFOW22YwxxLKb7kXMfMJZkv+fNvz018vr4h6HXcjxcSKw5uY/aUxVaNcbo
 KH5B6prk28ejw3y5Ryfrz5Km9447Lb354jWKYqAmIXuoiCXbzseR9s1/hc3Pbu5madIw
 59WJV5JdKd1D4B2VAz5IGa35TZtVnrMQxgNLe8wD/s24o3Ejm29SxHAcxFG+Ca8yfayr
 h8FI+MQ4no59/kwrzdc6usou78p/m/y4ubf8AfkQjlVGHlk2s6QUG3oeuyzU/5xbvqNE
 7UJCTmQ2GQvzKNskROlUCWNiGtQyjcl4p1atnUflE1tNsKbjAVTJ2X+FzPOGqWR6xn5K
 Cktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HNZLvmQAqbtAqMEvJP1wVGbLyEu2FmrY5NiRBOEZCk0=;
 b=DvrdXcBSEpPYIFiZgURZEig76A625XtNfpHUjF7fK8qehFSUn+J7rh5J6wg5b0gySj
 RKzMqHDSMOfVm1sgT4eYkNrpmgHuORwg8m3PI65h1C87mgtPyD8JMckTQMtIKrbXZX5h
 Sbjgh/3CcLTmAsOrqulIubZkm+s16LNA6KJeYko3fg3e6piqDgcOc4U1y58FFxEi+8t+
 rkHrlvMWNAjTnreEqghtTx5yLxcC4qVM5zZKjtp7YOdm/Wex65jfG95M8U2eRb4ZUigO
 9FfuFohVp27OIQLXlxz+eMB5jYiUsXPksoVfPnfUIO9JpJqOy8mn6CveaqEbKdX2IpY5
 lLnw==
X-Gm-Message-State: AOAM532cPvNidK5W0/+0cP9/N7BTo1db7vYzCYqvnPMVtkH7TPrEzLiZ
 +Ba/Sp72pdXhwDeN48brJnU=
X-Google-Smtp-Source: ABdhPJwyAj4F5Fhuw4gMLL7mw2TuD871TGVzFmlexoKSH7il+8JqllUpDbrl6cfZ8d+zKs+UvJn9zw==
X-Received: by 2002:a63:3549:: with SMTP id c70mr1607262pga.361.1610022645408; 
 Thu, 07 Jan 2021 04:30:45 -0800 (PST)
Received: from localhost.localdomain ([49.207.216.201])
 by smtp.gmail.com with ESMTPSA id h12sm6356014pgk.70.2021.01.07.04.30.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 04:30:44 -0800 (PST)
From: Allen Pais <allen.lkml@gmail.com>
To: herbert@gondor.apana.org.au
Subject: [PATCH v2 09/19] crypto: img-hash: convert tasklets to use new
 tasklet_setup() API
Date: Thu,  7 Jan 2021 17:59:34 +0530
Message-Id: <20210107122944.16363-6-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107122944.16363-1-allen.lkml@gmail.com>
References: <20210107122944.16363-1-allen.lkml@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_073047_611869_F30BA6B4 
X-CRM114-Status: GOOD (  12.98  )
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
Cc: giovanni.cabiddu@intel.com, alexandre.belloni@bootlin.com,
 aymen.sghaier@nxp.com, heiko@sntech.de, qat-linux@intel.com,
 jamie@jamieiles.com, jesper.nilsson@axis.com,
 linux-samsung-soc@vger.kernel.org, horia.geanta@nxp.com,
 k.konieczny@samsung.com, schalla@marvell.com, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, ludovic.desroches@microchip.com,
 thomas.lendacky@amd.com, arno@natisbad.org, vz@mleia.com, gilad@benyossef.com,
 gcherian@marvell.com, linux-mediatek@lists.infradead.org,
 lars.persson@axis.com, matthias.bgg@gmail.com,
 Allen Pais <apais@linux.microsoft.com>, john.allen@amd.com,
 bbrezillon@kernel.org, nicolas.ferre@microchip.com,
 linux-crypto@vger.kernel.org, Romain Perier <romain.perier@gmail.com>,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Allen Pais <apais@linux.microsoft.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <apais@linux.microsoft.com>
---
 drivers/crypto/img-hash.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/crypto/img-hash.c b/drivers/crypto/img-hash.c
index e813115d5432..72b65cdff856 100644
--- a/drivers/crypto/img-hash.c
+++ b/drivers/crypto/img-hash.c
@@ -355,9 +355,9 @@ static int img_hash_dma_init(struct img_hash_dev *hdev)
 	return 0;
 }
 
-static void img_hash_dma_task(unsigned long d)
+static void img_hash_dma_task(struct tasklet_struct *t)
 {
-	struct img_hash_dev *hdev = (struct img_hash_dev *)d;
+	struct img_hash_dev *hdev = from_tasklet(hdev, t, dma_task);
 	struct img_hash_request_ctx *ctx = ahash_request_ctx(hdev->req);
 	u8 *addr;
 	size_t nbytes, bleft, wsend, len, tbc;
@@ -887,9 +887,9 @@ static int img_unregister_algs(struct img_hash_dev *hdev)
 	return 0;
 }
 
-static void img_hash_done_task(unsigned long data)
+static void img_hash_done_task(struct tasklet_struct *t)
 {
-	struct img_hash_dev *hdev = (struct img_hash_dev *)data;
+	struct img_hash_dev *hdev = from_tasklet(hdev, t, done_task);
 	int err = 0;
 
 	if (hdev->err == -EINVAL) {
@@ -954,8 +954,8 @@ static int img_hash_probe(struct platform_device *pdev)
 
 	INIT_LIST_HEAD(&hdev->list);
 
-	tasklet_init(&hdev->done_task, img_hash_done_task, (unsigned long)hdev);
-	tasklet_init(&hdev->dma_task, img_hash_dma_task, (unsigned long)hdev);
+	tasklet_setup(&hdev->done_task, img_hash_done_task);
+	tasklet_setup(&hdev->dma_task, img_hash_dma_task);
 
 	crypto_init_queue(&hdev->queue, IMG_HASH_QUEUE_LENGTH);
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
