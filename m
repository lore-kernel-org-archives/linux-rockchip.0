Return-Path: <SRS0=fCHL=I6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A8CC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:44:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E14AE6135C
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:43:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E14AE6135C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cnWfCE2gutTY/2PqD9C3aiT9Piln0m1EivTKIAzeE+w=; b=EaRDegyil1EbLLzSj5BKwMmSo
	lqwr/6nbxJ0mttwtIuaAV6RzRRorjRqMhfIBmob9eRSNM5XWfKj1NRvQD1btEJb3SNjKPcc3sBogZ
	l/uDvRDnx7VzWF9WQklqFEnMVftgrMJTBk7TDcbFoiOsuCHTY6HycqEtIAHhj1QaoSVF3sMXHtqZt
	xVD174X6ar994VhRGvqEWrGawXxw/mySeccyavYGQBEzwBfjmZs/Tnvw6HMVcbwgZX4FD0h7AHfgd
	iVdCOaRcLBFQm80TINTyMJpqzM0BzabLu62vkcN6dBObsIYlTxLFfGDT4mNc2DtleEt5nw0/u1hvO
	a3r+vZviQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRyY6-009sc3-5r; Thu, 01 Apr 2021 14:43:54 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRyXz-009sZP-Mk
 for linux-rockchip@lists.infradead.org; Thu, 01 Apr 2021 14:43:49 +0000
Received: by mail-ed1-x52e.google.com with SMTP id bx7so2222857edb.12
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Apr 2021 07:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6B26f3IlajNfnhYcTkXd3V9kuoJqzsJf9D1voUcVJjo=;
 b=PQD/yD5wECUFHyUXqIIV6kgZEBoPNySiNLhipn5PaPgwdwqEZMV/JOvfNwzPouldSH
 yFOXRCAVF6syQpz1q+7SuyWq0t8aB+S2R6hVI6lPvSgIj0Vz9xLJhX9Np+Hd83JaFL1j
 sZc/f4pPcW6wIATINRATOVun4cyzKK6gw227gFRHkYanowJ3XWx3XF2pRq3aY/Wb2YkF
 uioaXeOOD+Ysm2m8u8tOPtHDwRtDggFO/wqsOfH8z4RJmtoBS0x3ClV5D2fZCan3rlYg
 iBqY65qefYhJQenmjxpCRpXrRRl6rN43jyjECL1ve0Fytry0wgQIkQ5x83nvxDtlSJET
 yuVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6B26f3IlajNfnhYcTkXd3V9kuoJqzsJf9D1voUcVJjo=;
 b=bx7Nv0M8w12xXCVAuAdMDJCCKKqqX2fhI+5iw+riWg8zpOu668f/W8AQZReCKwyGxP
 IDRi8EPxUjq1kTR8HuY1SUO/Hi0k2aCseD4RAV3m5oyZFKCQqSwAyt0biMxrQO3tjGlT
 CTqrW20GKss8a4cNwRMcmLBjEy5FlpOcFDSD+gP3xxhqPae2icEqrVj17e5CsNWq/7K2
 NVm+lmRS5bcWBYlu0B2bCzoS0Nr1iPPbBT9/mBL3ie0J/xPcenaFcttbcUxW2MQGfwT8
 ipzTzS1OyyvVK+vGYcuuP++LjTPfGrSA7OrM1XA2aUkvWVYyjs3Blp7DflYvbLp3FbH5
 RlTw==
X-Gm-Message-State: AOAM53099y57tvgP719zP0wf8P5MNkh7fXTZEaUG36ComByv0VOEO6Z5
 ncm2FBmZbPvKTjUfoD5VY1Y=
X-Google-Smtp-Source: ABdhPJys+1L+GR0Q8RJlO+aVJo1otlu7AICp0FPiPRQPvqFgdpuDu2gCuA6ngwmguDf6yWL4FXMWJg==
X-Received: by 2002:a05:6402:3550:: with SMTP id
 f16mr10175223edd.134.1617288227200; 
 Thu, 01 Apr 2021 07:43:47 -0700 (PDT)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id nd36sm2854950ejc.21.2021.04.01.07.43.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 07:43:46 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v4 2/9] media: hantro: imx: reuse MB_DIM define
Date: Thu,  1 Apr 2021 15:43:29 +0100
Message-Id: <20210401144336.2495479-3-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_154347_798664_BF80DC71 
X-CRM114-Status: GOOD (  11.15  )
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

From: Emil Velikov <emil.velikov@collabora.com>

Swap the hardcoded 16 with MB_DIM define.

Fixes: 8e4aaa687863 ("media: hantro: add initial i.MX8MQ support")
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index c222de075ef4..1f48c1956cd2 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -109,10 +109,10 @@ static const struct hantro_fmt imx8m_vpu_dec_fmts[] = {
 		.frmsize = {
 			.min_width = 48,
 			.max_width = 3840,
-			.step_width = 16,
+			.step_width = MB_DIM,
 			.min_height = 48,
 			.max_height = 2160,
-			.step_height = 16,
+			.step_height = MB_DIM,
 		},
 	},
 	{
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
