Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6695DC27C7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 13:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ig3xASggLpgWwqsMahmrq0M3sfJgHsZfZyoFH6ABgmg=; b=MZLV5Vt6GU9DYz
	Gpg9T4Z+pS5jKdHuD9JLIqRvR8kf02V/3dJLtTtqMPSigLpG+of4UZJp4KtPSthsiqpJFFFOvDJYU
	jxAM4AzKeBsjmdHi7Y5T3ziZE0m4aY4zKwYRBfK0gIa49CcRHrBz66zJvuWTYQDaLn4wncSEHIYE2
	Vh3FSgVFH+FWGEEpm/yBTjOQ4bzmE88hpyaI61M6rvOy+d0053V2t97spf5NbuBaZMoN/hFETWn6W
	/vveVOi9EXG1t43uJhaACDQZ3Ifs7vXsADNfyE5Cb1oObwtoYEWfb+RM7A5H4TG7W95I+7RnE8vGb
	bH3It+tW1OWyGrcbOpMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOPe-0000000Cobo-0QEF;
	Wed, 12 Jun 2024 13:53:18 +0000
Received: from mail-wm1-f49.google.com ([209.85.128.49])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOPU-0000000CoTr-2NIi;
	Wed, 12 Jun 2024 13:53:10 +0000
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-42165f6645fso19520415e9.2;
        Wed, 12 Jun 2024 06:53:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718200385; x=1718805185;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XdcbJPuvm/SOnoBP3pphclytefXjwVWNFObDahPD+Oc=;
        b=Z4vbBBoci0gkxTl0gLCgdt7SHxKEXusrXtBGTyGiXHJFZ5aMU5EvAzJ+j3oug2AXIZ
         aqpdHzDN+ZFTQW/gi0a/rdXo0FhDC/JT2053Ryz/1FogenjTcA8ZooEMsQOgx5B0IFBj
         qgkPLV93zBleYyYQ5zH2WrBvA0EkLmiToc6AFlBlaMaY20GJ30hzFkFClg6OofQzPA64
         aNJnlsPSPke366R3gawRejhTHBHF+3S9GC2+LntqtMxPAS1HrQNwKglAV0uz9BrbasBy
         tQd2+dijRoJxxspKzmZa0Q5yOYe4ZxMXvfx23PFGtaw0pigiAQYxWvuEEC4tI9o50QcE
         G+Ew==
X-Forwarded-Encrypted: i=1; AJvYcCXO1KyCi4IuDX4k75VKUi6Q1/Wu8CQyKTvZ2sH0TgPW4u2nzYeEdNMu0V6iBSwdHQc+0E55yGg7QtLg9VRmfjXLC9OKwc9j/toIoJBm0R4ZwJy/SXuWH5Wq3iO2kPbuDeb7UkRiAdce0v9bYRBQ3lFxzN72XWVpxW8=
X-Gm-Message-State: AOJu0YxISJsElOyJkMIr/uuJzYjTjljiWHNADgRnly9LjHyH299uSx2i
	9ZpPPXKl4SxtyHEGmYqArImCJRtYoFH181nlhAY4n4S/pnWG/zxH
X-Google-Smtp-Source: AGHT+IFJ6HaoLtBMH/sfOyJVvqVCohkpotBVV3isMd0LH8wFPWn4nrbmoRl/1VKV0QqTF75zWTXtLw==
X-Received: by 2002:a05:600c:a46:b0:422:683b:df2a with SMTP id 5b1f17b1804b1-422862acc15mr18775005e9.13.1718200384503;
        Wed, 12 Jun 2024 06:53:04 -0700 (PDT)
Received: from ramallet.home (cst-prg-45-36.cust.vodafone.cz. [46.135.45.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422871ec9e6sm28201695e9.38.2024.06.12.06.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 06:53:04 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 12 Jun 2024 15:52:54 +0200
Subject: [PATCH 1/9] iommu/rockchip: Add compatible for
 rockchip,rk3588-iommu
MIME-Version: 1.0
Message-Id: <20240612-6-10-rocket-v1-1-060e48eea250@tomeuvizoso.net>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
In-Reply-To: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, 
 Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_065308_640116_890A0DAD 
X-CRM114-Status: GOOD (  11.71  )
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

So far, seems to be fully compatible with the one in the RK3568.

The bindings already had this compatible, but the driver didn't
advertise it.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 drivers/iommu/rockchip-iommu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 4b369419b32c..f5629515bd78 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1363,6 +1363,9 @@ static const struct of_device_id rk_iommu_dt_ids[] = {
 	{	.compatible = "rockchip,rk3568-iommu",
 		.data = &iommu_data_ops_v2,
 	},
+	{	.compatible = "rockchip,rk3588-iommu",
+		.data = &iommu_data_ops_v2,
+	},
 	{ /* sentinel */ }
 };
 

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
