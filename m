Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64073C10F04
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 16:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2fISPkvDpNr1nUNp+TzFcb+jRHEjoYZ4nDVbQvYoNPc=; b=YHHXvYB7RPh2QF
	VmO537L+8hHn4TLxptUH/eewbIFr/o0gkOsKYyjvn8WeIXAJSuU44CG7cudENpRxWNsFFyMb/xzRv
	bg8Eg2VT5y23vNN9jJxCSJLMzCwoq8B8S1cbbtQwcuuCZEliqslhRexA0SrfeT90msJq8+0eoFkUc
	nRqOz4GyNypZbE5/vqHcZUwf+2HbEonJbqfcJ70mynX+kLKpRTrer3xvwKYk9UYlaRlvhgSLzysFg
	/I6RHtOo3WgSeZO1W2xtW8mHra9mXeeP/YD691kn4OhzuzT0Zmi+9r1P2vjuS+ClEJKCDWvchTfxP
	Mop+vz6DxoRQFYpRiOWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r96qM-00EGT6-07;
	Fri, 01 Dec 2023 16:58:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r96qF-00EGO7-2x;
	Fri, 01 Dec 2023 16:58:18 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r96qC-0001Os-Gx; Fri, 01 Dec 2023 17:58:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de
Subject: [PATCH 0/4] arm64: dts: rockchip: aliases for core busses in main dtsi
Date: Fri,  1 Dec 2023 17:58:06 +0100
Message-Id: <20231201165810.334212-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_085815_983170_E044E2AC 
X-CRM114-Status: UNSURE (   9.66  )
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

Placement of aliases is cause for a lot of discussion :-).
Most recently in [0]. And while devices such as mmc controllers do have
names not following any numbers, this is different for the core
busses/devices like serial, i2c, gpio, spi.

All of those start at number 0 and increment then. And all pieces of
documentation like soc manuals, device schematics as well as pin-header
descriptions for SBCs also use these numbers to identify the controller
instance.

All previous Rockchip socs also carry those core busses in the main dtsi
so that not every board needs to have the exact same aliases defined.


[0] https://lore.kernel.org/all/4762834.KRxA6XjA2N@diego/

Heiko Stuebner (4):
  arm64: dts: rockchip: move rk3588 serial aliases to soc dtsi
  arm64: dts: rockchip: add rk3588 i2c aliases to soc dtsi
  arm64: dts: rockchip: add rk3588 gpio aliases to soc dtsi
  arm64: dts: rockchip: add rk3588 spi aliases to soc dtsi

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dts  |  4 ---
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  |  4 ---
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |  1 -
 .../boot/dts/rockchip/rk3588-nanopc-t6.dts    |  1 -
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   |  1 -
 .../boot/dts/rockchip/rk3588-quartzpro64.dts  |  1 -
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  1 -
 .../boot/dts/rockchip/rk3588-turing-rk1.dtsi  |  2 --
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  |  1 -
 .../dts/rockchip/rk3588s-khadas-edge2.dts     |  1 -
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |  1 -
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |  1 -
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 32 +++++++++++++++++++
 13 files changed, 32 insertions(+), 19 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
