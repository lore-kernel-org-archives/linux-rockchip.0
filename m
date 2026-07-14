Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C0F5C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 20:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xT5MlukvQyy6F1NmwqC5TbuxyPM+JB/CJ4pcC/H0158=; b=arn3gcDtXMwhBD
	QSFUxUd4kGcYrSDK3jEmLKltA4XDy2lWw/G0TYn7V69w0SSiWS6alErcXMmX48h6M6Xvpz68qph1L
	sY1UwB2/34xzcovZuOQ18RKOaFUJo4T9qbpWGNQUXHgft2OGHRYVucyH2LMK2OX//DaOfDgLoqd3J
	4YVErCtp0Gj+1amsWdhTkdOXHk+HFNKgGugkq1XWfgIHqPkA9mCM2BT0+qTjoT1RmSb3f3CuRVuDQ
	35oH692+mKPhZLcA+HJaocoUXbshhhVkIJ4faI7a1elQRb75gDbCE1Cn9snX3lPL//epPg4DxCFhy
	8U/hHJva89pJrnqTiboA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjkq-0000000DESr-1icw;
	Tue, 14 Jul 2026 20:29:24 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjkn-0000000DES3-49t1
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 20:29:23 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-493b7cd27c6so3439555e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 13:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784060960; x=1784665760; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=S9VYavqel088B9xNr5QJlq+pbjgeAsubCPGEUg3TC48=;
        b=ojWUetyczoocLoQPC8HoERlFbYRC/7xcGNmkia5c5EWNVhRMR4K7MeEi7YBx8fULJF
         0j6UyOLD7lt/WoL+ZpdJfFQkTBq1V8ygpJZdoDVxvrLrWz/A8TYQqOd81h7GVQC0mjVS
         FfVESb70HyR7IgQQSR2ypPlPuvvx4/nI/g7tKDa+973G6hg8L9mENiHw+IKO2QFLAp37
         uxythrWhNgIsLZ2DE+eTpC9g0VX/nWx7D5jYZqUUOVR2goAU4ivIhtCYlAO8HBpIBJ92
         qHX6v1gfGV2Jvq19Gc8yJ6E7LUNO9/WJO5WTPV/xQVzm+K5SvYfYCT2p5sVNnSGyFy03
         CjYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784060960; x=1784665760;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=S9VYavqel088B9xNr5QJlq+pbjgeAsubCPGEUg3TC48=;
        b=ZqroCAKVbjWUixm00D36s//oxSzMLoapNpsmS81JO6LrjUhR+YGFsELD/gDEz3Gt2B
         bbFOxQYgm4qGqy2X8iBK6TvSfsASQW9drC0vpZkPApb1YAR0Ot8wDCoa6h4GW3N0F9uu
         IARwN5/cNfp1OhG1v2QH8s9g1/Rf3SmSJvwUf6mEZKCB7zptHGfWXAYpjlGvza0TtNtL
         qCBwhcYKomiXONsCsVe7yHfQEmxQOOGceir3M0NMGT9a6hzZ7B/M7Z3dpPpezt5A4+Qk
         RVVSuwzg5W9dFIT3UOQzxqDCRmQj4UlvNXLWRQv36WOdrZ3h/Y7Ixz2Zew5ts2yY1PpH
         P0tw==
X-Forwarded-Encrypted: i=1; AHgh+Rp7BMk76h8MMe8UHiFKjeCdo3udQxSh0gYAEJlGgxqRxHtUOoa3paBwiZQaW/Htklu5P9QIvQwnuONGw+LyVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxcXdiEJS/sL7uZyd77ErMa71r89kP7NRy4U4x1wz1aZQKIK80O
	FrIG5D9xve78zhubf0JN7PlyRUKszmCyRYhjelrF5c//SWUwIl0UI5id
X-Gm-Gg: AfdE7cmJIoF4ijEEIJAYq0oI672Mc0O1VeSN4sYVOneZIUjwI9BKHj0AhdX4k+zKmsJ
	1Y5vtB5Og2CtDdNsxyN2o2GgRAVc4sN+XnBeKVbtM6PxTignRC8AvLsxsrgH8ZjQhFpJXEbrVfv
	iYUlT+N7uRm4txuEttLYyr+M2EHZ/SZ5oZ7pg3FbIe/86mmh5nB91Ok3zl2i64sAukuCZaByFfg
	kJLoTF4jrLp3SzK4Na3Ur97qCXp4I3zTdUqinKYoT0jWu2qOV+YCcX5YIR8voUh/lnv4reWGJiV
	Jj1au9lLtQ4agp6ANREw+rWCh5zZJG+TAqA2cUMuXR7ihjXGLzGCdueY1lRP11d3TRhkgs9DyCx
	G9ZNZqHQyevaodtcnZSNF/BAZd4Ae4HafmEhod9PJnSBOz5f6q2OjCgn7O+GMvELwN1nYM2sk12
	qpzK+mfYYsQKVLmm9fjl4Vrghpe1KPzfWk6Zcv6LyMjPtLkZTEHykMhG316mdSJX424t/XugpTq
	eCMTzNtdpxxDqjehYNbjryiddXLqhTw
X-Received: by 2002:a05:600c:c055:b0:490:b2f9:d9a4 with SMTP id 5b1f17b1804b1-493f87dbb37mr64625065e9.1.1784060959738;
        Tue, 14 Jul 2026 13:29:19 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B9381005FD9FCFE1353AFE2.dsl.pool.telekom.hu. [2001:4c4e:1b93:8100:5fd9:fcfe:1353:afe2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4950a32c65asm98332125e9.14.2026.07.14.13.29.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 13:29:19 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] drm/rockchip: dw_hdmi_qp: attach the HDMI Colorspace connector property
Date: Tue, 14 Jul 2026 22:28:50 +0200
Message-ID: <20260714202850.40999-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_132922_039220_61A1E666 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
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
Cc: Igor Paunovic <royalnet026@gmail.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The HDMI connector framework already consumes conn_state->colorspace
when generating the AVI infoframe (drm_hdmi_avi_infoframe_colorimetry()
in drm_hdmi_state_helper.c), and drmm_connector_hdmi_init() attaches
HDR_OUTPUT_METADATA and max bpc for this connector. The Colorspace
property itself, however, is never created, so userspace has no way to
request BT.2020 colorimetry and wide-gamut/HDR output stays effectively
unavailable on RK3588 even though the rest of the plumbing is in place.

Compositors gate HDR on this: KWin (Plasma 6.x) requires the Colorspace
property alongside HDR_OUTPUT_METADATA and max bpc before it reports an
output as HDR/wide-gamut capable, so the HDR toggle never appears.

Create and attach the standard HDMI colorspace property right after the
bridge connector is initialised. Passing 0 selects the full HDMI
colorspace set defined by the DRM core.

Tested on an Orange Pi 5 Plus (RK3588) with Plasma 6.6 on the Collabora
rockchip-v7.0 tree, which carries the same gap: with the property
attached, kscreen-doctor reports both HDMI outputs as HDR and
wide-color-gamut capable, KWin exposes the HDR toggle, the property
switches to BT2020_RGB at 10 bpc when enabled (verified with modetest),
and browsers report an HDR display so streaming services serve native
smpte2084/bt2020 content.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -603,6 +603,20 @@
 		return dev_err_probe(hdmi->dev, PTR_ERR(connector),
 				     "Failed to init bridge connector\n");
 
+	/*
+	 * Attach the HDMI Colorspace property. The HDMI connector framework
+	 * already consumes conn_state->colorspace for the AVI infoframe
+	 * (drm_hdmi_avi_infoframe_colorimetry()), and HDR_OUTPUT_METADATA and
+	 * max bpc are attached by drmm_connector_hdmi_init(), but without the
+	 * Colorspace property userspace cannot request BT.2020 signalling,
+	 * which keeps wide-gamut/HDR output unavailable. Passing 0 selects
+	 * the full HDMI colorspace set defined by the core.
+	 */
+	ret = drm_mode_create_hdmi_colorspace_property(connector, 0);
+	if (ret)
+		return ret;
+	drm_connector_attach_colorspace_property(connector);
+
 	return 0;
 }
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
