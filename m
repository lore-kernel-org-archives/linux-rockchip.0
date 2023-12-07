Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C78C9C10F07
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 17:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJqNCM5MbKUcwY8SkB1M2IxlZ0io0RoER8TbNeU+18A=; b=lA7S7uEo3t2R4Y
	Shwl3USdb5fzNL6yDe18P6dIoSDHO19ljEk9xeffdbeYqFGxBjOQnnbs0fs5olZ941rr6xrqhK3t1
	UJ1J7WJ/aMb5XoJsdvfOCFkq93iQTVtn4LC1KrF12CMqSnDiz+o3yUAMsgroHhM6d6sqLuDkJsMn7
	okATL07sX20KFIIXqvyu1Rrh8vLwYgw1xzyEet4VBoW5+Z2rkdXCJkxlwouildApKzPo3fSXLUkmT
	xfQYs09Ea5Gw25qiGigeDK0IJE6eranxMUJBkugkFjvafmezxorWKAsd7i2QTDVB2/eGWvxmnIrVN
	31lEvePBfZnECPAInC2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBHk7-00DT97-1i;
	Thu, 07 Dec 2023 17:00:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGe9-00DH8c-0u;
	Thu, 07 Dec 2023 15:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=BLUhXN/ik/w8Dhf9aUCezYOINU/4n7EbitKMKlDP4D0=; b=dRgLYUgAkagykWAx47ujXjgG+R
	DuApje/RFaEsxWmm/NozrWWr0ruBv6+WJ4kvMhPYiuWfrer/set+HY6vPgYoqL3kAaabV2NFg28g9
	q7aVRovn+ZhzLbbDlJdyDr3yHpUfm1iBsSneTmhAKeTahFV7XA0YbpaoxOt66UGhHC6ekM63r1m2h
	HxwOc1W9mluNTfM3FQs+v3Ew4CginJRjyuqzcsWWGpE1VRbyU+D1YPsuIVaVCnPsfD1b9qbAEJ89o
	vvw5xrYpEu/l7YfZzXZZle0eE319pg5/5nFxb6Lxtwv/Y0WryHPFHShqB/QOJSc8jpmmoIQK59nel
	uiNda6Ig==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGe4-0062Tl-21;
	Thu, 07 Dec 2023 15:50:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1096E61E91;
	Thu,  7 Dec 2023 15:50:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E025C43397;
	Thu,  7 Dec 2023 15:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964234;
	bh=phzceb8B70mg3i7At8pe2/ZP5A/7gxdjK+zKoU+Xok8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Wz0uoplm0ouPBUuYOQ9eku7KQkOLFTDQDIA/jZ1EhlhVYnLOBE0gCd6VAmEJj0jAf
	 32ee70xMrIS3CcBnneZlCws+ZRjZt+Maia7xxmOc9SBcjypv59j8JjzunT2Dd0lMTD
	 GOU63t3vZGAgL8aJd8LYdJ3/z5L9qIKAelWbUjcvbuq5b1v5i7wpTir8YlLP2HQGnu
	 jcp9uIOvA/JtB3+/kMQRpn9Sg0Re/e054ItrB2TUnmqtYPZgpnhHXwETFMalUa0gth
	 gsPtacypWUkuSYMg/UNr3dqWrAQtN54BAxApNVsQpDpWKg68X94bPeEs6rY+9uJHlg
	 f1Au9kyViC6ZA==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:45 +0100
Subject: [PATCH v5 22/44] drm/rockchip: inno_hdmi: Remove useless
 mode_fixup
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-22-6538e19d634d@kernel.org>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1301; i=mripard@kernel.org;
 h=from:subject:message-id; bh=phzceb8B70mg3i7At8pe2/ZP5A/7gxdjK+zKoU+Xok8=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9vYRKNNtlyR2N85ee8iWwfRf7wWpQ9KGlJTgg48l
 l95p6Kuo5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABMJXsbwmzVwk2rbfrNYrXkW
 l76tmjdBjquhq0VCrkaKU+777Vvhggz/E7epWriYBb980y926m5kxe73e3lWTO+ztam/bvncWjK
 IFQA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_155036_919496_6FDB1420 
X-CRM114-Status: UNSURE (   9.15  )
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

The mode_fixup implementation doesn't do anything, so we can simply
remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 6e5b922a121e..cc48cbf85f31 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -517,13 +517,6 @@ static void inno_hdmi_encoder_disable(struct drm_encoder *encoder)
 	inno_hdmi_set_pwr_mode(hdmi, LOWER_PWR);
 }
 
-static bool inno_hdmi_encoder_mode_fixup(struct drm_encoder *encoder,
-					 const struct drm_display_mode *mode,
-					 struct drm_display_mode *adj_mode)
-{
-	return true;
-}
-
 static int
 inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 			       struct drm_crtc_state *crtc_state,
@@ -540,7 +533,6 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
 	.enable     = inno_hdmi_encoder_enable,
 	.disable    = inno_hdmi_encoder_disable,
-	.mode_fixup = inno_hdmi_encoder_mode_fixup,
 	.mode_set   = inno_hdmi_encoder_mode_set,
 	.atomic_check = inno_hdmi_encoder_atomic_check,
 };

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
