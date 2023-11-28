Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFBF8C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDQjlf6Cctfwd1GAV8Vz/bLqzggHS/IEnWO0B/Qhzuo=; b=ZJ7saXzr50Eu3g
	tv1Pa3pHz257BmKK5u6fAeSLThYyvYlKOc+UgYKAUOMGipdWt9/Ci5vNKtw8FUAmjTLDvcUGCmZf3
	SoUxNOEAhARSH8WnuXH7b1tlUQk+2MRsiAnUKNS2vOfCgxDxQiEh0V4INok6U1fmUD5TjW5YBfG/L
	/YkdjMKEoNo12McxkWIjEJDw6Zaz/jGJyDJYvLv0Q0eIwDQlbI9A4DsNvQD1/XvUlRNHllpd5T/hT
	DBGmaWtesfRXQrmjVUeDePCB5rNMs/qs67KdJCudxskdyRuV/Ib5Yf8awn/QicwiS2d/grxrnGli/
	LtwFV8c4egJj0TQ1WAKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vIS-004t8O-0I;
	Tue, 28 Nov 2023 10:26:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHe-004sK4-01;
	Tue, 28 Nov 2023 10:25:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=odA9eaPYm6o2lyXzAO7BCz/cxyxgY+xW/LsHIfhomaU=; b=oAWvamxL4NI8NnEKvCtEK7AvuP
	b1APWfjT2uj7liM0PfYe1ikKLP7jI1QmdyWpnydwiUBfAnYJnDzHQ78Tv329Y2KF7vjBCb3A46YLl
	RxlF3Xxapea8kUsyfZpVYrcf+IGs6s4+6+SzitEqp27L+OVAzmGVELUzi6VbbCZB07OEYKt3TbPLI
	yGu5ZQn4VquOBjfYzS/1o49THUd9tewqWGYSjZRQZRbu8uTAOQNykGCZPq0xBXoItfXEILithA0Mu
	9+zfeIQsVA8vbC1dKvAZK5vw35A0OrPHPmxQE5xrGVrVLlmwioCHhW7Hv6ncluOuXhFUqib+eP+S3
	as5cyMXQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHZ-00GaFh-1Z;
	Tue, 28 Nov 2023 10:25:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DB767616D3;
	Tue, 28 Nov 2023 10:25:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AE06C433CB;
	Tue, 28 Nov 2023 10:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167131;
	bh=hjO1thsBtNWKgoDt95oSE/97xbheY9O5MXtc459uiLk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=UWmA0Mmuz6Wg/wyPenWOGa0an7MePvKk1C+HVBwf1mo7DEDPuQUar0+fQZM7gUyQn
	 XvPVrLXjx7hy0lqI8YvSAsoQhs1Wz+WiAuf4Dm4mNPLO1CvLCkXQC3vyN4i8j4nO0i
	 IsEcaSnrtLs50/3AD1xWXacMbtoZX+7VAW8ZH/U4nVRhe9kuktIX0rgYzoeq+/XFJ4
	 MpxHej5Z//e/NqTNUW0Si0fI8yn2JnyoDwCsuUX1Ix/m7axAvXTkeQ0cVlSX8rGu6z
	 BaugWY5AWC/BZD6fN0HPm736+uHjivTtpPEDj+IW2Bhtcke985EgqM08xUv1QCM6fM
	 tTI5A4619Ma7w==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:35 +0100
Subject: [PATCH v4 24/45] drm/rockchip: inno_hdmi: Remove useless copy of
 drm_display_mode
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-24-c7602158306e@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1075; i=mripard@kernel.org;
 h=from:subject:message-id; bh=hjO1thsBtNWKgoDt95oSE/97xbheY9O5MXtc459uiLk=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y8FxJirrWWpmXzGTm0VtzCfU8Hy1EbrWfUz/qV4T
 tDaxXyto5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABPZWMnI8DTu1cmX/X+/y+64
 1Zy/YVfXJeX9zdvMRERVZ7mmRVtZMDD890iaXucmJOcRtCHJZNGnWTWrIs+J39n3eJ3P5U1FCYE
 57AA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_102533_789515_98699472 
X-CRM114-Status: GOOD (  10.94  )
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
