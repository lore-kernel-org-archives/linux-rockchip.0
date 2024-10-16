Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B28D2D2A555
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 20:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7SMEfMlW/C27udljXPMs/mrFr0o7yBc0XZRSqXr/gI0=; b=EcobM/P3F8Rvsn
	Tgvw8ZDenHRhb/7Gw/6cq8FHQKZBtgzKIMN2+uujtvjx9UOCgTdMrEZlTdq0YcmYvHQXVhxbkCldT
	D9DPU5neCZhp0Kz94OAygtOegfS8JAz4sWCcIKjPFsG/Z+rHWZQeNkuExO4u6YPLIhlEcLbXBsX4q
	191WI9MbMDwrf92WuI+oVUeHgU9ikt1iUNdFwnasu+CNU8RBS4oITTNiJZzgSxA55ilZHz9lwPcJE
	WUf43pLzQ/mON1c5ueg46+1xdqappJEcoPcnrJcsHjiqwMoBfMfP4NaeJV6tTgWS35mh26uZRcPYo
	eOAzPycoDRN5CGv/n24Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ARL-0000000Cuzg-0ksi;
	Wed, 16 Oct 2024 20:16:15 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1AJa-0000000CtvO-3AAi;
	Wed, 16 Oct 2024 20:08:24 +0000
Received: by mail-qk1-x742.google.com with SMTP id af79cd13be357-7ac83a98e5eso18066185a.0;
        Wed, 16 Oct 2024 13:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729109293; x=1729714093; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xo/VBxOKFH/TmGJuUnZWn7QS7QFDBk9dtLuBtP6fhKE=;
        b=neQQbJrLiOTKGzL7EQkNu9oWdyM55tlCy00vHNlQIT+lueNiVIMO+T/MzTbhF1YfaU
         1p7aR6/PELzTVbZ/eLXE3uDfOqMqfqmZ70xhiqSBp3VWDvw4WYbk8cQOqFNAlMOP9d0S
         leqkENHFA5ohsaXP8RlqPT/LQrmylDvFV9I2HYTYRXEAQX3VcxKTc/l5mZV8USQo+rV/
         1Haf/qVHfidogeiJZsjlqis8Pr1lQurhitjUVPJM9ZA743ZlnigGyYXfbsiMgD1meWAW
         +KGtqTQHWPw4deccH+pGgLO8DflMuNciDhCS9K3QrsUy9oMexBB/7w6UN1Utqb2vKHoO
         hRkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729109293; x=1729714093;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xo/VBxOKFH/TmGJuUnZWn7QS7QFDBk9dtLuBtP6fhKE=;
        b=UrQPos7JWChiGxsiGGUWBqfrKhAn0NK0w0COEfLPiCw7VCPgg1upezAkLS/gKMsNs3
         Lwe519fOBk/GMtwOxs6JElO9pw9Z5HWQNoAOOQ3SZ4rHttpVb6gDh7iNfZxJ2BjkDbLC
         F0KN8cdUFzP0trZDz5jtGZJacbqN0YG5V7qMXBlUP6rhfuidnbEYzpRwSm5OxRXIKfmi
         Jn8qfjcvExOksex6fhhiT6AUNp5LKYRmaJuh2ZrGxq/xfcJ+Up2J44YktyWdZ0WwCbSC
         CaW/AQFhIkhOYAQAX2OgfHiet51copjXnkMP8Gsft70RCYGJa85qNLN1DQnlhDspIxc/
         1IjQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2uL34USg/CJOxRZ7vb/rinh2e+x07Oxs7blcHaR3VARDylOINeMr1ES/CLgAa5xPptAvVR5jFXmkwW3Gqi+hu@lists.infradead.org, AJvYcCVqOFVFRiLZBJHKytpLD8JOFI73Zw3y4/tynogD6+YuaEqBPHMeVBBXING58/1x1dRJF2g20NFQY1Jjx9Uyuc8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz297sCwrDA2veqNnr0j+pBQL7CZZmuksCQSRK+O5TO6LHl8vFj
	DZvl7AAt5unYgRwuOtsw5lGR1AukwDYlmBxoYITiYsY+BPa/lZTw
X-Google-Smtp-Source: AGHT+IGqzpMWnAtWSKXsmhZf+cVv4uS+uDJF6vqc9SzgpRrXL8Am/lH5oizptIoGSFk3X614I1khTQ==
X-Received: by 2002:a05:620a:3181:b0:7a6:6b97:4da2 with SMTP id af79cd13be357-7b14d4f6069mr131156685a.11.1729109293178;
        Wed, 16 Oct 2024 13:08:13 -0700 (PDT)
Received: from localhost.localdomain (mobile-130-126-255-54.near.illinois.edu. [130.126.255.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b136397252sm223113285a.80.2024.10.16.13.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 13:08:12 -0700 (PDT)
From: Gax-c <zichenxie0106@gmail.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	markyao0591@gmail.com
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	chenyuan0y@gmail.com,
	zzjas98@gmail.com,
	Zichen Xie <zichenxie0106@gmail.com>
Subject: [PATCH] drm/rockchip: fix potential integer overflow in rockchip_gem_dumb_create()
Date: Wed, 16 Oct 2024 15:06:55 -0500
Message-Id: <20241016200654.13472-1-zichenxie0106@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_130814_829630_312E8570 
X-CRM114-Status: GOOD (  11.11  )
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

From: Zichen Xie <zichenxie0106@gmail.com>

There may be potential integer overflow issue in
rockchip_gem_dumb_create(). args->size is defined
as "__u64" while args->pitch and args->height are
both defined as "__u32". The result of
"args->pitch * args->height" will be limited to
"__u32" without correct casting.
Cast it to "__u64" first to avoid possible
integer overflow.

Fixes: e3c4abdb3bc9 ("drm/rockchip: fix wrong pitch/size using on gem")
Signed-off-by: Zichen Xie <zichenxie0106@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 93ed841f5dce..76dea12fe394 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -409,7 +409,7 @@ int rockchip_gem_dumb_create(struct drm_file *file_priv,
 	 * align to 64 bytes since Mali requires it.
 	 */
 	args->pitch = ALIGN(min_pitch, 64);
-	args->size = args->pitch * args->height;
+	args->size = (__u64)args->pitch * args->height;
 
 	rk_obj = rockchip_gem_create_with_handle(file_priv, dev, args->size,
 						 &args->handle);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
