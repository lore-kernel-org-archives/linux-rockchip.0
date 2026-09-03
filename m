Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7B01C624DB
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 11:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7WDO+M4YPHLKCL7JiSPY1dz8QepbbRHqAgK7Gd5iZEQ=; b=q7oB0/PVRAeUiS
	1bfdTlewPHsEh8Kqjt5wg2o13ZP59VHdUicrTrSsiIXO+9vO7gxrgL6M60uG5MzvI/2/idUhrV6+o
	T8DFJcW78HlvXtqP0h+x/TVGCynR7OmKHpHGYC1LWYW7AukNODFXkfQrafGItZFS80Nth+xFmXR/A
	Ly43ZoU0Uc4H4UsC0Fd7m4zsy+DbIHzH7SFhJBYaO3DzsGsRfAmsf5dV7NaXfc3YwDdv4oWdKgB2p
	pYl/j+SDi5tY9t+ZEh1bib4ZhoPZSe444QZTx7CH/51iiV6IegRxpo7BbrBk5Q66skXYEvX05+THf
	VrGfddOF1feqlAEGsy1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x25bq-0000000HCe3-46wg;
	Thu, 03 Sep 2026 11:27:58 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x25bo-0000000HCcz-3QBB
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 11:27:57 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-84e04df8c46so3186656b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 03 Sep 2026 04:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788434876; x=1789039676; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=LelVyfkIJElVaV96Bx2ole6PtnzRp3ZrnXJtU0M/fEY=;
        b=KrhjlmM9cCd1hijDO7gACAD+NSPU4w6artpPj17N0Hi+xITZcGqbE4UhEzj1bRURi0
         U1qcPouLmQ5zXp+KHQzcya2PWVBAkVvH49qQrd1D8YQgGwfNqmSNp7hiEWRhyyJg9nFp
         pTG3cF79VHa/nu6K8oyhJPOrYDqgwOHzScEMZi2gecs90tZYQmlY0YfMrCYz9fB6aZfW
         vsZP/vsQsBNj/rOyGEZgmQLRccACQ0qdh2g+BPcFRQx+lWMwm1HSQ6B/LJlehzEB7uGX
         ldGCiTMH86uIK6rQ/zK1Q1Ztbl5ZUp+nGjiujU7AczmTAclpZ4AeKPvaV9Q4JCUEVkLm
         gotA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788434876; x=1789039676;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LelVyfkIJElVaV96Bx2ole6PtnzRp3ZrnXJtU0M/fEY=;
        b=L3exnUfMSLl/iJ3Cx7HnT0uWRXEV0l/B/5tMHgfyGjx17KzvDra3r8WpXUGcTZ1etD
         Prjkakb6zggY+onrFdPt1uT3DW9nBzCYp8D49TKS57nhcWv6k+102Ca3EkH3UocBcGst
         ReSHcGatfnzpQnuYtuLhYtvtcrRgFVYPSNklYhXFw7OhLqUCycEVANnhMgy2u6+YhvJ4
         DNChXvWQXt2jNbjmfCSdmZA8VT+dpxRRPZC67Bk7Zb4Wa+a6YIAt5yVDfU2dTaB9cf+y
         sD6wKNCT0wBfPQSdeH156YKMfix3fQROGZGItkaVOsdPL/6srDFV+F18cFomjDzLyJCE
         WzVA==
X-Forwarded-Encrypted: i=1; AKwUvBw+JCFjEKe9Ejbi6QcHdFKLy1c5TKEmx+OJT6vGZhbvRfDhR08niyUqhCLc51TKee0FXKTtk2jjy1oExcRCMA==@lists.infradead.org
X-Gm-Message-State: AFuF++l6MCKfqfGP1yxkdgpy01GmfO8z3+Krsfw10DVGebBXC60Q47Up
	ozz7KGbYeagvjoGfh7Uxt/GO6zz6IYfQVz8MtsLrti+q3u0CuxFj6pFv
X-Gm-Gg: AYBFou1nOCRADLaT0jg7n/H4kcjSyW0xvdn40+oXHctf0L37ILG7CP/W/bKptPkH/L/
	gLTrfpxI9K2A/H12RuPpUMxGifc2P26ZTaKuxd989dTnLpGGbSLASYk3ALRUYciti5gzm2A7jT7
	zKYodCXz6MekVkpb7yAYXBRFNMnH4lQ1AO74XgrO5OztcEB9ItOk1IugtZlfiWWwuCJuPqrC8N+
	pjdz2vifSXiTe/GO19TuW+GkW3t9NAp59379kRc/+qDU5R5iQYz0HRfx9svWjkSY4pDpDEBUZPw
	FNKfe86ezX667SFKSax70L4tALc6wOu1kDgAlMFQ9gsTXYxur+ol1Kd7m58LwSXhEVbQNGynmrN
	EUR8g6DTJ4T0Xf0lRiM96/bU4wTK5YVmP1PkBKupgfkYUtn1bqyLuO/2T4/VfuvpVfMYYlMyUIR
	2xRa7ZPqG75xVLzj++hDLOAG5EMqyjbVImYe2Vkc5bgp/qFpZGXYLfBicsUYNmMO6O8Cih1Kxu2
	89igssBnIIB7FLID6cHQhAYMSiW90l4BuwmltH40xiefS6c3PwNrozXyHygtAesIx8QIGg49pqK
	3sJ6ORlc6DtR0Qw=
X-Received: by 2002:a05:6a21:339f:b0:3b3:216b:2743 with SMTP id adf61e73a8af0-3d9afa068f5mr18626130637.4.1788434875933;
        Thu, 03 Sep 2026 04:27:55 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc43d467134sm856084a12.30.2026.09.03.04.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 04:27:55 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>,
	linux-sound@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 1/2] ASoC: rockchip: rockchip_sai: Handle runtime PM resume failures in set_fmt
Date: Thu,  3 Sep 2026 18:27:38 +0700
Message-ID: <20260903112739.373621-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_042756_848243_D63938F2 
X-CRM114-Status: GOOD (  11.54  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

From: bui duc phuc <phucduc.bui@gmail.com>

rockchip_sai_set_fmt() calls pm_runtime_get_sync() before accessing
hardware registers, but ignores its return value.
If the runtime resume fails, the function continues to perform register
accesses while the device state is undefined.
Replace pm_runtime_get_sync() with pm_runtime_resume_and_get() and
return early on failure to avoid unpowered register accesses.

Fixes: cc78d1eaabad ("ASoC: rockchip: add Serial Audio Interface (SAI) driver")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_sai.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_sai.c b/sound/soc/rockchip/rockchip_sai.c
index 30b5e71d0937..264a99e618a5 100644
--- a/sound/soc/rockchip/rockchip_sai.c
+++ b/sound/soc/rockchip/rockchip_sai.c
@@ -487,7 +487,9 @@ static int rockchip_sai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 	unsigned long flags;
 	int ret = 0;
 
-	pm_runtime_get_sync(dai->dev);
+	ret = pm_runtime_resume_and_get(dai->dev);
+	if (ret)
+		return ret;
 
 	mask = SAI_CKR_MSS_MASK;
 	switch (fmt & SND_SOC_DAIFMT_CLOCK_PROVIDER_MASK) {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
