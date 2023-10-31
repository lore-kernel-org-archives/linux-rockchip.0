Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02DEFC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 16:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDQjlf6Cctfwd1GAV8Vz/bLqzggHS/IEnWO0B/Qhzuo=; b=lJfM/un5VNXNGl
	So3x51fbzJM58c/FoBpCT55RXhjGvUjmUbN9QG7g+F9+LmSJHa9m9mynzdtDUbo0hrFC3SdcmFEGX
	4nOIl80jbbUaTnz2T1D3c9vz8DOS88U8fmRcbUBHjbkqwH+YJAMrUBPskpTktIwNZpyMjjm588KbL
	sLW41C47lAcKGYT22kWEW8jejTZ1BGS1JQd1QEVGnWTaXawn2REAxr0SzfwtECtsI1YgHON1zwP2n
	EIuRbboekHgI3HU3vJeDwHm5+pOJl+S8X5NUQc2xbyVXes8lRwormVxR2sbJbYdjdu/58/7KAv5ry
	snLv0DCQJvTva/q3ryvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrxg-005lPW-0n;
	Tue, 31 Oct 2023 16:51:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrvp-005jsZ-15;
	Tue, 31 Oct 2023 16:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=odA9eaPYm6o2lyXzAO7BCz/cxyxgY+xW/LsHIfhomaU=; b=czNzzQjVxPLrGdC61qNrgavr8j
	BtbSmmzW0Xi16UbHx5HLKX0AzgOjAM+QThpbXlywmNfxQ5nJ6pmt5LktoSz/QjgnIMwVKmR0iL8ex
	e0wghidywqIWOR2kVz211MsOnXJZPsiCNHMYluv2Rlb1pygddfD2tQcATcMKtLdzic6x4MkkkYP/D
	JZsZf6qTfjPVi3JKIKTmhj83eJONb25CU5pHVTKepS3jnzuiOCseHbQt2GQf9peuZ0vqxAHvc4JJX
	CPVHW0kQgvF36MSxBu0sKes8GloGhz6yoyJqWHRcvODG+/W2YXQtolMCohcUjVzwbx7491r4iIqvh
	nbGA1EaA==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrvk-004w7R-1c;
	Tue, 31 Oct 2023 16:49:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8E4C36102A;
	Tue, 31 Oct 2023 16:49:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7200C433D9;
	Tue, 31 Oct 2023 16:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698770961;
	bh=hjO1thsBtNWKgoDt95oSE/97xbheY9O5MXtc459uiLk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=eO8w93dpaAwkGijK5tNBw//6sqqm8PohRQimWd7JyU27VhGzpEE3T5i9hG+55fYbh
	 Al1BQqBsSkPmmrdBSfjgx/Abzdpnwm+IJpk0jh3Nnxi+nDaEiU+1ocymPTdzndUr5S
	 cJY0x0erIvwHqVRv/0erjStDz8zasg3DsJ8PMs5q3kz53AymJgOSpcClaKQtVwSJOJ
	 D91qYMpfaVH+5gQtJbsa+KNtG89KzvA8WCOkeGnOC55RoZ+SxzJusUis1ET5+aksJ1
	 FFiLrTVWXAl18eR3jFG2z5LeZpJnmy8l2S0RXrimnv167HyU3NkSYNVpFAkqSPhwRm
	 GdaOSs700Sk6g==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Oct 2023 17:48:29 +0100
Subject: [PATCH RFC v3 16/37] drm/rockchip: inno_hdmi: Remove useless copy
 of drm_display_mode
MIME-Version: 1.0
Message-Id: <20231031-kms-hdmi-connector-state-v3-16-328b0fae43a7@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1075; i=mripard@kernel.org;
 h=from:subject:message-id; bh=hjO1thsBtNWKgoDt95oSE/97xbheY9O5MXtc459uiLk=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmO+vf27E3KXeoamlw1xXTrpl0b3YrvWKvzh+mvux63a
 vs1g+9JHaUsDGJcDLJiiiwxwuZL4k7Net3JxjcPZg4rE8gQBi5OAZjIeTaGPzwn2hKSjk74L1Hc
 WZoVVr6yoGHbpaYUqcXdEx5PlrTfvp7hv4fm589cBwUPcemYJGxW/7/N8NVD5TkCzdtsfsS01O6
 LZwYA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_164928_751590_44AA93DF 
X-CRM114-Status: GOOD (  10.52  )
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

The driver maintains a copy of the adjusted mode but doesn't use it
anywhere. Remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index cc48cbf85f31..4f5844fc115a 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -62,7 +62,6 @@ struct inno_hdmi {
 	unsigned int tmds_rate;
 
 	struct hdmi_data_info	hdmi_data;
-	struct drm_display_mode previous_mode;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -498,9 +497,6 @@ static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
 	inno_hdmi_setup(hdmi, adj_mode);
-
-	/* Store the display mode for plugin/DPMS poweron events */
-	drm_mode_copy(&hdmi->previous_mode, adj_mode);
 }
 
 static void inno_hdmi_encoder_enable(struct drm_encoder *encoder)

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
