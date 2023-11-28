Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC297C07E98
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 11:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7u+TfF9uKg5SaOX7Dvw/jQiEpPq3U75CUPEob6aXVc8=; b=1Liz1101bfor6K
	ny4yX19aK+UOAf6oRhfRh+gfjKCgMbgnJD+zHiijIY9UeyTgsHiw2GHOuR/KIhcV8HWankjNejj2X
	N0BmYk+Vz2ZiP2kJSJolNr4NrKpOfGLoVsDndhLr0/YBHpnHp6zTestZx95iH3aZ9fMgpMNGGFpLc
	zOe2QK5uNq2wtg/QCFT7YErN09zXdvIqoAz0A9A/WCo85qems3Nc+XY+JdKzqp7ajSCoEVYvBbV9F
	h0zutVBEZ1ved5SqJFV1ui11mi834t7MpG8iXQhAOzbK5gnouZS/Hw8FVD4h5diUGOcd77+k+BEF1
	ZcuWPNg+8AFMqfL33Xsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7wJU-00558j-2J;
	Tue, 28 Nov 2023 11:31:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vI3-004sgi-0g;
	Tue, 28 Nov 2023 10:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=8Nl9bGNqAPpiepv4w30W/qEg/xJbn1Xl81QEIJ8fuqo=; b=hv6e5LjaenRzgtCZr2M6fFy0bD
	DumDmQG9AxWcV2754phUOkU8Rg/KdjGh6Q17rtF0JzwUuI+TAl8frGTC1ufLe5r5P9WGVpaPhIsgv
	TdYhjQaNFjGsMtvbzQKfU/8GyNdhQ/rcPzHrxyZoKmMH0MscdIhGfjTA1+FZWTndEbbpmX3QwzLht
	vjCQsFO3iU5EDmNQXPyy+IV45BOisPI8+vcjPwNuwsjCfef1epp9E0QNK/EHNw2D4L+nzkIOuNpq5
	DzPf6f+cdKtXWsf2FmkO1TdN+2X8y34EfzVe0w/vZpu/hgMRLmVEQzcnkIlwfDCcYV+TkhySFVGLL
	+k6GgyOg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHv-00GaNy-33;
	Tue, 28 Nov 2023 10:26:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9249A616D1;
	Tue, 28 Nov 2023 10:25:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4CADC433CA;
	Tue, 28 Nov 2023 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167154;
	bh=49oNkv+eu8/9sfrO1BY+OxAGBqGgL52MLLkCN1HQuy0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=czeAh0Sn3LJXVE9DdOC9E2o8aegC2m3C4MaUobLgw6Pd6EkHcizemTiiBbF4a03uk
	 grRn7WuJuXlgpZy9PLGYXE6U+GmVkgw2TDBoN8+m5ZtSlgJJUHzDA9FmGrdE0yJKcV
	 J6OA4UFxzw4trrdDFldRDqPm9erovqqmxUN+Y7IzuOUtn6ii7ufBeM/Vz0MkrtI/RT
	 tv2uFwYQ7r23BOfvVYTVkrdVk/LYMJNnFv612PmwReMwL+2sJ9Q1R10aq3SmhEXLj+
	 EiKHPqRQtiaUm2/+ty8151Gf88jU+30dYyolUOjfCTB0IQ7NAO7VASoiZyIp27+tzV
	 riF3z0KvlzyJw==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:43 +0100
Subject: [PATCH v4 32/45] drm/rockchip: inno_hdmi: Remove useless enum
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-32-c7602158306e@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=968; i=mripard@kernel.org;
 h=from:subject:message-id; bh=49oNkv+eu8/9sfrO1BY+OxAGBqGgL52MLLkCN1HQuy0=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y+5XF8fLPQ3KnC9q1aMzJ1tJ+e4XzimdGPP5Y4Ws
 32b59xZ2VHKwiDGxSArpsgSI2y+JO7UrNedbHzzYOawMoEMYeDiFICJ+Gxn+KcVdules+vTiJqP
 ur9nPGbeeIjRnkt3fdkSlz1S98zPT0tk+O8wS3MPn33hTjPbDTccXZ9IXJtm93px6YKX0y/vzFy
 hv4oNAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_102558_451468_97207C3C 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
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

The CSC_* enum has no users left, so let's remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index c342bc8b3a23..f05417c6b637 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -66,15 +66,6 @@ static struct inno_hdmi *connector_to_inno_hdmi(struct drm_connector *connector)
 	return container_of(connector, struct inno_hdmi, connector);
 }
 
-enum {
-	CSC_ITU601_16_235_TO_RGB_0_255_8BIT,
-	CSC_ITU601_0_255_TO_RGB_0_255_8BIT,
-	CSC_ITU709_16_235_TO_RGB_0_255_8BIT,
-	CSC_RGB_0_255_TO_ITU601_16_235_8BIT,
-	CSC_RGB_0_255_TO_ITU709_16_235_8BIT,
-	CSC_RGB_0_255_TO_RGB_16_235_8BIT,
-};
-
 static const char coeff_csc[][24] = {
 	/*
 	 * YUV2RGB:601 SD mode(Y[16:235], UV[16:240], RGB[0:255]):

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
