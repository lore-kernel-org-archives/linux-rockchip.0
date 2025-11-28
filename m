Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6707CFD376
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Nov 2025 07:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G/RRvHhIdhLC20uAe/+fa+MhnWy489gG8ZVer3YzUZA=; b=kqx3KKzOvRu7Kc
	F+Ysq1BDIL80Nj5CANyd3J1HTGourtiXMWwujgCmSY9bD8VkMMLdfEjfkx+pjpqhbTkaiOzaQ6owH
	YxO+QxOyUwwS2VKpFbBm7/JHOMOxp9WD9oEJzfmuQCk20I/7TWmpie3P+ulKAQv0qL6RHWRVV08Nd
	v0u05r4/mQDlSiQZ3U4+W8T2NzWvf8LWKPn0oivQbAEhcRl7nB7QAVAIn/FYYdt9pz1J4Qody0mzD
	f4Fx8jSpCAQmla1UBsW0pg8rNv9zDs7abKtagK16yPx6nzlBOQiGNnsmHzLbx6/XhnB2FQMCuraP7
	WnjD+LA4uSXEDoQ6EBbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsgX-000000005SN-2iTy;
	Fri, 28 Nov 2025 07:14:29 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsgU-000000005NO-0Iz1;
	Fri, 28 Nov 2025 07:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1764314014;
	bh=8r9aJGmUsw4md2Y+21WpPtb3FONAryJYnibLGFu+eE0=;
	h=From:To:Subject:Date:Message-Id;
	b=ejdETGwJoOwYNSgwzTsI1MWHjPNvHbdqN+MxYRxC70kUoWoYPgvdkcFrW4T7T5sed
	 VLDGdKjnHxenYjq7Nfta/+JE6ybRyz7mVm/HnBm+fQ1mQ9AO4VAha/FnY0BDTW5qij
	 AW1t4aB3CPMMhsqR/8u80vAELNiVqJNjJPjoT5oM=
X-QQ-mid: zesmtpsz7t1764314006t744032d7
X-QQ-Originating-IP: Mdi+Vc0qxw+qp6bUZ2zG3LK3yAZHFIYKYMa1h3TPCNE=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 28 Nov 2025 15:13:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2142567719846038083
From: Chaoyi Chen <kernel@airkyi.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH v2 0/2] iommu/rockchip: Add support for multiple interface clocks
Date: Fri, 28 Nov 2025 15:13:20 +0800
Message-Id: <20251128071322.92-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NE8iuDeseKq86VOizA7BECqteYtkaA46C2SLeSZe0814HzExZqV3m2dB
	UCRs5tvDjaZZdmJ8HKCz+6p3cQ80pZuSw4WzGJ+X8LDaFH5Ku5Wr/CIcGulj6R6of6H1mWp
	+Ttzc5ObrCrt5SZVsQOtKfz6WYDrX1Tea77q/H1s01O7kFkASf/0WxYL7LSnzEUZJGuEKaj
	qUMEUpLPNKJ+TdiiAGuufEA+QKsOGhRwjXsb1JlVIdva8H4lr5R5Fc5M/lBFi5PU9OtlAs+
	Q+nPOQZbegjeBHnUsCJ6sSxY0fGpPe5u06KwZ4PlcuHaRSw8GkEp0Fgq+TefMcUoqzpdjjq
	yMb2puRJJILLeAA3CT3b8tYpvesaDet/GsXRqekrEgGEox8swO8OPAf3Kp5swqM3rYUL/hf
	GR1TKWY3UPAnRUiFzOGskuzs91ocpmwwyseU80z0N6syBDj1naR2mR8FOQc7LOlt/mEO+JF
	EV7V02jNbLiBqedppxB+NhX3e/TJuEAbmoTTT6nYY6uF/dCfDvw/b3oczRs1cUe+4rD6PUn
	kX13LupwMWRCt0LaLtJInVLHH2IvRT76Z0cXcA8grdUk3JS2um6yyzbt9KiBaMDJZSU990S
	0gAWhXskDz3firHS0w0ghK1UNTCjYRctLThq33j6bw/wY5dcM2v2hR+5kmBDzYzW3rR960e
	0sy2LDvFzrnt88xmTjLZtc/PLM+X4gVQNIkPt0/nlcvyn3PurtsRLuy0QlcGCN8kaTNQp0X
	Ckhb29G/lKBKLvhwv8c9Ea9VTkiBJgH5TnmVYXqn+4ukx0Fzp1B18kJxK9XJccDvgdlnLh1
	QKgO77H/SuNRR3xeszh8LijG0k6bQo8CqG0hdO1ps5HsXX/c/r83ff/rv77cwwketECWZvj
	XlnTzzxK+w+oUhZSUBUbGCMt/Af4tzKxzkFyLMPvRqV7Jjoex9F6F/LwY2C7ZBrPWvJ2Xk4
	zk9wMV2+CMWemAgkOl+vs24nKpxDE5L3T2MCN6b0CSdkY+0dbQPFZZ4R0dmPxxCKYwRFWGW
	4Rru6sIw==
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_231426_934233_8FCC471A 
X-CRM114-Status: UNSURE (   6.78  )
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

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Hi,

Some rockchip iommus require extra clocks besides aclk and interface
clock, such as the iommus for NPU and RKVENC in RK3576.

Changes in v2:
- Link to v1: https://lore.kernel.org/all/20251126083345.88-1-kernel@airkyi.com/
- Rewrite dt binding.

Chaoyi Chen (2):
  dt-bindings: iommu: rockchip: Add support for multiple interface
    clocks
  iommu/rockchip: Use devm_clk_bulk_get_all() to get multiple iface
    clock

 .../bindings/iommu/rockchip,iommu.yaml        | 52 ++++++++++++++++---
 drivers/iommu/rockchip-iommu.c                | 20 ++-----
 2 files changed, 50 insertions(+), 22 deletions(-)

-- 
2.51.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
