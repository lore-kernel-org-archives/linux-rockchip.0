Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1D4C43460
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:32:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 46E8E613B0
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:32:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 46E8E613B0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uYhhwvdzAHsd1sxiMTRQPeg++8Pl9jgPFWj73GiLEqE=; b=KRZ8b3kPrrfWpcrZoZr2Y2Uzb
	HReLOPaYQFigxHPegrpeeKbo4hp9vo7tNaYzgDDWaYkb5HsRtQZYKnHiyIKCKx0eqnlB2+b81Kfh0
	+Ge41vjQ+JSXhr5gfQ5pMdAA3z+AsQioHDcFha+dTdIaKPe1aVDVPU9zSeA981OgrNrPKq39tMUeg
	Sx3e9IYdBcVeLgkavZXAxtFRtkJNg2zdvflPLsp/xSlBTZJFx+hmsAoZoyJMnpSCPBqu+2tan7yCq
	o96dlYBIi6sXujpulhVKhIffDHrWy5PBHB7Jyuvh2f7b0oc++ziaavvTQfvJkM1KHx/4Otmy/mJvA
	74lS7XE+g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbL0i-001OSC-0J; Tue, 27 Apr 2021 10:32:08 +0000
Received: from bombadil.infradead.org ([198.137.202.133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKwB-001Mzg-N6; Tue, 27 Apr 2021 10:27:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=wNlWAJheWo8r305lpFRr+Xmq5CAdeEepltQZlmQJw8g=; b=LmKSsFmgKPLSGjTk3e9F8/yKYe
 zdhAU89sK2pYFE7yw9GlX6XnB0MmJV+/OoaXoouKELu+2/EnoO7o4b1/iADXe73Fn+cHpbICRKhuq
 Nwhx6E8g4O1ht2gPlXaxasJokyGSyUSRjSRqhjG5w3cuVJB2nEz8JjwzPKYtSCNtGAfBaoB821Hc2
 VETTqJ2gzhQ3HaKt2aoZQp5ih6qyBAcefxSItZ0sIsYMFembGvsETyaLOdYMsutZjAWTvZe3Wnvdd
 mu2aJQOfRfIayTwWrAF2n07PG1OGUz0wVdD2OX6SeBbbyJg7LiJR4mSd11iVtUtFSjuFVr19I8Yfx
 aYarEs7Q==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKw6-00GdDj-Oo; Tue, 27 Apr 2021 10:27:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 87AC76141B;
 Tue, 27 Apr 2021 10:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619519236;
 bh=rChg/pXG2Qjbehywcb/+z5hE6+LFH66GvNnoCtLFEBo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QoTamJiO+JxWdt3o4Hs6vYrg2jgI81cjPn/kT0glZGbqmWBM9aOjPXJVl8cyWQmQy
 26cQBTSG214To1rzhZwxEd8DWaeNPXaYCPNgx9TjugtyzxzqP17ni7VfGq7JyR1YGt
 eluVYYOH8buCEmvbeDPmH+SnnxwSJWplGFoFQrxxCI9hutBi63CEyGn6RHjyNcmng8
 XOQDYhQy3IYrSTx5pqC/lwZGxHm+ZoMJ/+a3ms26yWuqp5hKZpmOQZhbIVa71JY/AP
 +H+DNnw5dL0SKM/yN62bnrs6zSaJHLl64PNMQR3QGkuJI1GUGG6sLkl/MVozaGldFl
 WaHNIK2jM2a8g==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKvz-000o2b-7s; Tue, 27 Apr 2021 12:27:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Helen Koike <helen.koike@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v3 70/79] media: rkisp1: use pm_runtime_resume_and_get()
Date: Tue, 27 Apr 2021 12:27:00 +0200
Message-Id: <ed910c61ae00f88fcd29d15282e1018c1d894b56.1619519080.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619519080.git.mchehab+huawei@kernel.org>
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_032722_843674_1A42E495 
X-CRM114-Status: GOOD (  10.55  )
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
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 5f6c9d1623e4..3730376897d9 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1003,9 +1003,8 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 	if (ret)
 		goto err_pipeline_stop;
 
-	ret = pm_runtime_get_sync(cap->rkisp1->dev);
+	ret = pm_runtime_resume_and_get(cap->rkisp1->dev);
 	if (ret < 0) {
-		pm_runtime_put_noidle(cap->rkisp1->dev);
 		dev_err(cap->rkisp1->dev, "power up failed %d\n", ret);
 		goto err_destroy_dummy;
 	}
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
