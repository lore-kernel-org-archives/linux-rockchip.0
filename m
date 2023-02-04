Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA3D6C61DA4
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Feb 2023 08:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82X7EBCXNEfok8jc9ckpvhdgPuFxjZcg6JNaWAipBEY=; b=FvO1zJ09l0mor4
	ZsJnaPb26Kp3uHP5GtG/RjNrnkm1XovqISm68mXUJw+LUIFyROYjDR8K5YP1Aqqk7iWZMo5FNfVai
	98bZlnwGwasf9qaqV+Q6oSF52IVu0Tbj9L18CT9h8ocKiLcVm7Mnz2E0A9qNaB4xshemi90tDIAhz
	5SPn2Lv+rdRn5Uboj1izBKopcvFEHPfDaIZW1iC58fUYKNAN9j4NcKQB0RLaYwL3m1RuOVCFP42gB
	m6TglSgIjtoEBvvBuwO8CgSVUridJ7S2mNJafzIKfR5VvH/w1xPxLSskricdr5zTwTp876ZSNYDXi
	J7IsNAxVfThcuV6lGxuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOEEH-004kR5-Gy; Sat, 04 Feb 2023 08:49:01 +0000
Received: from smtp-out2.suse.de ([195.135.220.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOEDj-004kGc-B5; Sat, 04 Feb 2023 08:48:29 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 269285D655;
	Sat,  4 Feb 2023 08:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1675500506; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LfXFDj2zbKch59pbOhh+rRsUmyO2+PkAEbeDIy2JVk4=;
	b=GRstlmIUesSyP7u9eKKfjBsZplR+yuatbBaqcEPRVuJe85wg2Q27xBgyMnk3s2XT/P37vR
	5YWRxCWqaZeVt5kMqGrrRhJgeg92r7YEZCKAHzRiURKQRCsx00S27+mPEBHi9FXEpckcSL
	3ZkWEYe+QuHhCFuJLWsYRJbLbZPkUgY=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id D978C133F5;
	Sat,  4 Feb 2023 08:48:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id aCxVKtgb3mMKLAAAMHmgww
	(envelope-from <wqu@suse.com>); Sat, 04 Feb 2023 08:48:24 +0000
From: Qu Wenruo <wqu@suse.com>
To: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: sebastian.reichel@collabora.com,
	heiko@sntech.de
Subject: [PATCH RFC 3/5] drivers: pci: controller: add PCIE controller driver for RK3588
Date: Sat,  4 Feb 2023 16:48:00 +0800
Message-Id: <5ec4caab3fa934c173bbbfbbf711b1d2429426a7.1675498628.git.wqu@suse.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1675498628.git.wqu@suse.com>
References: <cover.1675498628.git.wqu@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230204_004827_538449_FFA5A522 
X-CRM114-Status: GOOD (  10.73  )
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

According to the downstream code, the RK3568 and RK3588 share the same
driver.

Downstream code only has extra handling for the following cases:

- RK1808 driver
- Bifurcation handling
- Endpoint handling

All of the above features are not available upstream anyway.

Thus here we only need to add a new compatible string for the existing
driver.

Signed-off-by: Qu Wenruo <wqu@suse.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c1e7653e508e..435b717e5bc6 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -354,6 +354,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id rockchip_pcie_of_match[] = {
 	{ .compatible = "rockchip,rk3568-pcie", },
+	{ .compatible = "rockchip,rk3588-pcie", },
 	{},
 };
 
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
