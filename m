Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D36C2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 20:31:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C01A235FD
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 20:31:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="lVkylUmz";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="vVA6LLgG"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C01A235FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gz7vSY1j1JemrhGA5MmXoNSLfar46qxWcuuQn6etEIU=; b=lVkylUmzFCaL+FoiJag58w29X
	EK05seNxKJS+Enfp+B1GtyVieiPyPdBpyETdHIEMuDIzrjUZPj8Ko1odVtG3zNe0hwf8xhVCiHG/m
	Zml5alJX07qS+wIAEtL7dF+3GRbnx87lSLt2WX98uy++ufJTbwMf/LkROBqgTcdda2eOGk5ZMADH9
	ReaQ6KyRRnnUx6YNSTHfQip+zU8KdZYWSh/lGFz0U2nNTjO60kZTmypLx7gk2tykTWxAWh8mTC/4M
	ndwlCimUqvfHndXGp8Y5d72HU9HHjA4fzenpC33gfxL4uNZTXKmZyo/ofDXEjP10sudXWbu8ngKT2
	9+ySWtQ9Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKown-0003sp-0Z; Tue, 22 Sep 2020 20:31:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKowh-0003qW-0l
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 20:31:28 +0000
Received: by mail-wr1-x443.google.com with SMTP id s12so18517986wrw.11
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2020 13:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/ACUgjSRhezgf6ut/YNpIRBfmecqG58PBv3yXYOEimo=;
 b=vVA6LLgG8jwWQguQZR4gVTXEp160a50BMNzyRiQUhwEHIgxAB3qPPlwvXKmyIOLqe4
 EWMSpiGjRuH22WiVKvFPxKzQE7p86aevN4bPO+wsC8YTKf3Qkrtcpg1rrrghvnvCU5rC
 BntTw3iKjTUEZHEfM1+dN0dfr2lx6kHCh89CMV20OYneUhftADpnifhJlZtu3K/GyJ+o
 TSPDXnTKUJhRtACorada1t6yRQtVHeIBd9mvGGiYLXqvd3ooDC2XZcW03Dkpu9EGolM5
 iTFZ2sj8Pfn0QZ6u0BcsxLjcSnyY+BCINk/6Gk9S9wqH28+HL9VuBfUqmcQwTf+yrj92
 EN6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/ACUgjSRhezgf6ut/YNpIRBfmecqG58PBv3yXYOEimo=;
 b=idKhtYmxNh5CFfhaFk+WxhSv4cefVQidvFM14ox4JkI/inBAaFs4QqtEdlPn+TtNmk
 njoHwXwI//KiYQ6Gr8ka2UEK0SVlolNQUgD/LQ8qfrkYlHYy4wqSIIcTSzyY/9R9Ovgq
 54PybBX9+miVwUIaV8kgqPiAvTQPzs8mjtAOoz/zAw8WZ7Q9PtzYFRZ8fbyHVufVnS+t
 WuzKC/OPhplj7s7HRxck0yGWhBz30U54Razt9OiNMXyAO8ExQ+03Mfb1UELRHi/HJErH
 roi8XepqoLR+0ChxJpc/9+/MdYzr5isGRGviOt2mqEf7ioNXaHHwQU2zaQp7Ox+PgCMh
 FzFw==
X-Gm-Message-State: AOAM531M1s8jdnUGGkatoLqEigxMxHX11WlFnoMfpbkIlbP6xiNpaMfS
 xNKTnW7ykKPseeejcNZg81M=
X-Google-Smtp-Source: ABdhPJwMq1POLzNAD4zYPSd4peQ88XtIsnbU+Onjj8ugiHJj2wP7WLd6U6NDUDY46Zv9Szf68UPXRQ==
X-Received: by 2002:adf:f544:: with SMTP id j4mr7176078wrp.74.1600806686189;
 Tue, 22 Sep 2020 13:31:26 -0700 (PDT)
Received: from localhost.localdomain ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id r14sm27256849wrn.56.2020.09.22.13.31.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 13:31:25 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Doug Anderson <dianders@chromium.org>, crj <algea.cao@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 3/3] drm: rockchip: hdmi: add higher pixel clock frequencies
Date: Tue, 22 Sep 2020 22:31:07 +0200
Message-Id: <20200922203107.2932-4-vicencb@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200922203107.2932-1-vicencb@gmail.com>
References: <20200922203107.2932-1-vicencb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_163127_125736_B4B851E3 
X-CRM114-Status: GOOD (  12.94  )
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

In order to support video resolutions beyond FHD more bandwidth is needed.
The new entry values have been taken from u-boot:
https://gitlab.denx.de/u-boot/u-boot/-/blob/ba2a0cbb053951ed6d36161989d38da724696b4d/drivers/video/rockchip/rk_hdmi.c#L63

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
Tested-by: Vicente Bergas <vicencb@gmail.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 87a9198f7494..db4a946f92aa 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -148,6 +148,10 @@ static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
 			{ 0x214c, 0x0003},
 			{ 0x4064, 0x0003}
 		},
+	}, {
+		272000000, {
+			{ 0x0040, 0x0003},
+		},
 	}, {
 		~0UL, {
 			{ 0x00a0, 0x000a },
@@ -173,6 +177,8 @@ static const struct dw_hdmi_curr_ctrl rockchip_cur_ctr[] = {
 		146250000, { 0x0038, 0x0038, 0x0038 },
 	}, {
 		148500000, { 0x0000, 0x0038, 0x0038 },
+	}, {
+		272000000, { 0x0000,                },
 	}, {
 		~0UL,      { 0x0000, 0x0000, 0x0000},
 	}
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
