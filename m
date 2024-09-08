Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8618AE6FE49
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 13:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/uQQE9Jj+qscBD3NElSW4r3ElDmHLjV3QgTBASY/eNE=; b=yomRyrG1F14BHq
	PXqEh+LDKS6lcIM7m1ICoSKHJ/DBzwPQSMWG1WlKuc6OSo4mEfvTgTqHovWbb0o06/UZ8HcIxwGY1
	zeFder6aeD801XHlXAaNvWesDEIJK5IIBYZrpW55sT2UPgYAtSbiK2h1snr6k2ur7w3HsVAajUmHL
	isUiK1DuvxvcclnuV+GV2IjE6Ac3Jz692e6QMoiuYCE/zMR3qXITK0h52kEFGrlLurNI+MiGxrZaY
	KDqqjVbF4oPP8VgmEUR08vECDtkP/eiH9JFLND8vIUuBT5pYMKYVWt0wXgLqQe/IfkoSfCb6Jn/e8
	DXA62WxAcR3gINo2s3HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snHyG-0000000GprZ-46P2;
	Sun, 08 Sep 2024 13:28:52 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snHyE-0000000GpqK-3Tb3
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Sep 2024 13:28:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1725802115; bh=hy/enUDFhn7EYrNY9bdwQkDRAdMM4VCr4M1zQdlFbcA=;
 b=WOBmAzsbKeEJgWFKLw7VqUnKlD7/EROqP8iVaIy7FXDzXG0YyUgzgk3+Ik+zRxgmF1jUjPmyn
 1b9gca1la+9OP7m7ZMWo657t3/lDrd0vBDCP6XJmh1kqt50GCduS3Dnkrg+RzdYtS3A9oR1e6xg
 F0bZpixiAB+AjZs6d8IGzp1GE11EJiI0HOM+Xm6Vf2ZtGD3tfN877sqmFY+OWo0gY60kArNXkz7
 E6MyqLPgeyDPkL0ALAjquoIAUxyUtLeVo5PNgOyXn4neSg5A0Qe1Jmmm/INjMP2NrO0Q84gZI9Y
 Kg5XK0Yd7rLk0Le6objUdVkCMpah6TM9xJWXePKuoJzg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Christian Hewitt <christianshewitt@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/10] drm: bridge: dw_hdmi: Disable scrambler feature when not supported
Date: Sun,  8 Sep 2024 13:28:03 +0000
Message-ID: <20240908132823.3308029-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240908132823.3308029-1-jonas@kwiboo.se>
References: <20240908132823.3308029-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66dda6823c9877b4595878fc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_062850_939228_0FD104E4 
X-CRM114-Status: GOOD (  10.70  )
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

The scrambler feature can be left enabled when hotplugging from a sink
and mode that require scrambling to a sink that does not support SCDC or
scrambling.

Typically a blank screen or 'no signal' message can be observed after
using a HDMI 2.0 4K@60Hz mode and then hotplugging to a sink that only
support HDMI 1.4.

Fix this by disabling the scrambler feature when SCDC is not supported.

Fixes: 264fce6cc2c1 ("drm/bridge: dw-hdmi: Add SCDC and TMDS Scrambling support")
Reported-by: Christopher Obbard <chris.obbard@collabora.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: New patch
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 0031f3c54882..9e7f86a0bf5c 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2117,6 +2117,8 @@ static void hdmi_av_composer(struct dw_hdmi *hdmi,
 				    HDMI_MC_SWRSTZ);
 			drm_scdc_set_scrambling(hdmi->curr_conn, 0);
 		}
+	} else if (hdmi->version >= 0x200a) {
+		hdmi_writeb(hdmi, 0, HDMI_FC_SCRAMBLER_CTRL);
 	}
 
 	/* Set up horizontal active pixel width */
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
