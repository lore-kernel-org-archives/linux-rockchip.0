Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86B5FC07CA9
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAtZaU/ak7I6/hMQGaY2jg0TttGyI2RayLrZgNhauVA=; b=ZmOzJ3vhpSUGJP
	d+5NAxmAyq1vT1psPBGet4gdRNQwks5UKl3Vf0ZlLVLI/22RmalPq89BpnHoAe3zUJqph4pGlAeKi
	nefX/73SUQ6+4EKSm8teqkFiGp8Re1v6IhH24BcNTpGvjCTRcr1YtHtUmoPaJqc++ShWejpr4+sKp
	htj5tVramlg9wxcgOG1IV4JuQub3G5o+Tt6hhyW4X9GMk1SUeJOAbHgZrvydJExIWZ2rFMACRExzU
	ju/A7T6LcmNQVdMt9zRtDhNat+4y1qUhu+yhR6QymMoWi3WfbclhTc+bkbnIaNwgDtr8Cigl67wY9
	4t60GKeqzaH7ad/rn6Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vJH-004u7K-37;
	Tue, 28 Nov 2023 10:27:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vI3-004sh9-1h;
	Tue, 28 Nov 2023 10:26:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D77AE61659;
	Tue, 28 Nov 2023 10:26:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 514E3C433C8;
	Tue, 28 Nov 2023 10:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167162;
	bh=Tsq7e3D9EFCrDXU+KVxek7WzLF5tJh+8D3LvlOttulE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hYtHXnV/DP1zk4Ft8ibxsmPCl9+wP/6lWT9f5IkblkB1bXMl/KTRWnIyvTZu4bWT+
	 boCLud9xbeQt/hRBDzuo+A2ezEp3dOlaKa5JWF9rhdWb3w61v/48JdWjUh/LBH/63Y
	 Sb5iyid3y9b3343BodoQgQLDHC2hGIsbtAu2g9knlz63IYyoNacy0weqe9XORaFiXK
	 AtjAM+XW+Jxs377sS4SaVVeAK6kWZ3ZF88hdvXeKNuCT3w9xWv/xgs6OpZXS3rYAQC
	 joH9LbNcvITGmRkPY1CxaVw3ZeL6scF1uRaipxiaKCrj/xz54Bg7gANjIT30AGi2p0
	 s6KV6IJnNXWsA==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:46 +0100
Subject: [PATCH v4 35/45] drm/rockchip: inno_hdmi: Remove useless
 mode_valid
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-35-c7602158306e@kernel.org>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
In-Reply-To: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
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
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y8VXpzw6Li59FTz+PWpT1NbVKee2CZziOew8pnEX
 85slw/ld5SyMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAixq6MDPNO2bOnzar/cNth
 1eeFTvE/u+s3Ck0IXNY09THj7NKXXjkM/zT3mf8Mdjund22fzH+frpLUz3uYHNfpekT/mt85Sem
 PAiMA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_022603_683201_2AF4CD83 
X-CRM114-Status: GOOD (  10.73  )
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
