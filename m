Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56D03CD5BB7
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 12:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gopPd6oeHgNgUdmf945YY6J5rqh7RcNJUu12a3k7rJc=; b=1ybdBpcBZOMq9V
	8Q9I37G6gfq8myQivd9VtTZm0HjbIcXZV3rCgMXUpuUf+H+tQPFhbPqOuUuxAj1cKn0jMH0r4zagU
	MSwA7Ej3+ixgUM9PVx/nYAzJUHRq9whNWu+GfrhWJGbwdAr5ad4oAcKnSCjA4Tq89QK0zWndGhynJ
	23A92w7pj9O6guRCz3UW08t/ggq+onqm8DD8huB9GXzvLmxbJGu607DpY9n25WMBLH3YGBBaDllo/
	h3hNy0K1hBu36clax0kJIrhgTzWq3oEc6BQmoBQJCULQs7w1CXEWNdl9QI+5cPHJhKXm1mBUPvJ8s
	UuXus3i5BQ+3laUf5Jyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQP4V-0000000AmuM-1h8b;
	Fri, 22 May 2026 12:33:47 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQP4S-0000000AmrN-3E74;
	Fri, 22 May 2026 12:33:45 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1779453188; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=F/lkO6r5U0DhE/3H1eqNFa8fgGQdxsebDWvUBowiKY9X/yyscynY8CJQSK9G17+bby5PPJmtmbzJu3ICx+ZhWUh7S0f9SjI+N8vPaJM8VqBWmWUwB24LF9tC/DDf3U/LdDCaz7bQ8KlN0/asH8w03bykB8q9IDaigeMYkLEuZ2o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1779453188; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=E8Lo2br7VH451pW8mbm3IAG619TpKWYG57DGcDu/ZNs=; 
	b=X2IL4wPpdc3yBmPExhKTxBJEaVKLawlSKvhoFSk+hgqpuPGAvb+TeITVpWJHOkI0fWa/8Of0fztTKfrmF/+IaAX5b7hiqNyTW9EiHO4Jl2pfBtlsKCPyvkId2ufv0umX9M5pr3d8Q3xrHudqZI32zIbpNHUrCQT+MccWonWa90k=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779453188;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=E8Lo2br7VH451pW8mbm3IAG619TpKWYG57DGcDu/ZNs=;
	b=ahKiG3u8Dax7FvJR9oPzyttnytssci5R/kR8+hX5cSdjETuNZ3PZCpSqgIQYub08
	5BEJihKhFMytUZnCW3LOr/S9g0aIyDNBhchqF55hdQ29tJFpGkMOMwGn+x9pMaSPe0c
	9AatAXy199lZf7yyD/ey4mKYfmnqjU5Gkydbo+1s=
Received: by mx.zohomail.com with SMTPS id 1779453186609808.6322459481415;
	Fri, 22 May 2026 05:33:06 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Fri, 22 May 2026 14:31:55 +0200
Subject: [PATCH v15 04/28] drm/connector: Let connectors have a say in
 their color format
MIME-Version: 1.0
Message-Id: <20260522-color-format-v15-4-21fb136c9df2@collabora.com>
References: <20260522-color-format-v15-0-21fb136c9df2@collabora.com>
In-Reply-To: <20260522-color-format-v15-0-21fb136c9df2@collabora.com>
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
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
 Daniel Stone <daniel@fooishbar.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_053344_872885_8E5B6915 
X-CRM114-Status: GOOD (  13.40  )
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

Add a function to get the connector color format from a connector state,
and a new function pointer in drm_connector_funcs to allow connectors to
override what connector color format it returns.

This is useful for the bridge chain recursive bus format selection code,
which does not wish to implement connector implementation specific
checks like whether it involves HDMI.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Daniel Stone <daniel@fooishbar.org>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/drm_connector.c | 16 ++++++++++++++++
 include/drm/drm_connector.h     | 12 ++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index a0fca522f18f..41a5ab1e563e 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -3685,6 +3685,22 @@ void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
 }
 EXPORT_SYMBOL(drm_connector_oob_hotplug_event);
 
+/**
+ * drm_connector_get_color_format - Return connector color format of @conn_state
+ * @conn_state: pointer to the &struct drm_connector_state to go check
+ *
+ */
+enum drm_connector_color_format
+drm_connector_get_color_format(const struct drm_connector_state *conn_state)
+{
+	struct drm_connector *connector = conn_state->connector;
+
+	if (connector->funcs->color_format)
+		return connector->funcs->color_format(conn_state);
+
+	return conn_state->color_format;
+}
+EXPORT_SYMBOL(drm_connector_get_color_format);
 
 /**
  * DOC: Tile group
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 03e42c36175d..c9aad2bc8227 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1787,6 +1787,16 @@ struct drm_connector_funcs {
 	 * Allows connectors to create connector-specific debugfs files.
 	 */
 	void (*debugfs_init)(struct drm_connector *connector, struct dentry *root);
+
+	/**
+	 * @color_format:
+	 *
+	 * Allows connectors to return a connector color format other than
+	 * @conn_state.color_format for purposes of e.g. display protocol
+	 * specific helper logic having already mapped it to an output format.
+	 */
+	enum drm_connector_color_format (*color_format)(
+		const struct drm_connector_state *conn_state);
 };
 
 /**
@@ -2603,6 +2613,8 @@ drm_connector_is_unregistered(struct drm_connector *connector)
 
 void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
 				     enum drm_connector_status status);
+enum drm_connector_color_format
+drm_connector_get_color_format(const struct drm_connector_state *conn_state);
 const char *drm_get_connector_type_name(unsigned int connector_type);
 const char *drm_get_connector_status_name(enum drm_connector_status status);
 const char *drm_get_subpixel_order_name(enum subpixel_order order);

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
