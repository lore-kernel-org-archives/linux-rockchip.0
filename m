Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0BC8CD11C2
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 10:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zPtfAXa9c5mKN67w6EdsTj9CitqcwoEYQBlU/herNtw=; b=teozBOqZAOPlve
	AM6xkH3WhlEOBtL3wl+MtbvgboRqUDiXtF9B9zk4x+pJF/t92AInSb3JHYi0XFe8HXoEB88GFagnL
	fkIw+1wUXcOaGP27clSxUtrkK6VBttrj+qku7uCV3MaEeQZNjg5GM6o/dpk0mDvw7mDet9vqHmuS/
	iS3upN3oUVaFlkGIdMrl/93qEbD25jcEeZLjxaST5bw4kObbySTcZnoZSGvOin48bTzllrpvxBeUv
	521yIJEH0ZwnU0QhX1xD2slMlph1tsYNi1sDln68wjw6ZzFxEYYJ6H/4PQxMfjWcE9WLuvLS+5tbg
	m3qwbhxEcJMStoXNp/dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgb1-00000006Ns2-1IZ8;
	Fri, 05 Apr 2024 10:14:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgaw-00000006Nnj-14K1
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Apr 2024 10:14:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgaY-0008Kw-RA; Fri, 05 Apr 2024 12:14:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgaY-00AY5D-34; Fri, 05 Apr 2024 12:14:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgaY-00AhER-03;
	Fri, 05 Apr 2024 12:14:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 0/2] Add Protonic MECSBC board support
Date: Fri, 05 Apr 2024 12:14:24 +0200
Message-Id: <20240405-protonic-mecsbc-v2-0-0a6fedc78b9f@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAADPD2YC/3WNTQ6DIBCFr2JmXRokSJuueg/jAmHQWRQMUGJju
 Hup++atvpf3c0DCSJjg0R0QsVCi4BuISwdm1X5BRrYxCC4kb2JbDDl4MuyFJs2GKeP0oLS8u/k
 GrbVFdLSfi+PUeKWUQ/ycB6X/uf+3Ss8403aYpdAWlVHPDf3yzrGF9qtFmGqtX+WASNOzAAAA
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 David Jander <david@protonic.nl>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712312065; l=1283;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Ztnu+BxrNHaFGV+UOeswNUzS9UQK9whqB8BEqnNW4AI=;
 b=PLAFuKqtWEa3wlp9pWv3x3uK0dFHp2Z36Ba5nCn4XqpjQw+u6t9Z637/OmEZ9HiphPiDKt3Gz
 b2gGSrnoBclATTSloYMgCewLItHYkvygjVC/yA62UDULPQEgVMh5jBh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_031450_403491_368E2187 
X-CRM114-Status: GOOD (  11.54  )
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

This series adds support for the Protonic MECSBC. MECSBC is a single
board computer for blood analysis machines from RR-Mechatronics,
designed and manufactured by Protonic Holland, based on the Rockchip
RK3568 SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- use generic node names (Krzysztof)
- name regulators consistently (Krzysztof)
- do not use underscores in node names (Krzysztof)
- keep alphabetic order in arch/arm64/boot/dts/rockchip/Makefile (Heiko)
- use rgmii-id mode and drop [tr]x_delay (Andrew)
- add SD card regulator to support 1.8V modes
- Link to v1: https://lore.kernel.org/r/20240404-protonic-mecsbc-v1-0-ad5b42ade6c6@pengutronix.de

---
David Jander (1):
      arm64: dts: rockchip: add Protonic MECSBC device-tree

Sascha Hauer (1):
      dt-bindings: arm: rockchip: Add Protonic MECSBC board

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts     | 404 +++++++++++++++++++++
 3 files changed, 410 insertions(+)
---
base-commit: 39cd87c4eb2b893354f3b850f916353f2658ae6f
change-id: 20240404-protonic-mecsbc-6cfa56a48fb7

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
