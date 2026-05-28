Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A129BCD6E4F
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 May 2026 23:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qYQFXeyG5rgCGHE5HDxRrzawiRX/xnb4B1pGbLc7sVg=; b=keczeFrqJtyFxZ
	hE0MC2/Kuw/CIZcnBptjDCYt8iAF/UQgJVJEuZ7WS0Dqe4z6OcLsinCPExCFKg0cVwryeUCsFJxAK
	7k3sY4ggCsYJDUNvNikdFe5UNMwIzbfbNtbujSgtgn7B+PGrdXAyhHxETC3iQi0K4Obe8EUHvLiwW
	rs31g92mwD2AmVmmWZ0laVyDxgLod0SoyiO53Z7bKi0S2vpnqAKHi/6gWW8kJLuKsg8l0yuN5O4M3
	278cR+m6f4EsM3LbVpXYo1LBhRB1YnF5rdx9dkyD8yoa3UCXykUXQ6CuJNF4pcpsEqJJ2NGzUL9EE
	PXjqRo82v9knTQ3gTjJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSk5W-00000006Whg-1q43;
	Thu, 28 May 2026 23:24:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSk5N-00000006Wbt-2vs2;
	Thu, 28 May 2026 23:24:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=xVPlKaKY255I/suqI+AyCCvCEtA6XgxFsN3XUfjPJVc=; b=E+TdU6DqsPzORbVF/HFiD+T3lu
	yAO7/YjOporXMDwUqpxcjiVNfK0IzBvaFJfIZkbON0e2Igyi5IOV3SrvoVHnOw0pjITbAkMqWje9H
	m1hxvuidCduwGM5qidsPP9tKQXvHFsXPBYqLv2eaxxmLt8ZWGOWulQnF8bBHUEZmLBxS8iRqYZ4ID
	SmCkGJ2vNdJe1qRLEE+JYCoAv9f6FWCJvlFjSJqRL2u3JUUkiM5pZsiGk0/uuiu8HMw5nm0YbnSk8
	crerJyIpR5gTBXfECFUKjG+etgcZghI0Wwtqdc0aD6B4zWG2VOFBGgJJlI7vrdXIAevRtBkrDBXbt
	oDL4U/ig==;
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	amadeus@jmu.edu.cn,
	jonas@kwiboo.se
Subject: [PATCH v3 0/5] rockchip: add USB nodes for RK3528
Date: Fri, 29 May 2026 01:23:53 +0200
Message-ID: <20260528232358.4054610-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_162421_786125_6F9268D4 
X-CRM114-Status: UNSURE (   9.67  )
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

This adds the USB nodes to RK3528 and therefore needs both the dwc3
compatible [0], as well as the phy support [1] to be merged first.

changes in v3:
- moved snps,dis_u2_susphy_quirk to the soc dtsi
- describe both usb2- and usb3-phy in the host0
  if boards only wire up half of the functionality, they get
  to override the phy-properties - as they already do
- add vbus-supply to armsom sige1

changes in v2:
- split off from original series [2], that added all 3 parts

[0] https://lore.kernel.org/all/20260505164509.3254707-1-heiko@sntech.de
[1] https://lore.kernel.org/all/20260505170410.3265305-1-heiko@sntech.de
[2] https://lore.kernel.org/all/20250723122323.2344916-1-jonas@kwiboo.se/

Jonas Karlman (5):
  arm64: dts: rockchip: Add USB nodes for RK3528
  arm64: dts: rockchip: Enable USB 2.0 ports on Radxa E20C
  arm64: dts: rockchip: Enable USB ports on Radxa ROCK 2A/2F
  arm64: dts: rockchip: Enable USB 2.0 ports on ArmSoM Sige1
  arm64: dts: rockchip: Enable USB 2.0 ports on NanoPi Zero2

 .../boot/dts/rockchip/rk3528-armsom-sige1.dts | 25 ++++++
 .../boot/dts/rockchip/rk3528-nanopi-zero2.dts | 29 +++++++
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 60 ++++++++++++++
 .../boot/dts/rockchip/rk3528-rock-2.dtsi      | 17 ++++
 .../boot/dts/rockchip/rk3528-rock-2a.dts      | 11 +++
 .../boot/dts/rockchip/rk3528-rock-2f.dts      | 12 +++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 80 +++++++++++++++++++
 7 files changed, 234 insertions(+)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
