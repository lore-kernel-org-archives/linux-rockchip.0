Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAF6CC48297
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 13:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z5Vd1ESG/MteGcs4+lo7OJCGazdujNLNV8rhKmwdbxw=; b=QpitNlTvAl+VZs
	x1Eo6728fg133cfirL9EKx6QFKguvn482AE8oECZ0qOpAE4/terttvnX0InYStygxTqIHaDkpwPop
	0WQ9MERYhf3ChwBz3XLwe9cHQRGx9I836cmafajjijNaZx4bCauoQNa+HL1Cl8J7CRhj2NpvN77yD
	8PmayNlURs2Bm6KrN9hxCVoOfJJb9FbWnDPMa+6OWgBrgKgWafSOzMVqhxFzOYIh5UZVqHlUYSPT9
	u9SkhcTiGgcPw58UuRzqpeDRzUe7MCTNkapDTfLOVWn0QgcP4vpiiwgFeuxAfL9G58fB72h5yee0C
	7AGkry6ZpsbjD7onZYAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZWAq-00000005Qzi-0mhN;
	Mon, 12 Feb 2024 13:16:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW98-00000005Pbq-0y5k;
	Mon, 12 Feb 2024 13:14:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=NZiRwbcs8+s+igy5MROyL2qq2lymr2B3rTgHV+/FhDY=; b=pGh14yad9gGJbrpGLWQBQmFsd5
	Fmz4kxqD6EDssYstN02qGe5gfGyQOMpuS+YtFqKRBS04EA4cXod9FHkmK3eNmO6mXj0CWHH7MfuFD
	c09bzPRi6DchFuLmYDZ1N/QrKJMb0OssOVDn0DWRZ/8r1cv6sVuVhx3KRdGUpgmLEKOSTyAdkaYjp
	OPtZgb14YWPEUldt5Y8BY+hLD6ZQCaxibJCKXuT8y75OutAMyc1Eue44Gj4fPN2/Jgt2nlAeUTtyu
	E5OjUPEYmSgMCfHQ8dfShv5Vs7FIJWxf3vctOmSZPr/ql/Ywh6AXD119G4AZMe9WfN8yC1x5l1jPq
	gbUMbH8A==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW93-0000000FIec-22Pc;
	Mon, 12 Feb 2024 13:14:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 201ED60FD9;
	Mon, 12 Feb 2024 13:14:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A012C433C7;
	Mon, 12 Feb 2024 13:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707743686;
	bh=Vk3XPPaEA+7bLaeUH3Fr8CFJ1pQDdSi7lf6Rme2EfCY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RogV7WOEShx13Aw6nqQSBmmmI0wc06MHPjtbRBOD7lM5XZSIr7QHlRtYt0h6n1xus
	 xwa1jsm3pKnZ2/De7JeebQNOt//DoB56/gQ7U/NciXe++D8dU1d7BEFMeK/fhf9fxo
	 kdYYcCeL/Fl4dA0lXrJ/IdDFIOv7tdibybnPfV12S1GZfpB8mMn0eE8eXaJRC/eYN6
	 kyq5RGwwJPH3FP6Rcab7phXE9LqSQH02iRPGoDn3wsygyrgYP2qlI+tMbXNkRKjt6D
	 bgsmYci7RF8Eqg25sAupcVgz2JdgV15KSs83IFKqzb1mgdHJZENXmyzileElPlspti
	 jJbECfiOETKkQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 12 Feb 2024 14:13:10 +0100
Subject: [PATCH v6 27/36] drm/connector: hdmi: Create Infoframe DebugFS
 entries
MIME-Version: 1.0
Message-Id: <20240212-kms-hdmi-connector-state-v6-27-f4bcdc979e6f@kernel.org>
References: <20240212-kms-hdmi-connector-state-v6-0-f4bcdc979e6f@kernel.org>
In-Reply-To: <20240212-kms-hdmi-connector-state-v6-0-f4bcdc979e6f@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4158; i=mripard@kernel.org;
 h=from:subject:message-id; bh=Vk3XPPaEA+7bLaeUH3Fr8CFJ1pQDdSi7lf6Rme2EfCY=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmnJPP11ppbqQt9Zlpj2iT4KZxn6d85Wu2XueUiEp/kc
 QkunC3XUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgIms28fwzzpi9/3Tl/qZxTfd
 MGrcWVVz+EOQ5lXL+HP5ZsHby2Y/k2Jk2H/UKiVL/gyT7v4quXPv35b8b/jhui9q3qeqgzbvuN/
 3MwIA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_131450_026796_F1525FAF 
X-CRM114-Status: GOOD (  14.92  )
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
index 08fcefd804bc..160389f3d84b 100644
--- a/drivers/gpu/drm/drm_debugfs.c
+++ b/drivers/gpu/drm/drm_debugfs.c
@@ -520,6 +520,114 @@ static const struct file_operations drm_connector_fops = {
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
+	ret = CREATE_HDMI_INFOFRAME_FILE(connector, parent, hdr_drm);
+	if (ret)
+		return ret;
+
+	ret = CREATE_HDMI_INFOFRAME_FILE(connector, parent, spd);
+	if (ret)
+		return ret;
+
+	ret = CREATE_HDMI_INFOFRAME_FILE(connector, parent, hdmi);
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
 	struct drm_device *dev = connector->dev;
@@ -547,6 +655,8 @@ void drm_debugfs_connector_add(struct drm_connector *connector)
 	debugfs_create_file("output_bpc", 0444, root, connector,
 			    &output_bpc_fops);
 
+	hdmi_debugfs_add(connector);
+
 	if (connector->funcs->debugfs_init)
 		connector->funcs->debugfs_init(connector, root);
 }

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
