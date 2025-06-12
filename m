Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82AE3C71150
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 19:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ND3g3dBE/LEZRvu1iHivHHN1NyKfZEGvPk7R1Tx+5No=; b=z7cxg3XnLN3V5T
	+ldixsw3FjAsMr/2rZlvFfn96KtWs5GfTiJoa5P3jEwlgbjTRO42+3y42fj5l4SJIv+4f2zc8iS4e
	gSWIDY21KRKDnmDKrnhhSNIZ8FpFfeWRhghQMXMvHh73fWNPOXv7euwYuJ72xEHjE+KwTs5LKZhkP
	rkrcdbBP97BU8ndiFYUo27BGnquNk7Xcy10jJUST6bf9ypUeqUCDrMNURdtGnBNe18y/8hjYUkoLl
	MN7KThd3gKcAATDHewmtAn+5eHyo5rx03gCe7gqggkumAeUlYeRoHPwhIg9CZdZvXoKf5JxPdg3jU
	dkmZ4/tdbJVx8qTejgQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnuO-0000000EP0e-17DA;
	Thu, 12 Jun 2025 19:48:20 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnAG-0000000EAg6-0yw1;
	Thu, 12 Jun 2025 19:00:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749754796; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=dTQnEmD0F0ReSNos4ZwrJOs7FeJ9pcyllrVcC0kco2tiW2TVyMiA44lg6w6L9/AlLw5Bf4h7yK9likBTYMcyFTzxMswsK7xOcQ5JSQsiPK+oyQRXYnrboLhP1rwueN1JbKaMDiSS+s40mMJdNh15QmofmqOfcqQ9Vfdzav4+rdI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749754796; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=VUi0L3qjgWIOtB9w1pZ+kGtU0drLgK6HcZu/fP6Tah0=; 
	b=ep8qaAuelesv3XuZzrKpmyUYcpOmLfE3pHeavz6/RFv7EgQNCjDfNmlqLGebdmXVhVEHcjrWVX+5eJrKtsoGIjX7ksPGDquAPu0mGsg3WjsBr495vS39hdByBDBhs4pLloE7wVvI0Bp2rSZnkJI/jenwa+FJL1TTSJZwqWWveYw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749754796;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=VUi0L3qjgWIOtB9w1pZ+kGtU0drLgK6HcZu/fP6Tah0=;
	b=F11eH/x3HJtCZ/OvInut5/ooBULXRQwj7+EpNuT3721rEzUO1JWybfyd9eSZQslI
	+alckYmIdMl9qp5RGPPO5WK+EwwYo94+91nisnQS4ee2LlY1WpaxB5+XWIPBSuTzUSp
	Jep8LC7G64oqfdS0QdZXslThEvzYkVut5Cizld48=
Received: by mx.zohomail.com with SMTPS id 1749754794152192.26527667378116;
	Thu, 12 Jun 2025 11:59:54 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 12 Jun 2025 20:56:18 +0200
Subject: [PATCH 16/20] PCI: rockchip: switch to HWORD_UPDATE* macros
MIME-Version: 1.0
Message-Id: <20250612-byeword-update-v1-16-f4afb8f6313f@collabora.com>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
In-Reply-To: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
To: Yury Norov <yury.norov@gmail.com>, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shreeya Patel <shreeya.patel@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_120040_336933_89A55ADA 
X-CRM114-Status: GOOD (  14.12  )
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, llvm@lists.linux.dev, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
drivers that use constant masks.

The Rockchip PCI driver, like many other Rockchip drivers, has its very
own definition of HIWORD_UPDATE.

Remove it, and replace its usage with either HWORD_UPDATE, or two new
header local macros for setting/clearing a bit with the high mask, which
use HWORD_UPDATE_CONST internally. In the process, ENCODE_LANES needed
to be adjusted, as HWORD_UPDATE* shifts the value for us.

That this is equivalent was verified by first making all HWORD_UPDATE
instances HWORD_UPDATE_CONST, then doing a static_assert() comparing it
to the old macro (and for those with parameters, static_asserting for
the full range of possible values with the old encode macro).

What we get out of this is compile time error checking to make sure the
value actually fits in the mask, and that the mask fits in the register,
and also generally less icky code that writes shifted values when it
actually just meant to set and clear a handful of bits.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/pci/controller/pcie-rockchip.h | 35 +++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 5864a20323f21a004bfee4ac6d3a1328c4ab4d8a..5f2e45f062d94cd75983f7ad0c5b708e5b4cfb6f 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -11,6 +11,7 @@
 #ifndef _PCIE_ROCKCHIP_H
 #define _PCIE_ROCKCHIP_H
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/kernel.h>
 #include <linux/pci.h>
@@ -21,10 +22,10 @@
  * The upper 16 bits of PCIE_CLIENT_CONFIG are a write mask for the lower 16
  * bits.  This allows atomic updates of the register without locking.
  */
-#define HIWORD_UPDATE(mask, val)	(((mask) << 16) | (val))
-#define HIWORD_UPDATE_BIT(val)		HIWORD_UPDATE(val, val)
+#define HWORD_SET_BIT(val)		(HWORD_UPDATE_CONST((val), 1))
+#define HWORD_CLR_BIT(val)		(HWORD_UPDATE_CONST((val), 0))
 
-#define ENCODE_LANES(x)			((((x) >> 1) & 3) << 4)
+#define ENCODE_LANES(x)			((((x) >> 1) & 3))
 #define MAX_LANE_NUM			4
 #define MAX_REGION_LIMIT		32
 #define MIN_EP_APERTURE			28
@@ -32,21 +33,21 @@
 
 #define PCIE_CLIENT_BASE		0x0
 #define PCIE_CLIENT_CONFIG		(PCIE_CLIENT_BASE + 0x00)
-#define   PCIE_CLIENT_CONF_ENABLE	  HIWORD_UPDATE_BIT(0x0001)
-#define   PCIE_CLIENT_CONF_DISABLE       HIWORD_UPDATE(0x0001, 0)
-#define   PCIE_CLIENT_LINK_TRAIN_ENABLE	  HIWORD_UPDATE_BIT(0x0002)
-#define   PCIE_CLIENT_LINK_TRAIN_DISABLE  HIWORD_UPDATE(0x0002, 0)
-#define   PCIE_CLIENT_ARI_ENABLE	  HIWORD_UPDATE_BIT(0x0008)
-#define   PCIE_CLIENT_CONF_LANE_NUM(x)	  HIWORD_UPDATE(0x0030, ENCODE_LANES(x))
-#define   PCIE_CLIENT_MODE_RC		  HIWORD_UPDATE_BIT(0x0040)
-#define   PCIE_CLIENT_MODE_EP            HIWORD_UPDATE(0x0040, 0)
-#define   PCIE_CLIENT_GEN_SEL_1		  HIWORD_UPDATE(0x0080, 0)
-#define   PCIE_CLIENT_GEN_SEL_2		  HIWORD_UPDATE_BIT(0x0080)
+#define   PCIE_CLIENT_CONF_ENABLE		HWORD_SET_BIT(0x0001)
+#define   PCIE_CLIENT_CONF_DISABLE		HWORD_CLR_BIT(0x0001)
+#define   PCIE_CLIENT_LINK_TRAIN_ENABLE		HWORD_SET_BIT(0x0002)
+#define   PCIE_CLIENT_LINK_TRAIN_DISABLE	HWORD_CLR_BIT(0x0002)
+#define   PCIE_CLIENT_ARI_ENABLE		HWORD_SET_BIT(0x0008)
+#define   PCIE_CLIENT_CONF_LANE_NUM(x)		HWORD_UPDATE(0x0030, ENCODE_LANES(x))
+#define   PCIE_CLIENT_MODE_RC			HWORD_SET_BIT(0x0040)
+#define   PCIE_CLIENT_MODE_EP			HWORD_CLR_BIT(0x0040)
+#define   PCIE_CLIENT_GEN_SEL_1			HWORD_CLR_BIT(0x0080)
+#define   PCIE_CLIENT_GEN_SEL_2			HWORD_SET_BIT(0x0080)
 #define PCIE_CLIENT_LEGACY_INT_CTRL	(PCIE_CLIENT_BASE + 0x0c)
-#define   PCIE_CLIENT_INT_IN_ASSERT		HIWORD_UPDATE_BIT(0x0002)
-#define   PCIE_CLIENT_INT_IN_DEASSERT		HIWORD_UPDATE(0x0002, 0)
-#define   PCIE_CLIENT_INT_PEND_ST_PEND		HIWORD_UPDATE_BIT(0x0001)
-#define   PCIE_CLIENT_INT_PEND_ST_NORMAL	HIWORD_UPDATE(0x0001, 0)
+#define   PCIE_CLIENT_INT_IN_ASSERT		HWORD_SET_BIT(0x0002)
+#define   PCIE_CLIENT_INT_IN_DEASSERT		HWORD_CLR_BIT(0x0002)
+#define   PCIE_CLIENT_INT_PEND_ST_PEND		HWORD_SET_BIT(0x0001)
+#define   PCIE_CLIENT_INT_PEND_ST_NORMAL	HWORD_CLR_BIT(0x0001)
 #define PCIE_CLIENT_SIDE_BAND_STATUS	(PCIE_CLIENT_BASE + 0x20)
 #define   PCIE_CLIENT_PHY_ST			BIT(12)
 #define PCIE_CLIENT_DEBUG_OUT_0		(PCIE_CLIENT_BASE + 0x3c)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
