Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D7F7CD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 21:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48RBK1Pvz+s54NqAMIAWjU/UUA9YrqKrFnUGEynEpZs=; b=BPgne0HN/bsrsl
	y456NWPCg8GfqF+c95yqFmP0sjDah4VIECLEVXOc3ciir/rv8Oanv5u11WIFotdUyA9zJOBOSp+0G
	myhRSbWxIbcQHZUGtYlral77pxVozUNWSGMfPNeXG8/DyAf5iXcFQckPdZNVKNUTO5jYSfeSkc4Aa
	NZN7cuj+nSKRw9TvbkSDisz5TsHfsEIoMvERMOxS4VAdWbJ3Y5mABjPJcR4sVdTnnTsOixSPiqWG+
	DbM/4ZjB1sXQn64ByWo2CxW06RFq2c6ShOtki10I1dP+rcLwOtFpMRiku9Fc5bzr3T2/B6KcmBzrI
	pPO/7Sq8+QvtQAkK7bag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPDP-0000000HTqk-1Fi3;
	Sun, 08 Sep 2024 21:12:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPAM-0000000HSyf-2zMa;
	Sun, 08 Sep 2024 21:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=AODWEsE73iZy3ftOFUVpepawKaVLM9NWi8usTPEPRhw=; b=YBbXd5wGMQvFJ78L7z+1sRxDbj
	lj8ky7GrcW/R8EGhM6SOQe+1YOUnnfUSAemNtm4Hq1xsa15A816rSSH0kk/qWszTu5rJCXhwRSOkO
	NeHevL5NpBoay96RCGWudg1Z45AkXFxkZ+WZPRNH+IzXC3VqoHPB+3H1BCQN4n/2q2QyBCBZYKEGa
	gdLwY99LziS6ERU8zhOh7g4vDNAJTHDCZwgUuibqdeTh6iRxkm10SSJfK8j+ni7wiQLPVC82cg8C+
	KIm2ieNa2Ju72daIBrPau+b7ZDvr8JaInc4p9gEzB0ZiSxJAyLKF9/iH1B5E6xJX8dam384YJTFn3
	05713NZg==;
Received: from i5e8616cc.versanet.de ([94.134.22.204] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1snPA1-0003s9-W8; Sun, 08 Sep 2024 23:09:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lee@kernel.org,
	jikos@kernel.org,
	jic23@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net,
	srinivas.pandruvada@linux.intel.com,
	bentiss@kernel.org,
	dmitry.torokhov@gmail.com,
	pavel@ucw.cz,
	ukleinek@debian.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-input@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-leds@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v8 2/9] mfd: core: make platform_data pointer const in struct mfd_cell
Date: Sun,  8 Sep 2024 23:07:56 +0200
Message-ID: <20240908210803.3339919-3-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240908210803.3339919-1-heiko@sntech.de>
References: <20240908210803.3339919-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_140950_786875_B41F6AB4 
X-CRM114-Status: GOOD (  16.07  )
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

The content of the platform_data of a struct mfd_cell is simply passed on
to the platform_device_add_data() call in mfd_add_device() .

platform_device_add_data() already handles the data behind that pointer
as const and also uses kmemdup to create a copy of the data before
handing that copy over to the newly created platform-device,
so there is no reason to not extend this to struct mfd_cell, as the old
copy in the mfd_cell will be stale anyway.

This allows to pass structs gathered from of_device_get_match_data()
as platform-data to sub-devices - which is retrieved as const already.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 include/linux/mfd/core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
index e8bcad641d8c..faeea7abd688 100644
--- a/include/linux/mfd/core.h
+++ b/include/linux/mfd/core.h
@@ -72,7 +72,7 @@ struct mfd_cell {
 	int			(*resume)(struct platform_device *dev);
 
 	/* platform data passed to the sub devices drivers */
-	void			*platform_data;
+	const void		*platform_data;
 	size_t			pdata_size;
 
 	/* Matches ACPI */
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
