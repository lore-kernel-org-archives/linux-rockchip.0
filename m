Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1547ACA600D
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 17:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVhjbp1p7Qn/NHkceIDUGL9CSCa+8kIaYhH1oJHDX6U=; b=v+zn5MLQ5YNOFe
	ByLuKDbMzsafvbIzK5R0p1uldtnxA/8GtyAyT9ZTSXHc3DPecHJFanXkgq9TeVGo+ssuaoB/hTCP+
	QU854cxiEhOES4bLZqleGFGpybufa9jNwNav/FDUnWt1iAis1/0mv/ggDf8S+yLucoU6bQMReaHC4
	uUpacSnoXeP8BVpCT1qtwkNWalR7mpYTC1T/fLGzSuHBc2eRCn31ZCYtDG4n5AWzoHlKtADy4r6JR
	G7jTJdZb3P6o3Zc/w+3McbZ6morcsB6GAmBudK9w1Gwonv0L4UoS5841QuninTEMv5e6Ys4LhrbCD
	fkd9hfYMU1EWMI1Bt1PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEsJD-00000004p7f-3flv;
	Thu, 08 Oct 2026 17:53:35 +0000
Received: from mail-pj2-x06.google.com ([2607:f8b0:4864:39::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEsJA-00000004p3m-0nlX
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 17:53:33 +0000
Received: by mail-pj2-x06.google.com with SMTP id 98e67ed59e1d1-3964e7720afso1965632a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 10:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791482011; x=1792086811; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yY8SyQWcSYsDi8cm3rA+aW2F8vWLi9p/feyMtYn7Pcg=;
        b=TTs4tPwb/xHGkCmBRejdTEe4hosMHB8ebQ+kCFWGVxhiduUD1WfyTNmhzhrj+i/9qU
         nYSkcWgtCGelicAXo+NPDBoYrVgEyMYW7GinNWf9fk7mBddB3i3Gwdd+lSlx2i4vv/og
         EWAsy80MGh4e34VSnio+owJJQw+ow7LCywhmvOV7Xpksha4uJQ4PG9pDCmq+8Tffjt5/
         vOur2X74Bd/8+WK10/ZWcnpBnwhPlxeKU4mKS9XRXQvE7odDh4ZyWSk/rpdAjxXNLYYq
         Z661Jxeot6d1O4lnH3ieQgTr+ZP+6kN39Q6N0Qe3g1tWs3TtgQ9EDvricMX7eFc9pXD1
         lhxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791482011; x=1792086811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yY8SyQWcSYsDi8cm3rA+aW2F8vWLi9p/feyMtYn7Pcg=;
        b=ZP8rlStnOLF9yto4/qxgqx8OK0OtmBhavy+GL//lDy/ewPHBEOKZD2FJ5suMoEGa75
         qqGPp8CzFcaW3DsHd2dfCL9rdzANBKNGj0+Y5rWNmzAH9llbEMbXveEycyA0DLhkylF5
         UCb6HjjAPyIZ8BP/uZfJWUvHulY89yyue7XoD9tEcF4jqBV/Nq9A91O5Uf+wvkpEMefC
         AOCVhcfexudalkp8U52KZ0Wiz15FamMGsZY1WwLxPQtlYX4HsTICC34hX3PihFFBcXdj
         hioMjgjWleV89T5yMoJoa9WoQhAxOGQhMJ5n6gCIZrp5hRoQZbvplktT7N9yMiQGDa0Y
         N1hQ==
X-Forwarded-Encrypted: i=1; AKwUvByji3B0RZRZ/Y7Q6X9kcgaU8VvM4GPd1qYifxIZ7VZDZM7S6O4xwJptBgAYdK/mtRriCXWsUW4K5bCtiRSVnQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYL/xZ35LCEhUtHCPikfJGVNmHLJjO68sCoA+93gyrGK7VrkedYv
	qod8NfjzKEglcSrPe4HpnD/y/wyn9wv/ymMF480g3a1QiZbrj+iF2v9v
X-Gm-Gg: AYBFou2GEXA63YaHBLn2mpE3i4ou+qaF5s8virSDRhzYwS5bNxDzWcN0TxgwVFY+F4K
	zld3BXT4rdVLw575v2wiI9h7VfXHOMTMZBM0qQGKiGjOkn84CphkMz+8TLTT1XvBMXaVYBhD+GD
	tfH8DBsrgxN4wThMXxvxkuO6vBUNKlGHPfQ1cBbMpXaiBsCnVUPOnyVbL115eqTJxo/eNcqTWop
	t3UGKaKEFfBR8KUH1kHO0MU8KQvVRIW0vfG05YcsdBY4FaFz8gqdyEQ0kkaxyQkoUoQ1JhaNajR
	DlfwxN2NTSyA/1JOPtagvJln4uCSoEiRlU1tEjMz0hb3cIzhDCHNo5PhDpPXIr9pj/n5U+U91Z7
	7e288C2xs1CVAz+C+TLtC7pvfVoQOOXphqMfUExbSib2ZWXoxbSO3pW0tVCJRWSmJvx0jPTUUbQ
	v96CS+sXiICHC+Bp9s3FMnznDx0tVZLx/yCYLD1YOIGCtq2VSc8vtvpeEi/Fb3cHgkyy+OSK12U
	r/w9jA=
X-Received: by 2002:a17:90b:534f:b0:3a8:59d3:5317 with SMTP id 98e67ed59e1d1-3a8a0cd4b4emr5164503a91.32.1791482011331;
        Thu, 08 Oct 2026 10:53:31 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab3277c459sm144332a91.16.2026.10.08.10.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 10:53:30 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v11 6/6] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Fri,  9 Oct 2026 01:52:00 +0800
Message-ID: <20261008175225.3375274-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261008175225.3375274-1-coiaprant@gmail.com>
References: <20261008175225.3375274-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_105332_233263_DFFD939B 
X-CRM114-Status: GOOD (  10.09  )
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

Add a MAINTAINERS entry for the Rockchip RK3568 XPCS platform driver
and its device tree binding.

Include the relevant mailing lists (netdev and linux-rockchip) so that
future patches are properly distributed.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 65e8a4b5c90b1..2f0f46eabcf54 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23757,6 +23757,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
+F:	drivers/net/pcs/pcs-xpcs-rk.c
+F:	include/linux/pcs/pcs-xpcs-rk.h
+
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
