Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55655CA0EF8
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 22:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jqOrm0qpaV2UJOq8bq2r7xNp6lZzWpTCmauvGak5/V4=; b=tGDD9mrp8XCJvp
	tv4el210dgTkGEmm8kRixFSsg3ThedqMbAXl5UfOfT66Ql6B4JAXom8qXMq/UzYYxfkmTJBS9QrL1
	Wy4H6DXKS8Ra75NA8EIaqRMDhIfoe+xzkTyCyseesk2ZU4YjfN+b7tJQzALsCm/MASxWqahmYSmAh
	FxGW3Y0eRvgCLQH9N8EpqgLcxMdNgWrbvCfo97eOO5FqwABCkq4f008fHiDpihCfJAxinpiRcplki
	eFLNREYyl3cdkIYQ6PXFzWzJmZEZPWoz4RRERBVbtRPWm24kmXzK8B5sNS79iOvJh6IdHy+ix4eH1
	oZe9ME/GvU2CfBc+t/og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uor4x-0000000F4CR-0pSa;
	Wed, 20 Aug 2025 22:14:47 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uomnz-0000000EZz8-16bs;
	Wed, 20 Aug 2025 17:41:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1755711657;
	bh=lSpNz/HktqKbyem+gTYF2HAmO6093ZOlrVZxX0qJrOo=;
	h=From:Subject:Date:To:Cc:From;
	b=LSvBakmlGm4j4cdc9EExHD+IVEZ2JZrQdKzylNb9vO6Y3UNuTIGGRPxr2ONLEAKZH
	 SNoEkIlJw+ZINATwunwlgPNsCcuOey5/UtYCwA4dCqDg1HB4ncl/Bng8QGVtuMR7ip
	 D/WI8EnIl5n4SvjoVb7DIXJBEzjbOlAq8TDc3YI556+r5IR6ag37udk2ogpGFCDPxt
	 FfYCJADisNIhrI5rNZucmOPozKb2ZtZkhlxq9N/RveztNa70vPweXnnix3wp7fzAA3
	 AOR84wZBG6IVOT9d5oXTyeFwCiZxVd+2I0jLNA+BQ9hirJqledXKa0BzSVpPHl5CbA
	 qT20cuH1NUdmg==
Received: from jupiter.universe (dyndsl-091-248-213-114.ewe-ip-backbone.de [91.248.213.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E476017E0593;
	Wed, 20 Aug 2025 19:40:56 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A325B480044; Wed, 20 Aug 2025 19:40:56 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v2 0/3] thermal: rockchip: shut up GRF warning
Date: Wed, 20 Aug 2025 19:40:46 +0200
Message-Id: <20250820-thermal-rockchip-grf-warning-v2-0-c7e2d35017b8@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJ4IpmgC/42NSw7CIBRFt9IwFgMo/Y3ch+mA4ANeWqF5NFXTd
 O9iV2Du6NzBORvLQAiZ9dXGCFbMmGIBdaqYDSZ64PgozJRQWrSy5UsAepqJU7KjDThzT46/DEW
 MngvtGqdr1dZGsaKYCRy+D/19KBwwL4k+R22Vv/dP8Sp52eUqtbJdI7rmNgJFmM6JPBv2ff8Ci
 FWvmckAAAA=
X-Change-ID: 20250818-thermal-rockchip-grf-warning-05f7f56286a2
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>, 
 Diederik de Haas <didi.debian@cknow.org>, linux-pm@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1167; i=sre@kernel.org;
 h=from:subject:message-id; bh=lSpNz/HktqKbyem+gTYF2HAmO6093ZOlrVZxX0qJrOo=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGimCKhcek5TEXx6SJzgH2OCzYml2zCBymbdF
 OVFOevcyrgLw4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJopgioAAoJENju1/PI
 O/qaYUYP/jokdAyYlbnf5HoMZGOaszy67FqML+1rs26JJ8L1LvGfB0CVCfB2ud2C/A1f/DASFnn
 OwQWGFfiaPPCd3qLseid+Pg2KIXAjmXbTxp6+COktH9zxURSGq5yp8+KqamWzJvjPImY1rS5NDr
 8A3t47KQwB0ZUDh3c0gGvaw01c0DcufGYBe9BNIxrzO4gZYkBQ5/sBRp35bgblXpz4+4kSFpd1e
 pDj81omftLgdufy11mUMlZ4TcFbmE1RhscUiN5R/vNeCyvmQTrecsiaKuWEgAkWKVlmrzgIC9xd
 4SD1ka04o5gepajeE4HYorTYPPkbEHp2Bv9iu8OS4fWRD42nZ427EPN/jwyx22fSps1WSg+2lpq
 Cyqcy2mc2TILchmprs/jTqY7l85UKrSMo3tD+a+VD7wTh1uFOvjwgOF+Vqr2pj0wm3l5HXaH3kZ
 IygsRczBZpXuDf40c6VgBk6nmPG5L6/bfn4HI2uI+MH8g2O4P/LX/KTgLFUJ55LOVHBKevqqISK
 Lhvdw3EzHHqpX4o3bICJEn9bt8LM/w/ggb3MJN3Ms5RoG9YaOmHxHSq/GXYET645UrSjGWAvEKK
 Z2VCsd7CZJ08iFtrIJM5QDiRmxMphToR/ibwOmE7kfATDQVHDVuNKZDAmXi3fgrmes9l3gNWLtl
 IFgynaZXRb5vRI7zJ/c0vZA==
X-Developer-Key: i=sre@kernel.org; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_104059_515115_9DE6D122 
X-CRM114-Status: UNSURE (   8.19  )
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

Changes in v2:
- Link to v1: https://lore.kernel.org/r/20250818-thermal-rockchip-grf-warning-v1-1-134152c97097@kernel.org
- Add patch droping extra newlines in older chip info structures (Heiko)
- Add patch updating DT bindings to make GRF either mandatory or unallowed (Heiko, Robin)
- Update previous patch to only differntiate between mandatory and no GRF (Heiko, Robin)
- Update struct documentation (kernel test robot)
- Do not collect Tested-by from Diederik, as too much changed in this version

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Sebastian Reichel (3):
      thermal: rockchip: unify struct rockchip_tsadc_chip format
      thermal: rockchip: shut up GRF warning
      dt-bindings: thermal: rockchip: tighten grf requirements

 .../bindings/thermal/rockchip-thermal.yaml         | 15 +++++++
 drivers/thermal/rockchip_thermal.c                 | 50 ++++++++--------------
 2 files changed, 33 insertions(+), 32 deletions(-)
---
base-commit: c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9
change-id: 20250818-thermal-rockchip-grf-warning-05f7f56286a2

Best regards,
-- 
Sebastian Reichel <sre@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
