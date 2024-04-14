Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0E88C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 13:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OE8j/kYf66jm31XPXV94FDQUzFRX6TNEmnY3vDQL7dw=; b=5G7iUKalkr1iBx
	+MhI2GR8Bp5DxGjfc3HMXA0Zge/bPExeKiytE64bFJZ8DpADaqFCaUwIXNJhkbzjPa0bAjEK9YtQb
	ayXeKAO8OewTNN+1e5XJ7FkH9M8HRbSe7wWpvkpTCFFgE72H+ybpw9sCxF+RoQKd2zCG+xbD64uaG
	udUARNoZLZSn1uNBUe6bPPvWWsePO2x7oc9lH1V5zz0sI+p5AXWiaAs4cd7ltcdODxmADDoPcVhb2
	LN7qgNjeIpCXbh4zVvVdlp0xr3wCCf5xTYXzBR6zpG/ShkDFLIMyDcdSTIbB2fV/i/iw1iGk6gcYP
	clBzpY6HXif7r8i3QEBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvziC-00000005VEu-1sOe;
	Sun, 14 Apr 2024 13:16:00 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvzi7-00000005VBr-1mMU
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Apr 2024 13:15:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1713100536;
 bh=h8IXNmwz7bKOK2GJ14X+EcXt3RKFVN/vSGLDdiTpb6g=;
 b=dwyKfVk3NrwB10XX5dAFB493XoUJO32J3Zch4xJsWJDN4CJevSWTNbk3W+MKneHxdcufJgzna
 DcTBG+SEdKQezUP60Y3Y8kpY5SWPci3yRYsznwq+BrZCm5wrhdmicMCfGB973MqlGi13DFsJEYH
 cdB5++N93HKwh9VkxVO3peqUGY9WwxL6VQf1JropkOffQ/OngnKVdVv5nloqY13x0Wlqt5tF9AT
 Iptd0mu/1BhI/zhYkCrvsNlQVmsBcLYbsJwzJP1fKAI8JhREdFox9IYhC6hukCjpDCMm1hMZKtW
 eOzGyk/O21850nwKjjmHX3HtGe1Sph2ARH050K9Qb2mQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
Date: Sun, 14 Apr 2024 13:15:22 +0000
Message-ID: <20240414131529.1730506-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 661bd6f83b53c64433628499
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_061555_981467_1ECCBC80 
X-CRM114-Status: UNSURE (   7.69  )
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

This series adds initial support for the Radxa ZERO 3W/3E boards.

The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
computer based on the Rockchip RK3566, with a compact form factor and
rich interfaces.

Schematic for ZERO 3W and ZERO 3E can be found at:
https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_v1200_schematic.pdf

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
  arm64: dts: rockchip: Add Radxa ZERO 3W/3E

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
 .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  26 +
 .../boot/dts/rockchip/rk3566-radxa-zero3.dtsi | 443 ++++++++++++++++++
 4 files changed, 517 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero3.dtsi

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
