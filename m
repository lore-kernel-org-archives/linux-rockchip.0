Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BEE8C87FCF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 22:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UgWMRhLtfEBGajwYA6jYI4NCm6TbQHOkyrxglfgE8qw=; b=IupjU2pngdF11A
	qrLvEeFHJIRHmdXsDVcIaYWviQLjUa+njFibM1kBLb2cUfBGfZF6HO9wG5v0HzdfxUVbFhlWjm2qD
	2Ct0LiEysEpg3nOA5/ydEOGKS49AtElgB5LHNfLYbUacK/dTQBMy4wWOtKNKw0Y9xjhsxTUiI+0Xf
	NWtH3JjGjEdDe7mqSqzmT0r0wI/RNgTZOt+w41vZqM3/kYIv/c9/MhdYDlGGpqW66b2O8JTNpVxYh
	e+DDfbVPvjO/7YdmMJ8prnQXTIKh0lSQHEYoY0FXLQC6mgIYhu/juQEii/5e/iRjgb2Xb0lh2ppv9
	1qzV4iJnmt5ecg16qWEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEqF-000000068Ut-0Ftn;
	Sun, 10 Aug 2025 22:48:39 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEnd-000000067xk-1JnR
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865956;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=zejlDygpGrwzEF/Tl2mTtzsn7pmvzE6JdbSkjCZTc90=;
	b=A4r5NCpNjnWcOhf+Q3yw7XW4o6xxHxJ26XMfmXWAD8OarF44I9xCAine4xkuef8WMI2G5z
	5NW08BvTXrrqce15x35qdXFEoPoShgdQqXu2UgfqxhWG6mYOZMgIqAkNmXN1W94hWzJxy7
	/25ciug/9duuP88IGTSGhGKnmAzaEWQ=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-681-T3BksdEyOSiucxgQ1rb8aA-1; Sun, 10 Aug 2025 18:45:55 -0400
X-MC-Unique: T3BksdEyOSiucxgQ1rb8aA-1
X-Mimecast-MFC-AGG-ID: T3BksdEyOSiucxgQ1rb8aA_1754865954
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b08431923dso98317411cf.0
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Aug 2025 15:45:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754865954; x=1755470754;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zejlDygpGrwzEF/Tl2mTtzsn7pmvzE6JdbSkjCZTc90=;
        b=UhieSSeOVfZKOg9wOIctMAP4LTlenF1gLJ5MDRGBtls+YG4vT11G+kvoxx3bCnz39Y
         pkVfC1/XtJ1QrAT/nnzvLlp/4P1PMgTEhb+aDBO83T5Mp1SrAQPnJkcBXeumQ+kJsLvV
         X1OEWe8SoZNHSgdBzUqjhbVNQOcFpcAelMkiLCiixZN/5qEwr4if2SUp9cwEWUlYZWc4
         mmbxFTIzBt6PBqxiUID98LQptspOmSeB3KTOPSK4APgEoX0wfL90N0nIiZ7Cu5RUbwn4
         9IOisHNARWNm4vsio4aaxKd63GC3at59dozaYJkpdXJw8/F8/edwzCsVfuulT+OacxkO
         uamA==
X-Forwarded-Encrypted: i=1; AJvYcCWnOfa6ENdALvAsepjCrtO0vRdAIq4y099aRYOOJiTI9bgzcHcnXw3tNPXzchxb3eUFTrdp2qN2xayyr0u2PA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxX4NWylVDDkI4A0h+OnOplVfXxyJGN68M9AWwxqWFc0vSkEN6K
	ajKR8bpzL9Aa/yyPs/k/GOv3NS6AY/jRSWbt0T6IUrs8HslTXNZWqSdVdiPOpLIbyWalJ8/lhOc
	1QJ5ZnrNeZkttFw3xm3ATtA8QDBZVRUbL+mLaBpxASwaTJW3HErhafuG5K+pgSzcEmbLs1nsx+Q
	==
X-Gm-Gg: ASbGnct5jhcyXiggy4GAW/jMNGissqJa6RvmcJLbA1iu/U/8bCiwkdsaxNdtvrZeh5O
	KYlKfI+mRrB3klKHbiz6hGL6A5LRnLxcKptVAhA/GzQGjpvNY0pHoAIePbPbFtNLRls0jvotQiE
	RLaDyszjbZ2PGIRgXQzIeJt6usLycMFf04IcrIMNh5lL9JIhR27W/ySnY5G9DakVgc6L+ns7z8D
	yLzC5OK4kyfwasjJ5dFX+GJhjGxUQDBDX+6Az6rJbzsRnKpxsJ0LdRp+45HAhBpza3WvDNP3QAI
	v3kscg3ooFIrNIduRgrp8Z58M7dtgSavbeCTRN7ugzL+fG7NxTRM0jQDZqMFgcdY+9IVG+xoz1n
	QThJ2tw==
X-Received: by 2002:ac8:5992:0:b0:4b0:743a:b4f0 with SMTP id d75a77b69052e-4b0aedf6b1amr162625131cf.41.1754865954322;
        Sun, 10 Aug 2025 15:45:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMMVuRi+pB2hB00rh/4lBT2A6xNejEN6UKRgkLWeOvqElbSCAZq0WUzWxXHj0FePs3qQpk7g==
X-Received: by 2002:ac8:5992:0:b0:4b0:743a:b4f0 with SMTP id d75a77b69052e-4b0aedf6b1amr162624811cf.41.1754865953842;
        Sun, 10 Aug 2025 15:45:53 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:45:53 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Subject: [PATCH v2 0/9] phy: convert from clk round_rate() to
 determine_rate()
Date: Sun, 10 Aug 2025 18:45:28 -0400
Message-Id: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAghmWgC/x3MQQ5AMBBA0avIrE1SDRquIhYNU52QkilCxN01l
 m/x/wORhClCmz0gdHLkNSToPIPB2zAR8pgMWulKmULh5m8clhllPcKIYnfC0lpDrqiVowZSuAk
 5vv5p17/vByfwFxlkAAAA
X-Change-ID: 20250710-phy-clk-round-rate-4aa7ef160fe9
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=5842;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=aLGfKmyNU+bomSynOaLohW6Y59bxgPyE9ULfin1cZyo=;
 b=O9IhL3QDOUiwO05Lg7AXKinAxwzs6mf8jMpnbEWniYrx2Csle3lF/NzYZAfa6oTvLYjtyMKTB
 35n8Z5Wp2HwCqzPx1ryQAePsX3611g3M7mBqcbq1xRSaFHhbzl6z6wG
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: KvgArgg1qqbOIzSppmqGsEORis-bsb5zw_nG1xv0-og_1754865954
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_154557_437225_5AF7E5E6 
X-CRM114-Status: GOOD (  14.23  )
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

The round_rate() clk ops is deprecated in the clk framework in favor
of the determine_rate() clk ops, so let's go ahead and convert the
drivers in the phy subsystem using the Coccinelle semantic patch
posted below. I did a few minor cosmetic cleanups of the code in a
few cases.

Changes since v1:
- Patch 8 (phy-rockchip-samsung-hdptx): fix returning error code
  (Cristian)

Coccinelle semantic patch:

    virtual patch

    // Look up the current name of the round_rate function
    @ has_round_rate @
    identifier round_rate_name =~ ".*_round_rate";
    identifier hw_param, rate_param, parent_rate_param;
    @@

    long round_rate_name(struct clk_hw *hw_param, unsigned long rate_param,
                  unsigned long *parent_rate_param)
    {
    	...
    }

    // Rename the route_rate function name to determine_rate()
    @ script:python generate_name depends on has_round_rate @
    round_rate_name << has_round_rate.round_rate_name;
    new_name;
    @@

    coccinelle.new_name = round_rate_name.replace("_round_rate", "_determine_rate")

    // Change rate to req->rate; also change occurrences of 'return XXX'.
    @ chg_rate depends on generate_name @
    identifier has_round_rate.round_rate_name;
    identifier has_round_rate.hw_param;
    identifier has_round_rate.rate_param;
    identifier has_round_rate.parent_rate_param;
    identifier ERR =~ "E.*";
    expression E;
    @@

    long round_rate_name(struct clk_hw *hw_param, unsigned long rate_param,
                  unsigned long *parent_rate_param)
    {
    <...
    (
    -return -ERR;
    +return -ERR;
    |
    - return rate_param;
    + return 0;
    |
    - return E;
    + req->rate = E;
    +
    + return 0;
    |
    - rate_param
    + req->rate
    )
    ...>
    }

    // Coccinelle only transforms the first occurrence of the rate parameter
    // Run a second time. FIXME: Is there a better way to do this?
    @ chg_rate2 depends on generate_name @
    identifier has_round_rate.round_rate_name;
    identifier has_round_rate.hw_param;
    identifier has_round_rate.rate_param;
    identifier has_round_rate.parent_rate_param;
    @@

    long round_rate_name(struct clk_hw *hw_param, unsigned long rate_param,
                  unsigned long *parent_rate_param)
    {
    <...
    - rate_param
    + req->rate
    ...>
    }

    // Change parent_rate to req->best_parent_rate
    @ chg_parent_rate depends on generate_name @
    identifier has_round_rate.round_rate_name;
    identifier has_round_rate.hw_param;
    identifier has_round_rate.rate_param;
    identifier has_round_rate.parent_rate_param;
    @@

    long round_rate_name(struct clk_hw *hw_param, unsigned long rate_param,
                  unsigned long *parent_rate_param)
    {
    <...
    (
    - *parent_rate_param
    + req->best_parent_rate
    |
    - parent_rate_param
    + &req->best_parent_rate
    )
    ...>
    }

    // Convert the function definition from round_rate() to determine_rate()
    @ func_definition depends on chg_rate @
    identifier has_round_rate.round_rate_name;
    identifier has_round_rate.hw_param;
    identifier has_round_rate.rate_param;
    identifier has_round_rate.parent_rate_param;
    identifier generate_name.new_name;
    @@

    - long round_rate_name(struct clk_hw *hw_param, unsigned long rate_param,
    -               unsigned long *parent_rate_param)
    + int new_name(struct clk_hw *hw, struct clk_rate_request *req)
    {
        ...
    }

    // Update the ops from round_rate() to determine_rate()
    @ ops depends on func_definition @
    identifier has_round_rate.round_rate_name;
    identifier generate_name.new_name;
    @@

    {
        ...,
    -   .round_rate = round_rate_name,
    +   .determine_rate = new_name,
        ...,
    }

Note that I used coccinelle 1.2 instead of 1.3 since the newer version
adds unnecessary braces as described in this post.
https://lore.kernel.org/cocci/67642477-5f3e-4b2a-914d-579a54f48cbd@intel.com/

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
Brian Masney (9):
      phy: freescale: phy-fsl-samsung-hdmi: convert from round_rate() to determine_rate()
      phy: mediatek: phy-mtk-hdmi-mt2701: convert from round_rate() to determine_rate()
      phy: mediatek: phy-mtk-hdmi-mt8173: convert from round_rate() to determine_rate()
      phy: mediatek: phy-mtk-hdmi-mt8195: convert from round_rate() to determine_rate()
      phy: mediatek: phy-mtk-mipi-dsi-mt8173: convert from round_rate() to determine_rate()
      phy: mediatek: phy-mtk-mipi-dsi-mt8183: convert from round_rate() to determine_rate()
      phy: rockchip: phy-rockchip-inno-hdmi: convert from round_rate() to determine_rate()
      phy: rockchip: phy-rockchip-samsung-hdptx: convert from round_rate() to determine_rate()
      phy: ti: phy-j721e-wiz: convert from round_rate() to determine_rate()

 drivers/phy/freescale/phy-fsl-samsung-hdmi.c      | 13 ++++++----
 drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c        |  8 +++---
 drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c        | 16 ++++++------
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c        | 10 ++++----
 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c    | 10 +++++---
 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c    | 10 +++++---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c     | 30 ++++++++++++-----------
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 14 ++++++-----
 drivers/phy/ti/phy-j721e-wiz.c                    | 11 ++++++---
 9 files changed, 68 insertions(+), 54 deletions(-)
---
base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
change-id: 20250710-phy-clk-round-rate-4aa7ef160fe9

Best regards,
-- 
Brian Masney <bmasney@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
