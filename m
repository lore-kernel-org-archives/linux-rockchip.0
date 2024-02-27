Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71A10C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 14:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAf6eTR5/g5/ayMrmBcuRmTvr08hVD/IpQ5sawjuTy0=; b=DjcEO5QrWQyXJd
	8ANCHbcd+io8t3nXXGM3FGOWYq6nrtBv0v75DlRaKlOA0APLPq0Lr2jJA0yNPaEn4CwrtvI+xXOLB
	wQlpy6vy36FSjPYD6qyWXLUKfHoBkMzCSITbJFb3xelRnJ99JAesLwIBTYZsklH6FiTvy1B131Voa
	7MZzorzNVt52wrYdpMSDYGHMPONtildKT64XJpcawtJekmtGcooIqPCdkXRHHFnANAKQZi2hWj16O
	LyAdCwOot/N9NLZIh45ipOYFCKmOp4PgV4PXqfIiMegF/IyYZuS8vKg6jpnhZevIsr+Zl8JbBz5xY
	XSYIvApJRnXMhzlNvPuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reyMU-00000005ZHJ-32gj;
	Tue, 27 Feb 2024 14:23:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reyMR-00000005ZGl-2wRR
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Feb 2024 14:23:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 260D060AF0;
	Tue, 27 Feb 2024 14:23:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70AA0C433C7;
	Tue, 27 Feb 2024 14:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1709043790;
	bh=57ux6UIzQcSapR3cqiGBhPQDaQT/IFsDIlTxiihUuiw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=G2PRAAw6b9TLkCJ6T2i3SrWyhXGUgjN0QZY5B42gJ8ZGbMybVD2apeB/gQvKpBTT5
	 CEe2q1FziPeNpveEQ/3ArzRGafCh2Tlhy8gM3CtnB+b8PGRBx1FUmDEbzCpDk195pU
	 AqIJtu8cN+EbVOscbmUNqRs3eH0aGow7ee/pbjwQ=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	patches@lists.linux.dev,
	Lee Jones <lee.jones@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>,
	linux-rockchip@lists.infradead.org,
	Linus Walleij <linus.walleij@linaro.org>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.4 37/84] pinctrl: pinctrl-rockchip: Fix a bunch of kerneldoc misdemeanours
Date: Tue, 27 Feb 2024 14:27:04 +0100
Message-ID: <20240227131554.078818207@linuxfoundation.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240227131552.864701583@linuxfoundation.org>
References: <20240227131552.864701583@linuxfoundation.org>
User-Agent: quilt/0.67
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_062311_870629_2DAD425A 
X-CRM114-Status: GOOD (  17.13  )
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

5.4-stable review patch.  If anyone has any objections, please let me know.

------------------

From: Lee Jones <lee.jones@linaro.org>

[ Upstream commit e1524ea84af7172acc20827f8dca3fc8f72b8f37 ]

Demote headers which are clearly not kerneldoc, provide titles for
struct definition blocks, fix API slip (bitrot) misspellings and
provide some missing entries.

Fixes the following W=1 kernel build warning(s):

 drivers/pinctrl/pinctrl-rockchip.c:82: warning: cannot understand function prototype: 'struct rockchip_iomux '
 drivers/pinctrl/pinctrl-rockchip.c:97: warning: Enum value 'DRV_TYPE_IO_DEFAULT' not described in enum 'rockchip_pin_drv_type'
 drivers/pinctrl/pinctrl-rockchip.c:97: warning: Enum value 'DRV_TYPE_IO_1V8_OR_3V0' not described in enum 'rockchip_pin_drv_type'
 drivers/pinctrl/pinctrl-rockchip.c:97: warning: Enum value 'DRV_TYPE_IO_1V8_ONLY' not described in enum 'rockchip_pin_drv_type'
 drivers/pinctrl/pinctrl-rockchip.c:97: warning: Enum value 'DRV_TYPE_IO_1V8_3V0_AUTO' not described in enum 'rockchip_pin_drv_type'
 drivers/pinctrl/pinctrl-rockchip.c:97: warning: Enum value 'DRV_TYPE_IO_3V3_ONLY' not described in enum 'rockchip_pin_drv_type'
 drivers/pinctrl/pinctrl-rockchip.c:97: warning: Enum value 'DRV_TYPE_MAX' not described in enum 'rockchip_pin_drv_type'
 drivers/pinctrl/pinctrl-rockchip.c:106: warning: Enum value 'PULL_TYPE_IO_DEFAULT' not described in enum 'rockchip_pin_pull_type'
 drivers/pinctrl/pinctrl-rockchip.c:106: warning: Enum value 'PULL_TYPE_IO_1V8_ONLY' not described in enum 'rockchip_pin_pull_type'
 drivers/pinctrl/pinctrl-rockchip.c:106: warning: Enum value 'PULL_TYPE_MAX' not described in enum 'rockchip_pin_pull_type'
 drivers/pinctrl/pinctrl-rockchip.c:109: warning: Cannot understand  * @drv_type: drive strength variant using rockchip_perpin_drv_type
 on line 109 - I thought it was a doc line
 drivers/pinctrl/pinctrl-rockchip.c:122: warning: Cannot understand  * @reg_base: register base of the gpio bank
 on line 109 - I thought it was a doc line
 drivers/pinctrl/pinctrl-rockchip.c:325: warning: Function parameter or member 'route_location' not described in 'rockchip_mux_route_data'
 drivers/pinctrl/pinctrl-rockchip.c:328: warning: Cannot understand  */
 on line 109 - I thought it was a doc line
 drivers/pinctrl/pinctrl-rockchip.c:375: warning: Function parameter or member 'data' not described in 'rockchip_pin_group'
 drivers/pinctrl/pinctrl-rockchip.c:387: warning: Function parameter or member 'ngroups' not described in 'rockchip_pmx_func'

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: linux-rockchip@lists.infradead.org
Link: https://lore.kernel.org/r/20200713144930.1034632-20-lee.jones@linaro.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/pinctrl-rockchip.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 4b972be3487f9..a44c2680c4230 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -62,7 +62,7 @@ enum rockchip_pinctrl_type {
 	RK3399,
 };
 
-/**
+/*
  * Encode variants of iomux registers into a type variable
  */
 #define IOMUX_GPIO_ONLY		BIT(0)
@@ -72,6 +72,7 @@ enum rockchip_pinctrl_type {
 #define IOMUX_WIDTH_3BIT	BIT(4)
 
 /**
+ * struct rockchip_iomux
  * @type: iomux variant using IOMUX_* constants
  * @offset: if initialized to -1 it will be autocalculated, by specifying
  *	    an initial offset value the relevant source offset can be reset
@@ -82,7 +83,7 @@ struct rockchip_iomux {
 	int				offset;
 };
 
-/**
+/*
  * enum type index corresponding to rockchip_perpin_drv_list arrays index.
  */
 enum rockchip_pin_drv_type {
@@ -94,7 +95,7 @@ enum rockchip_pin_drv_type {
 	DRV_TYPE_MAX
 };
 
-/**
+/*
  * enum type index corresponding to rockchip_pull_list arrays index.
  */
 enum rockchip_pin_pull_type {
@@ -104,6 +105,7 @@ enum rockchip_pin_pull_type {
 };
 
 /**
+ * struct rockchip_drv
  * @drv_type: drive strength variant using rockchip_perpin_drv_type
  * @offset: if initialized to -1 it will be autocalculated, by specifying
  *	    an initial offset value the relevant source offset can be reset
@@ -117,8 +119,9 @@ struct rockchip_drv {
 };
 
 /**
+ * struct rockchip_pin_bank
  * @reg_base: register base of the gpio bank
- * @reg_pull: optional separate register for additional pull settings
+ * @regmap_pull: optional separate register for additional pull settings
  * @clk: clock of the gpio bank
  * @irq: interrupt of the gpio bank
  * @saved_masks: Saved content of GPIO_INTEN at suspend time.
@@ -136,6 +139,8 @@ struct rockchip_drv {
  * @gpio_chip: gpiolib chip
  * @grange: gpio range
  * @slock: spinlock for the gpio bank
+ * @toggle_edge_mode: bit mask to toggle (falling/rising) edge mode
+ * @recalced_mask: bit mask to indicate a need to recalulate the mask
  * @route_mask: bits describing the routing pins of per bank
  */
 struct rockchip_pin_bank {
@@ -310,6 +315,7 @@ enum rockchip_mux_route_location {
  * @bank_num: bank number.
  * @pin: index at register or used to calc index.
  * @func: the min pin.
+ * @route_location: the mux route location (same, pmu, grf).
  * @route_offset: the max pin.
  * @route_val: the register offset.
  */
@@ -322,8 +328,6 @@ struct rockchip_mux_route_data {
 	u32 route_val;
 };
 
-/**
- */
 struct rockchip_pin_ctrl {
 	struct rockchip_pin_bank	*pin_banks;
 	u32				nr_banks;
@@ -361,9 +365,7 @@ struct rockchip_pin_config {
  * @name: name of the pin group, used to lookup the group.
  * @pins: the pins included in this group.
  * @npins: number of pins included in this group.
- * @func: the mux function number to be programmed when selected.
- * @configs: the config values to be set for each pin
- * @nconfigs: number of configs for each pin
+ * @data: local pin configuration
  */
 struct rockchip_pin_group {
 	const char			*name;
@@ -376,7 +378,7 @@ struct rockchip_pin_group {
  * struct rockchip_pmx_func: represent a pin function.
  * @name: name of the pin function, used to lookup the function.
  * @groups: one or more names of pin groups that provide this function.
- * @num_groups: number of groups included in @groups.
+ * @ngroups: number of groups included in @groups.
  */
 struct rockchip_pmx_func {
 	const char		*name;
-- 
2.43.0




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
