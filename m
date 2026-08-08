Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2FD8C5AD55
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Aug 2026 09:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28haMhjbNfgamewdBoFWeVFVlWR18BinJLpk1OWW/is=; b=NNNJZbGTff3++6
	lezd/rpmXirb/digqfmdz9TuHhjyaD7vi4YjRGH3hVIKT7E9NHMz0WE4pxJaMH+T6P8RLyX1zz9tm
	5buwRS8JQ33Aq4DxuA/XoNUoYSta9MhipmGUPYWcujbFKr3QoyDANDAidkt/ecZvROgqcHWb+2byZ
	LDVjLsUkq7iLjehex8ssW3WvaqnpNxk4b1sXMOSNax58dGvmfGXmlxV9feBAcR6lPZc/8rPOIW3Bk
	cXvRLpil7PeA96RNr3QL853nfht1oYrexY/fdcWh03+L2PI7QKnpGWVI66LPIbCGb++fjg7VvF5X+
	rqbF5EWd0elXv09q8jfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdoy-00000009F4z-1li2;
	Sat, 08 Aug 2026 09:58:28 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdou-00000009F00-3Bdj
	for linux-rockchip@lists.infradead.org;
	Sat, 08 Aug 2026 09:58:26 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-47f502ff678so35391f8f.0
        for <linux-rockchip@lists.infradead.org>; Sat, 08 Aug 2026 02:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786183103; x=1786787903; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bygF4+CGk1HszXnKQxQkJUMmXmQwnL2yRQrBPqNom6w=;
        b=au9Tu+Oi3Wvd9PhLjB+yQ7sKGi93smGviHCA6PNz6jmc0rdr7nswbY6SOmSZZDY6S3
         4PfyURBJCvYRt4AHcfP/AM1OjSYoh25t+w8Ld2OM9cbI3QOU0y12P1sdHXoEDpEhp/mJ
         /AojC1ysHHIVmbRe8qxc6A0kMe78DurN1tYecXEvGGWGjswJSOddJjg4tsAy1QBSzsgT
         XnZemR/1Xhp4OLIffJfhzWYLcUXj1aNJp2SerG2v64/8ipXtb4hM+WqU0GrdFwD7Ki/y
         MWonUK6z2+HWBJyL0tLXFvB2DgiItltUfkD1ey90JvIMTjXOUH71CbrIbcbKZ4cPGbnG
         ns3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786183103; x=1786787903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=bygF4+CGk1HszXnKQxQkJUMmXmQwnL2yRQrBPqNom6w=;
        b=gZ1nOYkoLwbv/spOpsxp0+v2c1gCLWLYVogNSfZhuH6mTrze0aSjSnqrIXjLZSM6De
         XuadtDGpK8/hnufFx83ZEzDkauWF0sDrlmwRviWy9WbKoA+HPtWIvud43OppWSpVQgUz
         +yk4yyRx3Brw4gzKPjPrsvbsQFadjtpUHoM5/R+3ENrEa2rHHyLAM68h5qjIZyfm83rF
         5MbpgF2sLzz/JPGhNcXs0jmp3QEPiqfZHeeF1N7IJXNIZQDYjvn/G9bCygQ1pAdmf9w2
         jiFtqWJaNSIBE03CTmNl7eTvpE1U6vZDMqt6zXUKxLkzUFcDasnMAWIaUZhAyDrmW116
         n/3w==
X-Forwarded-Encrypted: i=1; AHgh+RoorgxyH8cz73YaMUtz2ZPa0tx1lvDzjlA9RN0onfNmBw2jUXQg6iprW7xBXvvDz1HkzueiPrtr+T7VpoFx7Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwTnh6eXFSinMImtTGAA7cfG6ZJJY1XEDDIbghheGjjQ212IY4R
	uJZjm2DsNx5G6vIPrQ5o+vNfEitCyZkmzl3MYvCPYBW6yUn54Q7EJJNh
X-Gm-Gg: AR+sD12Sqo9rqhgPO6MyynilGCxxycPOrRVau65LBxh80tpxr2zh4rJGiJdgmqXuzUI
	UToo1tstpMr+tnK9R17BPoetexRrCoRIgv0oyuDUmTolyRmrSgTv7uC0TkYyz58IIExfyh6rPoV
	PiSPqTCHI4vwjNgwSkpD85q6lu2jbMtuRfik098+X02qk1mNJUcZDFG9ESqqi48Hc/RP/aSOzSJ
	LUmOcUX8Cyli9W2fvtS25CELiGpExLMDxzRWO+k70jOzKSq3ijIZ4FKZ1LmrWVw5m/TQRPXge1n
	mYmQUqz5B1MibbtMcbxD8ZV15F+ueWRo+J9AL6FNQvuEl0fSOoGpGfltmkbZYSFh8p07SkYULH6
	Ae0gPE3ME1/779h7h/TUKqaDDBH6yD/kNUtjxwkuzCbwQMqKjrY2C+MmRQ1TI6lGrzTGf0aWImf
	g3IQKJj1K5H1Z4xkyHt5TMKnz0vcDfkeKvHXW5X3BpaPDpnyM+japt1RgAvGtP3u2OWFYWqe0Nx
	h2fhx9MBwmVeem1Q8igSXr/WklbjSCNLOZSIKOUgmGrORgEUBqBD8/kxLY4XVu+O0b0lQ==
X-Received: by 2002:a05:6000:401f:b0:47f:7e91:3d55 with SMTP id ffacd0b85a97d-47fec520b24mr21741731f8f.2.1786183103128;
        Sat, 08 Aug 2026 02:58:23 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8E20009911270F4BEC2300.dsl.pool.telekom.hu. [2001:4c4e:1b8e:2000:9911:270f:4bec:2300])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-480020be8f3sm13255725f8f.0.2026.08.08.02.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 02:58:22 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 3/5] drm/rockchip: dw_dp: Attach "max bpc" connector property
Date: Sat,  8 Aug 2026 11:57:22 +0200
Message-ID: <20260808095749.9428-4-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260808095749.9428-1-royalnet026@gmail.com>
References: <20260808095749.9428-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_025824_842867_572FCE21 
X-CRM114-Status: GOOD (  15.77  )
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, Imre Deak <imre.deak@intel.com>, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Igor Paunovic <royalnet026@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, intel-gfx@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The dw-dp bridge already filters candidate output formats on
conn_state->max_bpc in dw_dp_bridge_atomic_get_output_bus_fmts() and
validates the result against the link bandwidth, but the connector
never exposes the "max bpc" property, so userspace cannot limit the
bit depth. Attach the property with a range of 6 to 10, matching
dw_dp_output_formats[]: the smallest entry is 6 bpc RGB and the
deepest entries are 10 bpc.

drm_connector_attach_max_bpc_property() initializes
connector->state->max_requested_bpc and therefore requires the
connector to have a state. Rockchip binds its components before
drm_mode_config_reset() runs, so the freshly created bridge connector
does not have one yet - create the connector state before attaching
the property, exactly like drmm_connector_hdmi_init() does for HDMI
bridge connectors. The later drm_mode_config_reset() then re-creates
the connector state, and the preceding patch makes
drm_bridge_connector_create_state() restore max_requested_bpc from
connector->max_bpc, so clients that never set the property (fbcon in
particular) keep the full range instead of ending up with 0.

With the property attached, compositors such as KWin write "max bpc"
on every atomic modeset; any in-range value is handled by the existing
format filter and bandwidth checks.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index 770ab042a187..4dc29963b5d8 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -172,6 +172,32 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
 				     "Failed to init bridge connector\n");
 	}
 
+	/*
+	 * The components are bound before drm_mode_config_reset() runs, so
+	 * the connector has no state yet, but
+	 * drm_connector_attach_max_bpc_property() requires one. Create the
+	 * connector state first, like drmm_connector_hdmi_init() does.
+	 */
+	if (connector->funcs->atomic_create_state) {
+		struct drm_connector_state *state;
+
+		state = connector->funcs->atomic_create_state(connector);
+		if (IS_ERR(state)) {
+			dw_dp_unbind(dp->base);
+			return PTR_ERR(state);
+		}
+
+		connector->state = state;
+	} else if (connector->funcs->reset) {
+		connector->funcs->reset(connector);
+	}
+
+	ret = drm_connector_attach_max_bpc_property(connector, 6, 10);
+	if (ret) {
+		dw_dp_unbind(dp->base);
+		return ret;
+	}
+
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
