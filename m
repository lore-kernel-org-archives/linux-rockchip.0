Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44B01C83F1B
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 18:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1VTDLJ6ljurIciZL55imRYAXrydx2WV2N8ozRRvCMfQ=; b=DYTxuqHyROYlVg
	iOzxQpon1iiw9o1yk9woJwVRexgxkiBYW6Kmu0TLEnwyBy3FmKqSTsHtG5Z75dXuPh/rkFIvQQNRT
	wJCpnWsFIu6JkSauhmrVMajYW6mqSl5eVzBXs63UFqrfxmuDCxG+8u3xM3sMmvd8zFhotOsWF9vhf
	XOhWFHY335Ji/8ED13vU+UkJgaGJoW2JQTthIQjDiDMEyIkZyKcJKhnVPVrr+mLfE2NjhISNx+z97
	4E8u4Rh5YqY8AY8yKaLn4f5GwzudXqiYZM6d+8pElgIG8SrhbmrnYs+DLu87SoenuK2ruHkk+yorN
	rcAVlk3q79g2e+8INDEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZvy2-0000000ChFD-0HBQ;
	Thu, 10 Jul 2025 18:25:58 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtom-0000000CMFT-1L9w
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163695;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9y0trkj4fUoS0RrnudnNCXl9kNIfdjh6JnTKD549Do8=;
	b=FymL5RWKXkWhvAIbMTnGO1zOcBkga/rpL69FZdDDohZs0kzbZW8rQHBM1ppwbEAnbs6FwU
	UBoh1UIOy3d5vIX5Am0axEBx3G25xIYj0p1bie5y5VyKVS9X4Rnho09qpHr8ivCXjXqau5
	hrrX9dTtjyara8/Xhy5683OJlebYu00=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-384-85p-STF4OjisTTEGZ92KKg-1; Thu, 10 Jul 2025 12:08:09 -0400
X-MC-Unique: 85p-STF4OjisTTEGZ92KKg-1
X-Mimecast-MFC-AGG-ID: 85p-STF4OjisTTEGZ92KKg_1752163689
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fd5e0bc378so22529166d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:08:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163689; x=1752768489;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9y0trkj4fUoS0RrnudnNCXl9kNIfdjh6JnTKD549Do8=;
        b=Ghm2x3P96i9Eud0Ex0xJXBsvX+B5F8YxBIlMljkKZBxa0W2xdzB4Ra5P2hmEHiURSA
         +33hTqLlfYjgLjINmx661zk9di1ekuOrTRBXw/wVIsSZqqpKUrQ/E4PgNbsZpfxYmUkI
         W/H5/FddxbR/3icP630HzIWBueiisC4YGN2Fx9AxMxnLxTWlTWzFpCirV9tNotBHs5NJ
         f9IMt3+u+ZdFpYfU8Y9R4mL48ULl7C/5aYCt7Cq7XA8OfHaQl9fMkeahpVxXSFSz3/Ca
         fNhkrfcOm9Exi2dUMl2VS1bld7PSnBm4nQJnQPRb2wmFB8XCFFa4Kr2ObyrC4BaEIce+
         ZylQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWxhMe+8nwjfIf75eSRZZDJdazvt7VaR8KbPGP0iROnJ7StzGO1cLt+GBo5qFD43yka9EFvAgaquJotIn13g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzxwfjAfkmiinG2DiipkJrsuhKggxc5Fjm9jWBq/VW1qNukcn5/
	m4y8lu36lpkPGd9Odk6Oi+vtqHuhu5VfN6S9jeo2i0I400DrXsSvyHKwg07NVEjtyEuuhoVK0lF
	IQK+ltTZ+/y+s28rAadeWYnhqLvayGGgoAzJ+zmOMMaz6gDC3o5Z6h7PbEymneZQq2/iLFXq+og
	==
X-Gm-Gg: ASbGnct5T+EP1xxUkKBFlIMSV8/LuUNGgz7JSjP+zUNo5YUcXSKe4OrLo5UtDLQdag9
	4AYaIx2xf3HcNMXG4zypLnFl+VhE7FjiHAIwk9X9BjZS+Ipsz+Qwq935VxMc/i1Atc58g6ZpvH6
	8PE48PVXIFaLSa0aGa6UE54mlu/6qMqhKfeWDSRHCA6GUi5M7+4MMLmPcAh9O1NEZACSEZ7Syj6
	9PvkfAmYPwshSbWNtXtbgTtlvcaCNgn+wMqP5Fc7TIijXIuR3bpYaijkryaSqildnWLYU3a4d3K
	pCyJxVcCXP4JzbTWul/kikLoBK1zDgL8FkMvoihCGQ4AawpmzGFL0F4SSgqS
X-Received: by 2002:a05:6214:2b0b:b0:704:a23f:9d36 with SMTP id 6a1803df08f44-704a23fc534mr3788266d6.25.1752163688499;
        Thu, 10 Jul 2025 09:08:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4gXy2Dkx4egeBxiGddHTDVbGuVB+8YXO54lWBniB7kXUceb7curtnNMZMf9c09zPdEAmsFw==
X-Received: by 2002:a05:6214:2b0b:b0:704:a23f:9d36 with SMTP id 6a1803df08f44-704a23fc534mr3787296d6.25.1752163687765;
        Thu, 10 Jul 2025 09:08:07 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:07 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Subject: [PATCH 0/9] phy: convert from clk round_rate() to determine_rate()
Date: Thu, 10 Jul 2025 12:07:10 -0400
Message-Id: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAC/lb2gC/x3MQQ5AMBBA0avIrE3SChquIhYNU52QkilCxN01l
 m/x/wORhClCmz0gdHLkNSToPIPB2zAR8pgMhSoqZbTCzd84LDPKeoQRxe6EpbWGnK6VowZSuAk
 5vv5p17/vByQloVBkAAAA
X-Change-ID: 20250710-phy-clk-round-rate-4aa7ef160fe9
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=5746;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=oHw4EaNbWszhl2nWjfiTC4gPuNzXI86YghpIW4T3XYU=;
 b=+YTf6TGhVZLwRnFkAqozoviaA3InI8pyoCfUeHJRT13VIoshFQfOj4nk5h5s6PLxBjQMoxHBQ
 8+w6S9SAMg+C2VTLAoUj9UtD3pjNbsegU6UjRkwkyeFq4rIhJkVs1CU
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: njcwT-xnTZd6wL1TDMlcte263L16h5bpt5xOO-hSHv4_1752163689
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090816_423265_7414A133 
X-CRM114-Status: GOOD (  14.88  )
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
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 21 ++++++++++------
 drivers/phy/ti/phy-j721e-wiz.c                    | 11 ++++++---
 9 files changed, 73 insertions(+), 56 deletions(-)
---
base-commit: b551c4e2a98a177a06148cf16505643cd2108386
change-id: 20250710-phy-clk-round-rate-4aa7ef160fe9

Best regards,
-- 
Brian Masney <bmasney@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
