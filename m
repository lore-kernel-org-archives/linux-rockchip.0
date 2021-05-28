Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3225DC2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:18:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E307361183
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:18:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E307361183
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HoGQkMEyARNUzUyCe+Ez/dcc7X/pNmF+68A8suQvk0o=; b=y4pvpdaINUHgLg
	gLo6gjOfZMH/OnW3Pg5RrxkBGbViLZBDTmhNv6GJfZ4eoQa42g29ebpIp1fgIRllSobb7rUeg1r6J
	zxf1/mlORso4BTQTnApLDGt3Q2MvSvToSlBpwiyj3phvQ02/PRpt6hSQghtZqgdFY8K8fPo3kPbqE
	20l47rSH2d2Bsy1/Svl2ZsJeshQa49AVTAlBj8/8eAjnYRWMsm1DZRN4wQog2rY5pRgmlu04GDgLf
	wLk6pmNc8UkhEV2bWOwV52OESZon6+SW05zKIWHz6vodf0MA5Mu8ZdtFJe54MIiWgEaqy+k8I2g93
	rJJBZnu22A6FgPdQ65kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmcNe-00FiHB-UA; Fri, 28 May 2021 13:18:26 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmcBo-00FdCx-PQ; Fri, 28 May 2021 13:06:17 +0000
Received: by mail-ed1-x52c.google.com with SMTP id j10so4760492edw.8;
 Fri, 28 May 2021 06:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rNFtWXNjGOhAnzhZIEB5pnyB38+rxkkPxxFke3J42dU=;
 b=Cp3x0F3HzKzYTPdjhti0qWsurFeZhEYI49cQWIWnZ3c7rexuYRJ4OYj/Y/mEjcYlxR
 yjaFAh2o8JR+p/Cca1aceicCfVU+q7IHag8HwBFzKW7y1WaOXpJu7g81ZwiuD+7awXml
 yZHAZq29gLBl8X2TtlZ7AauzoDl9DRTRkSfAQsHeJwcSyLuj0nOKG9gmEe0lI9pX3NjF
 bbvwaW1pSPJktRmFi1zeVAjTPxkBuU2dn+2furdeHDvaQSf9gXTUN3G2tfjjlVU5V2Zn
 V0b9JAitSJH6DuxUORNqqs4xBxI1HktvQfvKv/9+Coe4CyyTFliegMaaIw81qxY9uUA0
 sC3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rNFtWXNjGOhAnzhZIEB5pnyB38+rxkkPxxFke3J42dU=;
 b=VO3ZY0pTEaA4qvz9fIhbry0560Oq7LhdOHF7T95sGUCgWvJwzpUe4eOt8Y3Yk20nI6
 Ya5eZdAi2p2fTcl5b8xcGqIiIcufAe9zGlCV/3/O9NSP5LCMQaR8/8ft6s3pTlboOTTG
 52JqSx8SogaNlJU6pZ5I9EwzIsfeGxgoLc5sJBDCy2OSHorEQyYJhEk23Z84pvXYu0B4
 7WdKatKHs8pVy3Rx2DptNYVC1a5WIknWvZCYOabjn9zL8bL8uGj0PwUWJb/nKzSywqR+
 AnTsx44tjDpQV+JDEBSOcSfb3eLhuz4i3MOMulEJ9bLxuYhf4hfB5jIkjSaH+yiE9VM0
 S9KQ==
X-Gm-Message-State: AOAM531HBqrNgHDcqmCNa98r2eKtNnGviHEkpWfZ8Me1TbdSh4vdJTyA
 K5ZsHuBQ6NL+oYv/Dx9nKA==
X-Google-Smtp-Source: ABdhPJxrk2zpxNArotZZCA4evEMOVPnLf5LCF7KZ8yY4PiSqXrjB0JYSxy1zVM4W6d0H6YcovlQiAg==
X-Received: by 2002:aa7:d61a:: with SMTP id c26mr9966117edr.351.1622207170190; 
 Fri, 28 May 2021 06:06:10 -0700 (PDT)
Received: from localhost.localdomain (ip4d17b4b8.dynamic.kabel-deutschland.de.
 [77.23.180.184])
 by smtp.googlemail.com with ESMTPSA id u21sm2322778ejg.50.2021.05.28.06.06.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 May 2021 06:06:09 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 0/5] drm: rockchip: various ports for older VOPs
Date: Fri, 28 May 2021 15:05:49 +0200
Message-Id: <20210528130554.72191-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_060612_880761_6CCC4E08 
X-CRM114-Status: GOOD (  13.56  )
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

Hi list,

this is v3 of a series I posted almost 1 year ago. I considered now all
feedback I got at that time.
It mainly ports existining functionality to older SoCs - most importantly
enables alpha blending for RK3036, RK3066, RK3126 and RK3188

Note some of the patches are required to let VOP correctly process the
data that comes from the video decoder - I recently posted a series that
adds support for those older SoCs at [1].

[1] https://lore.kernel.org/linux-media/20210525152225.154302-1-knaerzche@gmail.com/

Regards,
Alex

Changes in v2:
 - drop not yet upstreamed dsp_data_swap from RK3188 regs
 - rephrase most commit messages

Changes in v3:
 - add patch for RK3066
 - drop patch that converts overlay windows from
   DRM_PLANE_TYPE_CURSOR to DRM_PLANE_TYPE_OVERLAY

Alex Bee (5):
  drm: rockchip: add scaling for RK3036 win1
  drm: rockchip: add missing registers for RK3188
  drm: rockchip: add missing registers for RK3066
  drm: rockchip: add alpha support for RK3036, RK3066, RK3126 and RK3188
  drm: rockchip: set alpha_en to 0 if it is not used

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c |  1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 52 +++++++++++++++++----
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h |  1 +
 3 files changed, 44 insertions(+), 10 deletions(-)


base-commit: 5d765451c2409e63563fa6a3e8005bd03ab9e82f
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
