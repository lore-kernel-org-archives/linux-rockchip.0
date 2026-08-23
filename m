Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23E6FC5DF81
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Aug 2026 12:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FzDgVQQ+8z6MkDyeupqxCdGLKOTKiycMywnMR5WcmXk=; b=dpgCPm/2+0Ht7r
	+vDdMdeyJl4lvejcuS6S2JTOEmq7PGwVUq5SKyipsSdbgJwf70DK4yx8xGiGhtuqreMGm7lysq/Aw
	VrFlBsS0dI3wlB+OW8rDK4tyTuqyOQ+HweBRStgtjm/a0kSPOh08Wm4bxstbBuebgvfbhi+BNO/9h
	eSpxY6xmbwcB8STQy0dZDQ4q8y95bTuf645eRm7zbyBIwePkctV7uwWwaSlrtA63l7y9Kcyyd0AnF
	va/CUoDwXXU7ccVdzB9XZGQXoYKT6sQi0aow//Gzij/EACrEYvFZQxk3YhV4yzOD9KINuXspY6kDX
	KO3FQ7v/h5dK/9ybWgtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wy7K9-0000000FLJh-2ZQo;
	Sun, 23 Aug 2026 12:29:17 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wy7K7-0000000FLJ2-0ym4
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Aug 2026 12:29:16 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-69a33fb0031so423575a12.1
        for <linux-rockchip@lists.infradead.org>; Sun, 23 Aug 2026 05:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787488151; x=1788092951; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:content-language:cc:to
         :subject:from:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=gQbaM/nV7s8rQwS5hxI6vhWiwkwOmBmwl7dlesgVmd0=;
        b=gLANTptY7CnRqkp5wmjhA+4mPZ2a/lZbO4DfU9T/+xDD8zHIBzMhXuMhkFV4UHc5+v
         UzLfa5M1YXFoHfrt9Tu99qSg0D+YP0Uukg0otDjHxmxdFrEqvDORpEtfRYN8Lk1VNWC+
         MCYQVNrx5HLCLVEnf7KkjDvUksbUbQEEhdI+bqUM9HC9bofyyYha7cUehky4vCKJPaxL
         gOxYN0TNojKwErGd2AOYFSHiF2iJlHU/daqvesSbg9WYl4xKYoObVCretQYIMM/mC/P4
         d+4/uL89C7ESKCvIIaYynhaRzfplZcqNKQmyEMbN7s6gLInoWSBYn9g0GxB/g46ltFYR
         auuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787488151; x=1788092951;
        h=content-transfer-encoding:content-type:content-language:cc:to
         :subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gQbaM/nV7s8rQwS5hxI6vhWiwkwOmBmwl7dlesgVmd0=;
        b=ZJfKO9ru7Gpk3Fv0Rpgu9mz3uW7wgK/0qsx8hmop/PnGb7BAp1fBWDDEYcYzH7BLD1
         urvbikTbXd2M1lvsSeRCytui7PB932QUsYH0xR6E7wfSR1ELRXTv9ttDMR0GVRnyK027
         XMotpMW/B3SSsrcDY1gHcuULFBiTJj2Jxi69YsI1U5AkgxrkgC1MMj3AoPvl+onMnRbu
         WYLzPukdT4R9TL+DU5+dduppUsEc3cD79TutEH3TsQsM5aXobuxRkFOeqZ5x1LEaUbSd
         CoGcPtPLdrFrb+IWzdOzGZvUwex9YFYpkywtkDaXaINTCZlJhSNXfVfv2IFqsOU61De6
         XIpg==
X-Forwarded-Encrypted: i=1; AHgh+RrwapjItAR6uuRC9TWgiVS8s2IwfFh+KA9fop0Ey5Y8BznyEQ1HW4Ou9oh3rh38qgegRQbOaDrZUcqm6G9zRA==@lists.infradead.org
X-Gm-Message-State: AFuF++liTptXIIsXPiusBxiRXVcnQNK3arSxABeMHtTZjiiL46BkiGdg
	PQjn/kWkLYuU3bScVuwMwHbHqz9bDVtq6yYINL42roDJ43e2cfcfCKY2
X-Gm-Gg: AR+sD12orRSrWYyXlqdvl6Pq/eCd6GTB/h/E+eLuK85s/vOmPMXBZXnKdNfMYBp9m+n
	ORGK9sivlMN5R1Sb4vtxDWVe0f4t1zsdT7qIYbHnU47E6ngzcqHyhbUsCVHRu52tEAmPQ3xq+gk
	cDSkkJfAQ/N9DWJ98ArYbHse056ozFj5FK6UDqm7gXrjEi27go3u7yVgKo0EZAw77Hm3jWWSXZL
	EQiCf9BhnTL0u51AbjzYx7BeyqdM/QOeNb/3eHB2F/dOiHkFc0u8WR0SSvP5F1HcuzgF49dOyb1
	vd1oN7sEcOSr1/RRlB+kGCZorv3TNU3wBlgQK2hAvAYMxOkLBc+O1T0mE8doCP0uDM8KmIKiCd2
	ZDYdSSLSQ2oumr1oMLztB7ST152YEJWPT9vH/s5kCnLVrQcsntB6D/jOgHY5zY8aie5omHq3yG6
	XHv8Mq1rdpx+8yh1eEMPxGeoMHgA9cVEYp3s6L9ZBoSGSu41eX9D4wipAZLCDFJ9Iu+uwChARRR
	ekLA2vvs7WNxGrqiIjgtTIWvI0=
X-Received: by 2002:a17:907:1c26:b0:c21:8555:5f55 with SMTP id a640c23a62f3a-c246a65eda7mr1238908466b.2.1787488150919;
        Sun, 23 Aug 2026 05:29:10 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c24966f9c9fsm738037566b.39.2026.08.23.05.29.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Aug 2026 05:29:10 -0700 (PDT)
Message-ID: <1ab6fb88-3b84-49b5-aa05-202a84edbd3d@gmail.com>
Date: Sun, 23 Aug 2026 14:29:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [RFC PATCH v1] drm: rockchip: add
 drm_plane_create_blend_mode_property
To: heiko@sntech.de
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US, ar-EG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_052915_285742_66A2BFEA 
X-CRM114-Status: UNSURE (   7.91  )
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

A validate_blend_mode_for_alpha_formats() function was added that
fills the kernel log with warnings for Rockchip VOP version 1 SoCs.
Add a drm_plane_create_blend_mode_property() function as fix.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

https://lore.kernel.org/all/20260526181700.25310-3-leandro.ribeiro@collabora.com/
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 0090d8ff0c79..0bc5b606f021 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1850,6 +1850,8 @@ static void vop_plane_add_properties(struct drm_plane *plane,
 	if (flags)
 		drm_plane_create_rotation_property(plane, DRM_MODE_ROTATE_0,
 						   DRM_MODE_ROTATE_0 | flags);
+	drm_plane_create_blend_mode_property(plane,
+					     BIT(DRM_MODE_BLEND_PIXEL_NONE));
 }
 
 static int vop_create_crtc(struct vop *vop)
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
