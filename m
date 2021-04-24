Return-Path: <SRS0=NLp6=JV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04E3C433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 06:54:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 66C1361465
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 06:54:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 66C1361465
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pHC5B77uUvaYjk+/UxZzHy9Fvx3510fNV3Du5uNh5Ww=; b=i/tPINtmr3TS5b8sAjcJ4I6pE
	RUwFwdm88S3Lj/u/CEvxtTjI2g102rPnhSPkhR8nlXHZvywgzrZeCcHOjmgS+SD409uIMBKjiASty
	qlDU6ChS2ryUSYrD8dUPo4IRDj6oY817WqlKVVc9yWCVcA/D0Ei4VW2Fs4szWc/SoLlMGojM3hETW
	Kpw+Q61GQ7hKQ9owgd33e2DFPPRghxCYu0P5ONRd9FLju0+b93h0ajCqzLLOqVqYdA9fO6UpaUGbH
	GzCNYROnkkuZGT6dZTNXhSwHik3ATsisxdDETkTso1YkRCgQw8jYyiHqyfACfv88YE8w0CPbRfeHP
	AOpVrCWTA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laCBB-003BdL-7o; Sat, 24 Apr 2021 06:54:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laC2t-003B17-0j
 for linux-rockchip@desiato.infradead.org; Sat, 24 Apr 2021 06:46:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=0/gZ6ytCaOFgma36nbOlACLsSgOrDmL1f2lTR5WzENQ=; b=DqlArszrwpkm+k7FMjpHIrH0Ox
 ofN9Nr3azy+tnZrF4dVlzncsFnq191C4WHmLzYKOlUtqQUJf5ALTciofw7bqTUOUepGefYxfeAJJF
 FvZqTN6mGZwPGsZRKvb0L1EhNpmzr/VGv8OCjrblEqs0o/q8SbrlraMrywoeHQA0jFL0yjRPJPRD2
 8Sj9AQCmBQcxCAW4ZbDtOzZbgntpZFXu1+ArzNmwlMPDO5dSTqr69UPy7ZeGd9Be04SF3jb8Dvej5
 7NEieCTys7vIR0pCoppA6QV2aGIRuoq22eXNPVf1p4/LbGXRGmXVu2GK0TMMGBe5ypA65BTYswxtC
 p+vynAKQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laC2o-00EsJc-Rn
 for linux-rockchip@lists.infradead.org; Sat, 24 Apr 2021 06:45:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1EF5B61581;
 Sat, 24 Apr 2021 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619246733;
 bh=MOd3YN2iujeWfGs9BuWAFWWI6F9dHQCi3uqQZM46wqk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UXoy4Z/7ZCyLyH/yxUfWN+kckMgoPnt7Ekj4coXxi65oKnGaUXP+LXufCT5XAfgWM
 J+RS3GuV6AQBcjIIQi88AJA+TvGBBtQ8ml4uGBL+afchY2j13EpCg0BFrY+NnAx0WR
 cNEP9vIBOQaJPWyvn+ZIHTsKDqkLjNmcQWGumrZ0GYsT4Q8q507QNQCwK1G4+4PEps
 4kvnPFXHHi+Qc9uKzLoefBa9PRyWDAuDUXTQvwebJzOiQKPZQ5HRFGkg4nz06bnt/Q
 slFaqRKNuOW45p7E4NsFkw1j2/OH6Ae2sfU5xl0dQCHJDqkjT4X9+YoelVxX7iWk4p
 NRNDPdyHCuNFA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1laC2l-004JeL-87; Sat, 24 Apr 2021 08:45:31 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 13/78] staging: media: hantro_drv: use
 pm_runtime_resume_and_get()
Date: Sat, 24 Apr 2021 08:44:23 +0200
Message-Id: <0021158fb27035a56089683ee712fb3ed6f6032d.1619191723.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_234534_977416_E026601E 
X-CRM114-Status: GOOD (  10.20  )
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

Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
added pm_runtime_resume_and_get() in order to automatically handle
dev->power.usage_count decrement on errors.

Use the new API, in order to cleanup the error check logic.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 595e82a82728..3147dcbebeb9 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -155,7 +155,7 @@ static void device_run(void *priv)
 	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
 	if (ret)
 		goto err_cancel_job;
-	ret = pm_runtime_get_sync(ctx->dev->dev);
+	ret = pm_runtime_resume_and_get(ctx->dev->dev);
 	if (ret < 0)
 		goto err_cancel_job;
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
