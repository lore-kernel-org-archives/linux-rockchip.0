Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 928ABC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 16:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzFFMHSOQxcSa26ikTeqZD1Quya3GB4bZeU17LehQkM=; b=YYFHEydDeWzmM4
	ce2RlD7y4XnWBNX3PNfWhF2GibTJGzU7h20EISyfpNjctu2vWIqTRWQscdj+3iozXcVVk6tTs7mpm
	BDIl8fOgUr0iUepjh2azxY1NbrLUsnf4HzksHiPr8hpZaxeQzOC4mjkcXFsSL1nTaYTJx6mtb+WgT
	1OKYvuMtCjUOfHbSe9sqvbCCPISSlJy31nkdR/NiQ8jRwkayDQpt4fNoHv2Hvof9LI0XqM4nvxQca
	X7u9Uc6IGqGGxciggzDwXurkatWJbejM3EFMXwQq/zHNqqeSgQhkCWwR8mkMGqqVjGzH7iX4s6DqX
	XgW8Tz9HZmqyG+qtG8gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrx1-005kyR-1V;
	Tue, 31 Oct 2023 16:50:47 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrvT-005jYP-0d;
	Tue, 31 Oct 2023 16:49:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id BFC92B8118A;
	Tue, 31 Oct 2023 16:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3B26C433C9;
	Tue, 31 Oct 2023 16:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698770949;
	bh=BW2baC+EjniG/ZZH9QzIRlNDubJbbQk6ybbnPB50Z5U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=foPiBi5tPK2qTQLqdUEbrq5fITRnjIv79P//Y6PBhDgB8bRdvMO7XMWaLyEEIHMQk
	 N4vRb7dx/NnkKE0WNCXQt3J38y0RrIJjEF2RGnuA3d4+uatLVBdnsLrnczbY7OIGn9
	 SS9br04QPi18yqrSp+Rn/0UBCMvLuZ56wSoNEa6TL7XgPQKZIkFG2Jlorp4GAM6kMh
	 bNOoOP9VTQdB6Tp6eL2V/9lhCj0OcEual2DEgThYaEWcXgAiXwcYmdrqtfvxD4jEsP
	 zz8HzlZ2TkzTFdFlnZVAGGuG58mDsOIzsG2IFdj6Zu2qgCAW4ppLRqa3OHbNa/+YBa
	 Rf2jo6iP5sw0g==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Oct 2023 17:48:25 +0100
Subject: [PATCH RFC v3 12/37] drm/connector: hdmi: Create Infoframe DebugFS
 entries
MIME-Version: 1.0
Message-Id: <20231031-kms-hdmi-connector-state-v3-12-328b0fae43a7@kernel.org>
References: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
In-Reply-To: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4166; i=mripard@kernel.org;
 h=from:subject:message-id; bh=BW2baC+EjniG/ZZH9QzIRlNDubJbbQk6ybbnPB50Z5U=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmO+ve+vV6x5PiqefFl2psNJZjdl/C2hqwUFLyj5dj9y
 7J6Wc31jlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEzESpaRYZ+U+WkrMZfiadnm
 cdY7Z0ouXCNfaLtWrYH7qGxJwPlJVYwM986vumbxYAaPnvt7hh2L67p7y59VSNxr2rLOpNDHMlC
 WCQA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_094911_536666_AF63B7F4 
X-CRM114-Status: GOOD (  15.00  )
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

There has been some discussions recently about the infoframes sent by
drivers and if they were properly generated.

In parallel, there's been some interest in creating an infoframe-decode
tool similar to edid-decode.

Both would be much easier if we were to expose the infoframes programmed
in the hardware. It won't be perfect since we have no guarantee that
it's actually what goes through the wire, but it's the best we can do.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_debugfs.c | 110 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/drivers/gpu/drm/drm_debugfs.c b/drivers/gpu/drm/drm_debugfs.c
index 2de43ff3ce0a..3c65b1d3f926 100644
--- a/drivers/gpu/drm/drm_debugfs.c
+++ b/drivers/gpu/drm/drm_debugfs.c
@@ -538,6 +538,114 @@ static const struct file_operations drm_connector_fops = {
 	.write = connector_write
 };
 
+struct debugfs_wrapper {
+	struct drm_connector *connector;
+	struct drm_connector_hdmi_infoframe *frame;
+};
+
+#define HDMI_MAX_INFOFRAME_SIZE		29
+
+static ssize_t
+infoframe_read(struct file *filp, char __user *ubuf, size_t count, loff_t *ppos)
+{
+	const struct debugfs_wrapper *wrapper = filp->private_data;
+	struct drm_connector *connector = wrapper->connector;
+	struct drm_connector_hdmi_infoframe *infoframe = wrapper->frame;
+	union hdmi_infoframe *frame = &infoframe->data;
+	u8 buf[HDMI_MAX_INFOFRAME_SIZE];
+	ssize_t len = 0;
+
+	mutex_lock(&connector->hdmi.infoframes.lock);
+
+	if (!infoframe->set)
+		goto out;
+
+	len = hdmi_infoframe_pack(frame, buf, sizeof(buf));
+	if (len < 0)
+		goto out;
+
+	len = simple_read_from_buffer(ubuf, count, ppos, buf, len);
+
+out:
+	mutex_unlock(&connector->hdmi.infoframes.lock);
+	return len;
+}
+
+static const struct file_operations infoframe_fops = {
+	.owner   = THIS_MODULE,
+	.open    = simple_open,
+	.read    = infoframe_read,
+};
+
+static int create_hdmi_infoframe_file(struct drm_connector *connector,
+				      struct dentry *parent,
+				      const char *filename,
+				      struct drm_connector_hdmi_infoframe *frame)
+{
+	struct drm_device *dev = connector->dev;
+	struct debugfs_wrapper *wrapper;
+	struct dentry *file;
+
+	wrapper = drmm_kzalloc(dev, sizeof(*wrapper), GFP_KERNEL);
+	if (!wrapper)
+		return -ENOMEM;
+
+	wrapper->connector = connector;
+	wrapper->frame = frame;
+
+	file = debugfs_create_file(filename, 0400, parent, wrapper, &infoframe_fops);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	return 0;
+}
+
+#define CREATE_HDMI_INFOFRAME_FILE(c, p, i)		\
+	create_hdmi_infoframe_file(c, p, #i, &(c)->hdmi.infoframes.i)
+
+static int create_hdmi_infoframe_files(struct drm_connector *connector,
+				       struct dentry *parent)
+{
+	int ret;
+
+	ret = CREATE_HDMI_INFOFRAME_FILE(connector, parent, audio);
+	if (ret)
+		return ret;
+
+	ret = CREATE_HDMI_INFOFRAME_FILE(connector, parent, avi);
+	if (ret)
+		return ret;
+
+	ret = CREATE_HDMI_INFOFRAME_FILE(connector, parent, drm);
+	if (ret)
+		return ret;
+
+	ret = CREATE_HDMI_INFOFRAME_FILE(connector, parent, spd);
+	if (ret)
+		return ret;
+
+	ret = CREATE_HDMI_INFOFRAME_FILE(connector, parent, vendor);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static void hdmi_debugfs_add(struct drm_connector *connector)
+{
+	struct dentry *dir;
+
+	if (!(connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	      connector->connector_type == DRM_MODE_CONNECTOR_HDMIB))
+		return;
+
+	dir = debugfs_create_dir("infoframes", connector->debugfs_entry);
+	if (IS_ERR(dir))
+		return;
+
+	create_hdmi_infoframe_files(connector, dir);
+}
+
 void drm_debugfs_connector_add(struct drm_connector *connector)
 {
 	struct drm_minor *minor = connector->dev->primary;
@@ -565,6 +673,8 @@ void drm_debugfs_connector_add(struct drm_connector *connector)
 	debugfs_create_file("output_bpc", 0444, root, connector,
 			    &output_bpc_fops);
 
+	hdmi_debugfs_add(connector);
+
 	if (connector->funcs->debugfs_init)
 		connector->funcs->debugfs_init(connector, root);
 }

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
