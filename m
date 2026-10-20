Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328C2606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 14:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TAT/xi9i;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Q2KMi/LV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dy1nEMz6i/3CqlmXJ3njjoM8u3ZxscomYw7mG59InmM=; b=TAT/xi9iog3DLC
	dK+jRL93GAgukEuPMK6wz2v36CsLF89npe8zIo/+QRXTXH2k3q9CFaQbgB7zX0WmgozrCtdrgFtjy
	5FXOq3LUdezD/W+BsMy7M42k7r/9Xm1Yapkj5o4ZH5eV/tr830RbJchW8Gi+efKQmPk/4YoJbfb45
	rjwoTyjo+ZzDoxBCaB3St+rNrSyl2++BwzApNIaYyEJbYpZZeRFhykapmhoV2y3WQZ2Nwl90cepvm
	lmg5ZFc6jUPmdrXJ+hXGz2r758xN494i/PDpRa7uuLvoNem/UhmYaR9N0jvbp3O+eS6dH8PK+RlKE
	SSh+njVGE9JSTlqEOu5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAsU-00000009x1K-1Xmm;
	Tue, 20 Oct 2026 14:31:46 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAsS-00000009x0Q-1eYk
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 14:31:45 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-8a05effaf8dso1164835b3a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 07:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792506703; x=1793111503; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=79PDGBo/ROKE02Uy/sJRxhzs3FckYw8dDZ3wx3mZFZI=;
        b=Q2KMi/LVGULK6R0EaUGgckCleRWi5WKdmO9ZBc6RjarxDtA/a5M8xE+Brkc11d/oJV
         BlSskG6FjYa8ztX0ZUmPPAQgSaVEw6Drdapck/u8iMbZ4YhTbhh4g2X786doOMqw+ZYl
         qc7K7P8AJD02ef3UABm7xTm6x4GIcTdOKCRB4SEVysQLRzhgJcdNuRqGG2wv1QRb6dHV
         1uF09xncgcn29Yc6s/EfMJxoO/RZciQ+l/phSMCATIMzgerxPslwJw8Ctzjh9EvI8FnA
         ChlA1BQkUqX4+ke7aAFsf4tTgOMVAwdIM4rbHDCf+oN8+PawPVPoa7uAfxl+8iqmZZch
         X18A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792506703; x=1793111503;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=79PDGBo/ROKE02Uy/sJRxhzs3FckYw8dDZ3wx3mZFZI=;
        b=IK6BsWITnQuEELnX8g25rFjUsMMc9EcIhq4h3ahrMp3fOIQRNETUq01aqBDTSvvctl
         PrN0GbEZ+BgO+5wQWDW3rLMcoJ6WQQXfOQcHdOd+6vDk6Tzj9cfF21381IUbkEHMkjTe
         AuvU2I45OE9dGwn544O+ngYKLZeFH69JI93ynwRVyMPi80QqFblcbrz0d1kfxuVM1ovu
         JRTX+D7hH6iU0LS2W/h7/IF75GwIx5LUn2HbEm1AYQs5vW6kE778N+nzVmTwPy5DmAbb
         76yL54mB0SRpRThKGXd2LwHXGfKwG4oAa3rX7luv0v8z2Zv5XaHz1fskzI2mKRSSQGpQ
         yXoQ==
X-Forwarded-Encrypted: i=1; AKwUvBwDw+1sU2g+9/afLf01dZ8PuyUXxqw2h1IrhuuhEXtV1TnX0J5pE57pCh5y//xwy6/My4lvRs0XP/kpwThNVw==@lists.infradead.org
X-Gm-Message-State: AFq9FYIivFTEBuDo7rq/6KbfCotOmKYT/pniFCc54IUb8vWrKvukJBBQ
	+rQkDBZQJwjvTKVeLuFjFTfKuFwh7J28HJCRt6n6ttpKrQtw3k789cX3
X-Gm-Gg: AYBFou3c2LYseBf8O8ybegX06O45nMUjQ2DDZNjCOsfIwoov9hWaMfCcaT0FyoNquLY
	v8DYoBGuQx6yOS7cPUqoaaDUArYA42x3xDOwdRmvBhM7Y4rQaPyN+rHmbn1xiKnazZZZe40H1+5
	pQWLqX9vEK3iGktRQMHCUY+rU5cq4ri7teeYtlj5trvkZ5q5GP5Hz1h8uPsjZUJy9wWfIPLQraX
	H98X/R3lRDRyQMINbsbBgrVrNAa0tYnSGgkr+1j+OqZnpV7+EVtEXrDlGnJRcDZu71B5mmcbnck
	A9yVfFSTpES4SvAvUXMRQcqI+UCLM9GaInMGTH20m4iqKZeVZLL7IE4m+14fqo/WMShDxFyyoyp
	aLNysGXj1uDNbAc6tQ9IVCr5yB5vEilAlrUgDvt8Nb7NNAzVaLahE++Okop2NEgEV77nkTaGSuW
	/NbLIrgKSniGZDYBTB/HYaQnY4Qu4/a187aAxf6KxgoJrmWkKIRKrh0sQcJcwLxgPxehdRYszzg
	wDzL8EG79jjhlr6h2HTgvpBLDrB+UIXdw==
X-Received: by 2002:a05:6a00:4b49:b0:869:84b4:4b36 with SMTP id d2e1a72fcca58-8a04be69ef6mr8251834b3a.16.1792506703265;
        Tue, 20 Oct 2026 07:31:43 -0700 (PDT)
Received: from arch.localdomain (123202092053.ctinets.com. [123.202.92.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89f580173efsm4789001b3a.50.2026.10.20.07.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 07:31:42 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	heiko@sntech.de
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 0/2] ASoC: codecs: Add Everest ES7202 support
Date: Tue, 20 Oct 2026 22:31:30 +0800
Message-ID: <20261020143135.623897-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_073144_437244_5A93AB91 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series adds support for the Everest ES7202, a 2-channel PDM
analog-to-digital converter controlled over I2C. Patch 1 adds the DT
bindings and patch 2 the ASoC codec driver.

The driver is based on the Rockchip BSP driver, reworked for mainline to
use regmap and devm_ helpers, probe the device ID, and report the actual
per-step PGA gain.

Jun Yan (2):
  dt-bindings: sound: add Everest ES7202
  ASoC: codecs: add support for Everest ES7202 PDM ADC

 .../bindings/sound/everest,es7202.yaml        |  56 +++
 sound/soc/codecs/Kconfig                      |  10 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es7202.c                     | 372 ++++++++++++++++++
 sound/soc/codecs/es7202.h                     | 133 +++++++
 5 files changed, 573 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es7202.yaml
 create mode 100644 sound/soc/codecs/es7202.c
 create mode 100644 sound/soc/codecs/es7202.h

--
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
