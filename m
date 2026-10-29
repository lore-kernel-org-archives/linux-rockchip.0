Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86787606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 08:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KeN9Rg+i;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=airkyi.com header.i=@airkyi.com header.a=rsa-sha256 header.s=altu2504 header.b=JtCwe4Zy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Unsubscribe-Post:List-Owner;
	bh=KYKef9JBUm4w0b7kG+xdQNsSf4hrhaKHDaU7zofvDww=; b=KeN9Rg+ipDsNyh44+R6BsXvO03
	oT34QRNniFJKx8gE8rE6OpVBWhTk1GrWI4Y86jZXC//2YHCaP3r8G0OtwFoEHQb4//eTn6Mg/xcC+
	5+6PTLUlCDtPpLthaWYey9TUZBPfGOOHE3KzcuHaMRrEBUJ3QeNUpJzGFw+ZEwdDMEgGcEEEqK6yh
	ogmyj09qmcOm/IZY9E2UYY0yPzRR4wKzXI12vEzY3XojDF1tDEqvVOHimctCuSg7ak2IoZkrYn9S+
	u7WFQ0b54u9Uk4GFHO/4QVqwkLtvFpEfjtlLcp7zSt1b2c3/c+mbrjtnlEfteGvHOUN7GVSAxWH0I
	1ZxsjJKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLP1-00000008hiU-1g0A;
	Thu, 29 Oct 2026 08:22:27 +0000
Received: from smtpbgeu2.qq.com ([18.194.254.142])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLOp-00000008hZQ-1vER;
	Thu, 29 Oct 2026 08:22:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1793262074;
	bh=MaiGehwDWMGje7GwBD46BC7L0JM33MNhQCknypc1LC8=;
	h=From:To:Subject:Date:Message-Id;
	b=JtCwe4Zy1xzauD499GIpfa70wvCAiaWArEXASRX7mR5ibQx/0EPBbxq06u1lzSEoi
	 MEto1+Hq2P+5+jE4mH3sm73kQveldxYqpaQWPPvVI+AAgth/CLrtxkCzodhvDgiBRS
	 qAX3YAUm/D1cmGa6+r1I90YB42Ktjh+DNUB35btk=
X-QQ-mid: esmtpsz17t1793262066t0346ef20
X-QQ-Originating-IP: RWwCt8iHxYDYBOfvEVyX3eJc7UNRrPOzEF6rxt0WmXk=
Received: from DESKTOP-8BT1A2O.localdomain ( [61.154.14.86])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 29 Oct 2026 16:21:00 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 771743844341427657
From: Chaoyi Chen <kernel@airkyi.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Subject: [PATCH v2 1/3] drm/rockchip: vop2: Use drm_format_info_min_pitch() for plane offsets
Date: Thu, 29 Oct 2026 16:14:27 +0800
Message-Id: <20261029081429.862-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20261029081429.862-1-kernel@airkyi.com>
References: <20261029081429.862-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NQDSFSrlZSaipT4SA26jDWwREGIeVN8h1OPcDhrWI+sCyza6fvOx6B7L
	/Cvcdqpfgsh3tRW7U158b8L7eJlSHZM+MVyZQC2WA6+FPsJRN5jsTQG+J2ipSInaye+moQY
	WvPgXL79slVKrCDRykUbw9qR7vMnj/FDSmjO6vYy+V4/cCi57wBq+A+Rn1x5YX4XJdYJOXz
	VeumTIJ98utwVen0yZ/GkfWjuWrdkYgDDYpjmoyr+EMtHDDDQMQ/l3R/uZU0dJEz/izfuO2
	UhdxvgDK2yBNOwRFybf3zijrfasqqq36sFmJKeW/Me9VDjKmw/UoYzWvNRu5pJoTQzsNsfY
	ZZ35WKSVSvTS8B1dkTgK/X1KVXjT5u/YTzcFoobn4zJv56JfjMT8hLji+WQq+qoNXEGCLZs
	SLCQeR2V+D3LPut57aizOSUNga3HQb2x3v2gH8XjD5TLokgRsN2dzOikD9TTCl/3wcgEZgg
	CbcEj8Oh3tluRT+luGtLH2CbR+KqC1+fSl3r5y+Md/IPpkV2GxgVIAH3MYPLZxEy6YTiLOT
	pud6zmxLE4prkhBqSqdK/o9aPKOx44PtnxeFJbhZUQJtLehEckuQAhrVYEamj7ir7ZLf4hQ
	PcbamH1S6l3spJ5Lr4TvvHNrUwJhlKRegvDlKmjBYeD6F9qvfJKVKOWUDkGdlyQEuXAJmXO
	z9ERhiBUvWi8AhA11tnjg1/7QGkOFbFO+CzHjvN80Cq8WTMO8Y96p7v61NzwCC6I5t0R4TH
	vvttabL7+gdAH54hYHqINT4irIHzK4DOhVEDWu7s37CwPJrQtqcOobFpZcFdLdsojzoMeNT
	23T/MnZmDs3I/wD6vfaLmHliDC1W/OznAIebkaq4WwGhhkBe4GfMjkYjsEy7k33FGTOydg2
	2wi7GP2CV0lXYFjqizN35UDjIfGgR7m38FCYznUTroEVxaTPvVlO+K2Ak98GYVLFpb3ilKx
	FrlOiU6t6I6e/iI54v2win2rg7aLlx5fSUmMWiqUAP61WEMOY/iOvt/NPkjV/zRSD6r39Us
	fNVtvZJZuDN+C7aoQv9rKu9uxvtxdhccu2+bAYhQ==
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_012215_985791_3BC8CAA4 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Chaoyi Chen <chaoyi.chen@rock-chips.com>, linux-rockchip@lists.infradead.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-arm-kernel@lists.infradead.org
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-21.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Use the block aware helper instead of cpp[], the latter aliases
char_per_block and is wrong for packed 10-bit formats like NV15,
NV20 and NV30.

Tested with modetest[0]:

```
	modetest -s 86:3840x2160 -P \
	59@83:3940x2160~96,0,3840,2160+0+0@NV20 -a
```

fb size (3940x2160), src at (96, 0) with size (3840x2160),
dst at (0, 0) with size (3840x2160)

[0]: https://github.com/windowsair/libdrm/tree/src-pos-support

Assisted-by: LLM
Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
Changes in v2:
- Missing removal of the replaced line(Heiko).
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 4cce3e336f5b..b38a32d623b5 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1290,7 +1290,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 
 	afbc_en = drm_is_afbc(fb->modifier);
 
-	offset = (src->x1 >> 16) * fb->format->cpp[0];
+	offset = drm_format_info_min_pitch(fb->format, 0, src->x1 >> 16);
 
 	/*
 	 * AFBC HDR_PTR must set to the zero offset of the framebuffer.
@@ -1309,7 +1309,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		int hsub = fb->format->hsub;
 		int vsub = fb->format->vsub;
 
-		offset = (src->x1 >> 16) * fb->format->cpp[1] / hsub;
+		offset = drm_format_info_min_pitch(fb->format, 1, src->x1 >> 16) / hsub;
 		offset += (src->y1 >> 16) * fb->pitches[1] / vsub;
 
 		if ((pstate->rotation & DRM_MODE_REFLECT_Y) && !afbc_en)
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
