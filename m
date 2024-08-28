Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6481C5B54A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F+Z00hE15tqe+GjsLmdmbTfxUUI2H55lsuuNmKUjB0g=; b=0H2r4tNd6JDzM/
	Xe0c73XIedMecCzviouXJgZQVZNOVWbi/g2/wITQn2o6AXDOjlwONBr70ZKOfmQp6FrHMWH5HYsF8
	D3gXxQraxaOhHNbSEb/RxIMahxJjy6MYzfFTyXi3FgF43JAYWgQvvkvO1UDLEQBMZ6t5c92xMxsw4
	w9My0jeWQ4tgfcpGrZEVVbG/DS9DVFFP/ALHXx0019KNYI/yaCjg7ldj7f45wVk3zc2bQckr17Fwe
	W9QPB6fO3a1t7+RLx2/4MYe+42RmpIfw6BRfz8/xF0TKOBXuV0Hpl+KiFTaRWOF95JbBfS7NHZ47w
	L5xegOGBZnXsQ9TwV29Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKpc-0000000G2CW-1YAq;
	Wed, 28 Aug 2024 15:43:36 +0000
Received: from a7-42.smtp-out.eu-west-1.amazonses.com ([54.240.7.42])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKXX-0000000FxPB-2PPO;
	Wed, 28 Aug 2024 15:24:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724858691;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Transfer-Encoding;
	bh=YxFusZ1OLLxvSk44tX+mNzNkWdmB65BrCS5p7PaYt5s=;
	b=COcuZX99qSzTc4lHLiO6tRoSuUWnCW1NpsSvZSnzPKPv8DEjHaiblQNdGRkOV/D0
	zpimbqvlF4YBeLNOnQlsYiTSDUSyaPlJ5HtBXmALh7DizdVmafiexMeutjnS6BdxzIp
	304walO+s2DAnuq9Anhpy1xHuVdhJLwo7plLevFPju3xGffne3LutLoXNckeXz+Dlj8
	bAp6EbC04BtpU2Qq+tlHx3iDMJIZna59U3G0DWClfsAxF1iGA3m/Gc1/Bql9Wy06T49
	vWzzH5KZKqY9U0fa0+e3fur22Iob/+lQkXp8xMPGUYuyN615cIGNV/ETUI3ANc2XtYY
	+VhaZa55mQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724858691;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=YxFusZ1OLLxvSk44tX+mNzNkWdmB65BrCS5p7PaYt5s=;
	b=b+W4w6vwJi+Dl9pLz8IY8EfvTUfslF+mezD4omzeaas6oaDoa7TpEjUHAre0/kws
	M4vivSykEVSOLlFHZGEjFny3HOg+z+r2v+ngjGAytxYjp1wOUtky7fCigATUur5BeTr
	8Oc+xHZeoHft8Nyd/eL3J3FfViNiGl4LUahZmb7M=
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com, 
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v5 0/3] Add dw_mmc support for rk3576
Date: Wed, 28 Aug 2024 15:24:51 +0000
Message-ID: <010201919996ef8a-db8bbe89-3c18-4dc3-bd0c-6498f09d978a-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.28-54.240.7.42
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_082455_773592_346FAD98 
X-CRM114-Status: GOOD (  12.84  )
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

The SD card controller on the rk3576 SoC stores the phase settings into
the dw_mmc controller, so the code has to be adapted to implement that.

Although the feature can be detected through the USRID register value, the
decision to use it is based on the compatible.

The compatible for rk3576 is added in its own group of compatible to mark
that all devices compatible with rk3576 have internal phase settings and
don't have the ciu-drive and ciu-sample clocks.

Changes since v4:
- Drop commit that ignores phase above 270 degrees
- Use a bool instead of int for internal_phase field
- Fix pahse typo

Changes since v3:
- Remove internal phase auto detection
- Set compatible in own block, with own dt_parse function
- Add internal_phase variable
- Use function to set clock parameters based on internal_phase variable
  instead of multiple ifs
- Use different commit for skipping phases higher than 270

Changes since v2:
- Drop rockchip,v2-tuning and use compatible-based detection
- Fix coding style

Changes since v1:
- Renamed use-v2-tuning to v2-tuning
- Rewrite v2-tuning description as the hardware feature

Detlev.

Detlev Casanova (2):
  dt-bindings: mmc: Add support for rk3576 dw-mshc
  mmc: dw_mmc-rockchip: Add support for rk3576 SoCs

Shawn Lin (1):
  mmc: dw_mmc-rockchip: Add internal phase support

 .../bindings/mmc/rockchip-dw-mshc.yaml        |   2 +
 drivers/mmc/host/dw_mmc-rockchip.c            | 217 ++++++++++++++++--
 2 files changed, 204 insertions(+), 15 deletions(-)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
