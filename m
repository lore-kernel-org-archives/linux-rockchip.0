Return-Path: <SRS0=3gvV=OK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76BB2C43217
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 20:02:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4306761252
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 20:02:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4306761252
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UGH6R/DuSvZ6Q99eu2n/c+sZMzdSnyP1J5oeVZ9CA4I=; b=Nk5vViXvWfouXO
	toJhJTEOqB+/D4Q1VOBjlKK71YPRiwKoRxDDKeC+9IotSTnPwsI+uV8MWHZxX/ACIJUaaEiRGw36O
	33otE6ZacIOh1LFUlpSpdgqDAJS88jyM0Pz2NKMIe6wzuRKdcZ+CRyr6ekRtzVPhbILse70t0b3aR
	/7+yP5KrugIR6djnHJWD8HcaoqKliuX1QROxsHuoZfrhhOHTNQ4dUntfk3ZVfj2YDVq5Xvzh3PhEb
	yl4wzknCzVZ9JW3o0FR7v3GCklIBZq9ohGTSar9GR04NIjjctNLx1IinmuG9DbY4nAnA8/EQjqP/W
	M0CaXHt4G3/M0cEs/ugA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSPUY-003055-VP; Mon, 20 Sep 2021 20:02:19 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSPUW-00302h-Lz
 for linux-rockchip@lists.infradead.org; Mon, 20 Sep 2021 20:02:17 +0000
Received: by mail-lf1-x12a.google.com with SMTP id u8so20987662lff.9
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Sep 2021 13:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DA2UKuLK2u92CFl87mNPANcMsuKDJqU2qIFoERzDd/w=;
 b=BhK92otjhD3xaxoPKxq8dGARgg4mm1Yl/hJdJw4FaYlMMMUDh8XYYkLIXLlRrUcvEa
 SpiIDnHHH2Ts8FQYlgNsK31m5lrpwXsD7w3YX+67a320Ssw9eVrDeE3yDFLOm2qsbiuc
 nOUcfuxp7d/0tJuU9ufuJTd4soHpkSLMMumM4rTCSfo3GixbMtiMqQ5qrjmRQLglj21Z
 rZNEu0yyPj3f1tmgHCaFD1BxhRfUz93JIe2BAwANsdzvZOrKd86sRxAzwK3Afqwu22Ql
 9as/7e5rXVAyoPUA97+wwxJzBDvZq0x+slm1de5IDNIHUDJ6H101EDmLTLenOdFcaV8j
 IElw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DA2UKuLK2u92CFl87mNPANcMsuKDJqU2qIFoERzDd/w=;
 b=4vbJcNerobuP33SfF8dGrWHzBPh3+Q38BTxQ5R3zC6aDA1xOXcT93ULPDKPqisheSj
 upU7i7hJ3vMauwo5Jv83cPZt8EBuR8zI7CKY/lDQBQuet+xf4ynUp6Dzr/JcayrfqBBZ
 4BoHYcoQOVLUSfmT77DudY11JazXlXz3FcbJd6GS1ygp08ULxL0Ue9vaS7LpHlreoOgU
 WCGzC5zpLLhegMjHjmG53Ens0Nmjh0Hg1i541900O0IJR6aNVmhYoF2UZzbH2nfkeuqk
 IQKPKB3r1wxLpuWXhpDTSjiEoWYXJTf7EkwqTtUH5bHimiUHFjShIG4Va2iBKpXD5369
 4uDQ==
X-Gm-Message-State: AOAM530ldGkSXR36IVom6nfkRjBkwvO7dupC+7yYo2hyFrgUuWjtmmYz
 Lnal4jWbY8YkCT1oKmgLAgY=
X-Google-Smtp-Source: ABdhPJzzUtG5jeCmlfMAoFe1F0K0Lo3jMvKyIPC3Q9gD9Q2yW5gij6hetl6DT3481fOrP1F4wLtLSw==
X-Received: by 2002:a2e:5442:: with SMTP id y2mr22916242ljd.436.1632168135294; 
 Mon, 20 Sep 2021 13:02:15 -0700 (PDT)
Received: from localhost.localdomain (h-98-128-228-193.NA.cust.bahnhof.se.
 [98.128.228.193])
 by smtp.gmail.com with ESMTPSA id u3sm1350862lft.149.2021.09.20.13.02.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Sep 2021 13:02:14 -0700 (PDT)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>
Subject: [PATCH] media: hantro: Constify static struct v4l2_m2m_ops
Date: Mon, 20 Sep 2021 22:02:10 +0200
Message-Id: <20210920200210.18935-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_130216_777278_5E890FA3 
X-CRM114-Status: GOOD (  12.56  )
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

The only usage of vpu_m2m_ops is to pass its address to v4l2_m2m_init()
which has a pointer to const struct v4l2_m2m_ops as argument. Make it
const to allow the compiler to put it in read-only memory.

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
 drivers/staging/media/hantro/hantro_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index f23fc14b3562..fb82b9297a2b 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -179,7 +179,7 @@ static void device_run(void *priv)
 	hantro_job_finish_no_pm(ctx->dev, ctx, VB2_BUF_STATE_ERROR);
 }
 
-static struct v4l2_m2m_ops vpu_m2m_ops = {
+static const struct v4l2_m2m_ops vpu_m2m_ops = {
 	.device_run = device_run,
 };
 
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
