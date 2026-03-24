Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98275F54AD7
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 16:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwVbpE7oGLnE1ag9p2sYh9zVIbOy+mjjNXM19zhhq+g=; b=p1u/ACXVT5EXxK
	wjeoOM3FBuos31g77+h7PQaPomLSJqF0phKmsRNfdXcotK5RTmTqIjuZfSq8cTAtrV3i8MY779ZlG
	21ucPSkcKw9lsv0gei82Rm6Q3Oejb3BJcvYXBLfKhMNkFAPt9g58EyRXqwrnBNhRU5jvz8ulnsJ5p
	V7caYoDdXYa31hhtC3KmAa6/xEynEZLtkHf0k7MnHrmfqNc+vfEqshMkAVOmGOUnw8KIXmv1HPP6k
	rauguX3Q/wWOPBatdf2/6QfHnr6iIdiNw3dUsje0OxdgaihjFhlji1yHBOclI0r7c3T7iuAGQHF4r
	lU6IGpjtEqerdW9SBClg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54F2-00000001pVw-3z7h;
	Tue, 24 Mar 2026 16:04:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54Ez-00000001pSk-304a;
	Tue, 24 Mar 2026 16:04:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=d1yMthHYWepKMoQtIRkHnB54WfQr2uBE10YWq40qjiM=; b=RZHlCDlszTCXQkmVHNtdVFrKJq
	FU3swE6LeghBN82VN8uOLddDeEQxRnSJfZiEZFBH5jMRAMQxbe+MGiLdXhzUXhksfPBDL28HRmWla
	NiCM1rOk9TT5Cnf/NAYhkGWI2sjVvNUY5DCnM5etdmltQ7Y2Z9xs7UPx5snVmyHhBPN88I2VuHw9w
	8jPwd0f0J34F/N3KTh+5CP9gHu66eG8xoth+tnh8OymcKHFy1AS9Ee2M5Z7SkWOYExzKGa9zNcu4r
	h/3vOtl/zoq4i7MsKKR6PteDwmOYVS0fRdoi3SSemuookRXzqT6Cww5v9abO7uKQ6EiUiyo2K9BH/
	BsQv47xw==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54Eu-00000004TWE-2jdy;
	Tue, 24 Mar 2026 16:04:24 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1774368226; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=VMjmIB3T5cjz1cDJ+etEluRsydvj0Fg6O/4WiXKuwCPraobI/bAgARK3qp/TQt5KUZh7vdTbAdSbCIN+uElPLToJvZZbKPJh3RNvyMtDqlNfdpvhVjPlL6OBQlU6CE+ZzLIfELx3h7IiJiq0nbn5Rqab+Qk4fWnvErg9Rojt3NQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774368226; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=d1yMthHYWepKMoQtIRkHnB54WfQr2uBE10YWq40qjiM=; 
	b=S4x8GRuUIJEyc+jb0LKr3969bUDyQAqnxYLRYOOOHV+nr2hNDi3nqC1qjEIrNRvZShn5ZjlhZRQvR16ojpDSD0hD0KSNmh6v9p6DksVlrFuip7100TsAxgSLLhG69aP0oBnkAGClX/OgxCLM9NcQeFKVWzC32ip+zFPVrKE2m7A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774368226;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=d1yMthHYWepKMoQtIRkHnB54WfQr2uBE10YWq40qjiM=;
	b=F4y5Qj6hgY5cWGui9nOHfQj5mJYjZg3yfofQD3I6ruHe43VLVPvvX9naY3os8Smc
	NVTlxW1WXbFb+//uIlAu8C18VuNbAL2re8lDd7QScBnKFECiru4Y4XwsDANoGFekjsO
	hbvbpvEJd+vyqd9pXIETn6CoTILqt/KqnMSMxxhc=
Received: by mx.zohomail.com with SMTPS id 1774368225220309.0392102403341;
	Tue, 24 Mar 2026 09:03:45 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 24 Mar 2026 17:01:21 +0100
Subject: [PATCH v11 17/22] drm/connector: Register color format property on
 HDMI connectors
MIME-Version: 1.0
Message-Id: <20260324-color-format-v11-17-605559af4fb4@collabora.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
In-Reply-To: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <siqueira@igalia.com>, 
 Alex Deucher <alexander.deucher@amd.com>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.15.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_160421_308909_8FC456AF 
X-CRM114-Status: GOOD (  10.47  )
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

The drmm_connector_hdmi_init function can figure out what DRM color
formats are supported by a particular connector based on the supported
HDMI format bitmask that's passed in.

Use it to register the drm color format property.

Reviewed-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/drm_connector.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index e848374dee0b..724245d2df29 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -627,6 +627,10 @@ int drmm_connector_hdmi_init(struct drm_device *dev,
 	if (max_bpc > 8)
 		drm_connector_attach_hdr_output_metadata_property(connector);
 
+	ret = drm_connector_attach_color_format_property(connector, supported_formats);
+	if (ret)
+		return ret;
+
 	connector->hdmi.funcs = hdmi_funcs;
 
 	return 0;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
