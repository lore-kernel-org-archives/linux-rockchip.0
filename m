Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D4BDD262BD
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 03:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiwQNsAdjZ6bbIEpTqa6XaomISzh0cu6sbgwwv08c3o=; b=Wty4li/fB1J7ZX
	aV3dsWNIj4HNCvNOS4qObWtIOEZwTXSs49KlVEySqAcIFPYuTHzFiNLOnlzh286su1qDVirfMsNks
	quf4Y7fZI8xhMVtnuGbqm7dg15h4xnBM1h7TKb8R5ml+/fi/M1z875sgqMp7TqhuWYq2P1Ws548hQ
	ZeIGnlSYiTsShDtCcskFsvIBRf3cwsSo0m1oIse0nbmeb8RqJvD9yFEQog4CNcJNkhXSabOxVBhKJ
	vptOd4Bibnv6xVeJ5gYr3xVOw/swR1P7LXF8UunGaxNXlJgoHSTQfmyvM+DDiG8CD0Vmvn6iaI7ON
	aI8Un9wgJzXeRehHH2CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viOik-00000004p9c-0lxJ;
	Wed, 21 Jan 2026 03:17:26 +0000
Received: from smtpbg154.qq.com ([15.184.224.54])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viOid-00000004p09-2P5c;
	Wed, 21 Jan 2026 03:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1768965379;
	bh=+7ef0kRiiQt4A42xSOCDW234pfzMWnquuL8cWqdlfIU=;
	h=From:To:Subject:Date:Message-Id;
	b=dChBKb7WDNtY1dRbeOxMqx1TEocxoKSG4cGdTk5EN0QGBXrdh60Kb4hjT6Z3iHtcK
	 JKKQygLQLNqcPfN9MVeihlERtk2WZu4QqxvZq3JbyHtNRxQEMBAMGkWQZ/H7mNHvva
	 MhaAz5O83x9kFw3l526zHHdLgqNIcXSdRDTGR374=
X-QQ-mid: esmtpgz12t1768965377t5427cce8
X-QQ-Originating-IP: 6vOSUOst9aL6W1nwt6MmCRWo9HAZ1hehzumRBuhyWPo=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 Jan 2026 11:16:09 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16986462623485192806
EX-QQ-RecipientCnt: 17
From: Chaoyi Chen <kernel@airkyi.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Stephen Chen <stephen@radxa.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: rockchip: Change gmac phy-mode to rgmii-id for roc-rk3576-pc
Date: Wed, 21 Jan 2026 11:15:47 +0800
Message-Id: <20260121031548.402-3-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260121031548.402-1-kernel@airkyi.com>
References: <20260121031548.402-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: M3vv73qU6a4uywa5T2AnRL5CgMvKQ1wmfJA81ASjs1836QZEhxQbIkBc
	jT/SunHa5VZPSzy5rNsYrvVJ0TpKa9lLuc6PpJPF2M/zuCKMHj/VnjElwY9bbPpQ1yGJNAA
	znsSWCZ+BwdgfZewDLpw4suA7tLs8AWrNReCkoGkuKzrcU8FYbSCx+CHqlSKqioM9ZiXlrz
	wDv0LeijquQshAXMkiMTKUy5RXAu2YHXbSLCcuY8rj1DvASwxTGbkq7XP/xklX8jq4SE78v
	COqC+r7lnDjGN5GH5y5jy8VecimDIe6lXPP9hrYFzJcxWXroDgkpaY5zONNK+1GQsZVaHxs
	7xT+/6Nap+eDACIWjlzFlb0aSvlnSA9cd9H1MXM/SS94KGCZqPZu1TYxCDEnlaeRgCeU1Y2
	oB2278JQ1Oc5YnuFETWfLbkps+qVT6wgz84p7iKwVbzn5E5ugQWYpuXuuonHgmOqe8KmufB
	EkpAw5BW0XCuCFdLaREgwkWQ1ZmN6DoSK5EqKfqrgjV0s412T2H7F0D2zUvHMoXGJ/uugxn
	AOyFHx8m6LLG5a6O5tXFHX7RDO5iY9IE0YsWewK8lWRSgyuRMuCgNWmIY4bNMrNop5yXPUz
	hqu/iGNv33SVigJupgPfM0f84dgvJ601VUQxeasVGBlcDu+6+yHRiDwX/mRVzGun4rnI2yt
	FV1EuyqBbLEcct8oj+9fpJQxbGrbKV7PI5iGKW4HD4lmLMrVrqEyJzkIziY+73lW/D3ObWh
	JnG+/CGtyWtvdp1YORpD9NeBz5bpDeKrtcMehA0GcU/W/+Y1b3lIoDclPkjOxnrRYhK1hBC
	P03TdKUNJhXJiHdQdPUdDRBJDgjEbUvJASOyvMigS0hLyygvj/1w4LnYLAPzU4tmJL30jSO
	9hWtw18OcH88DlT0Kz0qr1ECE23ITcDk00AExCov+Nhwg13AvYHTkx+e5iajneMloqNfu1H
	LtuyYOGuJWaPgEeaJ498cxROWsvGGwgwI7rdB0YLpWfAo3FYSHhKUCDYN1gBbQN5JM9gUKM
	Nm2rV8aNcnaApak5ISMDuz+C/9Indk3lFVvPOJFg==
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_191720_210477_D50250DB 
X-CRM114-Status: GOOD (  12.02  )
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

According to the description in the net documentation, PHY modes
"rgmii", "rgmii-rxid" and "rgmii-txid" modes require the clock signal
to be delayed on the PCB.

The Rockchip platform has long used the above mentioned PHY modes and
private delay prop to describe the internal IO delay settings of the
chip, which is inconsistent with what is described in the documentation.

Let's describe this part of the delay in the PHY and use the more
reasonable "rgmii-id" mode.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts
index d0ab1d1e0e11..edef483d37c4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts
@@ -275,10 +275,8 @@ &eth0m0_rx_bus2
 		     &eth0m0_rgmii_clk
 		     &eth0m0_rgmii_bus
 		     &ethm0_clk0_25m_out>;
-	/* Use rgmii-rxid mode to disable rx delay inside Soc */
-	phy-mode = "rgmii-rxid";
+	phy-mode = "rgmii-id";
 	phy-handle = <&rgmii_phy0>;
-	tx_delay = <0x21>;
 	status = "okay";
 };
 
@@ -313,6 +311,7 @@ rgmii_phy0: phy@1 {
 		reset-delay-us = <20000>;
 		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
 		reset-post-delay-us = <100000>;
+		tx-internal-delay-ps = <1950>;
 	};
 };
 
-- 
2.51.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
