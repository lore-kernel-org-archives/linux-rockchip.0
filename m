Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C8F5C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:29:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 23A80611C1
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:29:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 23A80611C1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pPmT+Ll9kXIX7EunXRwTezaS5m0ecUFlRy2VwaoQH4o=; b=MTn6XTz7RwHIS9MdgDGwVo9mg
	8FoFK2FrI5URuWcnwKOPX+IjElhtUdm1QS+bALhvJIdXpGoCW4e/pYwK0aHlmF+NDTyXNaYNptgkg
	GRL5K1SJ1LfS+z4C68IvuMGHl6tgP8ItmYIL+MtQn/0C2Xk7l56qoUAyQeNE65XSt13eqI+6MSABB
	kgVuSelb3qUkpgiU4/ZaceID2tyW6+nVedvdT4PrMrckeBUVp3wwl+VAWINoEf/+UTbZltNHQJ7Tj
	z+gcXVlktoQuByKB4PSiCStDNPim+gYSrpBVUDd4m/ZjiilLhn5NrDGjHNrBGXJ/Go4rBIQOyjif+
	I3Fgc6LPQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbKyA-001NYj-RA; Tue, 27 Apr 2021 10:29:33 +0000
Received: from bombadil.infradead.org ([198.137.202.133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKw9-001Myz-92
 for linux-rockchip@desiato.infradead.org; Tue, 27 Apr 2021 10:27:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=u5PcMNolJ+Hbjx5TaiiRECAjrT7wB+0xPtci4EIZYbc=; b=f1/xI2pc2gm83EczkY6nfraD7F
 85SAqEYKhTspHKiOgGfqR4ocskOd/XlrOG37Mc+Jub34hDmGM32J9PJFIT5OQMlfG/Bx99hB89a41
 2Rgun84gLNjGfp+pbFbpDJTwXvMggDOf7XyT5XlzPc9WQmKYyg7dgFXH88xqH/pt6IFrop+hKjfBy
 zPhRvromkYDjq/OjFY9sABkMSIgfVQOK1b7Vq0XMHh51Sp181iIin2+q6hNCAGG1LZuOza0s/1/yB
 TxJkjmYvccQ/rT9WALRnlPoZP/vZzJ4DmH587GgbbMQyGoXwKuBDBWDpmdI4n84WxZ9DYBH+HB+lq
 0aU/fZlQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKw5-00GdBG-HO
 for linux-rockchip@lists.infradead.org; Tue, 27 Apr 2021 10:27:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4B585613F4;
 Tue, 27 Apr 2021 10:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619519236;
 bh=LvHrsFJn6JLbIexuKZaI+hIEIjqhrM13uG8Z/t+ytHI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gizOl2AQe/jXLKmc+7i83jA+O0Wo1bF6j4oi46pMEcTl7/BWz6lVm/+PTT8Sv0cpO
 tE5/VhfSYR4We5KtkO113SGvLMUzmduFSIHzuiuQBzef91tj88BXNlDkG6NUY4JBqB
 VL8b7iCr5xf/1C9QdifZSnkYbv6fiIqCCeuB4dYEmt9p+MbUHovpznskbX07qJ81UM
 25YLoBBo7WyY92slmjLh0f7EtDJwRU/OFoHvzqxUxfwwDWieX0AlZ73N/jq4mnSYzu
 yb4V0aKvZfD2iBqVblPOy29YITyz96H9PvTVjgXmwX7SgOe1liq56ppEuzbr4JskMI
 9vV/neCiQ/MIg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKvv-000o0B-VD; Tue, 27 Apr 2021 12:27:11 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v3 20/79] staging: media: rkvdec: fix pm_runtime_get_sync()
 usage count
Date: Tue, 27 Apr 2021 12:26:10 +0200
Message-Id: <cb588379521b61d3728888c2522fc052e1bb2c91.1619519080.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619519080.git.mchehab+huawei@kernel.org>
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_032721_626639_3BEE94AD 
X-CRM114-Status: GOOD (  10.61  )
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

The pm_runtime_get_sync() internally increments the
dev->power.usage_count without decrementing it, even on errors.
Replace it by the new pm_runtime_resume_and_get(), introduced by:
commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
in order to properly decrement the usage counter and avoid memory
leaks.

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index d821661d30f3..8c17615f3a7a 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -658,7 +658,7 @@ static void rkvdec_device_run(void *priv)
 	if (WARN_ON(!desc))
 		return;
 
-	ret = pm_runtime_get_sync(rkvdec->dev);
+	ret = pm_runtime_resume_and_get(rkvdec->dev);
 	if (ret < 0) {
 		rkvdec_job_finish_no_pm(ctx, VB2_BUF_STATE_ERROR);
 		return;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
