Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55DCCC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 16:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MxDCNbjzBmb4QH2M3mf1wXsvy8pLE3MKAxHLK9mXhoU=; b=Uf8hHq0Xo/NxvY
	W4XSCLBMTa+DCmOOEo27PXHgfNhCo7K1TRV714RGEQiMiC9rYdp3dv1PBrfKkDzS51TfoT/+v2Z9O
	Lrp4H7InyLwIus0G6wAswd1r+pt5qK9zao53+lqXtwo2El9gWu5MR13uJJwhRyw8GBSeXNJXko1LT
	aAEP6Ox6Lf1N9Vof/URbRbuxyeCu+RfQkIDq0MoU4mEvitEHQUgX+EPzgfIJ5DeAuAMOyjfewwtk6
	FHB3lwRz06RL+JcVYdp5YhqMb+h/bvWAfLoU5E9guc50kv2udLufnKYFQrsr6K5vSZcbMh9E6boc+
	T+xOYBcfN03wWGQB1uJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3K2O-001PS4-EU; Mon, 20 Jun 2022 16:14:04 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3K22-001PF1-UM
	for linux-rockchip@lists.infradead.org; Mon, 20 Jun 2022 16:13:44 +0000
Received: by mail-ed1-x52c.google.com with SMTP id es26so14097883edb.4
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jun 2022 09:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2D5RHmuIZcoIP1zdKa7QdderVGwM9Ky0GeQbDgGuV4E=;
        b=cBeckDrRB9/yhrilFmAYPRbHI+uCOGC9r5l10lGl5KWIuYXQFFSo/hVkPChl9UeCyH
         wBBw7i50bAZfLUQqfouR6sIS2+TebyspNUdWmgOxirNNX4SMGLsZoByt1ziMruvu15R3
         DuUo5zmOue5M1tGJ/JQ1+B1qwrknvfxQ6DXmM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2D5RHmuIZcoIP1zdKa7QdderVGwM9Ky0GeQbDgGuV4E=;
        b=GWFCQ0Vzz+NabHX9XCadhmpVgk3loydwWNxTg+lWRwdshw4LxyWGLKwUZtqduqjzmi
         hnERx6Ms9vT2o1w2oWP1QhjRnXZyYnMxbEOwe3LIFDWL4TUO+crucQYHNe8PWYd+XwTQ
         WTmUr1Ur2D3HoJOPAW9T5ooESiTks9g6vNvahnm4qWUdEAwih355BAiwOQ4soZpew4gh
         KaI68rHkRivsMbSieAOnPL/sdvDyQYYUPyqOWs1mfRdqNSbfwRMFNc7oHC864G9SdqvM
         /8WydGHoOQHHqlLwiHfyPhBMtmCEWPmElDhByXixUykBMFj21076th0T5ww9pA2koCfi
         zCuQ==
X-Gm-Message-State: AJIora+pq/JdBlR66iiCCZ/xkI825TAIgePwA6VtQrKqklYjWT0rUz8K
	0UO2VbKZZKnH1221wBnTn3iMoQ==
X-Google-Smtp-Source: AGRyM1v7ZJ3iiAZyELv66iNp28JcyKUeN2jksoFtm1ez5u/wccNGFBn5n/fvYMaTqGQwqfVUvkI44Q==
X-Received: by 2002:a05:6402:e81:b0:432:7f12:1878 with SMTP id h1-20020a0564020e8100b004327f121878mr29886857eda.179.1655741604172;
        Mon, 20 Jun 2022 09:13:24 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i.station (net-188-217-55-189.cust.vodafonedsl.it. [188.217.55.189])
        by smtp.gmail.com with ESMTPSA id p26-20020a17090653da00b00706c1327f4bsm6209772ejo.23.2022.06.20.09.13.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 09:13:23 -0700 (PDT)
From: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To: 
Cc: linuxfancy@googlegroups.com,
	linux-amarula@amarulasolutions.com,
	jacopo@jmondi.org,
	Tommaso Merciai <tommaso.merciai@amarulasolutions.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] arm64: dts: rockchip: px30: fix ov5695 camera probe
Date: Mon, 20 Jun 2022 18:13:17 +0200
Message-Id: <20220620161321.1898840-1-tommaso.merciai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_091343_063971_384BD3DC 
X-CRM114-Status: UNSURE (   7.64  )
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

Hi,
This series fix camera probing issue of ov5695 camera driver for px30 evb.
Improve also the ov5695.c driver using using regulator_bulk_enable/regulatore_bulk_disable
function in __ov5695_power_on/__ov5695_power_off functions instead of for loop

1. max drive-strength for cif_clkout_m0
2. add mux for mipi-pdn pad
3. use rk gpio naming convention for reset-gpio of ov5695

Note:
 - This series was tested on PX30_Mini_EVB_V11_20190507 board

Tommaso Merciai (3):
  arm64: dts: rockchip: px30: max drive-strength for cif_clkout_m0
  arm64: dts: rockchip: px30: add mux for mipi-pdn pad
  arm64: dts: rockchip: px30: use rk gpio naming convention into
    reset-gpios

 arch/arm64/boot/dts/rockchip/px30-evb.dts | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
