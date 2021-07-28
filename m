Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78DA4C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 13:59:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 37B4160F45
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 13:59:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 37B4160F45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WHBGWC79jccHlaJV7R4ZuLSQ6qWPhGmwZBz4b90vkCs=; b=uaUgYG/aOOzy8m
	tpH0Gf16N5PmQzd/Sxnf6l4CBKqcB000qZQx+AbZEZsuuOaGBiDZBe/JrM4dXPmbrsGa5v7t8ws75
	OvTB0d8PgKiIZbKn9JbiC1dwTw/nc+wB4vW5dlN2GXZLSFopT8eIn6HRl0O/tEBunbPri0vRywnTF
	UBhfcNs9MthtHjz6YOUxo8XUTYKAAaCNp4sOAxGBbBStrDhWRrvrgCZXn/s9kLYdiVLk/0hcuJrFB
	GN82zeRc4BeLg0vNfhpWODZtsUiTs3p3aGvBpmx6v4215cOxfRtzIsS3C8orHlBfYTynF6J9swEf7
	sml4HZDCRh7baGtXm9gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8k5c-000tYM-Sc; Wed, 28 Jul 2021 13:59:16 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8k2L-000rrz-KG; Wed, 28 Jul 2021 13:55:54 +0000
Received: by mail-qk1-x72c.google.com with SMTP id k7so2213952qki.11;
 Wed, 28 Jul 2021 06:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pGfwAbdRt78qHTO96TNHse01yCgrSXx0nBQE1K40Z9k=;
 b=oqxg8mVy/V6nu+jVSAFy/QCDzw4popNFWi0oMDsYaEG6drkfVexNbdx+GFQOcSCAgK
 Q4I4iOETyduykRRnpF/1yZQ1S8r0gplh47RkJE8o61uTRV+O0qGHSZqaefM1+kFWwXJr
 7fw1crb4tbEyYGRNKho8iLHDRLTTEjMVau7riZJi7ulD3ZWPtgh9jyEchpDYCktXY0NQ
 wlX31YlIfnfKq264A0Wjoazr5fvy1CufiUQQ7oPI1IdlWLWCDjkRAZV4cq8vtudg1Med
 hXemtX53BEFNnO34o2AAev56iHoUmsN7Y/zVokRyBFuT05FGteJHS+wpstmNVhCb/16N
 xvuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pGfwAbdRt78qHTO96TNHse01yCgrSXx0nBQE1K40Z9k=;
 b=XUVIWSUV2j8tiWrs8kAFkhdv9606Z+DrCAVqoVDhcxugfsUWHN2QRFK8+qbA5eK3o2
 Oi9PlXPhXyLxd/dZXI9W8mNuMHiz8WASlpQCaZjbiN8bS2xnhlOvXBCP16zGRveijSx+
 S7Igt935lqmDmUf9ayLrsbvKsbVr+YNXx1J9RWc/kTD/P0gOH+0ocZNXADquD2umMAU+
 ZnHX2xW3s6mdKsVJ68uukFCCHfjkvv4lfxLkGwtVhnrLvPingGqblh5zAc/AevH2NSOw
 tKQWrfpWH6OXzQI4+0R6n1ddLRqVADs9Hjq6t/7MXlh4CaV5+r0jECaSvGWr1npR4+Yo
 fThw==
X-Gm-Message-State: AOAM530zsE/VbsSgdLACF82PrBfofVM2dBnkr7aXxYFSpt4IMKJx4vdO
 EjCr99h/PC9jphcQJNHxVvc=
X-Google-Smtp-Source: ABdhPJwFOefvh7nvrQLkSCRfqcRb4dWBL8gmNm47o675Elqgo8EaaKtcFOiaHI58yZ4EhsJVPVQQHg==
X-Received: by 2002:a05:620a:a19:: with SMTP id
 i25mr27119975qka.426.1627480552482; 
 Wed, 28 Jul 2021 06:55:52 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id t64sm27202qkd.71.2021.07.28.06.55.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 06:55:51 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 0/9] fixes and enablement for rk356x
Date: Wed, 28 Jul 2021 09:55:25 -0400
Message-Id: <20210728135534.703028-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_065553_726721_F6BE94C6 
X-CRM114-Status: GOOD (  11.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Good Morning,

This series aims to fix some early issues with the rk356x and enable
nodes that are currently supported by the available drivers.

1. increases the max clocks in the dt-bindings to permit patch 3.
2. fixes the mbi-alias, which points to the wrong location
3. adds the gpio debounce clocks which are necessary for gpio to bind
4. adds the common gmac1 node
5. adds the tsadc nodes
6. adds the missing cru and pmucru phandles necessary to reclock
7. adjusts the gpll and ppll clocks to better support hardware
8. enables the gmac1 on the Quartz64
9. adds thermal support to the Quartz64

Peter Geis (9):
  dt-bindings: gpio: rockchip,gpio-bank: increase max clocks
  arm64: dts: rockchip: fix rk3568 mbi-alias
  arm64: dts: rockchip: add rk356x gpio debounce clocks
  arm64: dts: rockchip: add rk356x gmac1 node
  arm64: dts: rockchip: add rk3568 tsadc nodes
  arm64: dts: rockchip: add missing rk3568 cru phandles
  arm64: dts: rockchip: adjust rk3568 pll clocks
  arm64: dts: rockchip: enable gmac node on quartz64-a
  arm64: dts: rockchip: add thermal support to Quartz64 Model A

 .../bindings/gpio/rockchip,gpio-bank.yaml     |   2 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  66 +++++++++
 .../boot/dts/rockchip/rk3568-pinctrl.dtsi     |   6 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 136 +++++++++++++++++-
 4 files changed, 203 insertions(+), 7 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
