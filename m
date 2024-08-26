Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0654C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 21:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tQC2RregO7WWORbjC9UrV6aeOFl+Yli47HTffde6QOg=; b=GbYESrqhkrtYAc
	FjfXOwj0FDFDE+KrWMbBaUi09XNq8m3+YdV82QZAKNqDTQLMMop13SIB4XnMNlTpgo9876PADOCW+
	mtW4dmY4AaqoiCBsoxRWtKwqHBJ24kUyPWo+V6VN/uUfQAi/mqq0BY44JoJNtHCxjvNpym3wUNvF/
	x3xblO4biWhj0tj2okTcPRuOY/6n4B4IhaOIv5PdNf02hIYXcya/c28Jq1onC+jDxfVtpoTwvJs4/
	r6C6BMzLcQ2knIr62ROIhdbUMxxWHFSS00HvLJtEqr0P8V7m1a55cdfGypYVgL65k2yWhE7jHKwoj
	/Zc+vIllNYolM2kZHZHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sigrr-00000008jRO-2jIK;
	Mon, 26 Aug 2024 21:03:15 +0000
Received: from smtp.forwardemail.net ([164.92.70.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sigkl-00000008hwh-1URd
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 20:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Date: Subject: Cc: To: From:
 Message-ID; q=dns/txt; s=fe-e1b5cab7be; t=1724705747;
 bh=La1r0vb8HqM0uZe15gW8C1ZAEEWVA2k/jF0DeZaxmiQ=;
 b=wDVvOuYsLVLkoicjTT2+ZtBY4+zDFHiv4ydbCWMhuStOfsqWrnkcsiOL6cb+w7IMg+20KmcsN
 WwrZuPGbVAtbRP0y48oJa1ZepPoG0ZO5RWNSpWh6ROO0UgN4Bt7jqZ5qj4QSEo+VusAvBii3ZTG
 eDXnEPr+qpTWrpMxlUbAlV+KMcrF4eCRoQRKPv7aYRbTeBfVylRCYv058J/uZn2OgR1539qFhDC
 z3Ml1OJG7P871U8+yJsUowCu5Vvg8URMpaWdAqKOBCDm35Q4OJ0yO+j9raLHYSRfYg6WMMFc7vP
 wzb3t5GaAOWoYJg+lnnfx+r1MoDCAmZwlIGEd1GVMIdQ==
Message-ID: 20240826205538.1066103-1-jonas@kwiboo.se
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/4] arm64: dts: rockchip: Add Hardkernel ODROID-M1S
Date: Mon, 26 Aug 2024 20:55:27 +0000
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 164.92.70.200
X-ForwardEmail-ID: 66ccebd2e59276ede820346a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_135555_760891_D20CDC92 
X-CRM114-Status: UNSURE (   9.20  )
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

This series fixes wrong vendor prefix on the Hardkernel ODROID-M1 board
and adds initial support for the Hardkernel ODROID-M1S board.

The Hardkernel ODROID-M1S is a single-board computer based on Rockchip
RK3566 SoC. It features e.g. 4/8 GB LPDDR4 RAM, 64 GB eMMC, SD-card,
GbE LAN, HDMI 2.0, M.2 NVMe and USB 2.0/3.0.

Schematic for ODROID-M1S can be found at:
https://wiki.odroid.com/_media/odroid-m1s/hardware/m1s_main_rev1.0_230906.pdf

Jonas Karlman (4):
  dt-bindings: arm: rockchip: Correct vendor for Hardkernel ODROID-M1
  arm64: dts: rockchip: Correct vendor prefix for Hardkernel ODROID-M1
  dt-bindings: arm: rockchip: Add Hardkernel ODROID-M1S
  arm64: dts: rockchip: Add Hardkernel ODROID-M1S

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3566-odroid-m1s.dts   | 663 ++++++++++++++++++
 .../boot/dts/rockchip/rk3568-odroid-m1.dts    |   2 +-
 4 files changed, 671 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
