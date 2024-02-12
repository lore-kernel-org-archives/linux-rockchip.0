Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 771A0C4829F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 13:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYmmj9wxde/LzKpJb512mJ41spNuTrQY9SDMfZs3nyc=; b=TG3CC134TFFLiz
	OKKqe44tvBTFJfvDuHVn/JPn77PRzMnzLNSgoxATsu48/gFv4cW3inZmBM1XMFzpaU4h6+uxyRIPw
	uoPvsqDYffbG8t5ijHUar3r5pU0P3xgdG4z2962fhAsZIko26O2LcBN6fCiycJ6wE0zXkCtV4MA7O
	DyWaBZMu9WpRmW8Wz5SLUz7ZdIOF1SIyNbBOQojAcZ9o5YpTlEqWP2AhnOJad7yaPHFle5uPUhfiB
	4Lt8llRgmrpq1Q7QIfTTgA2ExntBTWnPabiiD/WlPZWVQtJbErV7fS31TPrbXoksSZqHWkAu0sG48
	OrMhnkUJ7PQfweKOyHog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZWBt-00000005RqK-1jVi;
	Mon, 12 Feb 2024 13:17:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW9P-00000005Pr7-04Bt;
	Mon, 12 Feb 2024 13:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=8X+6xpGvGMK4DaOOfocn5mZ/84gxhJwU8WJdEmQq88g=; b=LWDoR9GoesiWVkMxu+Vwdh30NB
	TIN/E+AQynHxJeMeVaO4S6TzidBNZr1ZsSDD4StbZeUaI166Os3MYz6ujBK9w0UNSd2Bl0OV1E6VC
	ak0db9sMPpN0t84GAURqPN0JGV/4R+6XUc+IqSRdZsISadiCTqOcR9GJh5AF2EtZJ1qeGMOBeYxZf
	hFiLfdBLorBq3Crz/UcfWuWwNZ2msPNV3x9pP/DPwBesIwfb0YZD1kplrphnSbq0KSiKfoLnhF5o7
	K3dC7k9P5lgClnMEFSY+K8f1OaBTftj18vrzOrTNt2dDGNoRaCuBfPejY8693B4vlXHDZUITk0TLj
	S+/3wfgQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW9L-0000000FIlk-1Ga8;
	Mon, 12 Feb 2024 13:15:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0D64260FC6;
	Mon, 12 Feb 2024 13:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 376E2C433F1;
	Mon, 12 Feb 2024 13:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707743705;
	bh=pVOwlxGRG4Yx77sVCEVDWc/W+8/UbYOVd7SBFXh+HU4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Ui7XWkL0oI5fI+U4c+5RDww7fbXJ7n6ga02OInJjaLdlqpnx0TXzXuSEOommzRzZO
	 Pb9VW5WGRbqJMPszuaD+NxwHwTtJdNZjyySJG5gStr+o/hP+0yAbK6AT3oiU9YdD/m
	 jK79GfBaYCpvE/tIcoA8NnYab0E3Fm8vPb6K3+gvvR78pFSCCZcV1nqs/maIOOk/6c
	 GO74aHFo4IB5M8DbqRzwCZOATCyKLTgfqrLTdWoB7x8yNrf07LOOVdJkmSKKEXrRgA
	 XzVidhy4Dzkx+6BGuDSLHJ3ONUDcP8kzPrvO8qixDrDD4mGWwQ9rPNeQi89idxPRwE
	 H7onuj7vJK9XA==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 12 Feb 2024 14:13:17 +0100
Subject: [PATCH v6 34/36] drm/sun4i: hdmi: Switch to container_of_const
MIME-Version: 1.0
Message-Id: <20240212-kms-hdmi-connector-state-v6-34-f4bcdc979e6f@kernel.org>
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
 Maxime Ripard <mripard@kernel.org>, Sui Jingfeng <sui.jingfeng@linux.dev>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1396; i=mripard@kernel.org;
 h=from:subject:message-id; bh=pVOwlxGRG4Yx77sVCEVDWc/W+8/UbYOVd7SBFXh+HU4=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmnJEvizUo8N/gt2Ch6I6iqf8P9PsXAzoS0a4uuKtfuE
 eOcwz+5o5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABN5vZ6R4bbnj3Uzs7lj/x8K
 fB2SeWCtiqn/eudNSxn6J3WuTf29v5Dhn0nnhvf51TaRJ5WYt9Q0Bh10X/N5tr4VB0eBxWFfO41
 GPgA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_131507_559743_8D3CFC1D 
X-CRM114-Status: UNSURE (   9.21  )
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
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
