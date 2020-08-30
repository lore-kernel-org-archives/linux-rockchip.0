Return-Path: <SRS0=N1pG=CI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 800F5C433E2
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 09:52:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0E8BB207BB
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 09:52:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="w5I1uYes"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0E8BB207BB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=mails.tsinghua.edu.cn
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yonhujcBPIk6YxplkG7FBB3EnvczPIcnGj2YI4ffvE4=; b=w5I1uYesjFqgr5SBtdRAGgeaLI
	lHzrticYp2rQl+qfueGwF0WgXKBMgAukJ4w5C4ZgKLP2qNuWqJ8iEaUmblkZwGapLwz6tXCeNRNVt
	z7qczUG4cLxpJg+K1r4kNKSD5asjjlzRcCGdzTk+NV9gpOCorqe/VTMh4IW+6yo3LRCoGNRWD/6uq
	0U4yo3RHW1O1r/5DvSmP+QirNNnW80DSSJhcBfuiP7E2ZCzWMMwrvQtE6e8iky70UqM8sA0G4CqnY
	nuigOo2rxQ2LEdfjUY5yXb0JRuDX/xHgLt460rsSMp/QOka0MPY4fhAAptSFxJJImF7929yYS0Mgp
	p/QDf5fw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCK0C-0002oC-6m; Sun, 30 Aug 2020 09:51:56 +0000
Received: from zg8tmja5ljk3lje4mi4ymjia.icoremail.net ([209.97.182.222])
 by merlin.infradead.org with smtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCK04-0002nO-U8; Sun, 30 Aug 2020 09:51:50 +0000
Received: from oslab.tsinghua.edu.cn (unknown [166.111.139.154])
 by app-3 (Coremail) with SMTP id EQQGZQAHFSyLdktfA2XQAA--.26948S2;
 Sun, 30 Aug 2020 17:51:27 +0800 (CST)
From: Tuo Li <t-li20@mails.tsinghua.edu.cn>
To: lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, tiwai@suse.com,
 heiko@sntech.de, baijiaju1990@gmail.com
Subject: [PATCH] ALSA: rockchip: fix a possible divide-by-zero bug in
 rockchip_i2s_hw_params()
Date: Sun, 30 Aug 2020 17:51:06 +0800
Message-Id: <20200830095106.4412-1-t-li20@mails.tsinghua.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: EQQGZQAHFSyLdktfA2XQAA--.26948S2
X-Coremail-Antispam: 1UD129KBjvdXoWruFy5ur1kKFWkJr13Gw4fuFg_yoWDurbEqw
 47Xr95Xr18Xr13t3WDA3ykAr4qywnxuF1kCFWj9r1UJa4UJr4rKF1kJ34aka43WF9akr10
 gr1DXr1DAFyxAjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbf8FF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
 6r1S6rWUM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
 A2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Cr0_
 Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
 0DM2vYz4IE04k24VAvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
 64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8Jw
 Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAG
 YxC7M4IIrI8v6xkF7I0E8cxan2IY04v7MxkIecxEwVAFwVW8uwCF04k20xvY0x0EwIxGrw
 CFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE
 14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2
 IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxK
 x2IYs7xG6rW3Jr0E3s1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267
 AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUjAsqPUUUUU==
X-CM-SenderInfo: nwnoxj2q6ptxtovo32xlqjx3vdohv3gofq/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200830_055149_160989_8A4706D3 
X-CRM114-Status: GOOD (  10.18  )
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
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 Tuo Li <t-li20@mails.tsinghua.edu.cn>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The variable bclk_rate is checked in:
  if (bclk_rate && mclk_rate % bclk_rate)

This indicates that bclk_rate can be zero.
If so, a divide-by-zero bug will occur:
  div_bclk = mclk_rate / bclk_rate;

To fix this possible bug, the function returns -EINVAL when bclk_rate is
zero.

Signed-off-by: Tuo Li <t-li20@mails.tsinghua.edu.cn>
---
 sound/soc/rockchip/rockchip_i2s.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index d1438753edb4..dd0836c32639 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -279,7 +279,9 @@ static int rockchip_i2s_hw_params(struct snd_pcm_substream *substream,
 	if (i2s->is_master_mode) {
 		mclk_rate = clk_get_rate(i2s->mclk);
 		bclk_rate = 2 * 32 * params_rate(params);
-		if (bclk_rate && mclk_rate % bclk_rate)
+		if (bclk_rate == 0)
+			return -EINVAL;
+		if (mclk_rate % bclk_rate)
 			return -EINVAL;
 
 		div_bclk = mclk_rate / bclk_rate;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
