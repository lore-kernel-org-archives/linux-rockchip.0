Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AA07C54791
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUli7TAq4r/YGFfrOJaJYd6cW8z+oYNB/10ha4zGF/g=; b=eqYA2pufKw2vpu
	4GvIwFK9ng9+cUlDn9EGTdBNQPKBG5ETDwoy9D6/v0hNdZw9o0IwUm/2Gv638om2p1c0sQXKNCHdb
	7JcK9/YIcJeqSA0vHh0dyx0FZmiz6Sw7Iq37ROO8jCrhhvJOlRr1hMySl4Mcy69mMSX7cKECjDi8a
	ZBA9ONrbSoqzLdZoSdxueix5btb+Ghc2TmZoouqatgGAE8VtlxYQCuWjx8s4kZ/FFZdHiCzCanRVD
	3pObVNFcdtt05GvHehNaBqpsjR+EzYRLJ8mGPPGkk69uOoPui8CdyLM2REk6rvH51aH9xYfDVtRft
	3yEv23RBemM5eSdn1LxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDeA-00000005yWw-2VOk;
	Thu, 22 Feb 2024 18:18:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDb0-00000005xE7-3D7E;
	Thu, 22 Feb 2024 18:15:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=k61gKP/GU5M4u3BYV1ZwK5qDDzVZ12zrM86wbSr399E=; b=mUG8oX9wUX9Q6f/ehr7H6/jp8A
	rAcRM/Oq0B9UIPa7a/T+dq33ea39+LY6qdAKoxPZa7b5vSIgH24ovYHLtHi+nq2Lbp9IX6Am3R6p/
	sfaNUK6CVptU1T8AUdH3eB2mmOjKVGQu66mnk4nJcdyN1T+tYDMobEvXecr4sCKHu+8Tyg8SsknDt
	OChX/AAXNAYEx9R+6m6ey9iRNEAi2u18iO0i8p1iPO/uyWVp1fpMsMSSJAQVgDnsOVnmEe1IJ3d0l
	r13d93PK/PV9JhaqCDMwcVS23VHvOo8gUDO+8KyIwVhi4nJnaFqtNnU/YEBAYdKEzP5+BbcWLoBBv
	7TiYG6kA==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDaw-00000004ILz-3Gnh;
	Thu, 22 Feb 2024 18:14:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 488A3CE28B8;
	Thu, 22 Feb 2024 18:14:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 372AEC43394;
	Thu, 22 Feb 2024 18:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625685;
	bh=EOzt+ac2VEJaQqn9R1VvC99pxlRc+ECtg0akisOt/iA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=jg4vLAoD48Wz7hB8s5/0/Sss0B/uk45kUvfboV7jl/D62+lk0azLcJ6zaSfB7HVL9
	 gqLKSYCj3xaNLzkzZ21bqX6Xqcpp59qHjbnNRbqXe4ruwVOwle/daMjCZDjg37bkP4
	 KDMCgcjQq8BTujHwJ+fCYK2aLz8myVFAtMMVF550zCCIoopvo16D289iZyTl8+T+0G
	 xIZ1y42lsKQV1cXJ89+W3eI/Xy6I234EcSTCyM7Yn+itgcJICg3cxD8/JKWTJC07LD
	 PCh44uOgr45RxCtWbs6hKSA6yUaafMBrjHpCEIU+Of13lisEOPcMe4olA2RINelJPZ
	 SWq0rnNHXQOsw==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:13:52 +0100
Subject: [PATCH v7 06/36] drm/connector: Introduce an HDMI connector
 initialization function
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-6-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3492; i=mripard@kernel.org;
 h=from:subject:message-id; bh=EOzt+ac2VEJaQqn9R1VvC99pxlRc+ECtg0akisOt/iA=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnX+96szVkkWKki//xdjn9O5bUD/tP7svViHpnrWOT07
 kzo2mLcUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgImkGDIynIyVjJGWcA8TvXl+
 h0PHnCfnVa7t/vJ/w/eNn5z/L55nvZGRYc6d2L0vfOXX7Sp40rTwteRtoXm3Vc8FXPzLOPn4hsY
 pqawA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_181455_916187_10BD94D4 
X-CRM114-Status: GOOD (  14.10  )
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

A lot of the various HDMI drivers duplicate some logic that depends on
the HDMI spec itself and not really a particular hardware
implementation.

Output BPC or format selection, infoframe generation are good examples
of such areas.

This creates a lot of boilerplate, with a lot of variations, which makes
it hard for userspace to rely on, and makes it difficult to get it right
for drivers.

In the next patches, we'll add a lot of infrastructure around the
drm_connector and drm_connector_state structures, which will allow to
abstract away the duplicated logic. This infrastructure comes with a few
requirements though, and thus we need a new initialization function.

Hopefully, this will make drivers simpler to handle, and their behaviour
more consistent.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_connector.c | 39 +++++++++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h     |  5 +++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index b0516505f7ae..d9961cce8245 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -452,6 +452,45 @@ int drmm_connector_init(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drmm_connector_init);
 
+/**
+ * drmm_connector_hdmi_init - Init a preallocated HDMI connector
+ * @dev: DRM device
+ * @connector: A pointer to the HDMI connector to init
+ * @funcs: callbacks for this connector
+ * @connector_type: user visible type of the connector
+ * @ddc: optional pointer to the associated ddc adapter
+ *
+ * Initialises a preallocated HDMI connector. Connectors can be
+ * subclassed as part of driver connector objects.
+ *
+ * Cleanup is automatically handled with a call to
+ * drm_connector_cleanup() in a DRM-managed action.
+ *
+ * The connector structure should be allocated with drmm_kzalloc().
+ *
+ * Returns:
+ * Zero on success, error code on failure.
+ */
+int drmm_connector_hdmi_init(struct drm_device *dev,
+			     struct drm_connector *connector,
+			     const struct drm_connector_funcs *funcs,
+			     int connector_type,
+			     struct i2c_adapter *ddc)
+{
+	int ret;
+
+	if (!(connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	      connector_type == DRM_MODE_CONNECTOR_HDMIB))
+		return -EINVAL;
+
+	ret = drmm_connector_init(dev, connector, funcs, connector_type, ddc);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL(drmm_connector_hdmi_init);
+
 /**
  * drm_connector_attach_edid_property - attach edid property.
  * @connector: the connector
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index fe88d7fc6b8f..4491c4c2fb6e 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1904,6 +1904,11 @@ int drmm_connector_init(struct drm_device *dev,
 			const struct drm_connector_funcs *funcs,
 			int connector_type,
 			struct i2c_adapter *ddc);
+int drmm_connector_hdmi_init(struct drm_device *dev,
+			     struct drm_connector *connector,
+			     const struct drm_connector_funcs *funcs,
+			     int connector_type,
+			     struct i2c_adapter *ddc);
 void drm_connector_attach_edid_property(struct drm_connector *connector);
 int drm_connector_register(struct drm_connector *connector);
 void drm_connector_unregister(struct drm_connector *connector);

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
