Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5272AC4829B
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 13:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCtmaz481NP5qb6Z8sMURTzylDE5dRD1YF4I0BHEV6Y=; b=iuGtf6Pr6u2kBK
	dN9PGaP6oysrtThkohVMWuzAt9VuW81f6jjv34hm8E4+lO7MkBAyp4M2Z9ZaCQWzICqFActALbaFU
	FkKSoY8RrCHc94IfnI3ao4eCYIkoM5TnbuhNCmLGlTasyNP3uEMol5yaIHpYd/CjnyBrgKazYjRzj
	/PQU5sx+49mdOi1KsDFiNwQ40KDGd0WhNNd6Ty0jjDg8Rd94M21jAgMHqKvNz2h15/hvl+K0/0/dv
	sv0lgkFzPn+ERkAblO9HXvCijXWVmsWOkVZk2Duk6tsNUV5Dozm5OFU4HdZ5/ECpexiiLoFh+BlU9
	l0TdFK5zv1VX7icMLn7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8m-00000005PHv-35HO;
	Mon, 12 Feb 2024 13:14:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8L-00000005Oqo-0Oj2;
	Mon, 12 Feb 2024 13:14:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=p0bW7ZwanmFTwDwXAsjQz6qJQPKdkJ6zgOpk8C2cnEw=; b=Tvyj6+YKSszqjju/VHiNJEYt6n
	av0Y6RpHPOSEk5SIINqyWcZGUX1BS0VMRyDuadBxzMBu3Ii+rD8VaoPFVhrFr82sN1d2BL3X8mf9G
	4h8EVwh8RKg+gE+pYB3/zRJnz7WaBlPf2xMW5MkxmWWntZUraGZk7kLcbq2DDIX3IBGqgHWmxBUkb
	Gwk71+IYUKbafTjjkVX+Hlp3g04UkBZSSb0ADGpER6Ib3wiiMWyR29Qxs0T0Xs/0dR2ZMCGth+KMQ
	K0DzbbF1joYUw/fTxk89OsIAeWAB5igvyONr5V9l9xbS+7S0WQmOv0TpvpLKZgjkUcNIxaRyBOSVf
	l5HJR7Ng==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8H-0000000FILi-2AiL;
	Mon, 12 Feb 2024 13:14:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1F3A0CE12AD;
	Mon, 12 Feb 2024 13:13:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AC7AC43390;
	Mon, 12 Feb 2024 13:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707743628;
	bh=ekRYwIKWq6y5QbBEMB/WwN89jVENEHbv42HIP/z5kwU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JYmLt1EzYcG9A5rQgBbKIx30t/IxdRkjOtxg3QWg3aFQ22a0Q8jNRdGlsIy+CPlvI
	 iAD4T0H3lBi+r9xAgKn7UdCCIBbq5WNf5KWLcyymUP5td5bRDsMHNteBhdolP16MZI
	 RTr9+Vi2inq7GaSskpstFtwkK0yrcsvW+Ch09LNjcZ23kggNH4bHaBP3BYxnlmiTo4
	 ZlE6NbKbQttIh8av1baMAemxmCZfjkfpi15n/0wxFD2ALtiWDY2iL7gjzGSpE1nyCt
	 dTVLwwiePQEWr4WpWq8/Hz91L9VWh/N5toZqKemJvBwGo5GyT+XjCAUp3Bl3xuPrYq
	 8rJPnwYDpg4bA==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 12 Feb 2024 14:12:50 +0100
Subject: [PATCH v6 07/36] drm/tests: connector: Add tests for
 drmm_connector_hdmi_init
MIME-Version: 1.0
Message-Id: <20240212-kms-hdmi-connector-state-v6-7-f4bcdc979e6f@kernel.org>
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
 Maxime Ripard <mripard@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4892; i=mripard@kernel.org;
 h=from:subject:message-id; bh=ekRYwIKWq6y5QbBEMB/WwN89jVENEHbv42HIP/z5kwU=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmnJJM+mT1bl/73zvFjyXL5y8OShVcvvX5ohebSlUwrp
 NdP+2Zq1lHKwiDGxSArpsgSI2y+JO7UrNedbHzzYOawMoEMYeDiFICJhNxgZNibe/TUnedOYpfb
 Hvw+Y9LIIrhL26ZkqUyRz82Tee/qLusz/A95f+7RUuXEm6l+/4V3q2z4Nify5qLOVCWT8CmTeh1
 n8zADAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_131402_021952_791DF5F4 
X-CRM114-Status: GOOD (  11.84  )
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

We just introduced a new initialization function for our connectors, so
let's build a kunit test suite for it as well.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/tests/drm_connector_test.c | 123 +++++++++++++++++++++++++++++
 1 file changed, 123 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
index a268847be8d1..8f070cacab3b 100644
--- a/drivers/gpu/drm/tests/drm_connector_test.c
+++ b/drivers/gpu/drm/tests/drm_connector_test.c
@@ -172,6 +172,128 @@ static struct kunit_suite drmm_connector_init_test_suite = {
 	.test_cases = drmm_connector_init_tests,
 };
 
+/*
+ * Test that the registration of a bog standard connector works as
+ * expected and doesn't report any error.
+ */
+static void drm_test_connector_hdmi_init_valid(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	int ret;
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       &dummy_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       &priv->ddc);
+	KUNIT_EXPECT_EQ(test, ret, 0);
+}
+
+/*
+ * Test that the registration of a connector without a DDC adapter
+ * doesn't report any error.
+ */
+static void drm_test_connector_hdmi_init_null_ddc(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	int ret;
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       &dummy_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       NULL);
+	KUNIT_EXPECT_EQ(test, ret, 0);
+}
+
+/*
+ * Test that the registration of an HDMI connector with an HDMI
+ * connector type succeeds.
+ */
+static void drm_test_connector_hdmi_init_type_valid(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	unsigned int connector_type = *(unsigned int *)test->param_value;
+	int ret;
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       &dummy_funcs,
+				       connector_type,
+				       &priv->ddc);
+	KUNIT_EXPECT_EQ(test, ret, 0);
+}
+
+static const unsigned int drm_connector_hdmi_init_type_valid_tests[] = {
+	DRM_MODE_CONNECTOR_HDMIA,
+	DRM_MODE_CONNECTOR_HDMIB,
+};
+
+static void drm_connector_hdmi_init_type_desc(const unsigned int *type, char *desc)
+{
+	sprintf(desc, "%s", drm_get_connector_type_name(*type));
+}
+
+KUNIT_ARRAY_PARAM(drm_connector_hdmi_init_type_valid,
+		  drm_connector_hdmi_init_type_valid_tests,
+		  drm_connector_hdmi_init_type_desc);
+
+/*
+ * Test that the registration of an HDMI connector with an !HDMI
+ * connector type fails.
+ */
+static void drm_test_connector_hdmi_init_type_invalid(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	unsigned int connector_type = *(unsigned int *)test->param_value;
+	int ret;
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       &dummy_funcs,
+				       connector_type,
+				       &priv->ddc);
+	KUNIT_EXPECT_LT(test, ret, 0);
+}
+
+static const unsigned int drm_connector_hdmi_init_type_invalid_tests[] = {
+	DRM_MODE_CONNECTOR_Unknown,
+	DRM_MODE_CONNECTOR_VGA,
+	DRM_MODE_CONNECTOR_DVII,
+	DRM_MODE_CONNECTOR_DVID,
+	DRM_MODE_CONNECTOR_DVIA,
+	DRM_MODE_CONNECTOR_Composite,
+	DRM_MODE_CONNECTOR_SVIDEO,
+	DRM_MODE_CONNECTOR_LVDS,
+	DRM_MODE_CONNECTOR_Component,
+	DRM_MODE_CONNECTOR_9PinDIN,
+	DRM_MODE_CONNECTOR_DisplayPort,
+	DRM_MODE_CONNECTOR_TV,
+	DRM_MODE_CONNECTOR_eDP,
+	DRM_MODE_CONNECTOR_VIRTUAL,
+	DRM_MODE_CONNECTOR_DSI,
+	DRM_MODE_CONNECTOR_DPI,
+	DRM_MODE_CONNECTOR_WRITEBACK,
+	DRM_MODE_CONNECTOR_SPI,
+	DRM_MODE_CONNECTOR_USB,
+};
+
+KUNIT_ARRAY_PARAM(drm_connector_hdmi_init_type_invalid,
+		  drm_connector_hdmi_init_type_invalid_tests,
+		  drm_connector_hdmi_init_type_desc);
+
+static struct kunit_case drmm_connector_hdmi_init_tests[] = {
+	KUNIT_CASE(drm_test_connector_hdmi_init_valid),
+	KUNIT_CASE(drm_test_connector_hdmi_init_null_ddc),
+	KUNIT_CASE_PARAM(drm_test_connector_hdmi_init_type_valid,
+			 drm_connector_hdmi_init_type_valid_gen_params),
+	KUNIT_CASE_PARAM(drm_test_connector_hdmi_init_type_invalid,
+			 drm_connector_hdmi_init_type_invalid_gen_params),
+	{ }
+};
+
+static struct kunit_suite drmm_connector_hdmi_init_test_suite = {
+	.name = "drmm_connector_hdmi_init",
+	.init = drm_test_connector_init,
+	.test_cases = drmm_connector_hdmi_init_tests,
+};
+
 struct drm_get_tv_mode_from_name_test {
 	const char *name;
 	enum drm_connector_tv_mode expected_mode;
@@ -236,6 +358,7 @@ static struct kunit_suite drm_get_tv_mode_from_name_test_suite = {
 };
 
 kunit_test_suites(
+	&drmm_connector_hdmi_init_test_suite,
 	&drmm_connector_init_test_suite,
 	&drm_get_tv_mode_from_name_test_suite
 );

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
