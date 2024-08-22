Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 216F4C52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 19:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qx0KrH7Hqlsb+h3Pbj81H1MxZMJCtsa46H4hcc/TM8A=; b=j38sOObQY+1Wmj
	zFaadkhxJs+aaJhQPW05f5ECqd3nLNnDxTlq81I31MEoL8Y3WT4KxKyHT1YlUnFvnqJNt0S4DSoXH
	224Ag7x7oqURwZvr8QoyDf/AvHGuPN6HMqiZYsi2yVY0GiNN3/TqmpaXo17z53nBrIJzUk6JsMjk0
	t8x+jtH5Nh62JJnurMaIPRSAc+ED08m+Vt97yyaEU6JYe20XMqR3E4ocR/sBkGsPNAqYUHV0Z5iBw
	G2KMxl9lz/Cv9pAwW3lwQicWJoQqYl25SHLYgPSyHbk0dq4/jDo4OR0UMnMLGAItSq4vM1uqWFcpV
	2U5jnnYUHb8LbhRH60WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDw6-0000000EACH-28R9;
	Thu, 22 Aug 2024 19:57:34 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDw0-0000000EAAG-1spu;
	Thu, 22 Aug 2024 19:57:29 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724356642; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mrMMoVI/vPpUTcwUWmVqAzUZqnK9BHKMfsEHlELNfsdLquU+g2sbqSC/T2dNXX6XiwOG9CgvkVNj9ObKBW2es24/xJ6P3VBbcGyDznFlso+BJtBIh9V02p4Cg1eAjsJHrJHJ0/hWSscDbd5C0JETX7oVfbb65oOwHRxsW5cEMcU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724356642; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=cDAWEJoEuz/zAjQB2GDr5o/+uMhJXPXP0OhvbyTM3eQ=; 
	b=elg7zCTgG0JGoPym0Bt7GGwWg8QG1KDkl5/q4E4r6K7z7x3QCJK++XxwPqS/UlB0XmhbPk/dWM9S+k2rYS+FFZUX9MIKddGQkLjRTia8w3y5SMST03nVMpDIKM3mv2H1p0uTM6ZxaDAB842087kJ4C6aZI/yX1ioc4+QloOKHl8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724356642;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=cDAWEJoEuz/zAjQB2GDr5o/+uMhJXPXP0OhvbyTM3eQ=;
	b=X7rNhmUo1ZZg/4il+v8om2GyJcVoSSVDqoPCpnzG28LruVhDc4F7fyqg6EUYsgZt
	dseyrUIyFkYTnyMpsPvphi40gcPB1xt+buHfOSG85hV1DfBsUPpBoNlEW2/d8VXP4Rv
	NC0RBqZb5TRpCGeyyzbbBxlctlEjcRjUzTDonVxY=
Received: by mx.zohomail.com with SMTPS id 1724356639631760.212187062417;
	Thu, 22 Aug 2024 12:57:19 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4] Add pinctrl support for rk3576
Date: Thu, 22 Aug 2024 15:53:35 -0400
Message-ID: <20240822195706.920567-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_125728_554088_9081FD4C 
X-CRM114-Status: GOOD (  10.74  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Linus Walleij <linus.walleij@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Shresth Prasad <shresthprasad7@gmail.com>, devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add support for the pinctrl core on the rk3576 SoC.
The patch from downstream has been rebased.

The grf driver is added support for the rk3576 default values:
- enable i3c weakpull SW control
- disable jtag on sdmmc IO lines

Changes since v3:
- Set GRF bits through the GRF driver
- Drop the rockchip,sys-grf phandle

Changes since v2:
- Document rockchip,sys-grf field as only needed for rk3576

Changes since v1:
- Reorder commits
- Describe sys-grf use
- Update imperative commit message

Detlev.

Detlev Casanova (3):
  dt-bindings: soc: rockchip: Add rk3576 syscon compatibles
  grf: rk3576: Add default GRF values
  dt-bindings: pinctrl: Add rk3576 pinctrl support

Steven Liu (1):
  pinctrl: rockchip: Add rk3576 pinctrl support

 .../bindings/pinctrl/rockchip,pinctrl.yaml    |   1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |  16 ++
 drivers/pinctrl/pinctrl-rockchip.c            | 207 ++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.h            |   1 +
 drivers/soc/rockchip/grf.c                    |  30 ++-
 5 files changed, 254 insertions(+), 1 deletion(-)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
