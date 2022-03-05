Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F605C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Mar 2022 21:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlBKjdjmsUYX6hhZDi6BbhN7Tpzl0dVdp3AkawjlI7Q=; b=YYdwMXjtfMTxqi
	uyLsAQY2K7I5AvvuWVJWCEx8Rl3KC0Gh0ZN+aSNAFZGZWOFUYMEGLzjSb0URt6Bg2nJZ26zfpDtgW
	rWmn+du0fEp/wJc7gh1BU1a1kiJX6NPATsHpelZoJN0wrZs0XB2yxqhKi8Puh8kPTKavkReYynInh
	8VqHOyNbdDlj23SHUp91IptneUvNuGtacGOoqCazDWgsjoKKiPJmahKxbCNuPh4yNEdIgHXDhqoLT
	wmg7fMiypCCdYZ7WoAXpl8lTntubHEjOVtuPXqqYOZfUsU/zGsQEJiF4CSx33tY2QqL/31gWcC2NL
	bmc+1lUuVMpWQhlzEJ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQcQR-00DtEC-4l; Sat, 05 Mar 2022 21:58:55 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQcQE-00Dt8E-TA
 for linux-rockchip@lists.infradead.org; Sat, 05 Mar 2022 21:58:44 +0000
Received: by mail-qt1-x834.google.com with SMTP id e2so10314992qte.12
 for <linux-rockchip@lists.infradead.org>; Sat, 05 Mar 2022 13:58:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ct38wuS+j+KdARYVXEvHL+p/0EBV034tSVqTgQxYy/U=;
 b=lfUc/RQ3J+tTlsfPuOC/ab+OMU3mVuCcB4s7Px11WkslxfatjJrSn+avZ0CETKOM4R
 vNcCBnebj/girjqxQHd2H7h/tRv4gi/WDxgWoOE2cRfANKVz4wMIedKVBahV9olXt6el
 +U35guGBBVNvrmS31BjkHkM9yz/sK1Nm1S12Ofj/GvMRGj0Jl/IpIvKA538nMQT1Pck0
 hnxIPQcnwSQJJVu4FpAILCgmcV5XAwq7Sa1BTyJeFbA6K6MlzJiq6oZYhXJwuk+10Qc+
 RnefUeOYfO0P/mWNTAIDXnj5GmFZY5LWYUYNJPe2ZKVwoS0tSwza07qTjo4WX4hiooIV
 v33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ct38wuS+j+KdARYVXEvHL+p/0EBV034tSVqTgQxYy/U=;
 b=frciDHOjPDUWOWKhXaIHd4eqrmOQZ47uL2R+Zj//b1AV5FIiGyWGrquhPz6aJzSpa4
 3ZMt+/sNcZLx5SYNvtbgze1Fph/tfM0yuKEgd2lGczTFuslFnur/Cz5PO1KRCuPIcet0
 a3WShqPeBgzFSVr3a6VIWyQW2QZhqt4CbL5ZkOgxzOGpF7Tjkh+3Fe1aQ3n0xTe2/cPb
 GB+NYLNIVvJvyvBBFPAhEQ+xDeBMDgxkYDuMaEw85Np7CYiSs9n/s4gy183gs1NeP3zE
 kQWRbGFliDw5p184djqa1MJAMtorDaCWUNc1zhhz0OkeJZpyJYYwoLYDIZu8qbz56+mH
 TGsw==
X-Gm-Message-State: AOAM530s66pz4EgCorQsX0f33Jkhzbs9FSrvkrh2+7UUQeRTVCDwTv7B
 QuFfcRIXebTWi3fVD5SOA30=
X-Google-Smtp-Source: ABdhPJwkcUtvAR6twCDRCalsZKvOr+O+o9namgpdwUWCoHGmZOsKiCUtUVyLUEgi2B5e9H2Y49ftCA==
X-Received: by 2002:a05:622a:1809:b0:2de:6f5c:23ed with SMTP id
 t9-20020a05622a180900b002de6f5c23edmr4224001qtc.406.1646517521810; 
 Sat, 05 Mar 2022 13:58:41 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 h188-20020a376cc5000000b00648d7e2a36bsm4230067qkc.117.2022.03.05.13.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Mar 2022 13:58:41 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: robin.murphy@arm.com, linux-rockchip@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] mmc: host: dw_mmc: support setting f_min from host
 drivers
Date: Sat,  5 Mar 2022 16:58:34 -0500
Message-Id: <20220305215835.2210388-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220305215835.2210388-1-pgwipeout@gmail.com>
References: <20220305215835.2210388-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220305_135842_960318_A983B00F 
X-CRM114-Status: GOOD (  14.44  )
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

Host drivers may not be able to support frequencies as low as dw-mmc
supports. Unfortunately f_min isn't available when the drv_data->init
function is called, as the mmc_host struct hasn't been set up yet.

Support the host drivers saving the requested minimum frequency, so we
can later set f_min when it is available.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/mmc/host/dw_mmc.c | 7 ++++++-
 drivers/mmc/host/dw_mmc.h | 2 ++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
index 42bf8a2287ba..0d90d0201759 100644
--- a/drivers/mmc/host/dw_mmc.c
+++ b/drivers/mmc/host/dw_mmc.c
@@ -2898,7 +2898,12 @@ static int dw_mci_init_slot_caps(struct dw_mci_slot *slot)
 	if (host->pdata->caps2)
 		mmc->caps2 = host->pdata->caps2;
 
-	mmc->f_min = DW_MCI_FREQ_MIN;
+	/* if host has set a minimum_freq, we should respect it */
+	if (host->minimum_speed)
+		mmc->f_min = host->minimum_speed;
+	else
+		mmc->f_min = DW_MCI_FREQ_MIN;
+
 	if (!mmc->f_max)
 		mmc->f_max = DW_MCI_FREQ_MAX;
 
diff --git a/drivers/mmc/host/dw_mmc.h b/drivers/mmc/host/dw_mmc.h
index 7f1e38621d13..4ed81f94f7ca 100644
--- a/drivers/mmc/host/dw_mmc.h
+++ b/drivers/mmc/host/dw_mmc.h
@@ -99,6 +99,7 @@ struct dw_mci_dma_slave {
  * @bus_hz: The rate of @mck in Hz. This forms the basis for MMC bus
  *	rate and timeout calculations.
  * @current_speed: Configured rate of the controller.
+ * @minimum_speed: Stored minimum rate of the controller.
  * @fifoth_val: The value of FIFOTH register.
  * @verid: Denote Version ID.
  * @dev: Device associated with the MMC controller.
@@ -201,6 +202,7 @@ struct dw_mci {
 
 	u32			bus_hz;
 	u32			current_speed;
+	u32			minimum_speed;
 	u32			fifoth_val;
 	u16			verid;
 	struct device		*dev;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
