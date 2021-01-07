Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31368C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 12:32:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C8CC623356
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 12:32:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C8CC623356
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5j+VEug8yoJ8ucBhcno8LDQxJXtH5RoJF5TxAh5n41Q=; b=qc13meXSU7eZnWLhTi/+sFx4B
	Nr3c4Z/QyK84Zy6PTGodZpCqpRyxKNFzL1Ag5ACW+UYlpmcMR0vZGzsEgQJljbYHvIZysQ0YZOY7Z
	26pVY46HKNd1Sp/evVzKmRDnBqZntz1TDICjPPqi+5e3rdlWgEl2cHC0QK9K2+X+po/HzSCmdKbT4
	tKrPDA0SFhU1kTZUnLJVDBBdxcfT0Hdfcw2NMbgMz1x0iik6NFCJgJfGBFZVgfSQa/q+/LkFLa8WM
	eDTniPAZw2/4+1WqE69BT47BVMNsFrrXcYpVmKeFUoIPb+CGzW816Q+6glZ5MCL7jKcgKRHYTe6Sh
	kw4Frp6BA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxUSc-0004xB-Hs; Thu, 07 Jan 2021 12:32:14 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxUSY-0004uJ-2r; Thu, 07 Jan 2021 12:32:11 +0000
Received: by mail-pg1-x533.google.com with SMTP id i5so4759801pgo.1;
 Thu, 07 Jan 2021 04:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FGU6XdrM5ip9qPogsEZz38Pcqw7Ofqtd00r2eJGcshk=;
 b=lYk3ZavHMJgM8Ipk8OB7Ok0ZGlnIVM/LIbC6sQ27jQ08uw235EsHYU3NCmQQh64oic
 LZapX+bK6uFsiDAhbqGoeYXVQj0mpyRmaSCFyzvFBZPJn8dpl6ox5aYut2p10n6K3RZf
 z83CbGkfr2xLxUXj+o4nXiEWQGyqqkkEEBxIsQweg4H2SHQuimMbEg4t0m8qNoXqB18Z
 FOYQfY4pZdrCQc5jrwNEe7+q0FUmtkhA5IeSfK2WeQWAHPiCZQ6X+8uDfdI2QMZcN2e4
 7Ae7rB46jMewbimo9JzWtX4Wc6fCsZm0gRoo/+K0pXvr48PuIasJpcErYSjrGpNmGv/o
 g00g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FGU6XdrM5ip9qPogsEZz38Pcqw7Ofqtd00r2eJGcshk=;
 b=eLSdxD7AYMvqOCfVVccFUNPQXljtpQ3zI5Y9mVLodGPEBC4jRrAIaWZbd0CXiZJxS5
 lVhE+48dZ2FklWiOsv42tBzlX/ScWJBMAoK3BMtq/oZm9LQL3XDyTZ/K0hGUlK4gHVkP
 wbkDAwe4sVM/rFPVX0n/+ViuMHV/GZT2paq5fLAzHxk3rEA1J0E95wBukoXgNiUUcevF
 ws15UhR4ESUNvy992Tk4gzv/sX/QyCsq/UGilflgeM346KPHOkAsJAMEDBAsFhu2xu/3
 UMihZf7h5pSs0M4bjodoLG5WDWgdvCh6bIxiGdXIzKkc8CfmgjtF0zFTYwGDEOJQ7+Mb
 QwbQ==
X-Gm-Message-State: AOAM530lgNRkWRuMIpXgOiNxnvoIy5Qra53btVIgiNALdiE9vhcD5Bz0
 SHu/ogDUZ7nOQ23YMiHut88=
X-Google-Smtp-Source: ABdhPJylju+uMXysoljSokY20FN0SxpzIZsNXLjSsMk0NvlXPGCGvW2caIXxbPVqNspfC8frkKm4nw==
X-Received: by 2002:a63:f044:: with SMTP id s4mr1585524pgj.355.1610022727745; 
 Thu, 07 Jan 2021 04:32:07 -0800 (PST)
Received: from localhost.localdomain ([49.207.216.201])
 by smtp.gmail.com with ESMTPSA id h12sm6356014pgk.70.2021.01.07.04.31.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 04:32:07 -0800 (PST)
From: Allen Pais <allen.lkml@gmail.com>
To: herbert@gondor.apana.org.au
Subject: [PATCH v2 18/19] crypto: talitos: convert tasklets to use new
 tasklet_setup() API
Date: Thu,  7 Jan 2021 17:59:43 +0530
Message-Id: <20210107122944.16363-15-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107122944.16363-1-allen.lkml@gmail.com>
References: <20210107122944.16363-1-allen.lkml@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_073210_231940_1E72D91E 
X-CRM114-Status: GOOD (  14.61  )
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
 drivers/crypto/talitos.c | 42 ++++++++++++++++++----------------------
 1 file changed, 19 insertions(+), 23 deletions(-)

diff --git a/drivers/crypto/talitos.c b/drivers/crypto/talitos.c
index 4fd85f31630a..be4f7dd810fd 100644
--- a/drivers/crypto/talitos.c
+++ b/drivers/crypto/talitos.c
@@ -403,10 +403,11 @@ static void flush_channel(struct device *dev, int ch, int error, int reset_ch)
  * process completed requests for channels that have done status
  */
 #define DEF_TALITOS1_DONE(name, ch_done_mask)				\
-static void talitos1_done_##name(unsigned long data)			\
+static void talitos1_done_##name(struct tasklet_struct *t)		\
 {									\
-	struct device *dev = (struct device *)data;			\
-	struct talitos_private *priv = dev_get_drvdata(dev);		\
+	struct talitos_private *priv = from_tasklet(priv, t,		\
+		done_task[0]);						\
+	struct device *dev = priv->dev;					\
 	unsigned long flags;						\
 									\
 	if (ch_done_mask & 0x10000000)					\
@@ -429,11 +430,12 @@ static void talitos1_done_##name(unsigned long data)			\
 DEF_TALITOS1_DONE(4ch, TALITOS1_ISR_4CHDONE)
 DEF_TALITOS1_DONE(ch0, TALITOS1_ISR_CH_0_DONE)
 
-#define DEF_TALITOS2_DONE(name, ch_done_mask)				\
-static void talitos2_done_##name(unsigned long data)			\
+#define DEF_TALITOS2_DONE(name, ch_done_mask, tasklet_idx)		\
+static void talitos2_done_##name(struct tasklet_struct *t)		\
 {									\
-	struct device *dev = (struct device *)data;			\
-	struct talitos_private *priv = dev_get_drvdata(dev);		\
+	struct talitos_private *priv = from_tasklet(priv, t,		\
+		done_task[tasklet_idx]);				\
+	struct device *dev = priv->dev;					\
 	unsigned long flags;						\
 									\
 	if (ch_done_mask & 1)						\
@@ -453,10 +455,10 @@ static void talitos2_done_##name(unsigned long data)			\
 	spin_unlock_irqrestore(&priv->reg_lock, flags);			\
 }
 
-DEF_TALITOS2_DONE(4ch, TALITOS2_ISR_4CHDONE)
-DEF_TALITOS2_DONE(ch0, TALITOS2_ISR_CH_0_DONE)
-DEF_TALITOS2_DONE(ch0_2, TALITOS2_ISR_CH_0_2_DONE)
-DEF_TALITOS2_DONE(ch1_3, TALITOS2_ISR_CH_1_3_DONE)
+DEF_TALITOS2_DONE(4ch, TALITOS2_ISR_4CHDONE, 0)
+DEF_TALITOS2_DONE(ch0, TALITOS2_ISR_CH_0_DONE, 0)
+DEF_TALITOS2_DONE(ch0_2, TALITOS2_ISR_CH_0_2_DONE, 0)
+DEF_TALITOS2_DONE(ch1_3, TALITOS2_ISR_CH_1_3_DONE, 1)
 
 /*
  * locate current (offending) descriptor
@@ -3386,23 +3388,17 @@ static int talitos_probe(struct platform_device *ofdev)
 
 	if (has_ftr_sec1(priv)) {
 		if (priv->num_channels == 1)
-			tasklet_init(&priv->done_task[0], talitos1_done_ch0,
-				     (unsigned long)dev);
+			tasklet_setup(&priv->done_task[0], talitos1_done_ch0);
 		else
-			tasklet_init(&priv->done_task[0], talitos1_done_4ch,
-				     (unsigned long)dev);
+			tasklet_setup(&priv->done_task[0], talitos1_done_4ch);
 	} else {
 		if (priv->irq[1]) {
-			tasklet_init(&priv->done_task[0], talitos2_done_ch0_2,
-				     (unsigned long)dev);
-			tasklet_init(&priv->done_task[1], talitos2_done_ch1_3,
-				     (unsigned long)dev);
+			tasklet_setup(&priv->done_task[0], talitos2_done_ch0_2);
+			tasklet_setup(&priv->done_task[1], talitos2_done_ch1_3);
 		} else if (priv->num_channels == 1) {
-			tasklet_init(&priv->done_task[0], talitos2_done_ch0,
-				     (unsigned long)dev);
+			tasklet_setup(&priv->done_task[0], talitos2_done_ch0);
 		} else {
-			tasklet_init(&priv->done_task[0], talitos2_done_4ch,
-				     (unsigned long)dev);
+			tasklet_setup(&priv->done_task[0], talitos2_done_4ch);
 		}
 	}
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
