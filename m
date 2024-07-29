Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA2D4C3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 07:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YBG6NLsmI1kEQuINMDPRsnICV5KazrIWlIUJnnUL+vE=; b=gXeqr0q+7AgXz4
	LTL8bPscoFv78b6vcEnwfOb/yzBS02NM7fhjty5zmg/7/0rrxn++clynuM20YSK9u0QY1SfzHKO8w
	TTzNgpygjoLlPKtxxKi9rDOnc9KZhRIR8DBrQD2XUgeN9owFizf5ugtrboa6B7YE87ppBHkeRLR0M
	f1PkrNcdQU0FeOQOeeKz0uhg0+RgtN39RgVrMT4SrKbhi2X/IQHK+6LgyiddUTECEJW7rLHimq4Hl
	9mX0DsTprEJ+erOdgCvPMG/wgJVdWF5LPeciqEl4C1Ts7kwDHgmyUZT0o42YIv5E7b9yhEotmmTTk
	qGK3ISFU6Fu4sMR//0Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKfK-0000000AKNF-2mAP;
	Mon, 29 Jul 2024 07:19:30 +0000
Received: from mail-m1973179.qiye.163.com ([220.197.31.79])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKfG-0000000AKIc-2n55
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jul 2024 07:19:29 +0000
DKIM-Signature: a=rsa-sha256;
	b=B+YHaiXm+hMf9y4DDNvUJ8uxoehVkJMuW91044uVsb3iIYLwOzIVTk2HwbAxFWcdO0KAtEzZf94c+nKou4iiiUK38HXPkpk9rUcPHc3nNQXD8SbNoUGpM1gRqECbqXzqsbPcK3Ygzbhy0dS9VupqTwm3yYG7B4ZFcE+TiPHCDM0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=FcmXjeAkKvtdC+ugyemXAcabljIvjviQhtEuBXWIglE=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 47D5B900141;
	Mon, 29 Jul 2024 15:18:52 +0800 (CST)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Joseph Chen <chenjh@rock-chips.com>,
	Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>,
	Simon Glass <sjg@chromium.org>,
	Tom Rini <trini@konsulko.com>,
	u-boot@lists.denx.de
Subject: [PATCH] rockchip: dts: rk3568: Sync the evb board name with kernel
Date: Mon, 29 Jul 2024 15:18:50 +0800
Message-Id: <20240729071850.918007-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh5DS1YYSk5KGktLGUJOTUNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a90fd5b3a7f03a9kunm47d5b900141
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTo6IRw5HzIyTDIrNShWMS8u
	IRAKFB5VSlVKTElJSUhMTkhISU5PVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKQ0pPNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_001926_958465_606EF0C3 
X-CRM114-Status: UNSURE (   4.62  )
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

The name of rk3568 evb in mainline kernel is rk3568-evb1-v10.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 .../dts/{rk3568-evb-u-boot.dtsi => rk3568-evb1-v10-u-boot.dtsi}   | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename arch/arm/dts/{rk3568-evb-u-boot.dtsi => rk3568-evb1-v10-u-boot.dtsi} (100%)

diff --git a/arch/arm/dts/rk3568-evb-u-boot.dtsi b/arch/arm/dts/rk3568-evb1-v10-u-boot.dtsi
similarity index 100%
rename from arch/arm/dts/rk3568-evb-u-boot.dtsi
rename to arch/arm/dts/rk3568-evb1-v10-u-boot.dtsi
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
