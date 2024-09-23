Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2BBBCF9C72
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Sep 2024 16:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iB0Hm+3P7CIqFyh5+qsdAL56canIgYwzYkZpwapst/U=; b=RTl48urxFWVCq9
	aZftDdHs3iZeRg22A3CcxCaihUFhqG+AFjKGmKlqp5OdwfQBonvMluJoiqtThZbON4i3vmh4FJtmG
	VgpXYBp8Dfc4cQijkeXjxQ2+pDh14qp0DlZcr/Wi8s54olPPKU8bBUZcZ5zMCtKAMXvKV7WtIsKSc
	xSuyPy3OlnYmQ4OR4iD5YACdnEChj8GykZCoJY+VNm9IWuQzNknUBQ0HEKVwkk1NL5NhxhdxSNnCl
	yohRDgql5Y7FLRuOfO1lUQqDzkJ5Htz5Cmjy6D4FY2/Q/iIeuYsEm1LoxRTUZNBpQTfubGug6R8NN
	4LgUoWVLen01S79IgeVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssm8O-000000003OI-1rQN;
	Mon, 23 Sep 2024 16:42:00 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssm7E-000000003JD-2Uqf;
	Mon, 23 Sep 2024 16:40:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1727109645;
	bh=uj6nS9/Qqyl5x+LHHnU01IA4P1bnKBhIiYwrpVYWxeE=;
	h=From:Date:Subject:To:Cc:From;
	b=OPwmuXILF1yS8XPJ7fuAMpcBG2cDzPBI/TRsZUG40KAXD7y+DIxoXlQbyQVUx1HOH
	 KfVg6Z6NyKq+4kAn/bh2aVCs2A2/xBz1heTLjV4BwHCtt3/eKZmvIk4ji0u7X4p36O
	 Kt92JtLJP2ucLYZ9JUjX6TVaxUU/PxfYFE6+8pf/0Op3hUvcaINjbE+EsVOykhJUY+
	 TsRk1ukfmw82Gi01XW6mod3siN/nxSbMEHxm4zIopiR7SumFP0Ow2ioQ2X70ZSg/E4
	 p+17XapppP/Amx33GS7Xi8x3JklJ4YHnKdWCI4KBT1RXO6rFPteVfjUk+bp7XuTn2s
	 VlAuZCouvHJxg==
Received: from localhost (unknown [5.14.149.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8972A17E3600;
	Mon, 23 Sep 2024 18:40:44 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 23 Sep 2024 19:40:16 +0300
Subject: [PATCH] phy: phy-rockchip-samsung-hdptx: Depend on
 CONFIG_COMMON_CLK
MIME-Version: 1.0
Message-Id: <20240923-sam-hdptx-link-fix-v1-1-8d10d7456305@collabora.com>
X-B4-Tracking: v=1; b=H4sIAO+Z8WYC/x2M0QpAMBRAf0X32a0ZGX5FHsYubpi1SWr5d8vjO
 XVOhECeKUCXRfB0c+DTJijyDKZV24WQTWKQQlailSUGfeBq3PXgznbDmR+cZK0apagcCw0pdJ6
 S/qf98L4f1Iocl2QAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
X-Mailer: b4 0.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_094048_849581_DB5C2929 
X-CRM114-Status: UNSURE (   7.75  )
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

Ensure CONFIG_PHY_ROCKCHIP_SAMSUNG_HDPTX depends on CONFIG_COMMON_CLK to
fix the following link errors when compile testing some random kernel
configurations:

  m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.o: in function `rk_hdptx_phy_clk_register':
  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1031:(.text+0x470): undefined reference to `__clk_get_name'
  m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1036:(.text+0x4ba): undefined reference to `devm_clk_hw_register'
  m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1040:(.text+0x4d2): undefined reference to `of_clk_hw_simple_get'
  m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1040:(.text+0x4da): undefined reference to `devm_of_clk_add_hw_provider'

Fixes: c4b09c562086 ("phy: phy-rockchip-samsung-hdptx: Add clock provider support")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202409180305.53PXymZn-lkp@intel.com/
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index 490263375057..2f7a05f21dc5 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -86,6 +86,7 @@ config PHY_ROCKCHIP_PCIE
 config PHY_ROCKCHIP_SAMSUNG_HDPTX
 	tristate "Rockchip Samsung HDMI/eDP Combo PHY driver"
 	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
+	depends on COMMON_CLK
 	depends on HAS_IOMEM
 	select GENERIC_PHY
 	select MFD_SYSCON

---
base-commit: 5acd9952f95fb4b7da6d09a3be39195a80845eb6
change-id: 20240923-sam-hdptx-link-fix-c267877e3b1a


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
