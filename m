Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F617C19F32
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 04:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gjYNpCryt2Ko/S+/s6wRR3twa+9fGKWvWBMqeCK2MH4=; b=ndBRMz/EAwplwu
	ODTsBENYyg2UNVRniXSB4XsDepuQMqB3k09S0a5kS0rTEsxyUbRAELAqJbtyC98QhBZbk4WS8opP+
	uuw4/CtIi21c/FuwIrmXW5UudvD3zjPNbVFHJTlues2A/qxoUcEwj08YR/rAw1gMX3hWaykyl4xb1
	cmGIomb36IcVyyba0mH37ek+6jernMVj8e4Ef4mZsn6d+kIm14rPEiKfL07way/vrCJjp/t+J/aDH
	aE2lMOvSeS7w/TLCHpL9pK1OS3jEHFclzhmn7IFo3UpqQLdN1brNSOaHSqAgTY+Vai6SUo8iMmCB3
	obPNuuivpEbDRnH8+t+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpgDJ-00000006wud-2TPM;
	Wed, 05 Mar 2025 04:18:33 +0000
Received: from mail-m3279.qiye.163.com ([220.197.32.79])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpgDH-00000006wty-1Ibw;
	Wed, 05 Mar 2025 04:18:32 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id cf9f91e6;
	Wed, 5 Mar 2025 12:18:28 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Enable ufshc on RK3576 evb1 board
Date: Wed,  5 Mar 2025 12:18:27 +0800
Message-Id: <1741148307-137177-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkJIQlZLTk5KGBofHUpLHk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a956486c26109cckunmcf9f91e6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NEk6Gjo*DTJPGDkvLyMrP0oJ
	AjQKCjpVSlVKTE9KSk9DSEtCS0JOVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU1LSjcG
DKIM-Signature: a=rsa-sha256;
	b=LzIENE/QokLt9mbq+/Ok8eFJkrwdTrISyoqr9kLYbXH9FrVkHDd8ujG2Yo7VTkkcUOg+M//wX2skp12jYA8myTXtESrmOWkZ9SVIiiGokKgCS1pQO9r+vKmoOC2N5gyu4sbh6OY/7DG75E9aYhVPV/5ev39PhvJ+hgAxPKp2LR0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=lIUrGtpzBFo7v5pimATTNx8DhQm7U7zwooFby1eu0wU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_201831_498017_4E367CB0 
X-CRM114-Status: UNSURE (   8.69  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RK3576 evb1 board supports UFS, so enable it.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index 782ca00..5412c60 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -711,6 +711,10 @@
 	status = "okay";
 };
 
+&ufshc {
+	status = "okay";
+};
+
 &uart0 {
 	status = "okay";
 };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
