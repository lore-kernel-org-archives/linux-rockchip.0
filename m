Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D484BCD6E60
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 17:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wJCyXameVmq4wUOdCYO3TrmHVUaRqmexPz56FkbRpu8=; b=r3WgdvVbwdCZrI
	yWhlh/Uc8Enc6iGpjOoG43Oz7M9HgoJ0nsOpGyHaUlOj+ruxABjgmy1lrUBktCfB+FTs0iNVjRefe
	z7Y6XDHRpkuDLZO7jQMgtGwuwMQ07j6oD0OwXkHXi2S2ZHWgxYbiKR1ktZAzY3FifZO8hO8OJYYEC
	F1NzZNUy3Fy+aaCyniYVXHTcE9H1CKi5xT7wpI5irAYj/98XEJOi6GH3N/9toSURT+h+rTCjKC5db
	8Tmmhj1Iu7WSXgPxx6ZggoGEpLDZxk0e907PZniFw1ypDnKGCijlJB8Uvq5JTBQRcPtICfxwHcntM
	meayL3Girx598r4sljGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUSUW-0000000DWQo-0dO3;
	Tue, 02 Jun 2026 17:01:24 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUSUS-0000000DWNW-1haF
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 17:01:22 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-45ef616daf6so4228395f8f.3
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 10:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1780419677; x=1781024477; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ivGt1S0OiiOp249bVc4Q7TnMYrm/Fs6AUzb1TqWbuUM=;
        b=LXXXvaT3qLJaVvQqCzwlqsfPjoKZCv7l05xdMt43ZlTDI197cIOG2pLC4C2MNt/RNe
         yawVlgF+RD9AwHCoIpi9QktelUXJK653IZhsP+GdFlKvXbjnSokpvbrFAGN30UIBrwyp
         ibAE2gfxwx0io7oix5lICgZ/lfzQqZaNgHoOWFvOkAK6NWXjP3zyPKGvEslcRf3xLiGE
         LmKKNkMXicvjp6yigvtIq1/LuoqMGiv3uP/pq0HOI7N8I4+NAIALeIBZ9m12XCD96ndU
         I7QMty+/n0Ui/NMYzQ4yWr9qSrRhhZoGpJUIocSwjv9WwpjVpeQxp/GuYGbWU4wx83PG
         YeRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780419677; x=1781024477;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ivGt1S0OiiOp249bVc4Q7TnMYrm/Fs6AUzb1TqWbuUM=;
        b=bHPQo3kxyX+fF1nur3vH//3zf3tTiMvYJSzCziz1ybVm6Xf2BqEd3RszriiFErlgas
         6xbaV4M8f7gUoUEcDCMyXpuipSQ8OCiJwB5fA0Gkrhx649Rt8Ilo+RnJlFnHOjhapUyL
         61v7k+viVsKuCYiJY6I8n9+I4w7mv3v4oRZa3wzt6IoPXzk21C8KQEXjtVJqZZ9V53AS
         SWv72YOWZS+4SMcl71n/PqOlQNQo/MVQf0d9BKXB6g5Tmx2EKPvcEGXDrnLe9ghTR3eZ
         dgX62W/W30NeTmGMVokftE1MKChSamcnGIIP4vbduz76P4AmD4BQruLQr/bbAkkJk1jd
         0H4A==
X-Forwarded-Encrypted: i=1; AFNElJ+7KM+eUbkv1gz7nodFwViiniZBDKUq7CFSmJ2GV0z/m/i8IJ0AK0WUN00cEM21qceaLQuYZa9wOQNlgJxgDQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/zGGyEo7RnWwXDteK85Q9mkwLsfR/JrQewBQ0H3+qp/EBa3Jv
	QBg2/sVMnBTMCQt7Ywhnwg0FlX+sIS9ae1WJ2QjRzUnM6j0F5Xjtcj8iPQVE0ckJ2mOrKFHQJGx
	SpySAAkjFcKJE
X-Gm-Gg: Acq92OGI8XtsFaKH1gxvtqVBcQS6o6PxJlJXwwz9l/Pr3DTs0KchJh9TPHj4tGn/lKP
	+WNkByoXC/cH/adWZn7ik1QMAoPq9AqSqny8iknF95Ug1ohVgqGv11EOrxHsMYA41w9tIVu77WE
	ZCbIt9EkJMhbm5ZLL97NhI8/wnrj26XB8+xeXAC4Kj3zMUvpvc4DGWO4joxwGuCI8NVM/5yTRiZ
	a4+a/kw9OlDYdlOME3qrdP/qS78h2KI/sIvHzsTmbwrp5bQmGDOPqcK/BR+9gw2dLwv6zABgi7C
	UakuQy/VTAVXTBdDuzKxx3OomulfPhSAKS7/wlJ6Af1NLXwkQhTRh206OXoOfoV7k8Y0cXraR7U
	4FVTZum+bV0e5Gl3kH+d90aso16lgwAi1mA7vGgXCheubBDCbJnCtsR8BhtLJpINEuOfG5Y6M8M
	zh7YOmcrKjuJDR7mb2jpBjK/nCJHwxS1K7uHHCFV6f2vmgkOOpy2Q=
X-Received: by 2002:a05:600c:1384:b0:490:6869:46c3 with SMTP id 5b1f17b1804b1-490b50c2008mr8721775e9.30.1780419677363;
        Tue, 02 Jun 2026 10:01:17 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.92.128])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dcbe3sm588495f8f.8.2026.06.02.10.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 10:01:16 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH 0/2] drm/rockchip: dw_hdmi_qp: Add support for HDMI
 overscan compensation
Date: Tue, 02 Jun 2026 21:00:38 +0400
Message-Id: <20260602-hdmi-overscan-v1-0-31f71b817c80@flipper.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADYMH2oC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDMwMj3YyU3Ezd/LLUouLkxDxdkzSDFAvLpLQUSwtDJaCegqLUtMwKsHn
 RsbW1ADtlkBpfAAAA
X-Change-ID: 20260602-hdmi-overscan-4f0d89bfd981
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1055; i=alchark@flipper.net;
 h=from:subject:message-id; bh=mr+rOHka+rwyOFfzI59/eJ3S3PjIo4G5+vOSklSi9WQ=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTJ8/gmM7HPdFlsfzlmuwfbuhvmzJMVmc2YUs1tgi/oO
 8eE7DPtmMjCIMbFYCmmyDL32xLbqUZ8s3Z5eHyFmcPKBDJEWqSBAQhYGPhyE/NKjXSM9Ey1DfUM
 jXSMdYwYuDgFYKoXNzD84b59tIy5/sjtcxN85I+zlATPjdlpnNfjarprsWnEVN9IM4b/CY+3igg
 9Tl5w0PjVp7Up58/IFnm7Mz14lfc74wsjU1IQOwA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_100120_472524_FFB0CFC5 
X-CRM114-Status: UNSURE (   7.27  )
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

When using a TV as a display, output image may be cropped due to overscan.
Rockchip VOP2 supports post-composition scaling in hardware, which can be
used to compensate for the overscan.

This adds the necessary pixel margin fields to the CRTC state, and sets
them from the TV overscan property of the connector which is understood
by the userspace (tested with KWin's display configuration module).

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Alexey Charkov (2):
      drm/rockchip: vop2: honor TV margins from CRTC state for overscan compensation
      drm/rockchip: dw_hdmi_qp: expose "overscan" property

 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 16 ++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h    |  2 ++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c   | 17 +++++++++++------
 3 files changed, 29 insertions(+), 6 deletions(-)
---
base-commit: 08484c504b55a98bd100527fbe10a3caf55ff3ff
change-id: 20260602-hdmi-overscan-4f0d89bfd981

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
