Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9015CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 03:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ltQBt0FXaLAmXyDu+M0XQfxcMeSpTyxg/hHFcI6cw9o=; b=gzDHCUqFi+7XdK
	JFwzHgzRC+UN+XiJ/jSzjcMc5LRlhGoefLpV+MQkRuN+ZYGjiRO/ACw+p6HrtDLdMj+lQNPyXLNnT
	aSA6BYTWRGDOeH164t30uY+VinKviaxclcag6l+VrTnnFwgaTqfH02ypAAZgraaYTIQ8qC8FPQ6Sg
	CFgTYXaZr4+2hZdhwxAUfQ/oQsWx8aeOUsPN8qc0oBJuXmvjRNm2pEplf8JiyFyyVlqgEFcDjF7/6
	xl0WikWCz6lGxOvIbW4StkEI3LoQcfPFfqPaJXhfPALqYIQH7MQm7jK6P4iV/a5A/x9beuYxQ6B6i
	WQiRg2RuMOVmcSajoU1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIJ04-00000004flo-2RYl;
	Mon, 10 Nov 2025 03:55:30 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIJ00-00000004fkY-1R24
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 03:55:26 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AA3t1OT017086;
	Mon, 10 Nov 2025 12:55:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        jbx6244@gmail.com, pbrobinson@gmail.com, kylepzak@projectinitiative.io,
        damon.ding@rock-chips.com, sebastian.reichel@collabora.com,
        amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C
Date: Mon, 10 Nov 2025 03:54:54 +0000
Message-ID: <20251110035455.839863-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_195525_014311_FCE2CB76 
X-CRM114-Status: UNSURE (   6.09  )
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

Make EEPROM read-only as it may contain factory-programmed
board-specific data.

Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index 6224d72813e59..f92f6374c6255 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
@@ -466,6 +466,7 @@ eeprom: eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		read-only;
 	};
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
