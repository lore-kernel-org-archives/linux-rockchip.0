Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E908C43600
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 15:27:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0A5FB6142F
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 15:26:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0A5FB6142F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uYhhwvdzAHsd1sxiMTRQPeg++8Pl9jgPFWj73GiLEqE=; b=dnphI7OfctErYL6G7zrZEHSGB
	i0itxBWcC3A66z/dbSS3IpGUzoU01DgNHXziSr0e/cDeQBs6XaMh3OxcDsLRN0I3N/ZuMoGUllhvr
	PFHqWY+4hsYJqyvn65ZdSnYKbxJGSR0hb7CZSHLZzZBRk8SmTH5bJdzs86K4Dfvjxe1FUe8ScMdKO
	t+ZTb3R5zs31crAdVbvK8+t5yJGHZo1wOsdYSCizCOlug7fdMA8GCEqIqTpA5I6tso+m0mH1jRAw7
	daWpUAOWK156d5ei/8pw7YUYXPL7B7Yey9OdvjdUCfXOwIYVwbB2GBez+0v2BPSTGlBpHD0WREwSZ
	IEFCjyg1g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leftu-004XuJ-3f; Thu, 06 May 2021 15:26:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leftU-004Xo3-KF; Thu, 06 May 2021 15:26:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=wNlWAJheWo8r305lpFRr+Xmq5CAdeEepltQZlmQJw8g=; b=tsapPM2r9XqkCg3j3Ot/xwn2xe
 TmR0bMFXx5pv8YhpRp8Ouj3secuc04McbDxdJQk2xJm9rs5rNlzbQaUEQWpCtciZ5i+HtKfDzlThu
 7Ne6iNfUyULy9hkmcEKK0/1kzxlLVL/6aaF0YfFXz0PjMaR/0Tmb/B7fAzGVlscBtxPls/xGvR9ki
 PtrzpkbwSkVOgfowsnhUgcqKMc8uFKNcwOXslbbJafzRiiqq3LU8h7e5HoP7ZafKtsiE1m9S9/DAZ
 lAwPM4Ig/Ok8O+D7+llXHtUaomgyed/JVCt48NsFXfa+DXpKTfUk7Ax+gCvlX4zjGz2UqLzzD+wfa
 NrnpNj9Q==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leftQ-0068li-0o; Thu, 06 May 2021 15:26:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 888D16191F;
 Thu,  6 May 2021 15:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620314783;
 bh=rChg/pXG2Qjbehywcb/+z5hE6+LFH66GvNnoCtLFEBo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JXEy9i/N7ERG6aoKkMzb4M5TO/fIhlAerMHSRsd02jm3W8bz1QfYSBg6roEahS6sU
 oKBJSurRGxIOISna8YHYPh0WiaQIhO6EvbOZZSQyGdXRQqlC5Hnm4FgDAxn9Jwxh/b
 Z6bC3A85niYeQfH3mpYaYLz/53CukSkgBqEz2gHHHiHGf/pTS+6OiZsd8jbRx4c6wR
 5l/TQfFfbTJ71wxYl+iAs3uICx+LhHp2futFacCJaSWrCGpOlcoPWVPZUq0bxxdZ59
 Kzo+dH8p4BwynSTw8JS4X560xreu6dWaCKzlch2jP/cTjDiVmta87lEowHyUJlzfv7
 a3NYVYXsP+hug==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1left8-000SC7-6d; Thu, 06 May 2021 17:26:06 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Helen Koike <helen.koike@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v5 17/25] media: rkisp1: use pm_runtime_resume_and_get()
Date: Thu,  6 May 2021 17:25:55 +0200
Message-Id: <cd3a667a75a34288a72ba4da5952076a82620520.1620314616.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620314616.git.mchehab+huawei@kernel.org>
References: <cover.1620314616.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_082624_144323_0EA317BB 
X-CRM114-Status: GOOD (  10.30  )
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
