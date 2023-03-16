Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED546C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 13:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rSDFi4N5skuTNBNNNAvR7Y0MXmRiOIeCP5pCeC/tuNw=; b=A8OA11JQ3XAt2p
	666KZDPdScOLMkESnfTsbiFqSxsJETpN9ZtdPLBLwAKcm5mfdHg4Ts66nyQyx/4b+h73lBLmgQSqD
	ioln9IrWuOHhqDyoITVptG7vSan5PWqaxXzdI7F6qcqG88NzyvCvZ215QNHorfk896UKNX2WNvwYo
	4SDZVxdMKlS8ZtsNnme8h/ETKXWyE9OR3PfooHw2DNGwnXlMy/pFKdct76eMN0jNOdQU+hTCVY7dQ
	m/IE/v6/3zS2m/ZWikQdsaM89HR5zexXztBVetYjFyOCyaTB/hTqDdjnSLos8Q1tXeTeRy5MOmu8U
	wuNaPvR+By2DSp53ojPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcnZc-00GW7y-2F;
	Thu, 16 Mar 2023 13:23:16 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcnZY-00GW5c-0x
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Mar 2023 13:23:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678972989;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lOSbCq91ofT9YXvZbpEo/wG2mXE51QVka7uRfgSRss4=;
	b=N0Uuf6J59gGwiksDiyFQZfnbdEFb0aHpuCw35em8Pz8XQ6AyvFGk0+isoDsWyobq+oDBVD
	EgI8PtLD74GdpUw0Wa2T5ZOZKOpbEuD9UDlL+85wUKp+ONwWdeoaJ9idtugtbiy3PF4rli
	BUP2KH1ogdccS3udxYgqZpPmTHGaKNA=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-663-rGe-yEWDOR2HqmnspRky-A-1; Thu, 16 Mar 2023 09:23:08 -0400
X-MC-Unique: rGe-yEWDOR2HqmnspRky-A-1
Received: by mail-qv1-f69.google.com with SMTP id ke14-20020a056214300e00b005abcdd36f47so1019350qvb.21
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Mar 2023 06:23:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678972988;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lOSbCq91ofT9YXvZbpEo/wG2mXE51QVka7uRfgSRss4=;
        b=PeGpaSJfxFnCLoZXNdfFlXcMrtOsAXX3fKJmAt0tZF8JjI7jD3J621Xxhrr/gtAQcy
         L7+/XI7cOdCdI35w0RtDxUjVhfh9WpU3aiPUpBoZ4J8chZaNQybgq1kXL38OMQF7rn6M
         J0U/fWTkCK0NC9yEOzq+Xyn3AfU5XTeVrCstZZB39n5UNP8TQXGLpb3HN/3tUHZid0Gy
         A6dplWyYuxslKCjIzK8hs9LcgkAIqfWAk3tpkBzFnHRQ0m74+Cr/yV/boUHneCmKJU2N
         SQ492CHUR8B7E72AI2hqE5XqpXNPCu7hRT3xrob1H/36Tsb5X0jGbEIClxB1Muu+cUx4
         KFOw==
X-Gm-Message-State: AO0yUKWI3JsHo6yj/pER0Ep/uxW4XeZyW4U2msjYGOODpceP7LzGNVRT
	L/nKFNNprKOBiP8NhOn4/agQmV+2sxhGEau3dxzRPtmsVMuBu/0C7lLdmO1mobS4mIRV5B7ypij
	L3O/H1hP6vfViq2cVZvZRP70gj3z8Me4r
X-Received: by 2002:ad4:5aee:0:b0:56e:ab08:670d with SMTP id c14-20020ad45aee000000b0056eab08670dmr32716488qvh.42.1678972988193;
        Thu, 16 Mar 2023 06:23:08 -0700 (PDT)
X-Google-Smtp-Source: AK7set9dA/70KxjQEA+7BPyUihfyAvubVJ/nAiMbXTzj0PTIRAeQbYujxRy3jSIUcu6bo4xiaMqL1g==
X-Received: by 2002:ad4:5aee:0:b0:56e:ab08:670d with SMTP id c14-20020ad45aee000000b0056eab08670dmr32716450qvh.42.1678972987917;
        Thu, 16 Mar 2023 06:23:07 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id g187-20020a37b6c4000000b00743592b4745sm5803599qkf.109.2023.03.16.06.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 06:23:07 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	nathan@kernel.org,
	ndesaulniers@google.com,
	michael.riesch@wolfvision.net,
	s.hauer@pengutronix.de
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] drm/rockchip: vop2: fix uninitialized variable possible_crtcs
Date: Thu, 16 Mar 2023 09:23:02 -0400
Message-Id: <20230316132302.531724-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_062312_447125_80010D9F 
X-CRM114-Status: GOOD (  13.47  )
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

clang reportes this error
drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2322:8: error:
  variable 'possible_crtcs' is used uninitialized whenever 'if'
  condition is false [-Werror,-Wsometimes-uninitialized]
                        if (vp) {
                            ^~
drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2336:36: note:
  uninitialized use occurs here
                ret = vop2_plane_init(vop2, win, possible_crtcs);
                                                 ^~~~~~~~~~~~~~
drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2322:4:
  note: remove the 'if' if its condition is always true
                        if (vp) {
                        ^~~~~~~~

The else-statement changes the win->type to OVERLAY without setting the
possible_crtcs variable.  Rework the block, initialize possible_crtcs to
0 to remove the else-statement.  Split the else-if-statement out to its
own if-statement so the OVERLAY check will catch when the win-type has
been changed.

Fixes: 368419a2d429 ("drm/rockchip: vop2: initialize possible_crtcs properly")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 03ca32cd2050..fce992c3506f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2301,7 +2301,7 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 	nvp = 0;
 	for (i = 0; i < vop2->registered_num_wins; i++) {
 		struct vop2_win *win = &vop2->win[i];
-		u32 possible_crtcs;
+		u32 possible_crtcs = 0;
 
 		if (vop2->data->soc_id == 3566) {
 			/*
@@ -2327,12 +2327,11 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 				/* change the unused primary window to overlay window */
 				win->type = DRM_PLANE_TYPE_OVERLAY;
 			}
-		} else if (win->type == DRM_PLANE_TYPE_OVERLAY) {
-			possible_crtcs = (1 << nvps) - 1;
-		} else {
-			possible_crtcs = 0;
 		}
 
+		if (win->type == DRM_PLANE_TYPE_OVERLAY)
+			possible_crtcs = (1 << nvps) - 1;
+
 		ret = vop2_plane_init(vop2, win, possible_crtcs);
 		if (ret) {
 			drm_err(vop2->drm, "failed to init plane %s: %d\n",
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
