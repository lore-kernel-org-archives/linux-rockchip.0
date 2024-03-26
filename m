Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A28C6C54E67
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 18:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UgZYiyR5BC7CmuKb+OoDuG4vQ79eDRfQlgPAC6GrvSw=; b=jNGyXXiN4R32hQ
	UNq5QirlUif8FsHX0w0VHNunyCh3ck7zERb9iWn7/LpaGZb7uyn7pQJHGfhM3i3AaMrNxsfQ006Sf
	AgvEBBByca8TW7ZP+lH2gAR3u1v8MrkgEot5vUQOXfL5rEjTY7syeHljGQbcBDHQMjRT4nYoOoz9U
	EDSnctgMfvZo0Ad0Z1tGr2MbkF1fIFBtPJNhrOGVpjz7uW62s1OXDF5AI+FLLX86BDlI+lHQ62PPG
	RwXZ1H9sM57cfJiIxluSuMTBEcquUw0pOBSCITJwjDku1KK2Vl0oD6jmrLIE3BUmZq6wyaNBt15/s
	BmtOGhQwbGPg5JjsdfpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpBzX-0000000626u-0UVz;
	Tue, 26 Mar 2024 18:57:47 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpBzC-000000061uv-2pss;
	Tue, 26 Mar 2024 18:57:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E29C4CE23E1;
	Tue, 26 Mar 2024 18:57:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36E4C43390;
	Tue, 26 Mar 2024 18:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711479443;
	bh=Gsn3xXI5BKQL/2L//Z3WWmwk7DoW960rhzJRT9Ymakc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=NFkZy5Y9KO2Hxq0mI84mZ9prB6Fytp67o6i5a/E4qS3vwxvFWzhv4AIpeM160GWfp
	 AAmVMtfAXgmahmiyPwYN8nj4zBFY3Yyb+7Y4bIJbrE2u1iNhqZNOAGzurwjF72Rv8w
	 /KsXhV57usRVY+CgK3FCqCGbAvn/v0XQNJpzuteTKJK/lbrh89y7fxabQIulbXB/JA
	 Nf1GxyoCfRttFrH1QcjZdSQR+usSkjZ+OKL69z2gBjilVDX6dcH7rekmOelO6shf2x
	 kjd2otmYtZT0F6WGyEViMFAPXuPlKBhKx0SbtgYA8u9vLzkiIzNCu1QTykOLUtfuux
	 LNau16lWcj5bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E1EC6FD1F;
	Tue, 26 Mar 2024 18:57:23 +0000 (UTC)
From: Folker Schwesinger via B4 Relay <devnull+dev.folker-schwesinger.de@kernel.org>
Date: Tue, 26 Mar 2024 19:54:35 +0100
Subject: [PATCH 1/3] phy: rockchip: emmc: Enable pulldown for strobe line
MIME-Version: 1.0
Message-Id: <20240326-rk-default-enable-strobe-pulldown-v1-1-f410c71605c0@folker-schwesinger.de>
References: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
In-Reply-To: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Chris Ruehl <chris.ruehl@gtsys.com.hk>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Christopher Obbard <chris.obbard@collabora.com>, 
 Alban Browaeys <alban.browaeys@gmail.com>, 
 Doug Anderson <dianders@chromium.org>, 
 Brian Norris <briannorris@chromium.org>, 
 Jensen Huang <jensenhuang@friendlyarm.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Folker Schwesinger <dev@folker-schwesinger.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2253;
 i=dev@folker-schwesinger.de; h=from:subject:message-id;
 bh=vn1WaogVqkovnF++lKXXa6btFkOAZlcxkgTSF4vHKKI=;
 b=owGbwMvMwCXG5FBoZNu1u5bxtFoSQxqz1ESGm1xxESWPdL0nBP77tEF529PKYs66r0ez70y8w
 2eS2Tm5o5SFQYyLQVZMkYU1L2MLc2b5Uuuun69h5rAygQ3h4hSAibCEMfwVOiHs8frNmQnzo1mu
 GdVGya19sFMoZ+G78y36Xp3W6h5fGRnaD1XFVlhoO08onHh787XvZ+ad11Ko0L/3/tkVv8uFT66
 zAQA=
X-Developer-Key: i=dev@folker-schwesinger.de; a=openpgp;
 fpr=056E68B4036977A53B8AF9EB024071323D8ABB7D
X-Endpoint-Received: by B4 Relay for dev@folker-schwesinger.de/default with
 auth_id=144
X-Original-From: Folker Schwesinger <dev@folker-schwesinger.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_115727_123404_9AEA0B3A 
X-CRM114-Status: GOOD (  11.76  )
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
Reply-To: dev@folker-schwesinger.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Folker Schwesinger <dev@folker-schwesinger.de>

Restore the behavior of the Rockchip kernel that undconditionally
enables the internal strobe pulldown.
As the DT property rockchip,enable-strobe-pulldown is obsolete now,
replace it with a property to disable the internal pulldown.

This fixes I/O errors observed on various Rock Pi 4 and NanoPi4 series
boards with some eMMC modules. Other boards may also be affected.

An example of these errors is as follows:

[  290.060817] mmc1: running CQE recovery
[  290.061337] blk_update_request: I/O error, dev mmcblk1, sector 1411072 op 0x1:(WRITE) flags 0x800 phys_seg 36 prio class 0
[  290.061370] EXT4-fs warning (device mmcblk1p1): ext4_end_bio:348: I/O error 10 writing to inode 29547 starting block 176466)
[  290.061484] Buffer I/O error on device mmcblk1p1, logical block 172288

Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in dts")
Signed-off-by: Folker Schwesinger <dev@folker-schwesinger.de>
---
 drivers/phy/rockchip/phy-rockchip-emmc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
index 20023f6eb994..6e637f3e1b19 100644
--- a/drivers/phy/rockchip/phy-rockchip-emmc.c
+++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
@@ -376,14 +376,14 @@ static int rockchip_emmc_phy_probe(struct platform_device *pdev)
 	rk_phy->reg_offset = reg_offset;
 	rk_phy->reg_base = grf;
 	rk_phy->drive_impedance = PHYCTRL_DR_50OHM;
-	rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_DISABLE;
+	rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_ENABLE;
 	rk_phy->output_tapdelay_select = PHYCTRL_OTAPDLYSEL_DEFAULT;
 
 	if (!of_property_read_u32(dev->of_node, "drive-impedance-ohm", &val))
 		rk_phy->drive_impedance = convert_drive_impedance_ohm(pdev, val);
 
-	if (of_property_read_bool(dev->of_node, "rockchip,enable-strobe-pulldown"))
-		rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_ENABLE;
+	if (of_property_read_bool(dev->of_node, "rockchip,disable-strobe-pulldown"))
+		rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_DISABLE;
 
 	if (!of_property_read_u32(dev->of_node, "rockchip,output-tapdelay-select", &val)) {
 		if (val <= PHYCTRL_OTAPDLYSEL_MAXVALUE)

-- 
2.44.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
