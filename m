Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99541C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 22:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sXBX0m7te8SNbyywfnb+oUlz2DaxSegNvLcNrSIGP3c=; b=IBVhveBcPyzX8X
	AkhUwOiiZNFoX2Nz4YRgS+IBQ+z7RacS6Vd4tUem6np5xu8+uqUQDhnkAT32CH7ky1ufoedtKXaDp
	3Jbij+J9ATF40x4QMLHecr7fvq4jbsnqlBhHtiv1OeIyAkcR3deT6YHZn6ndjwpvuukXF/HlKMhNd
	DjE2DoShSWMR3xOpHcFjGZMaHG3cVg7iUrYNrQotWQrf37sa1DXt39vYZDjt6rhCMHVOd1fhk7Nba
	Vx1RBLUrnINcEPzSOtsTruul9++H+Io59Y9AqzXkUJSFDy7+s/bzs9Xns3rgix5qemM0M4UxGBd9w
	BPxAQlGnnrZtc2HTPkAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovmwn-000B1D-79; Thu, 17 Nov 2022 22:01:25 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovmvn-000AGA-JB
	for linux-rockchip@lists.infradead.org; Thu, 17 Nov 2022 22:00:28 +0000
Received: by mail-lf1-x12b.google.com with SMTP id j16so5064591lfe.12
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Nov 2022 14:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bZaNVz2GgeRHnR3J1ZaQTXh3sT/PaZEs9dXhOpujOco=;
        b=lIuMg4ClV5N66HZdAHrszvonioPEchHbHge+MFsl21GF6PqNcU4MqGsO6TEhetx6lU
         YS6mfjYvHEdnnnNZJcvTTgElTa7wIaHaUe1ohwyzL93zfjD9NvMrZ+IBvruekohZYbwu
         /o01UqpBugdkZH2lj/Wcj0PVLNjKDnbTuyfIIWmslYPMyjbfgxaFdOGNv7V8n8H35eki
         WnuGujLw3yf3AUVVAXVjvhgiVVNmx3lDAIRyGquGdzwE05eBpvxbGWNDW0cCaN8I0U2S
         XMkv17gGmXE18T7llU0lvBfr65gXAiXUrsKuwuvfFKAzkUwmeu557Nt1nm58yOErXG11
         oRRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bZaNVz2GgeRHnR3J1ZaQTXh3sT/PaZEs9dXhOpujOco=;
        b=FkLvFEQAk71RwHork9rGVB105VBTD60Tvl0fIErxaqV9i5bcoOcTBqpVfG1oS9rufb
         XTjPFkf6EIQo/+DAybXE/w+5SS72ED8UMZju7WRmIz3rJuHbw510UHddQy8vZhYA1rtk
         uvKpcsh1s46Akuz0F9Pn+lySVbciHcq7p+wPg3h/Q+nujMrElSFFNeKh0UahQ6Ijxpfb
         H3bG5DuuKsdj+j8n2MbzVnXDsXjHlJpHMNll/lyT/1iE/tNh6jNg6p62dtElKg/McA7B
         BZn4aeL3dFPh+J/rIbHh44eJKc+w2cS3bXXtM+1gF1NyfoyUXljoYrKnHsOuhVXgQZac
         Khfw==
X-Gm-Message-State: ANoB5pmQLk+eFIVcwn6dA71SV/N/PJlePJJmCy6IFvIKPwoOyWETbtnA
	UfEp8Z1zgDZr/UVei0E4TZvKbm+TqbM=
X-Google-Smtp-Source: AA0mqf7vYiMVnwKtS4XMtEwJ+sntXwuwh4zvmdMow0kKUWqFwVpz5ZbDrS/a+kJbnZO1pozMXMpxTw==
X-Received: by 2002:a05:6512:1184:b0:4af:a588:e8bd with SMTP id g4-20020a056512118400b004afa588e8bdmr1471777lfr.173.1668722404641;
        Thu, 17 Nov 2022 14:00:04 -0800 (PST)
Received: from localhost.localdomain (79.191.9.185.ipv4.supernova.orange.pl. [79.191.9.185])
        by smtp.gmail.com with ESMTPSA id q29-20020ac25a1d000000b00497aa190523sm342985lfn.248.2022.11.17.14.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 14:00:04 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	=?UTF-8?q?Jo=C3=A3o=20H=20=2E=20Spies?= <jhlspies@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH v4 0/5] Add more RK3326 gaming handhelds
Date: Thu, 17 Nov 2022 22:59:49 +0100
Message-Id: <20221117215954.4114202-1-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_140023_653084_36AAEF49 
X-CRM114-Status: GOOD (  12.10  )
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

This patch series adds Odroid Go Advance, Odroid Go Super(without
display) and Anbernic RG351M.

RG351P uses almost the same motherboard, and I'm not sure how to handle
it. RG351P DTS file would look exactly the same, aside name change.

--

Changes from V3:
- Changed go3's volume buttons to not re-use builtin controller dt node
- Addressed Krzysztof Kozlowski's comments - removed status = "okay"
  where it's not needed, and added a commit message to patch adding dt
  bindings.
- Addressed Chris Morgan's comments - removed battery node from RG351M
- Added a cover letter even harder

Changes from V2:
- Fixed a typo
- Added "v3" tag, sorry!
- Added the cover letter in a way that shouldn't get swallowed by gmail
  this time

Changes from V1:
- Addressed Chris Morgan's comments
- Added RG351M
- Added RG351M and Odroid Go Super

--

Maya Matuszczyk (5):
  arm64: dts: rockchip: Move most of Odroid Go Advance DTS into a DTSI
  dt-bindings: arm: rockchip: Add more RK3326 devices
  arm64: dts: rockchip: Add Odroid Go Advance Black Edition
  arm64: dts: rockchip: Add Odroid Go Super
  arm64: dts: rockchip: Add Anbernic RG351M

 .../devicetree/bindings/arm/rockchip.yaml     |  25 +
 arch/arm64/boot/dts/rockchip/Makefile         |   3 +
 .../dts/rockchip/rk3326-anbernic-rg351m.dts   |  33 +
 .../boot/dts/rockchip/rk3326-odroid-go.dtsi   | 600 +++++++++++++++++
 .../dts/rockchip/rk3326-odroid-go2-v11.dts    | 156 +++++
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 620 +-----------------
 .../boot/dts/rockchip/rk3326-odroid-go3.dts   | 185 ++++++
 7 files changed, 1011 insertions(+), 611 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts

-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
