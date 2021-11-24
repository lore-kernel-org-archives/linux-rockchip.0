Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 057CEC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 18:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHLrOBFUf+VPMER3uJoNnJs+PTWyWYTrcaetvYGXIZY=; b=PDNFxZvUdPcQbL
	yXx1VxFXfc8H8ZMfQnKRvJydDpj0EU2ZiB2E43n3UBjkNRIXuvsb7wj2VCWZWR4vY6GAkQwtEoHoA
	KRO7a0uRf7T1dLsVQwl6BH3twqTqEsGTmhmoB4b8BJESiNvxDb2BhVuvW0D36Pdt5ugNLsJLF4cdm
	JvwKMjY7FtRqa8SPeg5eWS6OnV9StWhUFIm93gmnTAAkD0w4IP2UBMhmJtXJ/nULZ4NPluK2Kn1gK
	SToqXTLvacTSZskY0yFiW5NXzkrUyCXUvEE8jhru3j6eVs5cFNfXzjJyqFhU7XmvXG9kk8a1EaRUG
	gws8W0CD5VFzj9fr0dAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpxI2-005X7o-JA; Wed, 24 Nov 2021 18:46:42 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpxHc-005Wzt-Qf; Wed, 24 Nov 2021 18:46:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:Reply-To:
 Content-ID:Content-Description;
 bh=lPi+Knpu85ApFKN1hCgex6IK5JO2TM11yYvM5Cw66/Q=; b=pZP9IxWd/ronCKzZ+PMeU7SeDb
 J0PgruqxPg5J0wP8UiFl/ObTGFJUEkvsJZwCn3pvNkMcpFu79fHmpwbQQVm/SXblTukYf6XuyNrIZ
 jp+mBzUgKVmLQmUegOlYbGBDPTa2U0ewI6JsKnQuz4VmHdNKHNR4/oqBnq+m962kiQBZhV/6b4zrV
 0DWX7VcW27BpT7S4JitKKQixs3CwcAJCaqDEL3nPwq3Mm7Mn1LJQqleOwsNNhxDUoWhaP/ssXJLKI
 +IqHtxtJGaeD1+4TPVRc+vg3Cj+vKFP66rntQ8Fg1AwLqM6cddZr/dWsvSgDpUqqzFUwLUAFPdzWX
 EbBYb7SA==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mpxHV-00007s-A6; Wed, 24 Nov 2021 18:46:09 +0000
From: John Keeping <john@metanate.com>
To: linux-mmc@vger.kernel.org
Cc: John Keeping <john@metanate.com>, Heiko Stuebner <heiko@sntech.de>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 1/4] mmc: dw_mmc: add common capabilities to replace caps
Date: Wed, 24 Nov 2021 18:45:59 +0000
Message-Id: <20211124184603.3897245-2-john@metanate.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211124184603.3897245-1-john@metanate.com>
References: <20211124184603.3897245-1-john@metanate.com>
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_104616_894232_5CEC0B41 
X-CRM114-Status: GOOD (  14.10  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The caps field depends on the mshcN alias ID but for some devices this
is unnecessary as the capabilities are the same for all instances
sharing the same compatible.

Add a common_caps field for this case which updates the host's
capabilities without needing the mshcN alias ID.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/mmc/host/dw_mmc.c | 3 +++
 drivers/mmc/host/dw_mmc.h | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
index 195f2b2434b0..f2a14a434bef 100644
--- a/drivers/mmc/host/dw_mmc.c
+++ b/drivers/mmc/host/dw_mmc.c
@@ -2856,6 +2856,9 @@ static int dw_mci_init_slot_caps(struct dw_mci_slot *slot)
 	if (host->pdata->pm_caps)
 		mmc->pm_caps = host->pdata->pm_caps;
 
+	if (drv_data)
+		mmc->caps |= drv_data->common_caps;
+
 	if (host->dev->of_node) {
 		ctrl_id = of_alias_get_id(host->dev->of_node, "mshc");
 		if (ctrl_id < 0)
diff --git a/drivers/mmc/host/dw_mmc.h b/drivers/mmc/host/dw_mmc.h
index ce05d81477d9..771d5afa3136 100644
--- a/drivers/mmc/host/dw_mmc.h
+++ b/drivers/mmc/host/dw_mmc.h
@@ -550,6 +550,8 @@ struct dw_mci_slot {
  * dw_mci driver data - dw-mshc implementation specific driver data.
  * @caps: mmc subsystem specified capabilities of the controller(s).
  * @num_caps: number of capabilities specified by @caps.
+ * @common_caps: mmc subsystem specified capabilities applicable to all of
+ *	the controllers
  * @init: early implementation specific initialization.
  * @set_ios: handle bus specific extensions.
  * @parse_dt: parse implementation specific device tree properties.
@@ -562,6 +564,7 @@ struct dw_mci_slot {
 struct dw_mci_drv_data {
 	unsigned long	*caps;
 	u32		num_caps;
+	u32		common_caps;
 	int		(*init)(struct dw_mci *host);
 	void		(*set_ios)(struct dw_mci *host, struct mmc_ios *ios);
 	int		(*parse_dt)(struct dw_mci *host);
-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
