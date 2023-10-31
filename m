Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CAC3C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 16:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAtZaU/ak7I6/hMQGaY2jg0TttGyI2RayLrZgNhauVA=; b=TMML2SY+LVlwW6
	qAPezzGZVxC27qqZy/FwHQ+pncuHXLHmrUExiERmVojxMda/HtVInDvVKq8WDcGZI9bg4yilhME5X
	hTZOuUcz1VkQvVFR52Nj307JfLnRrge4ur6RZBGmGvKQl/GmbyLe2Sn2CBz/qcdc+YhtUF7s28KJg
	nplD6besWbk/7CuLSEyyW4QsphnMe8u8poFg6pklH2bNkir5kmg3HRrHuR7fuX1rH5s2X0ESVzxQO
	JLAAVsxvclEIPlXKtqyP41gh6P8gTDg0HlcOnu2sTKGyPKjiGNBikvnMAsO9oAZa04F7PFjUh3Ge4
	kLqbzZoSAh62HOFeyK9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxryT-005lsj-15;
	Tue, 31 Oct 2023 16:52:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrw8-005kFK-1O;
	Tue, 31 Oct 2023 16:49:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C9E086104A;
	Tue, 31 Oct 2023 16:49:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40D85C43397;
	Tue, 31 Oct 2023 16:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698770991;
	bh=Tsq7e3D9EFCrDXU+KVxek7WzLF5tJh+8D3LvlOttulE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IxXhL6eH2LAQzA/N/x/N6TE2lgCorCtf5Py61yhu+4VG/kJACZkmXrayoERA/wy8Q
	 abxLk8GBruE4A7oJKt5m8Etjs2Z4wsQVMARrTvhWco+dh3YO/Xgl0KROWRk5d+xZzF
	 PMpLvC6eAkgL3olvobTRqfZIHmzQHUb5DC5GrOhgltDhsE36f8wkCJkz+v7SJTx1Ol
	 jCyXQSmRa3I2l2acgfilue6KeASbQ/a1EdhluIffllOkKW+kJ4tlgk1977i2JfxLws
	 BUF6cuGqFrExjqIV08qsz4Bdn8yv//fMnhU/ML5BshHuXPLEzQPmH3ZwGavdbnljNK
	 Nnz4aoohcL8SA==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Oct 2023 17:48:40 +0100
Subject: [PATCH RFC v3 27/37] drm/rockchip: inno_hdmi: Remove useless
 mode_valid
MIME-Version: 1.0
Message-Id: <20231031-kms-hdmi-connector-state-v3-27-328b0fae43a7@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1311; i=mripard@kernel.org;
 h=from:subject:message-id; bh=Tsq7e3D9EFCrDXU+KVxek7WzLF5tJh+8D3LvlOttulE=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmO+venxxocvujLPqNFSmtmTd/Jg/qL7ETcJ+b1a7js2
 xz8/gxnRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACYyyY7hn73Ay2gXgZZ+UfMz
 3pHX3Hqk/Be1JGedf62rtamtWchoOSPDlPr9NWbTZ1a/mrnNvrPts2uejZHmuWWfmthstyy/1Ob
 CBgA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_094952_541502_40DD47F0 
X-CRM114-Status: GOOD (  10.41  )
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

The inno_hdmi mode_valid implementation always return MODE_OK which is
what the core assumes when we don't have an implementation.

Let's get rid of it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index e4fe02b79a98..59b2b676b7b8 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -400,13 +400,6 @@ static int inno_hdmi_connector_get_modes(struct drm_connector *connector)
 	return ret;
 }
 
-static enum drm_mode_status
-inno_hdmi_connector_mode_valid(struct drm_connector *connector,
-			       struct drm_display_mode *mode)
-{
-	return MODE_OK;
-}
-
 static int
 inno_hdmi_probe_single_connector_modes(struct drm_connector *connector,
 				       uint32_t maxX, uint32_t maxY)
@@ -431,7 +424,6 @@ static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
 
 static struct drm_connector_helper_funcs inno_hdmi_connector_helper_funcs = {
 	.get_modes = inno_hdmi_connector_get_modes,
-	.mode_valid = inno_hdmi_connector_mode_valid,
 };
 
 static int inno_hdmi_register(struct drm_device *drm, struct inno_hdmi *hdmi)

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
