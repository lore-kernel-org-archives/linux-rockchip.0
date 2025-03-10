Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D159C28B2F
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 00:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D/a+DnxENUflsvCet33O3DB/+0rWV3mhl1LSEADSiCU=; b=0iLW+I4b5JWocI
	zgPBVjvSsz90r8qqFp0x6km+QaVJiY766cyzT0/hifqGXgMGGG67YCu7A/cq97KSSinb6r9xvIF0v
	YLjVzud0IHqYWdBlWQngumqqKN3SP0LhGPIkOfTUunlKkDWSmfayg/wZ3iB1p/OtTIobvObXw5PBA
	FqpDwMjtvAcbYbbB0riqtNqVy9gNS7WoO2AlJHV0sLf0wb8Znvt/dz8DC10sD2sRA2oK0BCGu/9/A
	IWZiTA7XFnPI/rK0ynpv3bfDI+vj7W3LAAK4unMU87RXPySFivZabuNgfYlBzaUcb7rTT66KM4vLq
	cMJLEnEhfHzBk+2A7mug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trQnC-00000001JtM-2XAy;
	Mon, 10 Mar 2025 00:14:50 +0000
Received: from smtp.forwardemail.net ([121.127.44.59])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trQlX-00000001Jgg-3GGH
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Mar 2025 00:13:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1741565586;
 bh=HkcBOyMrU08By5wz8cHkuMlZXuzZuC30spWDpSCMgq8=;
 b=B53pD1jch6CAxTz1fMg7CbahBoJSxCIjl43fYcIFY6Bt9u/tjPf2nuhUyGH+8785GBDOICVPr
 gyXPIFf4hPW32QBUwnNbWG1JZeu8vin2n5/fO7OGAefhciZRhXTh1ncf+b1DWkD1DbKS7NiNpZ/
 o6Z5mlcXLviFKsJh57TizDTxfrM2sjMjp39B+1OMy0i95ik1R7nPe9oDXO/dizRY8fFk9su//B8
 14xp7RfFCPuyW2dpjGPv2n20izuhGnTrvgLcg0m1yf2JgbSDVSQ3sD+Mh+kM6y8QzSCF2P8F5CF
 Cbgb4ceISf4YlCIybvTI78SaKdPZqMXcHV7xIPVfpU1Q==
X-Forward-Email-ID: 67ce2e8ff812de2512d1f540
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/2] rockchip: Enable Ethernet controller on Radxa E20C
Date: Mon, 10 Mar 2025 00:12:49 +0000
Message-ID: <20250310001254.1516138-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_171307_919704_E50A40D0 
X-CRM114-Status: GOOD (  11.56  )
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

The Rockchip RK3528 has two Ethernet controllers, one 100/10 MAC to be
used with the integrated PHY and a second 1000/100/10 MAC to be used
with an external Ethernet PHY.

This series add device tree nodes for the Ethernet controllers found in
RK3528 and enable the LAN interface on Radxa E20C.

This include a gmac0 node for the 100/10 MAC and its related integrated
PHY node that only have recived limited testing. I have no board that
expose an Ethernet port for the gmac0 and the integrated PHY. However,
the PHY can be identified on addr 0x2 as 0044.1400 and in vendor kernel
this relate to the Rockchip RK630 PHY. A proper PHY driver will be
needed to support any real use of gmac0.

Changes in v2:
- Split from the "Add GMAC support for RK3528" driver series [1]
- Add ethernet-phy@2 for the integrated PHY
- Rebase on top of the "Support I2C controllers in RK3528" series [2]

This series depend on the "net: stmmac: dwmac-rk: Add GMAC support for
RK3528" [1] series and the "Support I2C controllers in RK3528" [2]
series for a clean apply.

[1] https://lore.kernel.org/r/20250309232622.1498084-1-jonas@kwiboo.se
[2] https://lore.kernel.org/r/20250309070603.35254-1-ziyao@disroot.org

Jonas Karlman (2):
  arm64: dts: rockchip: Add GMAC nodes for RK3528
  arm64: dts: rockchip: Enable Ethernet controller on Radxa E20C

 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |  30 +++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 105 ++++++++++++++++++
 2 files changed, 135 insertions(+)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
