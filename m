Return-Path: <SRS0=NLp6=JV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 682A8C43461
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 06:59:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 278926054E
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 06:59:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 278926054E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uYhhwvdzAHsd1sxiMTRQPeg++8Pl9jgPFWj73GiLEqE=; b=bxMzEjwirI1SjyEI1UM80afW5
	+TfQNWw5PbFeSgVgBQ4EKmb3sX9Rv50rntjdkMLPlzbrNV4TZ5yC4iBqlbSPuiKrY0NwQAlEw4Upc
	azrDXpANdHFIzCqnyQIPzqLsOKTJKs4QqhOWlhhGz08JnkUnX+oM88njdnpTD7pBK/8aX0Wii8qnc
	LJmcwnm3klmZKWuYbPZ1OPCxy4OMpAb76hUocdNe8hibQvcJq4V4o8+b9aAUoRCSeZLPEJ7YHuE5W
	phbm0oOFUwZTxSDTsNlOrBHyEuE9UU11D4iagSHcHJ7gZtmOVeqvZCxRCpK3gxqqZOfpPIDV8eOKU
	k0emo8igA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laCGM-003CRh-0l; Sat, 24 Apr 2021 06:59:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laC48-003B19-7g; Sat, 24 Apr 2021 06:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=wNlWAJheWo8r305lpFRr+Xmq5CAdeEepltQZlmQJw8g=; b=NHUs6lrqUv4IsmBfjML1Hu5xuG
 Vqrt9qzsAGuAj19HxRB5Rlr3YhW4Yj/7w+wwJA43qok3yovwygr8tgi5UJZZqOmDNC/AV/qLHxhnT
 1PzV79IrWcaPDZ11JNTKEVi1PK1nY1sl7LWgQlFM8FxOxlxxHp1q92L+JRcfOhwi84OzHavq7XKhK
 f5Qt4YbPL48009g4FEc+Will6gJOOejSmbLirT/r6uAchYti50tbgQjHSoTXNy5hF08/HCJ2ITTxH
 A0zvKodOMjzzglsmFfUrkX21BrvOS3S7o9L0+IYbQY8hVaO+F4DH5v6iuulbM0ALCOITCvr4RMtxQ
 rEA4c1lg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laC2u-00EsNF-Vn; Sat, 24 Apr 2021 06:45:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D21C561940;
 Sat, 24 Apr 2021 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619246734;
 bh=rChg/pXG2Qjbehywcb/+z5hE6+LFH66GvNnoCtLFEBo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PYfBpCc0b7yu+PCNCaJYwzPgNpbFVSNy8eLEqsU/6U4xeQGj/iXnAMxEllUBEx/uN
 QRTXIpDwnwhOAPo0qTpRtaBJiNocQiF+AOLWYkm/3X4SYG0+5GN7VTt8ZnsRLp+JXL
 uYcpJEoH6bjiWN32auW9bGEup7RtOGFCU4LuIeMgz4NClFaWsy4nVOhi2kJT6ZcgfR
 FxPb9QJPe2qg6loO9J8bpK+zhjYABQ6chMCKkN3uYNsjrHnq4YSMRaaehTPsXasWvG
 igmEm3edSnpkHHt4mQ45U+PS1cy8frNQ2vGTRkuW76pxe2icUGVgZsGIJoX7F4tE2Y
 nog9MF1ncFQJg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1laC2m-004Jh9-WB; Sat, 24 Apr 2021 08:45:33 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Helen Koike <helen.koike@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 71/78] media: rkisp1-capture: use pm_runtime_resume_and_get()
Date: Sat, 24 Apr 2021 08:45:21 +0200
Message-Id: <563a000045b459596c013269311a738d2dddaa37.1619191723.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_234541_068347_C27C4811 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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
