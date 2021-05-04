Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50057C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:37:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DAB29611AD
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:37:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DAB29611AD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eeZrFW/Y7yCyk4RSlwMoGXs11PA15PDCO0OfQxm/UPU=; b=H8R+/xl5CxDuqP4iuek9CIquB
	NVvpciXcpfLi3Mko8h5x8sFmtiZ76D4kKJbNLpXGmEgyoFF6P0h68ZhEQF7aKll3PuGLLP8P/1Cd3
	mhiUig5W2hO98xl4ZDRGOsUcJGDybU+Ffvh/mDJLvJzAmVjc2Y/xdUkSjCM/hFcsPs59jvabhWa+x
	DyNF/JTpAEOORko2gNM3BqrwiZBqV4+Q/XTC45Z5fWt/EpKdkMjIKuRdZS1LtU9ynCBjRPKTCPcVj
	GGT8JaZLEBlLY1QgMw1XPntKTU8ZCFDm/ZUFzEupB4liHW1SqimhMMUqtCDJU7wGWyGBp3iGurqtu
	2PJyejNow==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldqYm-00Fl56-L7; Tue, 04 May 2021 08:37:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqXe-00Fklo-7B; Tue, 04 May 2021 08:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=rLObH082y1vZyUCljbbYbK6aDH5oDP7oWQ3lMyenbvs=; b=RYJsqNQrP5NxA1VPY+V1lxWkjh
 wrwu9ELktZFPMB6IbCmOgvMZdNxGSciehshKTcN36PFjZv0esm+cD6cnto8mH7FdUwYzj+Q54zbya
 xQfCDS/UVdlWW0PWCVeR4PvDYxcvmwGrgtj3WaXPA0Tucbk3jJ4YASmTGKfpXRtDqXPcPak+oACVB
 KdQrpAqunlMdDIJENKNu2lT8w149WWLdjPLDExdq/VeKlcVlXcczYZ7le5SYM95gP9+4/K5dYHN9I
 l9+hHXtpQp+vPcEkR2tRdcGqtqSPVbGx5jiZ4hj4evISVaswVQq1rAMaG9Y5oeY7JTJMvF6Hk3eGZ
 ViccyaYg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqXa-003osf-1p; Tue, 04 May 2021 08:36:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5FE2C613C3;
 Tue,  4 May 2021 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620117385;
 bh=siPwZ678h5F4YQrRY5Ht9/0Lprn948BNV0by6FKBrlc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gssOHQy7tLUQn2dH5Q6aV+jFxmzNdJ9k8GH8bshXqjhfjluJgEVktZhqx/owX/NsB
 fdwlXayAXCTE+PoWySrazHOjEGVD1XfnP0nWpMWnW8T9oWppf+HTSrG+6i4Ulhd4ZL
 KENv/b04jCdIeRf05SFtP+R+Ol14GsJ6EkC/qQ+yyTdCB2v8ws0r2d1p7sDrSSmAuC
 KG7AiyIf27Fhzks2LCebS5RattapFvHHFa0+zxf8YMzt2DTCnGdEBu/Wm5Vhf0PfCb
 x90U/l7aC7rrhX7oF3AUlZlNtqQwMT1/2/F54OCbJ+G+acOR1o9VXOGcoPw1Yhaduq
 9Whe9T9iWmjNQ==
Received: by wens.tw (Postfix, from userid 1000)
 id 415E95FC30; Tue,  4 May 2021 16:36:23 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: rockchip: rk3328: Enable USB3 for Rock Pi E
Date: Tue,  4 May 2021 16:36:15 +0800
Message-Id: <20210504083616.9654-4-wens@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210504083616.9654-1-wens@kernel.org>
References: <20210504083616.9654-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_013626_159944_3A2A2395 
X-CRM114-Status: GOOD (  10.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Chen-Yu Tsai <wens@csie.org>

Enable USB3 nodes for the Rock Pi E board.

The VBUS regulator device node was added when the board was first
introduced.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index c02059c0a954..018a3a5075c7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -380,6 +380,11 @@ &uart2 {
 	status = "okay";
 };
 
+&usbdrd3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
