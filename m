Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65169CD13D8
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 07:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bqWK0AsE72Pvmv+/thC/1ij+AVW+lDraJ/Sa6p3qhqo=; b=xJPX72jHS3wX3E
	effQmjfLCHZQZAQ9/RsK856T3QaX6S9JgO9l5EZDgodpUQnMVPJ4FsZYjKp5ZF0sIN9ohsDZgROgs
	60oNhsvq17Ee8whVHbJ73E1rIXmArEXergNd2oy2MhRnSz6O8rSwRAMUPLQD3ukmn+hS5kv2dCdjK
	2jKrFeevfVSrCBi1WRRq3pwmBS0LVAAy/wp5jGb2guAP1F/MBNaFND08Hh5LnJwUoNP77029ifTVD
	shJnJEJR/gPGIpExeF8NltmeCZOWZYRYCtn5B0Gswxe1q3J/bJKj7lcg2ZQJvN4BcBz3GCpAhV5og
	SQGplGmUUjDmYT6vEzJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8kU-00Ej0k-2n;
	Mon, 18 Sep 2023 07:32:50 +0000
Received: from mail-m12741.qiye.163.com ([115.236.127.41])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8kR-00Eiw7-1g;
	Mon, 18 Sep 2023 07:32:49 +0000
DKIM-Signature: a=rsa-sha256;
	b=UEh7tRhqxHvTaUFQ0u3MeGBGhtzOP/PIi/s7GFyLhXmIlQ2+/CD2jlRdoQSsXQJf6b48/28Apzu9C/YfbudI/QH1+LjuLnfG8HkNqlPdceoCAU831/uiQX+LDSCLt1w10u+zkYvn1fF7QrQHiPcnBj9aAZm/mLdKrhq0BHFBTkM=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=89R2kmI3V5ZPb6807YAI+FcT78Vp6S5FMXaVvIkbARo=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id E9AA868021E;
	Mon, 18 Sep 2023 15:31:51 +0800 (CST)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com,
	xxx@rock-chips.com,
	xf@rock-chips.com
Subject: [PATCH v1 0/8] clk: rockchip: Support module build
Date: Mon, 18 Sep 2023 15:31:43 +0800
Message-Id: <20230918073151.7660-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0MdQlZOT0tOQ01MTU9CGBpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8aa733eb9e2eb5kusne9aa868021e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mz46OAw*Lz1RP0pWMg1LSUsD
	SSswCTVVSlVKTUJOS0lJSEpJQkJKVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhLT083Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_003247_745630_3476E95B 
X-CRM114-Status: UNSURE (   6.40  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Elaine Zhang (8):
  clk: clk-fractional-divider: Export
    clk_fractional_divider_general_approximation API
  clk: rockchip: drop use of rockchip_clk_protect_critical()
  dt-bindings: clock: rk3188: Add binding id for ACLK_CPU_PRE
  clk: rockchip: Avoid __clk_lookup() calls
  clk: rockchip: rk3399: Support module build
  clk: rockchip: rk3568: Support module build
  clk: rockchip: rk3588: Support module build
  clk: rockchip: fix the clk config to support module build

 drivers/clk/clk-fractional-divider.c          |   1 +
 drivers/clk/rockchip/Kconfig                  |   8 +-
 drivers/clk/rockchip/clk-cpu.c                |  18 +-
 drivers/clk/rockchip/clk-px30.c               |  88 +++---
 drivers/clk/rockchip/clk-rk3036.c             |  42 ++-
 drivers/clk/rockchip/clk-rk3128.c             |  59 ++--
 drivers/clk/rockchip/clk-rk3188.c             |  59 ++--
 drivers/clk/rockchip/clk-rk3228.c             | 147 ++++-----
 drivers/clk/rockchip/clk-rk3288.c             |  74 ++---
 drivers/clk/rockchip/clk-rk3308.c             |  46 +--
 drivers/clk/rockchip/clk-rk3328.c             | 182 +++++------
 drivers/clk/rockchip/clk-rk3368.c             |  71 ++---
 drivers/clk/rockchip/clk-rk3399.c             | 283 ++++++++----------
 drivers/clk/rockchip/clk-rk3568.c             | 114 +++----
 drivers/clk/rockchip/clk-rk3588.c             |  19 +-
 drivers/clk/rockchip/clk-rv1108.c             |  65 ++--
 drivers/clk/rockchip/clk-rv1126.c             |  77 ++---
 drivers/clk/rockchip/clk.c                    |  20 +-
 drivers/clk/rockchip/clk.h                    |  18 +-
 include/dt-bindings/clock/rk3188-cru-common.h |   1 +
 20 files changed, 579 insertions(+), 813 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
