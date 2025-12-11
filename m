Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F31ED43362
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 23:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Message-Id:Date:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eKILSkQJrJjsG83azP5k3XxQ87ToR332hT7Pu0RBXjE=; b=H067DUa6aEBdqY
	QQgiaPRBh68y3QQFGBXIXuOek19XIrwFPbfwPhKae6noEcXbkVMBeE48/emdViFUXLTCoIcBePGu8
	nm5OWnXhifs+8SQpAg+O2TYPa6NXKQtW162qigMnsemxSywOHlNxBC5a2E3IZhlYn9RAISMIbJvd8
	taqrbmWtDXq4ML19oq6ytBpMmRce3+8cmQ74Rznehq3TxwO9iT4teaZMwWN0rqNbuYy8vsEYgphsT
	HoPVR1HPBAp1reDBoKaWbGHEG3F3kzwsvqiI0GXQiig9kKlBkOnKGvnaZ3RMQL8zYCjF6SsCI/FOp
	uWwHZhcGxTkiUCsLUSSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpu0-0000000HONq-21YU;
	Thu, 11 Dec 2025 23:16:52 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpty-0000000HOKm-0lLA
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 23:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495009;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=NbD172mHC2Ryq1GOWpDAGfx/N1dB3vFXjgBCreduXmM=;
	b=WLFrvE1jplDvxUrY5CIpdubR0kEkEy6h5wDzgR03cVDCyGtKgBMkoOxSDR0jod7moF056S
	onQPYjpyliZDgcpLSXozFshm2s0J2Aqhw6xYlf/tJEsOMeA9OYYSu7W2ER8GyH4KCwJty2
	HQSia45vp81OSV8TvyctHa90SZdhF/A=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-551-F6GRS8EAMk22h7-9t63o1A-1; Thu, 11 Dec 2025 18:16:43 -0500
X-MC-Unique: F6GRS8EAMk22h7-9t63o1A-1
X-Mimecast-MFC-AGG-ID: F6GRS8EAMk22h7-9t63o1A_1765495003
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2194e266aso129153485a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Dec 2025 15:16:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495003; x=1766099803;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NbD172mHC2Ryq1GOWpDAGfx/N1dB3vFXjgBCreduXmM=;
        b=HPtHcWjJVkvSeTPC3V8IHONynbwATp3LD3U5yPPzHdXsPM0PagFRgiy7uj6CWYyjSY
         TEfCoD4X50J2VxMGrj0jZ4vIXyYCqLZNKfPmwhjuRv9dVP7VaYolqalZFeNAKISA0kUP
         lTz4/dnMPA6KMO8fIkRhMGFLT4XYD1Ki6UH1xNc7+NlsiUD/Dflm1QRw/hFIiNRc8j0g
         HZ3qQVpiitO0310JWQ96QnORD6xBXLDB1UhRqNvEQiN8nU+1aXbmHI1vjMLw0gB/gKtZ
         W0fsrzwpJL+f5wFptchT15ONtsY+nkdy+u7XEDSRRgEWDY031fDT7B6V4QrLhCJOQH39
         NqGA==
X-Forwarded-Encrypted: i=1; AJvYcCVvKgp8T9521EpcdnmZTixaZTa3tVz098dbbECodN5eZtvK+LnZn7zRXBfqFhc8NaDA1bRgpgwv+PiSN/UNAA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzE0dqs2TuIx7vkayR0Dg3ae4uGnWdEI8IqOHfZ/gODcbBHeXkI
	oUiz+3rKSwduBmQumO7RRigqB8N39MgfIZZh18tG3L2NmRuIWQd5ofRuFFnzYi4sexJdZ/EbJYL
	spjVOD34bERD2XPpTVG5bVSn3nnDg3A23kyBwQ4wruZ/p4Gia00pwfIcfGbCm/ZyngjnDW43BZA
	==
X-Gm-Gg: AY/fxX67nQyW1K7oy48n1eafExdraVKWAG+owp8Qi8ZIesMVPjcceAvLxFjdECXAN8X
	XmEGVbS48XSvT+KQ9TdxyrWOMFlR26vhJk6qnaxspjxXHdW/Fc09JwDDAyDxyr2Ygpkn0k9qZZp
	Ocdgy0nEKUdZZ6Hl4moQmtqmm4HPg8PsR6a0x70BVQh58KSQwyk63Z4CP+42yBZbuNPxkQ9L96s
	w8n4hMjcjqreBkD9DgqY6MfS/SEjfnUZmldqNXllJug/LsyC0inxhdzX1ChM+BLhnMzr/V5JZNN
	FBOAOn1s6B+qHpqLscBLEgmmlWCaxZFcpHnIbJ315DPWgLNN1Q9cI8bk3K1MQCt5VZcd8RkmDbs
	KMaxCGzlmWbr10Njc3jp7LdfZQ2qmfZpOF/Rk3ohJEm/pwXjJMeLQcg==
X-Received: by 2002:a05:620a:45a6:b0:89e:f83c:ee0c with SMTP id af79cd13be357-8bb3a3935d8mr36459285a.74.1765495002888;
        Thu, 11 Dec 2025 15:16:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHTgdmowmpGEJXfkwF3JzqsLep6RU6ll2UwJli3c/rdVkRG78nuaQFcWNbYooZO1mfConbh8A==
X-Received: by 2002:a05:620a:45a6:b0:89e:f83c:ee0c with SMTP id af79cd13be357-8bb3a3935d8mr36454285a.74.1765495002438;
        Thu, 11 Dec 2025 15:16:42 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.16.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:16:41 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Subject: [PATCH v3 0/9] phy: convert from clk round_rate() to
 determine_rate()
Date: Fri, 12 Dec 2025 08:16:18 +0900
Message-Id: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22NQQ6CMBBFr0Jm7ZhSEcSV9zAsSpnaRm3JFBsJ4
 e5W3Lp8L/nvLxCJHUU4FwswJRdd8BkOuwK0Vf5G6IbMIIU8iqYUONoZ9eOOHF5+QFYTYaVUQ6a
 shaEW8nBkMu69Ra9dZuviFHjePpL82l/u9D+XJApsy1pWjej71sgL02DVtNfhCd26rh9mQSQJt
 QAAAA==
X-Change-ID: 20250710-phy-clk-round-rate-4aa7ef160fe9
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Stephen Boyd <sboyd@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6172; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=ZY0h85yve8h09n3VMoGeby1rYSEr9a4xEaJTa8s51lM=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy5+Y5i0/XBSw5mcryf95CfUSLo+Naq9ozK7s1HrW
 7Omgj9XRykLgxgXg6yYIsuSXKOCiNRVtvfuaLLAzGFlAhnCwMUpABOJd2VkmPPLinP7Iq1VoTP3
 9Fmcfl0v/MP2VI3J6eO5oTW5Ty8+qGdkWPvn/zz548dCZAM+uE9uzc3rkPFRMjjw9Gj7psmZsmf
 W8gAA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: IHItumJ19t-6wzSaLhSJe5EjcKvzAG7ZMQv-gO7QIQY_1765495003
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151650_321781_10CA5EF3 
X-CRM114-Status: GOOD (  15.31  )
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
Cc: Brian Masney <bmasney@redhat.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The round_rate() clk ops is deprecated in the clk framework in favor
of the determine_rate() clk ops, so let's go ahead and convert the
drivers in the phy subsystem using the Coccinelle semantic patch
posted below. I did a few minor cosmetic cleanups of the code in a
few cases.

Changes since v2:
- Patch 8 (phy-rockchip-samsung-hdptx): fixed merge conflict so this now
  applies against next-20251211. Cristian / Heiko: I kept your
  Reviewed-by since structurally the code is still the same as before.
- Link to v2: https://lore.kernel.org/r/20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com

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
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 15 +++++++-----
 drivers/phy/ti/phy-j721e-wiz.c                    | 11 ++++++---
 9 files changed, 69 insertions(+), 54 deletions(-)
---
base-commit: 5ce74bc1b7cb2732b22f9c93082545bc655d6547
change-id: 20250710-phy-clk-round-rate-4aa7ef160fe9

Best regards,
-- 
Brian Masney <bmasney@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
