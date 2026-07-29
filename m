Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A35BC53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 06:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FthldHFHsh7uidzsthAc2ugH6TqdWjpKLOrYJX+NMzs=; b=rAUVWwTaT84s/q
	0Yy9PVcpYgb+4ZIEUbP4et9HGk9NQqSK3rgMM1XRshLu37rbiNtvJZrToRGvNpLA6gd1hLSSJheSz
	eokqJqgVi66IOVJ2W/kiU0rhST3tmWS+iNYnl5eFJzybi/IrTACbBHE4jUDPz/2v1QwxzzwVgXRO0
	7hLoVx/B7xUzt8O8TFoyjVGqWKvb58w2UbDI4UnKvcnl2qGAZ1TRn6L93FAk5+AMKgihPcdF4iii5
	h+zvqWMFzj1VdMTbryLAfqrBdSV0rKeQejBYdR9ARdG/djSdJIzoA/WAvwADZDoqaGEHcFdlXriwL
	jcegp0Z4eZHWhPmcxqOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxRX-00000006yzd-0lJG;
	Wed, 29 Jul 2026 06:07:03 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxRQ-00000006yxd-0088
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 06:06:58 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-8485b358552so641403b3a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 23:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785305215; x=1785910015; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=qs8cSOjWBzZH3Gfw1u3IO4v1AqoupOCUcrhQMOFV05g=;
        b=XZIZbryiSukENAFvmrX5fQIA3v6fJQeBo/phVO4wCPxdJyNYD7v9MNGp7AdUqHoi8B
         sLsrlZWQ/daLkipzuBCMuy7r4ArM6Bxp23RUpmZx13A+l/jz+Sln4Qk9i/4MBLqhcCfx
         11hM6vDG5Nkz3nadAvRMEoDYWBpKe+C2ly9TX8NZGrUKx5XiR+dO5ienhK0NSV9K/hfy
         oycyxT9y0mxo79Fvgk09sTCPbGLEplJ3iivH3UsY56jBmbMFmf21Ug85Kg3ULcjfk4lU
         qF+vv5CBV3iYVy3HuplTVnBP4H1ZQayVVjhxQUI5fIG05pguJ9u0xzgPbDeEp7CQmGep
         xXog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785305215; x=1785910015;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qs8cSOjWBzZH3Gfw1u3IO4v1AqoupOCUcrhQMOFV05g=;
        b=PeLTtBNLKQ/cOrpmH2UVgyePBeatXQ911o1t08wtdu6iRr6s9b9r6a9UllGs+uS2ah
         uIbR8iatHaMBM9VYRVWavTLK0bgQRsk/Z8XwgepR5YrjX8VT4c73dHdqIkcpUNihN9fD
         KDP9RiaEywJbUfrILYk0Q6/3KbwYsF05zLKUaPdnNiEbG066BS4QWPDnyPnEu+SvjwN9
         2DHjRUdinCsTjwvstlMLzdRILSDWMahXKIP9uAEOG5NSkTSYgAFg7tNB/E3lpi3IavtZ
         TvODFgHF34JzMJbnVOEzQoQHwdFEJeG8uambOPVCKs8+JlmM+9QY6HQDjwEc3rZizAce
         avWg==
X-Forwarded-Encrypted: i=1; AHgh+RrqciD+PRWz8aJqgcoIlu0+NejzRvXRxoVBkU0F0FYfPnFAFK1y22fkt0schjU6KNh7x/mEtgxEhlsU2S0mxw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxl7taohkl0hYn1zaLHppMw9otOMgsIhAjlYBYW632bm43du76O
	faDMyr7qZoiCdPQuflTsks3/nuqh5jfVPOOxjlgSBw7Xsxh7U9jocGcC
X-Gm-Gg: AR+sD131iF6TsRXpunBa5CYV/8kZb9rTYDzOgQ8l6BBlS81MVm+ej4/ovZ8p9nsulFG
	FVyLr+PavIJ73tRKU2XX76lHnSy9z8cfBl2C3J8oTd5vtLO7ahO/TU32ZWpOov7gm1mLxc+BXo1
	YCR9TNQgqTt5tKRPdreZXlAe+Tan393H3igVL0kmjZZBpVWWRMzL8o/C2DIY/mrvVnOi5yTMzyi
	BLaCrzE0KCgJfqstD1RWu2bjczUVmm6Y9jgUac/5S/qhgVxB9I4NyS8xXYrxL4qinoTqteKXx7C
	XItX4w0FQpL+/DtmuWIrnAi0E5usQ0K1HY6Y+9adp5Y1QFaklzncZ0RhZvtb+nx8JUlKMy24U9X
	JGOEzPV9OB2TqYp7zEWZ8EucEX6ZPdmu3uuKtJ1krX+Sk4alMH6bhlV2CxGWRXl3FobxUcjZn/5
	cifOl+NH7sFiL0vmGJHsjoeVXj7akTUdDF46x1rpnW7mETxy4cwde8D2nLEpQrw92aZwYq3/iOt
	Z17g208oM67PL5+0g6GPci82n1s+9hmE9ZDgL+1KOMS0vQK1rQ=
X-Received: by 2002:a05:6a00:4614:b0:847:e791:d5c5 with SMTP id d2e1a72fcca58-84e93264595mr5862999b3a.35.1785305215191;
        Tue, 28 Jul 2026 23:06:55 -0700 (PDT)
Received: from debian-rockchip-rock5b-rk3588.. ([2405:9800:b670:b64b:1c6e:95da:41c0:e7b6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84ea02f8473sm805504b3a.31.2026.07.28.23.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 23:06:54 -0700 (PDT)
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Hans Verkuil <hverkuil@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel-mentees@lists.linux.dev,
	skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	jkoolstra@xs4all.nl,
	Frank.li@oss.nxp.com,
	Tharit Tangkijwanichakul <tharitt97@gmail.com>
Subject: [PATCH v5 0/2] media: hantro: fix runtime PM resource handling
Date: Wed, 29 Jul 2026 06:04:38 +0000
Message-ID: <20260729060440.2092-1-tharitt97@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_230656_041834_D64F4D7F 
X-CRM114-Status: UNSURE (   8.89  )
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

The Hantro device_run() path acquires a runtime PM reference before
invoking the codec-specific run callback. Failure paths can leave the
runtime PM reference and enabled clocks held.

Patch 1 moves clock enable and disable operations into the runtime PM
callbacks and releases the runtime PM reference when device_run()
fails. It retains the existing CONFIG_PM conditional so that the patch
remains independently buildable.

Patch 2 removes the explicit CONFIG_PM conditional, defines the PM
operations with DEFINE_RUNTIME_DEV_PM_OPS(), and uses pm_ptr() when
assigning the PM operations to the platform driver.

Changes in v5:
- Split the runtime PM changes into two patches.
- Move clock management into the runtime PM callbacks.
- Release the runtime PM reference on device_run() failure.
- Retain the CONFIG_PM conditional in patch 1.
- Remove the CONFIG_PM conditional in patch 2 using
  DEFINE_RUNTIME_DEV_PM_OPS() and pm_ptr().

v4:
https://lore.kernel.org/linux-media/20260728045921.4761-1-tharitt97@gmail.com

Tharit Tangkijwanichakul (2):
  media: hantro: release runtime resources when device_run fails
  media: hantro: use DEFINE_RUNTIME_DEV_PM_OPS

 .../media/platform/verisilicon/hantro_drv.c   | 75 ++++++++++---------
 1 file changed, 41 insertions(+), 34 deletions(-)
---
Tested on a Rockchip RK3588 (Rock 5B) board with Fluster:
  H.264 (JVT-AVC_V1):	     129/135, unchanged
  MPEG-2 (MPEG2_VIDEO-MAIN): 23/43, unchanged
  VP8 (VP8-TEST-VECTORS):    61/61, unchanged

base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
