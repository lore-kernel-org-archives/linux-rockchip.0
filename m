Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08AE2C98317
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 11:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LJohnwYHaQugMzsLSbj0tGergdpMOUKOzZzbbYFbf3Q=; b=zsI45BifSkNgJZ
	+ZhsWnkBQAdPeok3Kwlu4dWgP+Fzx7/5rBJ/j7RTKBSPGs9ippzqrHA+IxRHyTwVWnDujPn8OOv/9
	YMiGBuLNWBt1wAzd7b+RIboDxL9CxeknV7QQJnpG3UZDKFu3K7Yd8n147+IodAzpg9VA+KxMEZxf3
	QvxpfYF3u6YLQksBExL1ylRjiy1S1dx2ANNVRDiZHFbrGMSs/IsucamZAJaXUvfvO3lQ4zcR1rl/p
	ejbme0aGox8l1FNBySnjQx4oOtCN9QXxwb459s26T5lLXYNSK3Ktryq4FvYskNGNtASbxWPYHS1hs
	DCWQ8CLLVgAloADD5Gcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hYE-0000000Aqy1-10fr;
	Thu, 24 Sep 2026 11:23:42 +0000
Received: from mail-pj2-x10.google.com ([2607:f8b0:4864:39::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hYB-0000000AqxH-1y7V
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 11:23:40 +0000
Received: by mail-pj2-x10.google.com with SMTP id 98e67ed59e1d1-396cccbba92so1440266a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 04:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790249018; x=1790853818; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=dvO1Qkk2Cc/fKI8T9OqiFoCZ+Xfk2+7b9EWzAp6ijiU=;
        b=RTg4YlulzmA5nCbxtF8etwao0EebGs99BiW2ZQtDAQu203qJjHCVCz4yO+zI48X8Ch
         LQYSCnV0TNwmr7gGYdEN0aYvWRwr6e7ij93dwwJ405KFc20yw/DIIrin7XNiCPtOkOYH
         Ophnol0UxPkUr/AC2as+jqHVrCs+YoSZ4pYHPIhWH/X9wvsw3sIFGcVj1HuR8LPbnbrC
         TYla09seRQZ6Ey8lqBk4iqcRLpOkdABwr2YZk1g7vG6kmq/JrFXAd9+aLb1NoAe9049m
         d5DDnDpoDazP5WrxjJeJEoBdz4DXv2XtvltrpPLbCXiMev7uYw44SoQ0jpYuQyKvGSJp
         ZyFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790249018; x=1790853818;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dvO1Qkk2Cc/fKI8T9OqiFoCZ+Xfk2+7b9EWzAp6ijiU=;
        b=rAlaHW4t6FOy0IaA8PsT2/nEwf6gYGKs2WqnxNPHFwDMZ+ZnfKpgzmemGmMpz6VWTO
         EYD3WJYOx7VbYE4vPvhBEZylZ34vaD7QvG1dXyjNUdB9SdD00QW6sANTHskfzesVIkQ9
         dgYM4WONQpQknRtF+dizHfYSdwoQ6a7A++HbWfuU8Z7K+1cMRYruGnkKPzNU6gtP0D1m
         0S31CKMhhJFKUrkAnO8nsOUIklbK5Z5vGiTYlf2z1fTJjZbws3tdfXtTrGXU170/mu+I
         uAmBycAn1Ql/piBSZ+19VAUgxUw1bMiSPFaQiAFy0bbAhmDxAntmYGzwdTWiOzjEjdOw
         KjBQ==
X-Forwarded-Encrypted: i=1; AKwUvBxI59qsWL1e1q9RAI+jfN2x7SLS4bF92+NYHwzy8Hbg65haPeqdF9waFQ87PyDdbywXhyH85vxqjYqdUUQqzQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nuCLqxBqz/m7gqCttu46ZGFH+egTu/GRDscWbTlpENSo/5wQVJ
	UC90MtP+rFHfs/eXAyYchJ5zalUYgxXX0Bpfmt04L4YrCnxfWnnL8LUZ
X-Gm-Gg: AYBFou1Jx3o66LJZIAY4kBdNgNhrkHAq/NPwtL7BtVkNH3QYODJphCkdOySCxsiy6ua
	rY/79QoIX8/Xr/a9hPBbE9oh9umlD6N4xon1fZeokdWpH5eVH/3YDMZrna/lKxkL/Aevksrs5zY
	hhxa6gLyMTX5g55QFhE8RjcrA1R0t7KlhROCrnWahIrPuYJfuuEUH3K0xuV0kK1pHo+9EJtfLPJ
	IkCxFG6VZiGxJDhpIpZYtLGVy+rY6EbjPizaYWvAezTYBHy3zhTppzdKvkAd/sdZ5UROjHiOolB
	cfmeEybY6aYBYCYiBo5ixjP+mykzBew5j0oF/rz6m8PeInOiqRj5j3oauUbL2AF8u6sA23nQDEb
	dU26nTkMNtcMZ4FqXnx/KGut4AjUYTFyfqxw1S+CSHCy6bPQIzwnS30ftODOa08+qI21SbpSH4J
	N01ZzdqLhfFZv6by2r8Dhw1ihXZ55PM4YqniyJx+GP33rBaf3er3+W5sBLTS7GjBZV
X-Received: by 2002:a17:90b:524c:b0:39e:1310:cb36 with SMTP id 98e67ed59e1d1-3a0985bce17mr1718584a91.20.1790249018445;
        Thu, 24 Sep 2026 04:23:38 -0700 (PDT)
Received: from lgs.. ([2001:250:5800:1002::de93])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a0813318c1sm3586800a91.4.2026.09.24.04.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 04:23:37 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: broonie@kernel.org,
	heiko@sntech.de,
	william.zhang@broadcom.com,
	kursad.oney@broadcom.com,
	jonas.gorski@gmail.com
Cc: linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linusw@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	jon.lin@rock-chips.com,
	bcm-kernel-feedback-list@broadcom.com,
	noltari@gmail.com,
	lgs201920130244@gmail.com
Subject: [PATCH 0/3] spi: balance remove-path teardown in three drivers
Date: Thu, 24 Sep 2026 19:23:26 +0800
Message-ID: <20260924112329.1566051-1-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_042339_530879_AF5B2480 
X-CRM114-Status: UNSURE (   6.69  )
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

Several SPI drivers establish resources or runtime-PM state during probe
but do not perform the matching teardown after successful removal.

Add the missing unmap or runtime-PM cleanup in each driver's remove path,
following the cleanup already used by its probe error paths.

Guangshuo Li (3):
  spi: fsl: unmap immr_spi_cs on remove
  spi: rockchip-sfc: Clean up runtime PM on remove
  spi: bcm63xx-hsspi: Disable runtime PM on remove

 drivers/spi/spi-bcm63xx-hsspi.c | 1 +
 drivers/spi/spi-fsl-spi.c       | 8 ++++++++
 drivers/spi/spi-rockchip-sfc.c  | 6 ++++++
 3 files changed, 15 insertions(+)


base-commit: f03c39de3a1307371a4032757cd1732e91087c7d
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
