Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43132CEB2C2
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 21:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rIG5FkiieB/20BNMyhB2ytq3WeMgIIFiwBdtVEaqS1M=; b=lKbezC+hB8idwp
	FP0uDqinE/35DrlPislHuqgFgToXQYRmE+d2KrIPruEBHRaeHheeQHWPSwa0Fgh3ZJtrpN5kh9ARc
	vFYB+sHVBP1Xst0OC61cSIPD7STyt8cqiOaBFZJamJhuZxjfwI0bOWL8t5XxBYSuiqxQ8Ob/zQYjd
	pEGkHVeaoqWDyrFgYYjPXfTawz3lZqOl9T6C/dJS8G04m589ZvHVXXBYvl3nrd1ROWARq7mBMAV2S
	utgom4Cx25DdjqLJLEE29ZtzqwLqpbUo83IceVKpWaMax9hZ4QHseexPRJd1F2J+dWLrd3H+fDUlr
	5rb/WgRlAYjyY+Dom7lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svOJn-00000000xIl-3Xs7;
	Mon, 30 Sep 2024 21:52:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svOHN-00000000wug-3WDc;
	Mon, 30 Sep 2024 21:50:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pd6814i89htvWyhjmtyJ5h0pHcm1ipN8hWN0NT65AdQ=; b=F1IEtTq+t9XUZfPYk3nUoFYcVr
	Df+wZirxD4D25zIUGndfjJlMKOA4TxhdkElfbpIsAB1AOfxDR502IAj3vZvGumpPtUju67msd9y3+
	ILkmLofYcROMyAqkaqhNov5qvn6m2Npg/j4hXYMOOoM27ZA6qRXi9lDMZNyL0BNXOl2fTaiTqp3j0
	W8PvDMzkj6exgbn6dZKE0R3pErVsbLEchuCSOIaHWWBpUreitW3VXZWDZsw8UPfYNCOv5BuGq7LZ1
	Si5yLfaSqM2gJw9/43g+nij4KkaAZCtPMVBNt/PzHL9xD2i7B6Gb05lDUIhJcIaLrxH79pEnRldyL
	EHXSMcug==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svOHL-0008So-0v; Mon, 30 Sep 2024 23:50:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jbx6244@gmail.com,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] rk3328 cru dt-binding conversion
Date: Mon, 30 Sep 2024 23:49:58 +0200
Message-ID: <20240930215001.1999212-1-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_145005_907762_6CD19355 
X-CRM114-Status: GOOD (  14.09  )
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

Johan already did the heavy lifting of converting the binding in [0].
The binding conversion itself already got a Reviewed-by from dt-people
only dropping the superfluous compatibles needed a bit more investigation.

So I did go through the mainline kernel and also the vendor kernel,
looking for any obscure usage.

The cru should really only be accessed by the defined clock and reset
subsystems of the kernel and thankfully there no users of the cru-dt-node
as syscon and also no syscon-get-from-compatible instances for either
the rockchip,rk3328-cru nor the strange rockchip,cru in either kernel
sources.


[0] https://lore.kernel.org/all/20220329163016.27458-1-jbx6244@gmail.com/

changes in v2:
- explain that the superfluous compatibles are not used at all

Johan Jonker (3):
  dt-bindings: clock: convert rockchip,rk3328-cru.txt to YAML
  arm64: dts: rockchip: fix compatible string rk3328 cru node
  arm64: rockchip: add clocks property to cru node rk3328

 .../bindings/clock/rockchip,rk3328-cru.txt    | 58 ---------------
 .../bindings/clock/rockchip,rk3328-cru.yaml   | 74 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |  4 +-
 3 files changed, 77 insertions(+), 59 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
