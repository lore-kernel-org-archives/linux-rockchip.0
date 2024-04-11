Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6B39CD128A
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 13:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qHGe4fkZC/31q9iX08H3z9kMNrfOgGq62X/Fa2RPBIA=; b=F22JDnv/FEJ8Lh
	6DG0VAxW9oOaCSRaUHQ1wzb8Hp7vj6u2myUyukZYqDAB6D6Q3kfU/wwHK4pnI6pfYRMF6aO8GB0K1
	LqPm+6767ivz6Tg6R0ZA2WH67qeijUwhtrcgvnl8NO2iht8oK0cvB2YbHZrlRN0igeE7Etxr/UD7S
	KC9J6NbG7Z/uNfVb3zB7m8w1Mxw+6b7cw13kdiqK6Q6xBMxkMROTJtDcJjVLGTqBVDjTYZoo+7R4m
	1YFM9ZhATmsJGoh9VOAwNMEsoYsCcTqyx69E6C2+BDJEW0o9JCdY2J4VkHeccCpDbWsxFItYAzq9B
	/mJVu6urxDd0mmBlAn0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruu45-0000000C3po-1dVO;
	Thu, 11 Apr 2024 13:02:05 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruu40-0000000C3nW-2jlo;
	Thu, 11 Apr 2024 13:02:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 75438CE2E76;
	Thu, 11 Apr 2024 13:01:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7454EC433C7;
	Thu, 11 Apr 2024 13:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712840517;
	bh=NmTuJ01mkdJ4M9SVkg9GPWdStss5bWliTugsuTs2VlM=;
	h=From:To:Cc:Subject:Date:From;
	b=c/X/UEdh/jiwhdWH1yldKABp0w5pXUdODB2ZvPtWR9kT/vJ7l6NpKQlKp5q3Hmzqn
	 ZAdmGl7R1F/OxjKxz8d3AXCkuBm0yt2JPPh+iNRkvM4En+76SfAYjzGAYmObzKMc2P
	 tmeCBVKSLF3XSVKD7kc9UrZIQ190D57JhColEjyAINfnWSBdbUnEu7CREHzi7LtcW1
	 ye3wrZV//bk1quYBgXKNWtNrHMjP9v43vsrOPt442QxJ+cQDyFEoq5ZsfB5tScFcQB
	 w+mUH56YSVTuKZ6yT2D+E9IDBDG2EWR1xiJLBbvTLZQ4v2KcyC3EJ4r0dbBLlEO+wh
	 D2Nl+lq2Wnynw==
From: Niklas Cassel <cassel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michal Tomek <mtdev79b@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Niklas Cassel <cassel@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 0/2] rockchip pcie3-phy separate refclk support
Date: Thu, 11 Apr 2024 15:01:46 +0200
Message-ID: <20240411130150.128107-1-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_060200_917941_DD73D213 
X-CRM114-Status: UNSURE (   9.31  )
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

This series is based on: linux-phy phy/fixes
(Since there are other rockchip,pcie3-phy changes there that have not
yet reached mainline and which would otherwise have caused conflicts.)

Hello all,

The rockchip,pcie3-phy PHY in rk3588 is by default configured to run in
"common reference clock" mode. (Which is a sensible default, as the most
commonly used clock configuration is "common reference clock".)

However, PCIe also defines two other configurations where the Root Complex
and Endpoint uses separate reference clocks: SRNS and SRIS.

Having the Root Complex PHY configured in "common reference clock mode"
while having an Endpoint connected which is supplying its own reference
clock (i.e. SRNS or SRIS configuration), will either result in the link
training failing, or a highly unstable link that continuously jumps
between link states L0 and recovery.

Add a rockchip specific device tree property that can be added to the
rk3588 Root Complex device tree PHY node, if the connected Endpoint device
is using a separate refererence clock. This way we will get a stable link
when using an Endpoint configured in SRNS or SRIS mode.


Kind regards,
Niklas

Niklas Cassel (2):
  dt-bindings: phy: rockchip,pcie3-phy: add
    rockchip,rx-common-refclk-mode
  phy: rockchip-snps-pcie3: add support for
    rockchip,rx-common-refclk-mode

 .../bindings/phy/rockchip,pcie3-phy.yaml      | 10 +++++
 .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 37 +++++++++++++++++++
 2 files changed, 47 insertions(+)

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
