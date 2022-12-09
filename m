Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDC6DC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Dec 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G+tPV/FDatWxM3nluP88XiBv6L0zsNM2yesmz3NKaLk=; b=bQYdhpx0Lc2J99
	JlVK+j2v7ZNi10QF1gZjhkR1W3bGN7TIeYrg3KmFvNAc/lEWknjwGzSNUzShr8AiD3xktan150FNe
	0Moe5R+4LDI10YFui7m1DXNf6jVwhDW6yLhPBzmqUV6GQNAWGmYEutupABtkgW/sFIov3+9TcyqGG
	UwDAOxYwkAbxIB/Htc776H2Ojuijp6+GUxq2lf3A/S9GHA5tRRlVUvLEYeruqid7wGw17l+ZCJ0O2
	BaTl/rqXaMlK8i5Hj7nWEnFi3XaCbTAQdwrkii/Z3PEzsK0S0eJ7k9vYdxsnJiR+aLWyJwD6EYMOn
	1PM9SYhx2ZnvpXurG0cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3aa7-006bVx-CD; Fri, 09 Dec 2022 10:26:15 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3aZi-006b6C-0S; Fri, 09 Dec 2022 10:25:52 +0000
Received: from amadeus-VLT-WX0.lan (unknown [218.85.118.194])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 33A1F80009D;
	Fri,  9 Dec 2022 18:25:35 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: add Radxa CM3I E25
Date: Fri,  9 Dec 2022 18:25:22 +0800
Message-Id: <20221209102524.129367-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaS04YVk8dQxoYSUhNSENNGlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlKQ1VDTlVKSkNVSkJPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Oj46Ngw6OD0fGksrH0IDIzpP
	NAgKFAhVSlVKTUxLTkNKTkhOQ0tDVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlK
	Q1VDTlVKSkNVSkJPWVdZCAFZQUpDQ0w3Bg++
X-HM-Tid: 0a84f66b42a3b03akuuu33a1f80009d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221209_022550_229553_9FDBA9F8 
X-CRM114-Status: UNSURE (   7.32  )
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

Changes from v2:
* Correct the board name for CM3I/E25.
* Split the device tree into CM3I/E25.
* Adjusted some regulator names according to the schematic.
* Reduce the serial port rate to 115200bps as suggested by FUKAUMI.

Chukun Pan (2):
  dt-bindings: arm: rockchip: Add Radxa CM3I E25
  arm64: dts: rockchip: Add Radxa CM3I E25

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 416 ++++++++++++++++++
 .../boot/dts/rockchip/rk3568-radxa-e25.dts    | 229 ++++++++++
 4 files changed, 653 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
