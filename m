Return-Path: <SRS0=kO9o=EG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89941C388F7
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Oct 2020 08:18:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 011A120724
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Oct 2020 08:18:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="uWsPaTRI";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ojc3d1oB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 011A120724
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hnlLUuxz++XS9W2WdP36ZXDAKf9PTgzPLxBZ9AwG9C8=; b=uWsPaTRI6gYWHcz09L34fg55TR
	i8SHuCE+l6CQtIw6cXcBAl8nDF+9ljTGhrnsgFIDdyAVRC3QEJSZv+W7NwvKhsRTtWZw+0c5R9R5Y
	fOFRcoXOwbho6yF6RzW2whJeAnnLeTrX44B45RS0+zZQ4MJkKdJm1SH5KUqzBewM8pa3FEZsEOJpl
	j2oi+n9hhVDGYXM0J2U2eY7clT5mcBDLrJ2mk6CrMhkEzaOxRJGgmGWoLz+WLgkadMsmn7cKuas5F
	d9Z7k3uEOtFLjOKBtsFZT0l/2G9DRBS0QZiedWEz6C2LKrRYCV20cn7a945raPc7nXBtEe6qPwAsZ
	um6SvW3w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYm5a-0000h3-RH; Sat, 31 Oct 2020 08:18:18 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYm5X-0000gU-03; Sat, 31 Oct 2020 08:18:16 +0000
Received: by mail-pg1-x542.google.com with SMTP id k9so5310887pgt.9;
 Sat, 31 Oct 2020 01:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dVtuiJo8q6yyeH5yuakhl1fngL1phRVfiZKUAXBNH30=;
 b=Ojc3d1oBZVIDJla1t4UCrvdCtw9FHAcLutmr+qEfHqSYPN0xVC0I/FsOyovXyoFIVw
 qL+XqY36DIR/dB3FcoCWLgDBhiON+VmMDD0AOwfVV+CgQVEdz5ALOegOaNDx1ccPFabE
 ico2NhyZKns0jUmR9bjuoi5OIPiqJUfzfC0GbT2ow8ef76bNwlvsjiF6V9GKP1nxwTaj
 XJMFjsXC0VVDxP2IoFiTQjZ1+QnX0pwZmWkAFOTbtcNGny6qswqk+XLdnc1Fd+nSxDwk
 Y9Twj7rU9x+gw0A9D2VPePPZuDLt/i06e+chfUIn4kVOHYLm3hBWtoSSpwpB2vytI8Tq
 7UUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dVtuiJo8q6yyeH5yuakhl1fngL1phRVfiZKUAXBNH30=;
 b=aG7XwBfb3XZBx4w0GDGEJc9m4K1nhpwUgSDsHBOQ0zxgaPolaIMbBI5IwzFt2OTg1B
 NUZuUYv/+fugTqafKnIkYeBXVQj2jL8p0IbqizJ94pbGTm2z1SSYD0s+CfM265HwKltO
 XHWlbx3ve1+ZlbSNrdFWfuxP3q+jFXnMABy+zPHVRNfANN6zkvg/qwtP+I8ie/XtibC3
 sg+YXw077ZJ5pYz3TkMutC/pjCFF9q5UZ1PtNsX7rEG1iLbpYs3j342A95fc1ZceVWh9
 Pm9ae+baemisRcddNphozMyz0r7xhm3sad+dtx2Ky/g39x+yiukWxOduKQb3xByde9Rc
 8NCQ==
X-Gm-Message-State: AOAM530l6/YMxkEfFaGAxBJh4iBhNLBfYJeLT6sgP9T19pjr69sXyqEN
 na28t/Qjr+f7mYlsRxODKu0=
X-Google-Smtp-Source: ABdhPJxisclNv6GI5uPpRLsPIUNxituSzQzeBlOybksNUmxRyPL9s9zOfc2SQ+twfm3I4upLPr1I6Q==
X-Received: by 2002:a62:ee06:0:b029:164:20d:183b with SMTP id
 e6-20020a62ee060000b0290164020d183bmr12838431pfi.4.1604132291474; 
 Sat, 31 Oct 2020 01:18:11 -0700 (PDT)
Received: from 119-18-5-146.771205.syd.nbn.aussiebb.net
 (119-18-5-146.771205.syd.nbn.aussiebb.net. [119.18.5.146])
 by smtp.gmail.com with ESMTPSA id lk13sm4990534pjb.43.2020.10.31.01.18.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 31 Oct 2020 01:18:10 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] drm: bridge: dw-hdmi: Avoid resetting force in the detect
 function
Date: Sat, 31 Oct 2020 19:17:47 +1100
Message-Id: <20201031081747.372599-1-net147@gmail.com>
X-Mailer: git-send-email 2.29.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201031_041815_176220_98594A02 
X-CRM114-Status: GOOD (  11.67  )
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
Cc: Fabio Estevam <fabio.estevam@freescale.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 Jonathan Liu <net147@gmail.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Russell King <rmk+kernel@arm.linux.org.uk>,
 Liu Ying <victor.liu@nxp.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

It has been observed that resetting force in the detect function can
result in the PHY being powered down in response to hot-plug detect
being asserted, even when the HDMI connector is forced on.

Enabling debug messages and adding a call to dump_stack() in
dw_hdmi_phy_power_off() shows the following in dmesg:
[  160.637413] dwhdmi-rockchip ff940000.hdmi: EVENT=plugin
[  160.637433] dwhdmi-rockchip ff940000.hdmi: PHY powered down in 0 iterations

Call trace:
dw_hdmi_phy_power_off
dw_hdmi_phy_disable
dw_hdmi_update_power
dw_hdmi_detect
dw_hdmi_connector_detect
drm_helper_probe_detect_ctx
drm_helper_hpd_irq_event
dw_hdmi_irq
irq_thread_fn
irq_thread
kthread
ret_from_fork

Fixes: 381f05a7a842 ("drm: bridge/dw_hdmi: add connector mode forcing")
Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 748df1cacd2b..0c79a9ba48bb 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2327,12 +2327,6 @@ static enum drm_connector_status dw_hdmi_detect(struct dw_hdmi *hdmi)
 {
 	enum drm_connector_status result;
 
-	mutex_lock(&hdmi->mutex);
-	hdmi->force = DRM_FORCE_UNSPECIFIED;
-	dw_hdmi_update_power(hdmi);
-	dw_hdmi_update_phy_mask(hdmi);
-	mutex_unlock(&hdmi->mutex);
-
 	result = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
 
 	mutex_lock(&hdmi->mutex);
-- 
2.29.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
