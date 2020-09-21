Return-Path: <SRS0=Rf1F=C6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FC82C46466
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2020 18:18:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C575121D91
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2020 18:18:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="gVAHxVgM";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jo7iHJOC"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C575121D91
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qjpg0rUqo1hA6wKGnGBwGz/BdcMiVDgafbrp1LG+SKE=; b=gVAHxVgMrIlbuILbEs8mz/DmhD
	voABCEaeK5liqNhHU6JmQVCXTQpLHiMoshPqIW42Uv33W3nl/wlVijmV3UnMqu4eNePKmpof5/j1g
	ZT5luu9+9wa8N031BK6a19O/N4INQJ1YrPVtb5pQVW5u0sAz+oyUnmVeMtGt2M6jGc+dy8+ZRbaL+
	lVsqELr41gKBxCCV2JzKbvN54MKpBjb+InQXFxx78AGSHUBd9hNeJpMADdotUl+CPnHXfEgOf0doZ
	oB5p61mHVFqP0mBIr8Ml3QKkw6A6EIFxr1seVrxghwLW1rwcxR3bdnA+h6wnTvFYAwgoSnPjPfCav
	dM+TwuvQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKQOW-0008W2-7H; Mon, 21 Sep 2020 18:18:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKQOU-0008US-2B
 for linux-rockchip@lists.infradead.org; Mon, 21 Sep 2020 18:18:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id w2so436575wmi.1
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2020 11:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A1MQxxkBThDiurj1v2jhCnceLVLB/fGM4hxv7q+SCYY=;
 b=Jo7iHJOCck6o7eEnd+5pX9prtparE7DUushGGX5zieZVkWYeruvuLW89Pl6KE41MOM
 kISKm7ZBw/mss7rigBz3FgEnn7Kqy1QUnOJGwY89uQzQiAFS1z+9kfeQheqf7xghjR9B
 NT69XADwIeDGX0rv23yLg7NnMx+BL3fB8TrYBJqXm5yVFgCZKEWkxjhW7wyXH3LIy1/p
 qhGDLG7Ql2QtJL6ga6+9DRhVkofGkLtarUMiHIfYGc+MTzHw6VEqK3Icq7U/Tp7gR3UP
 oxChnT8yniIqa8g+FpaKCDwV1qZzytN0NdluY/gSYqhgTpWDw3j8eCgU6j4WkZX2JBZs
 Mo+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A1MQxxkBThDiurj1v2jhCnceLVLB/fGM4hxv7q+SCYY=;
 b=H0DcsTgtpTUGRZXrU40IPRCB/E4llsh8RVnmq3eDz6MQFQAkYgGwfAYZlLER56aAiG
 eGr1DzED1ZFX7Zv0qxi4HurMTjFRb8gIf5+174s9CdWLR6JPbwIxfjwTdY+IBL49nJo8
 gKxp8T6+D93CwhJL+/F4qssg2LRwqFuIM4WTpQctqotzt9Qx5qLEHPcQKluVAG14YozS
 3jR4uYpZLVHq+aK8+mMm79w98D73LpPKfvrYd7WtlrC6wk5ur4Flr6y11+wfLQkBlu2t
 J+8IbtG5roPsQ47B9bnkxG3YxTv0LnZoUqzBXtkc51H1Po9fZSSfyq+rlB6Y7fId1Nlq
 9oZg==
X-Gm-Message-State: AOAM530ORWohwxQCwo2CoEn1tRgT9xJBg5p9zc4CnaseF6GuhcuFhrfv
 6EonS/JN7CDZkjBazzc+RJ4=
X-Google-Smtp-Source: ABdhPJzovgLUVrfshcXNKGJlgkuOJ9nLWi6qMfYi/YQ+Z/7uKl5Iv6EsKAxZiQe7OgRFA96Yf6ctWg==
X-Received: by 2002:a1c:9c8c:: with SMTP id f134mr601309wme.27.1600712307674; 
 Mon, 21 Sep 2020 11:18:27 -0700 (PDT)
Received: from localhost.localdomain ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id h16sm23523249wre.87.2020.09.21.11.18.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 11:18:26 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 0/3] drm: rockchip: hdmi: enable higher resolutions than FHD
Date: Mon, 21 Sep 2020 20:18:00 +0200
Message-Id: <20200921181803.1160-1-vicencb@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200921_141830_139732_6CD4944C 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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
Cc: Vicente Bergas <vicencb@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch series enable a QHD HDMI monitor to work at native resolution.
Tested on a Sapphire board with RK3399 connected to a Q27q-10 monitor at 2560x1440@60

Vicente Bergas (3):
  drm: rockchip: remove vop_crtc_mode_fixup to fix clock handling
  drm: rockchip: HDMI: allow any clock that is within the range
  drm: rockchip: HDMI: add higher pixel clock frequencies

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c |  8 +++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 45 ---------------------
 2 files changed, 7 insertions(+), 46 deletions(-)

-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
