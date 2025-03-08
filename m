Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD632C282EC
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Mar 2025 21:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Da1UIxvA0RiryGLhANme8vbqPZUIn1I4aH+ipX8sMhU=; b=RKoRCulGIMHAYw
	TlL4ZcYlWfjI734sLsyC2u1/FsvBcKzpf1X2duoLlPZAXUjyN7hSOTeGb/M/fue+XJ36YyJibOA7B
	/ez+fhpwSGeTUFimdl6Cvht0Rqk8KM2LEIgRl4Al8/+7sZfyNxdynQpY8/J2z9IRxowqRFeZx5eVe
	JxQytyOPOQYsHFtT2TgsZJ0HGdDmW2O0dCvU+ZbUCtZLbaaIjUpNR5k3wAJH79y5SrDT6z+qldH5f
	fde1YlAavIE2Q5oUROuQQ2R4baZYQLlz3fkXqWjOwys86JnIXdRL3AasMpStBCzDZYFiypBALgAvZ
	fvxYGQI1nVBDX5IBWyKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tr1wS-0000000HEh5-1x12;
	Sat, 08 Mar 2025 21:42:44 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tr1rd-0000000HDCM-1Gbg
	for linux-rockchip@lists.infradead.org;
	Sat, 08 Mar 2025 21:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1741469862;
 bh=Og8w880XlSA9NZ+b1EwPhuTpUeEE3P898ptqmOlNFR8=;
 b=Vf9/3nXpIJkWLCG+qMANdH8PJdHf87rtDFPsuB7PlOdTK7Qq6zGdsJWNe3p5fl3qncYSa8xOi
 O3LKXRNj+ECpC6CrqJQLtwPUhhs0zrArIgL/veNfR4wnCpSnX0ZWdLoKD48b7aKFsIrw+Fm6tFk
 sX4mEEHO7dz/e+2zrgd1ruyu8K/pJ4GaYBmLuMyKcdIc19t21ztT5DXQSLLIH62qcop80CZJhge
 fB+z4o5Tlhw+q12ac0+F0psqhFPWjVBuYIm8WqTedEmCpvrYfkTn9rLGF7g1bWDjbxLJcRRDBD4
 7RqKjPcOl05DUBPr6mQB3dK6a6ykiEgkNc0r9QIoM1eg==
X-Forward-Email-ID: 67ccb897bfe70eb1bfc13af4
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/3] net: stmmac: dwmac-rk: Validate GRF and peripheral GRF during probe
Date: Sat,  8 Mar 2025 21:37:12 +0000
Message-ID: <20250308213720.2517944-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_133745_373164_4DE6BF41 
X-CRM114-Status: UNSURE (   8.96  )
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

All Rockchip GMAC variants typically write to GRF regs to control e.g.
interface mode, speed and MAC rx/tx delay. Newer SoCs such as RK3576 and
RK3588 use a mix of GRF and peripheral GRF regs. These syscon regmaps is
located with help of a rockchip,grf and rockchip,php-grf phandle.

However, validating the rockchip,grf and rockchip,php-grf syscon regmap
is deferred until e.g. interface mode or speed is configured.

This series change to validate the GRF and peripheral GRF syscon regmap
at probe time to help simplify the SoC specific operations.

This should not introduce any backward compatibility issues as all
GMAC nodes have been added together with a rockchip,grf phandle (and
rockchip,php-grf where required) in their initial commit.

Changes in v2:
- Split removal of the IS_ERR() check in each SoC specific operation to
  a separate patch
- Disable rockchip,php-grf in schema for GMAC not requiring it
- Add a php_grf_required flag to indicate when peripheral GRF is
  required
- Only lookup rockchip,php-grf phandle when php_grf_required is true
- Use ERR_CAST() instead of ERR_PTR()

Jonas Karlman (3):
  dt-bindings: net: rockchip-dwmac: Require rockchip,grf and
    rockchip,php-grf
  net: stmmac: dwmac-rk: Validate GRF and peripheral GRF during probe
  net: stmmac: dwmac-rk: Remove unneeded GRF and peripheral GRF checks

 .../bindings/net/rockchip-dwmac.yaml          |  21 +-
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 270 ++----------------
 2 files changed, 37 insertions(+), 254 deletions(-)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
