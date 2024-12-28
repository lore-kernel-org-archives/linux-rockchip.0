Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAD84E77188
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Dec 2024 12:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N6DOdPDMq19yEYzkuNnfyR6C/l6ERSgfunLYXU8+qU0=; b=kFYuZUQYSkooj3
	QVVekHzpbZ8/QYq/P1o6I1YcjUO+Om2691KiH+Z1MIkqDI0wmL7lTVscnGHEsbEL3TksgE/+KxkQB
	MiRBjpXlpy22oTRF2Ef0RjqDnoh7qmTtzSZIPGdSJp6kZphU7WjmjMCE+uG8qKZ3o/Xx6jrAEZjSk
	Xcud6o8o88jcz+byfq1lV2iP1dPDCmn0ZIPr0mcW5AaDD3rvOed+AQ11esHiXAFKD7B1JpLZXNPXv
	4trp1LK2iMCq0NnD6bgo107EWGNz1/ZxFntsyfIyRshPpXRvcbP/Ns2Nzp7wuOL3sJHCf54maCZ7N
	a8na9jCCZAFbbSAI1ECA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRVr7-00000001qwp-4223;
	Sat, 28 Dec 2024 12:23:45 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRVpt-00000001qW8-2ucl;
	Sat, 28 Dec 2024 12:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=SV0/w
	h8oJIpggaKXs0KqU/L+Acgqq8H2YHjCCFLUvTw=; b=ovurLZSW8cE/5rHXCAk7X
	cJb4+9/ES1it5JShxRGZCP1xeb/6kSQrKbCuctg68yMHkvhwr3kFp2/qAqkM3Oea
	Cw8lsem9ijCBrJ+39akCoIO4TrIM0UrFrkQ2kaolcjvDL50wb7MisX6UTbnDH8iW
	EnX5n4S7IyAUA3/4oZkCN0=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wD3t0tl7W9nUxdCCQ--.1009S2;
	Sat, 28 Dec 2024 20:22:01 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	krzk+dt@kernel.org,
	joro@8bytes.org
Subject: [PATCH v2 0/8] Add display subsystem dt node on rk3576
Date: Sat, 28 Dec 2024 20:21:43 +0800
Message-ID: <20241228122155.646957-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wD3t0tl7W9nUxdCCQ--.1009S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7ur17tw1DAr48CF1DWF18uFg_yoW8AFWkpa
	nxCF98Jr18GFnrXFsxtwn5CrZYqrnYyF45Wrs3J3W7tw45Kr47GryfWr1DZrnrGr4Iyay7
	CF18Cay3Ka92vr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jBa09UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqA-DXmdv62k+ZgAAso
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241228_042230_166777_F0AB9B43 
X-CRM114-Status: UNSURE (   8.37  )
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
Cc: robh@kernel.org, iommu@lists.linux.dev, detlev.casanova@collabora.com, devicetree@vger.kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, linux-arm-kernel@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-rockchip@lists.infradead.org, cl@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>


As the VOP[0] and HDMI[1] driver have already been submitted for review.
This series send all display related device tree part together.
[0] https://lore.kernel.org/linux-rockchip/20241219073931.3997788-1-andyshrk@163.com/T/#t
[1] https://lore.kernel.org/linux-rockchip/20241225103741.364597-1-andyshrk@163.com/T/#t

Changes in v2:
- Wrap commit message according to Linux coding style
- Make "rockchip,rk3588-hdptx-phy" const for "rockchip,rk3576-hdptx-phy"
- Make declare phy/ropll/lcpll reset line are not exit on rk3576
- describe constraint SOC by SOC for vop2 binding, as interrupts of rk3576
  is very different from others
- Drop Krzysztof's Reviewed-by for vopp2 bindings, as this version changed a lot.

Changes in v1:
- ordered by soc name
- Add description for newly added interrupt

Andy Yan (8):
  dt-bindings: soc: rockchip: add rk3576 hdptxphy grf syscon
  dt-bindings: phy: Add rk3576 hdptx phy
  dt-bindings: display: rockchip: Add rk3576 hdmi controller
  dt-bindings: iommu: rockchip: Add Rockchip RK3576
  dt-bindings: display: vop2: Add rk3576 support
  arm64: dts: rockchip: Add vop for rk3576
  arm64: dts: rockchip: Add hdmi for rk3576
  arm64: dts: rockchip: Enable hdmi display on sige5

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   1 +
 .../display/rockchip/rockchip-vop2.yaml       |  70 ++++++++--
 .../bindings/iommu/rockchip,iommu.yaml        |   1 +
 .../phy/rockchip,rk3588-hdptx-phy.yaml        |  62 ++++++---
 .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
 .../boot/dts/rockchip/rk3576-armsom-sige5.dts |  47 +++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 126 ++++++++++++++++++
 7 files changed, 276 insertions(+), 32 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
