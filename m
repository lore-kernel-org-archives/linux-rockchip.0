Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89BC5CD5BAC
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 10:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=64vA2RtiaoIzp4YxChOMv6JyTGytO4DlbSQ2j3Z6j1U=; b=V2ysGdqKeE79CJ
	3qJFbW7Sb4ZcWflQFsKMutU5hhXQ63LvBSjd2EGBPA6IjKQ83nPjCRU3kcwx2hcNOhJPu4P9eeN0h
	3xLvYkC4hl8vDNEoITwiQyDto45hje7UjVOzSzvUt6RzoaD7R7GIzg1UuUpmGkkzEzB51mUTRObLS
	lkvDsT60rvfSm7PcfeQUSOxwrThsfQfUWFS8nSmhI3ejxSwi8C7ocyJy/rDggtGxckUcDOcCA8Mzs
	x+vG3STQjpnvtgSwIOTPfGW80ITn0Y9T3kSw7LMtdTmC1y1BXrzbIUv7ZOsG2t/SJOrJcpAchvP4j
	fjdMAD7gJhnaEofv+KCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQMjC-0000000AQQg-1koa;
	Fri, 22 May 2026 10:03:38 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQMj9-0000000AQOh-3SxV
	for linux-rockchip@lists.infradead.org;
	Fri, 22 May 2026 10:03:36 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2b9e9a6802aso30376995ad.3
        for <linux-rockchip@lists.infradead.org>; Fri, 22 May 2026 03:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779444215; x=1780049015; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eiBRTRZTJBLsm6cC7zO439AbTyaUXaT32zIuFaYd3eo=;
        b=LsGalFVLpuORJv7j7xne/Jl/v8RqPv5Yk0hs1LwSqIkUupmmn8bssf5ItjQ2pzPz2U
         An3zN+BhoQb4So/IDX/Mf3OFNBEcnlyZj3VmJHoeNG7d76MznHGQuOKMFw/PUyDWO3v3
         eEQcDdMHu4WmPeymj+22S9R7akqUL7qux/NQdPjWgxYXRBzBZ2Apaptb6/PlYhwkY19v
         V+8CFVWualwua3TeYXlEC2I7Wu4fXZhEuWxg565YaMT9G81ZTeC3JjRkzDOWDyuOZG6W
         k3msHB73pvAccFbA2aVha4KF1a6FsB21Uq4DrKroL5nDH+GxxXZhhi5iZS2i2x/GZ2XO
         XjyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779444215; x=1780049015;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eiBRTRZTJBLsm6cC7zO439AbTyaUXaT32zIuFaYd3eo=;
        b=SbFcxBVWgAvYAAZGXA8K7/+Fx/YQn6Z1EXGtUXhsY9fUckTob3w7rpdnRhi9cZT28p
         M22GsxwsKgaZBlZba9I6H4gnujIr7k/59YvEZZx6uto7kKm35KkOiDeEhmwKjcqTyKsM
         9ZA9TvecOE7MrAfQItKJCm9yLJYx4LWKDrD5Bsepnbfl60wyTBK9FebuVbJVv5+fYo4T
         wRdqkwCXMY9D5T4D2hSsRA6d7MBdPQUSZiwlDcwQY69dEXzf2orC+j3nBVFFVFF9tPJW
         PhJrZrnTt94laRvm8ZeMx8FRT6B1zt3LCKu5B317Px6Ku+x0hPpteKaerRlrcsgGRm8z
         +3sg==
X-Forwarded-Encrypted: i=1; AFNElJ9PRvXm9sP5Hea8c9/t0UwDoQm6ax1emuurLrCPhONI3HDD7J3V1zfPzhimU41CNZQROospRD+1frob3jEDcA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyjyNxynUgFb+CMU4TzOx0L3ey80yTzCb6pg1lKcCUgq/d9weKl
	CEmpJxz45uB8X1vN85tWIuWhg2xlm96woZd43ozPx+DmYVjMZPSsU6fP
X-Gm-Gg: Acq92OFVIyW6J8umJpC48ijrWZw4lPpw63Hwt5KgYMwMgEHCNd/clS9THb9nI05qv5A
	iVcCsZQcHPaEF/yRbzRD70cXaUOR+fXOenzRcItQVUm02tW2KzAdSLgdtfTewVZCOVYUjai9tCy
	gEobuf9vIWa7/kLPwQXl488OVbHjhIXQu3q0TWs/TuJa58NGCyr65u2QKX5mqcJz5cTWwWPCnPh
	CJ+3fRCaPkycF8jkPF3gETPFaUCqrqx8GLJzxoXTQiyCYSqvGPztsa/a5ywNBmqYDIMIdCU9qqV
	kH50I6XAmKQMpsV8F8zkcY5xghrpS74Yk0vxeXpuXrUZoN4+v5otrIGnnZmx/a5qoX3lRtJkQXX
	j7PB/luzxOG5HcH9UWaV0XxqW3Ez64EtUNm4kRJit8QZn2jXgY9qISPMLg8g19mkoRWqu535LbP
	3pfhDAGPKB81y8S9P5BQyARS5+AkYo2Mv+7NCl3dlzlJ34kacWjFZ+z1xOhw==
X-Received: by 2002:a17:902:fc48:b0:2b0:c45a:bc2 with SMTP id d9443c01a7336-2beb059cebcmr32443895ad.16.1779444214757;
        Fri, 22 May 2026 03:03:34 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb56f4343sm18683455ad.36.2026.05.22.03.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 03:03:34 -0700 (PDT)
From: phucduc.bui@gmail.com
To: broonie@kernel.org
Cc: lgirdwood@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 0/3] ASoC: rockchip: Reorder clock enable sequence
Date: Fri, 22 May 2026 17:03:15 +0700
Message-ID: <20260522100318.73474-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_030335_865029_81714F87 
X-CRM114-Status: UNSURE (   7.22  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Hi all,

This series reorders the runtime resume clock enable
sequence in the Rockchip SPDIF and PDM drivers to enable
the bus clock before the functional controller clock.

It also updates the SPDIF DT binding clock descriptions to
match the actual clock usage in the driver.

Best Regards,
Phuc

bui duc phuc (3):
  ASoC: dt-bindings: rockchip-spdif: Correct SPDIF clock descriptions
  ASoC: rockchip: spdif: Reorder clock enable sequence
  ASoC: rockchip: rockchip_pdm: Reorder clock enable sequence

 .../devicetree/bindings/sound/rockchip-spdif.yaml      |  2 +-
 sound/soc/rockchip/rockchip_pdm.c                      | 10 +++++-----
 sound/soc/rockchip/rockchip_spdif.c                    | 10 +++++-----
 3 files changed, 11 insertions(+), 11 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
