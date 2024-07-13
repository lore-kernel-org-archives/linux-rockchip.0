Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8334C3DA45
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jul 2024 20:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NGNR2N81rI1VenQDKolI4FOcE8T9rMR5VJ5VL5mSY68=; b=A0mTW3/l+JLd/P
	aG7yMSoUraowiTErD9+u9bXzsEAivKvyGZ+pqKCk2oqt2I4ZQnbjvxBuN+3KUkoUjbTsJA3ffUCW6
	1rf6eBDOnv3fS8dxoldoZza2v7P+BwIG3pjbLkrMtbZgY58uVttemqXK3Z8arEsPoxotRlSsVPMJx
	ucgx28jggsXz11EnhfkB6wgLfz9IgvqL9pxeqn+evcOUcXl0dTDhy9+c9D7XIa/9frCBMLRzwshpY
	BlyoZidQakSD967brvXXXdnjCBo4NZ8/Zn+TvkVYvgJmRNe8OJkpdFBriHkZ5Ie46iDOtJS+7nlCr
	njt99kZ1sz7xrY/9mPZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSjjI-00000003AgT-0iOP;
	Sat, 13 Jul 2024 20:52:28 +0000
Received: from smtp-71.smtpout.orange.fr ([80.12.242.71] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSjjD-00000003AfN-3rH1;
	Sat, 13 Jul 2024 20:52:26 +0000
Received: from fedora.home ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id Sjj0sHlkifWRDSjj0skR4R; Sat, 13 Jul 2024 22:52:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1720903935;
	bh=36Mcqh3lrdshkqWXw2v9j64RRGuxk5wAxlhTZZIAi7E=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=IyjD/S2oU8pPRrxH+yjP+hhUglsP21Gcv+wbpA++OzN7k/RsMVxtamHkyrwJ4JP5y
	 KyvF8Kx0851tEa71BvgfSYCGrxjq2yOJ9lRGocURvqQdpr6LpI3ZWyZaEc3nm7c7WX
	 7QvjgBbAnUhf4fVlGDXaNdPAHL4GQrz9Zd+XcifWQFnkBRtVPzOdXadI/XnfcitgZj
	 M4JIytkd+NMG8LobPW2w++poSRHJB5nY4QC1mPuYR2zoRVX+EKQN01EFVnG+PXOzEn
	 2eGd9qwtF3yQG0AzEpnP+rV/n5nbwK8jfGTyFHN43kxXOzrzYAa5+KXfRWyZ7DrvO5
	 t6GJoTVJ/48gQ==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 13 Jul 2024 22:52:15 +0200
X-ME-IP: 90.11.132.44
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] drm/rockchip: Constify struct drm_encoder_helper_funcs
Date: Sat, 13 Jul 2024 22:52:05 +0200
Message-ID: <128f9941aab3b1367eb7abca4ac26e2e5dd6ad21.1720903899.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240713_135224_396474_989EAD05 
X-CRM114-Status: UNSURE (   9.71  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

'struct drm_encoder_helper_funcs' is not modified in these drivers.

Constifying this structure moves some data to a read-only section, so
increase overall security.

On a x86_64, with allmodconfig:
Before:
======
   text	   data	    bss	    dec	    hex	filename
   7458	    552	      0	   8010	   1f4a	drivers/gpu/drm/rockchip/analogix_dp-rockchip.o

After:
=====
   text	   data	    bss	    dec	    hex	filename
   7578	    424	      0	   8002	   1f42	drivers/gpu/drm/rockchip/analogix_dp-rockchip.o

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Compile tested-only.
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 +-
 drivers/gpu/drm/rockchip/inno_hdmi.c            | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 362c7951ca4a..d3341edfe4f4 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -262,7 +262,7 @@ rockchip_dp_drm_encoder_atomic_check(struct drm_encoder *encoder,
 	return 0;
 }
 
-static struct drm_encoder_helper_funcs rockchip_dp_encoder_helper_funcs = {
+static const struct drm_encoder_helper_funcs rockchip_dp_encoder_helper_funcs = {
 	.mode_fixup = rockchip_dp_drm_encoder_mode_fixup,
 	.mode_set = rockchip_dp_drm_encoder_mode_set,
 	.atomic_enable = rockchip_dp_drm_encoder_enable,
diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 2241e53a2946..44ce0f581062 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -545,7 +545,7 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 	return 0;
 }
 
-static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
+static const struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
 	.atomic_check	= inno_hdmi_encoder_atomic_check,
 	.atomic_enable	= inno_hdmi_encoder_enable,
 	.atomic_disable	= inno_hdmi_encoder_disable,
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
