Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79805C5DF69
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 14:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dH+7ikBpGPvcEh6BLXjHKrmv7mB3dHcbIM/qvJY0Opc=; b=zf7fH7/RJjNorb
	8yrvNWVbwjP7bav5QfyxtqNbzynrJrM/z6HP2SW3am7SkazQkcMVzxQ1q9q6VyeHD279/gcWlR8sE
	LGSagmFHE9MBd5S3nBJAskeDn8Fs6rRrttmn9yKWWku6S8yF5EYn5/+26Pn7Sx+ee4+Wm8nCGNY6e
	bkIbg6kCfDyyp0WdgU9Zj25XIqn988lPuwIdYjYQV69MGkW7dKCZr6dVOO8kxfUTcz+4vPnUDoSLc
	NYKZrF+gFe9ABrqH4k60nQ6tLBpbslVYHIw0TDXA19UoL2GCszBTYu7g3hk83R77eeeqfqHqSg3LC
	z74yvB2v1KwyFknrJSGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuWc5-00000000rMf-35GZ;
	Thu, 13 Aug 2026 14:40:57 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuWc2-00000000rJx-2Fxe
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Aug 2026 14:40:56 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-495522bc0e2so1029975e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Aug 2026 07:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786632052; x=1787236852; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=zfgCd9JZmx1G3JenYZxMpetacJxXe9R/CJ7kBOkKzAo=;
        b=cmk6WRa/WNX04NhZ1FVYDqoiFGYbm66RMqxEekirV6ei4jHJZzthhA2HXzBAGPKZvi
         3FYBQ/67ia+T3cRS/qNlSnHOMICOutUBLNFGyMguXsvfMqu5CP77o/VCEPa2wIrd889t
         cLvrbqPDqiq5Sfj9KlBlg72Ru5JlwgYLrJ47Tu7g75mGC6A5E7Nw6pfvBWy1MISgjEpe
         zmNIDXxUygehCWbVdSZJvL8nsYWyqyVkiWqdouimPVqt2S+9BpsQomTe5cnQkSPVEgn2
         vKd/5/euE5Gg3Q0VLh8RAC9DtEatRFOgkWheT9c8HmqGstRUF0nNJa0lNVmYROYRXIXa
         O0Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786632052; x=1787236852;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zfgCd9JZmx1G3JenYZxMpetacJxXe9R/CJ7kBOkKzAo=;
        b=s3Y5vMctilQluq56y35qRix400PfW/Y5quWEXMTTTlac9sHuLCfpiRGN0rCLOIuUfq
         EpHYCzL1KRXteYYLiCWDNK4CeGFqV6u273VsLlIFst8hxLm5xjE3fs1uIbU3DSWVsrdb
         1Op/jia53UxUVoKhJv6iUBUONgAEhGNnQA6+xNFEUk7j+YNqxVt8k1cQUWUnHQwIDdVB
         3NU8uGu8IjfpJLhBX0c7HJrX7NJhrKK9t9GiKpoPc0zWYMKDSOquyvkj/+nu+vR9O+3I
         TQoSSqe73XB0qs2wdgxL/ir8f79hYQyakYPn3hwzC3LKaGadGoIkIYTTvztAyrUEwnIs
         R26w==
X-Forwarded-Encrypted: i=1; AHgh+Rqq7ZdAmHPc2ZLm/xA1NwsgYMCO1DMprUR5JsYQcSWsup6Rc3lknJxxunVhXoc5xPmF56WTj2roI/VoERB4xg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwBe9hry3Ml/TPMBWwBZBtbgFgfxhxHdGutt1jTvkky7XgAGJK7
	VMRbConKtdHYqN/DNEIrKgXbyTNIysSGLs/dWWM4EbQU6rmCqxj8GuunEDstQ8qf
X-Gm-Gg: AR+sD13iUDsGDGryOcokgONMQtqHo2eIrTI3D2pHBWFtrxnFcVopPNuoWi7yKgDibWD
	3WC/BMZrflHPv1ysLbKqzsxMaJCPCs8NrBEAc/cWZKQvtKbBHFpk4WIMCqjWvExPjn1kY/k9hnH
	5xtfnEF0G6YFGo/laWoHm9Zg4M7/9PchMlq3T6Jsl5Gml9SHH5G+10ga3NOMAothVQAhNUr8ewt
	AZfBWpFXI/aAsuT3rVbkN03dU5UAIkZNDAvrqzHdNGUPrpn4wLlk2KqLKAjo20AgylJLCL48Zno
	riMJG/uLF3EeOjvDRnSmqNYfUUH5axtkuVp1duluTc5RRBn44V/5F8BhejFQTHcezt+efTQLMqN
	L76rxYLzm11/a9hK2jU/EXrFdWOWgsgm8X+B+9OQXPGa0uuucGzG3d5Q3RG2iasZ522xqQVKV3L
	k1KKOJXkVVMO9rIv70ZRsBLQHEEGQk2fCG1ANcmasws+XFxj89oWnYJ3CtjzOygqmsrx4M7byTd
	mHKOgnCGIyqe4OW73elMvoqN5GB6zccM71y35Mq2yQIvyvAnw2Uj3WK6YDcAKe9pmxe0TpHgS1r
	/YKS
X-Received: by 2002:a05:600c:3ba2:b0:498:8e6:d463 with SMTP id 5b1f17b1804b1-49982617b0emr35862875e9.1.1786632052215;
        Thu, 13 Aug 2026 07:40:52 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B911C00AE6C52CFC8961284.dsl.pool.telekom.hu. [2001:4c4e:1b91:1c00:ae6c:52cf:c896:1284])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49981b58700sm66426445e9.9.2026.08.13.07.40.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2026 07:40:51 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Marius Dinu <m95d+git@psihoexpert.ro>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH 0/2] drm/rockchip: Add missing DRM_BRIDGE_CONNECTOR selects
Date: Thu, 13 Aug 2026 16:40:17 +0200
Message-ID: <20260813144019.12089-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_074054_616540_3584D516 
X-CRM114-Status: UNSURE (   9.76  )
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

While testing the dw-dp v11 series I noticed that ROCKCHIP_DW_DP does
not select DRM_BRIDGE_CONNECTOR although dw_dp-rockchip.c calls
drm_bridge_connector_init(), and Sebastian suggested handling this
independently of that series [1].

The ROCKCHIP_DW_DP gap was in fact found before: Marius Dinu posted
the same one-liner in March [2] and dropped it when the failure
stopped reproducing in his build. The failure is
configuration-dependent - any other enabled option that selects
DRM_BRIDGE_CONNECTOR masks it - so it can come and go with unrelated
config changes. It still reproduces on current drm-misc-next.

A sweep over drivers/gpu/drm/rockchip found eight callers of
drm_bridge_connector_init(). Five options already select it,
ROCKCHIP_INNO_HDMI gets it through its DRM_INNO_HDMI core option, and
two are left with a latent link failure: ROCKCHIP_DW_DP and
ROCKCHIP_RK3066_HDMI. The rk3066 case additionally needs
DRM_DISPLAY_HELPER, whose module carries the bridge-connector code.

Both failures were reproduced on drm-misc-next (d85a5e9dfb42) with an
arm64 allnoconfig-based configuration enabling only DRM_ROCKCHIP plus
the option in question; with the fixes applied both configurations
link cleanly, and an arm64 defconfig re-run shows no new Kconfig
warnings. Both issues are present in released kernels: the rk3066 one
since v6.16, the dw_dp one since v6.18.

[1] https://lore.kernel.org/r/aneNCDU12OzG99UX@venus
[2] https://lore.kernel.org/r/20260319155051.1944-1-m95d+git@psihoexpert.ro

Igor Paunovic (2):
  drm/rockchip: dw_dp: Select DRM_BRIDGE_CONNECTOR
  drm/rockchip: rk3066_hdmi: Add missing Kconfig selects

 drivers/gpu/drm/rockchip/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
