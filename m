Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5160C48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhAnPTx8hA+6730c+MpvNbRhdNGy+jHRkLFwhEFp2jw=; b=y9dRTO0SuZF7yH
	WKY90m+NRxw+JMFvzqhetDUISVeZariLtmYKP2m4E3g02yVIAQAHPLkKFHKuwgQvItpEqzvaKRlU4
	4rMr7ruBPnyvy+PXiY90fTs8jGESxMG5i406sE2aC9jVWbEnCGqsfCJkI0Yh1iEMB2RQ42tVe/rz3
	ngGkYMaIoCiXZRyJvh4bK/f4AA1NVbAeIIZjQKiZqNCmb/acnWJokbJJTzb6Ayey90CXdwcwdMxz8
	PPudJXk4aw3/Rp3uNoDxji5UxXhrrYdgFYB0py1MhLLo6bK1HYF+quFFoVm/DHi7WCscG/2LilMxW
	SA64dob7wR+ob1y9oaTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDzC-00000006985-2bfW;
	Thu, 22 Feb 2024 18:39:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDz4-00000006906-3R6w;
	Thu, 22 Feb 2024 18:39:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=QIST/Uzol5i65SE3NJG6Cz7GwzPANcUlEWG/IP/5F4A=; b=LcLiI/9rZ/b43Eo0Z/7WVPyjIw
	+YY+bo/e+wAP6nNyllRcrXQUMHrIZyDoq7vc6R5fzl+3cB8O3ujtDLd09Nw+bUmNG/riOzR369RJP
	fIjR2pR+iM5GLjE6e9xuDje4dIMsSKrqq+KgkcLX1ktr4OPSdlSIv8tXmCH+cV5oj7u79rE4C5Clz
	4rOpG9U+ZgF9s1tEuPVYl7hvWjhzfvQWOgSBee73Mb7ApCTCiO1wkSwprmklHtbOcBvIP1K8Ikg0k
	+l0+GxTf3jXHAhL6kH3JLteVWI8txXepoKkHSsI7RhUDCZB9OttwgkCSu7o7UbhxXA6Dv+LCIVY0f
	cDABlyXQ==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDcD-00000004J17-48b3;
	Thu, 22 Feb 2024 18:16:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EF7DECE28DE;
	Thu, 22 Feb 2024 18:16:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42413C43399;
	Thu, 22 Feb 2024 18:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625763;
	bh=BTZIvRqcuCTEKcvLPQKN0PrMjRjf9kk4vsMhE/kOVtY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Jmup7ZtY0PC+Ppu5C9ix3hOqqK5wEZ+noUiy7APcEAVG25bVpcSHzOT3QYUEWPg38
	 vnn4IWUvYJxk0rsjc/ulwqwwMM0SUuBWZ+W51mnhum9GoapU+0A2X1HB7caJRJ/CVd
	 6QxUKYzJujnEoj4nY906EdIxGaCGNjVSe8yjduq3cOcR3Z9T2stK4Zqv9eUyWu/Erq
	 i0GfhITXuFwGCFBn8Q7XeAhLGwpl3V/zfHEVZblpqKzKKuR9UwiEckxcrnQSde6Ue3
	 JXjHWcBEN+d556PrpEKnPaRksE9yZKPSvQcNDURhngA6f66MCIzVFCG4n1PMSj83vS
	 f0fzYZ4fejIrw==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:14:20 +0100
Subject: [PATCH v7 34/36] drm/sun4i: hdmi: Switch to container_of_const
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-34-8f4af575fce2@kernel.org>
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
 Sui Jingfeng <sui.jingfeng@linux.dev>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1396; i=mripard@kernel.org;
 h=from:subject:message-id; bh=BTZIvRqcuCTEKcvLPQKN0PrMjRjf9kk4vsMhE/kOVtY=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnX+/69f2n8caKoQub+F69/+e2KY3v54bKK+SHvnykL9
 me/4wzt6ihlYRDjYpAVU2SJETZfEndq1utONr55MHNYmUCGMHBxCsBEOOwYGW5MTL44peuu6wL+
 f5aCIedmyan++RhyZeIKdiFl2Znn9vYz/A+ak310c+ZsyZfhR0Ul1TeK2r3+57NoRdPiCzFbJp7
 xucAOAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_181614_746672_A47882E7 
X-CRM114-Status: UNSURE (   7.59  )
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

container_of_const() allows to preserve the pointer constness and is
thus more flexible than inline functions.

Let's switch all our instances of container_of() to container_of_const().

Reviewed-by: Sui Jingfeng <sui.jingfeng@linux.dev>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
index bae69d696765..c276d984da6b 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
@@ -30,19 +30,11 @@
 #include "sun4i_drv.h"
 #include "sun4i_hdmi.h"
 
-static inline struct sun4i_hdmi *
-drm_encoder_to_sun4i_hdmi(struct drm_encoder *encoder)
-{
-	return container_of(encoder, struct sun4i_hdmi,
-			    encoder);
-}
+#define drm_encoder_to_sun4i_hdmi(e)		\
+	container_of_const(e, struct sun4i_hdmi, encoder)
 
-static inline struct sun4i_hdmi *
-drm_connector_to_sun4i_hdmi(struct drm_connector *connector)
-{
-	return container_of(connector, struct sun4i_hdmi,
-			    connector);
-}
+#define drm_connector_to_sun4i_hdmi(c)		\
+	container_of_const(c, struct sun4i_hdmi, connector)
 
 static int sun4i_hdmi_setup_avi_infoframes(struct sun4i_hdmi *hdmi,
 					   struct drm_display_mode *mode)

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
