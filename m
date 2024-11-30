Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 514D6D735EA
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Nov 2024 00:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RtsdL30v1B6qoUQY+6h1fGkvQTHx2Q4fwM+k5kQMhRY=; b=KfyAkWaZ9nGQHG
	KY7uQUyau+ERoLPhAmh9gcpWKpEHhvISZqwYW/GFfBF1ZnCFprBwsdCPay6DbkX2peP4cGpOTlsLa
	V81EEFPnImEjey2HMkB8lLNuHcfXQWy206/8A7dFtFtT99ZZBlkNHc5Kybw0vgble+a1C1KN8nKTF
	CADg0cQydS6XI2WDwB1hyuHGithR6VZK3DB5i2d3UmeSb1xijlPYKbNCBh3g00GLs9GH9Mydf2Ng3
	YP9Hjd+GyF2ChahzG3nQ//7QHzBuzqhm4to6hpa59tte8XrsKxwCNOs3U8k0M+LusIsaHllg6/rrK
	Lso4BCJeYRdI25bw8FcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBg1-00000001Bm1-2XWX;
	Sat, 30 Nov 2024 00:49:37 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBfz-00000001BkO-0D8b
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Nov 2024 00:49:36 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0nQ2L024394;
	Sat, 30 Nov 2024 09:49:26 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 0/4] arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:49:16 +0000
Message-ID: <20241130004920.7505-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_164935_302439_1814A2F8 
X-CRM114-Status: UNSURE (   4.78  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

this patch series sort nodes and properties, remove redundant
properties, and minor cosmetic changes.

no functional change is intended.

this patch series depend on following patch series:
 "arm64: dts: rockchip: sync dts with schematic for Radxa ROCK 5B"
 https://patchwork.kernel.org/project/linux-rockchip/cover/20241130004057.7432-1-naoki@radxa.com/

FUKAUMI Naoki (4):
  arm64: dts: rockchip: sort nodes in .dts for Radxa ROCK 5B
  arm64: dts: rockchip: sort nodes in root node for Radxa ROCK 5B
  arm64: dts: rockchip: sort properties in .dts for Radxa ROCK 5B
  arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B

 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 178 ++++++++----------
 1 file changed, 83 insertions(+), 95 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
