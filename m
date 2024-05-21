Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 306ACC25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GBQhbdFN4elpusrg8j7QEgzBDadBmY1N/Iva84eWQII=; b=e5QhPailHxdc2y
	CcvF52Qv/X7ireNUG8OzW624YtiBFyZq11lEj4ur4Mesrq26CZHJmsauHKgmoWQJmTRo7MmejpCDj
	kfDkRlws2uCfCtbdrApXpjiGg1zJCgOdM7OKPPgkE12k+uTYpGhb8g8ZSW1yIWMRN85R8PcYXu7hz
	S26/6ggGb0600Sgqwk1tTIHVrTAm1kLFvJlOmNMAO8AyW+YXYXLDmCGPukbgSC+2FEGKUTN4h2B19
	AEy6s0z7iobux4qBh/tsXP9fuwoNMNClzW4Eq/N7JzYibV9+EIVMPXUnMVICwpmAfmm360TrBebU+
	Db4Mnkg9tdnP2sgM+Xcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WxJ-000000019aC-0fOV;
	Tue, 21 May 2024 21:23:33 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wx4-000000019P0-256S
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:23:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1716326576;
 bh=iSM4GlQoeQiLh4kh00cMbzGdcD5BMtLxx/m4Qk1LltQ=;
 b=VcUUV3dmB4iKyXNX8HGCx2bOAIVN2Ufcp5lqsgKRLKhWF2lekqlvZXsE74dEWUnERmCzqUn/r
 nVUiC+TLEle6y7IufdDN9lgUrmltA/lCipZPv/+aIFb3UQ/K7gexJc2ZWpTul5L4MNsS8RHBQsc
 nc9tVZ1H6/KeMaQ80u8PzUIqCfr9Ecb6CO4kCAVrmESncQQ4O24mT1SXNmc97Jyk+0SOfPQxSvd
 g0jtneA0k+nbzLwc4nPKP/z0fMWPA20lybvzQqY759yM5MMo1+HmgRAZAgtkwp8Y5BBujzoUqN2
 Mdu1QxyZos72EW/hhvX9lq/i9ymx6yV6QPdqrQ75qRcA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] arm64: dts: rockchip: Add Radxa ROCK S0
Date: Tue, 21 May 2024 21:22:41 +0000
Message-ID: <20240521212247.1240226-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 664d10ad8b6b0c828344b0e5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_142318_911868_B5FE1FD6 
X-CRM114-Status: UNSURE (   8.38  )
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

This series adds initial support for the Radxa ROCK S0 board.

Radxa ROCK S0 is a single-board computer based on the Rockchip RK3308B
SoC in an ultra-compact form factor.

Schematic for the ROCK S0 can be found at:
https://dl.radxa.com/rockpis0/radxa_rock_s0_v1200_schematic.pdf

This series depends on the series "rockchip: Fixes and improvements for
ROCK Pi S" [1] to pass DT schema validation.

[1] https://lore.kernel.org/all/20240521211029.1236094-1-jonas@kwiboo.se/

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Radxa ROCK S0
  arm64: dts: rockchip: Add Radxa ROCK S0

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3308-rock-s0.dts      | 293 ++++++++++++++++++
 3 files changed, 299 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-s0.dts

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
