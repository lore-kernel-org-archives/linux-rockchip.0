Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C870C43217
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 11:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cacyE1xQPwn9samZf8XiBB+m+ibwrM+iWEeNVvuVdpI=; b=jclVzC4f7wnYU+
	hG2A5P5wBnxOXU8EItk7rkNWxGwLuEb9xWZ0c+wL5E/QQpZCLcjBFQkAvlL76Y+Ubf+BiGMOg8Le8
	jJtIk00QVOENyYZNINieaL9nae2/Ij9zoEJbuVPiQKQBO8irq2ERwT3unZndeF+kxhjruR0FBgfp1
	yhpQ9OdUTooqze+TohG8a0uDCy11+BadMc1SHWseWziUJZeFiugSpLmVmIqawrJQXtTqlbjAoUnGB
	R+H8zYJbOZx8VRHyz9k+tf5ZHNSiKqV5jeioCUvo/+y3pl77mf9mAky1EYJfKZlPxCFFe2xkeclGv
	n/nVNmbiazPey4ekLwkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovGzs-003AAZ-U5; Wed, 16 Nov 2022 11:54:28 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovGze-003A1q-7Q; Wed, 16 Nov 2022 11:54:15 +0000
Received: by mail-wm1-x32e.google.com with SMTP id fn7-20020a05600c688700b003b4fb113b86so1305877wmb.0;
        Wed, 16 Nov 2022 03:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7wEkV2c3AfMucGlumus3cVjWRFFJNhVHrUv2f8wN7nw=;
        b=grgLt3sVh7wjmdJbHY/NRs3ddxoX97jlWnK/a7aKZJ/UAyVoz1fjYCGnIunNcjaqF/
         z6G/Ek8IwLPoJNEC8ODeU0I3/CHbRerA4YWs/PJkEcFciv7LS/KXfqa3f9LOhr5CjVSm
         dSlG/WbS901ud0Sq1ZmBwfkqzKKcaZ0rqaDj7xag14hVP9XENprCLPGs/3FTo2pfLCsM
         ZvRSlNxtNvzegfLzmHx4oMdMHnldjn8abMmelVcvk1QHyOk2yJFFKG+B5sU4vH1a7qb2
         tapChOVKtfIueChWVw8V9bzp6Bp94wVVgMi/xJle0BpxINy8ijlteNhvfJTm5kkZERfX
         ULiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7wEkV2c3AfMucGlumus3cVjWRFFJNhVHrUv2f8wN7nw=;
        b=kapxgOugJ87SBIxCPZD2tcVpQwP0nWDuHhTd+a5amrdU0uhqBXhNQSI47zWTsH/+1m
         pkOP87PUk+73ui3m/sPFRCQesrE0nzgrLohXB3Rjybu4zWhdNF63WCcQemcnPeYKcPje
         brGcE9l53FwDaQzeuVT7LkAhDeU2F1FjLYaEqugK8ldoB7JAXIP3HE4lijdRHvorGpXh
         OQ0uS2k/OzO3s2zze9jyFSC2DrjahKNNXynq9wDAW+GwOtYTGPdSbQUZ1ifdipquhQ4M
         ZjK9JTN3l0NoB+VC+int7kN1ITVYqxhCJJ0Q8+7Hlk+4SwfZC7ZsOhArYtzRADf4kkGa
         bR5g==
X-Gm-Message-State: ANoB5pksNsvNtt2h43DHIWmrzjBTwDT75rI8DcGDVv65SV+Z1yd6w+gX
	ALR+SzE3+xS7kRYUjxC/iYc=
X-Google-Smtp-Source: AA0mqf7tDkB72ajHvvjpyiY0tN+GQDsl7h9BnPwo5djqndGf+647IY0mPyIrBH6UMTljX67Pkt/0RQ==
X-Received: by 2002:a05:600c:42d2:b0:3cf:c907:a05a with SMTP id j18-20020a05600c42d200b003cfc907a05amr1823902wme.177.1668599647192;
        Wed, 16 Nov 2022 03:54:07 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id bt14-20020a056000080e00b002417e7f0685sm14576047wrb.9.2022.11.16.03.54.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 03:54:06 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Andrew Powers-Holmes <aholmes@omnom.net>,
	Peter Geis <pgwipeout@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] Misc SOQuartz Enablement
Date: Wed, 16 Nov 2022 12:53:33 +0100
Message-Id: <20221116115337.541601-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_035414_323424_DA604B85 
X-CRM114-Status: GOOD (  16.13  )
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

This series adds the following:
 * SOQuartz Blade bindings (patch 1)
 * SOQuartz Blade device tree (patch 2)
 * SOQuartz Model A bindings (patch 3)
 * SOQuartz Model A device tree (patch 4)

The name of this patch series is a bit inaccurate as it has
evolved, now entirely consisting of new baseboards for the
SOQuartz. Nevertheless I chose to keep it as to make it easier
for maintainers to track what this is a follow-up to.

In V3, we add another official PINE64 baseboard (I'm sorry),
as it depended on the now merged patches, and I didn't want
to needlessly cause conflicts with the blade patches, so it
goes in the same series. The added baseboard is the SOQuartz
"Model A", which is not to be confused with the Quartz64 Model A.

This will be the last new board added through this series as I
don't want to keep expanding it. Any prospective v4 will only
contain fixes in response to reviews.

For anyone fancying a deeper dive during a review, the schematics
for Blade[1] and Model A[2] are publicly available. The SoM
schematics are also officially released[3].

[1]: https://files.pine64.org/doc/quartz64/SOQuartz-BLADE-Baseboard-Schematic-20220522.pdf
[2]: https://files.pine64.org/doc/quartz64/SOQuartz-Model-A-Baseboard-Schematic-20220522.pdf
[3]: https://files.pine64.org/doc/quartz64/SOQuartz_SOM_schematic_v1.1_20210816.pdf

Changes to v2:
 - alphabetically sort blade binding
 - add git commit message to blade binding
 - add SOQuartz Model A bindings
 - add SOQuartz Model A device tree
 - drop patches that have been applied by Heiko
Changes to v1:
 - added pcie-clkreq-h to soquartz pinctrl
 - added blade base board (by Andrew "neggles" Powers-Holmes)

Andrew Powers-Holmes (2):
  arm64: dts: rockchip: Add SOQuartz blade board
  arm64: dts: rockchip: rk3566: Add SOQuartz Model A baseboard

Nicolas Frattaroli (2):
  dt-bindings: arm: rockchip: Add SOQuartz Blade
  dt-bindings: arm: rockchip: Add SOQuartz Model A

 .../devicetree/bindings/arm/rockchip.yaml     |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-soquartz-blade.dts    | 194 +++++++++++++++
 .../dts/rockchip/rk3566-soquartz-model-a.dts  | 232 ++++++++++++++++++
 4 files changed, 430 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts

-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
