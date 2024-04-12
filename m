Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F65CC04FF6
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 12:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uv6tQWmJ3IUscvfnDcjqpF3pR8HteUmTJa0NB4m9AmQ=; b=rVE/GjnIS2syNT
	tvqWlCVLO8B1YQm2KCvnfs4KrAZhHo6Wq5E+2O7avxailwCNrL4wT+gA8n489XYL9OPUHys6rVB1I
	VaCvbZpkpxdiFXDA2WrDh7NQwrToJ4/JF4PfYAEe0cP5a+D6yN971pi8ntsb2tkempkawwT1avMOM
	VWpHAH9T4QXdAh8LrvU0607L5ajLrTAP29Q7VsGYnR0UUsg+rJFUjcEj5a2YstX4OL354WFdEx27r
	uy92LTYbUF770bP++pigk2JHPBXciSI7MPgqIy4vrc5Bjj5iKgEuxn4CsGF+vL//b5XJ666WhDKsc
	EMexqJaCkU6RKJCkwNow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvGUL-0000000HCJk-3kmS;
	Fri, 12 Apr 2024 12:58:41 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvGUG-0000000HCHa-3AZ4;
	Fri, 12 Apr 2024 12:58:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 241ABCE1044;
	Fri, 12 Apr 2024 12:58:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7EF1C113CC;
	Fri, 12 Apr 2024 12:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712926712;
	bh=6jKTFVNQuNQalKatg6CmqSXTnFJUallQY7OIfMkZQzs=;
	h=From:To:Cc:Subject:Date:From;
	b=m9nVlnWDXq6qsfaIw0d4f3EsFNcaM0VTh2o5jjXI5pE1tIk+hq0HLjHDPQgHYYHim
	 Ts9R2WND6hUPzassL3Uv9BA41Zv6xVH9QJZy5nTsQqD701B+EeVcM3hFLyeIUFYj0f
	 TUcL0vjfceCiWyeAlBbDEWiiL1G+X6SD9wuviAllBPl14jZF9qAhKY1gtXe/+yffQK
	 WXgReZ9t1mHwmpzDXCcZren0/fVmxWketDJhifW88jcB9nHzcCV1O9oUB/jBvHTsrP
	 oJpZgNY0/SyfKTwmvQyoV0VweNE8iTcFNkTJphFmrZIPPqz7C7O10es5H/tZvIAdAg
	 PxDMn15PXMeuA==
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
Subject: [PATCH v2 0/2] rockchip pcie3-phy separate refclk support
Date: Fri, 12 Apr 2024 14:58:14 +0200
Message-ID: <20240412125818.17052-1-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_055837_088481_F602F8F0 
X-CRM114-Status: UNSURE (   9.40  )
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

This series is based on: linux-phy phy/next

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

Changes since V1:
-Picked up tags
-Rebased on phy/next

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
