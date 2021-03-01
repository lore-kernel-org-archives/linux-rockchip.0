Return-Path: <SRS0=+1u9=H7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A9C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 17:18:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5609B651E4
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 17:18:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5609B651E4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=beDtSBnjeP7+26WhL9JQ9GrTFqY5dqwrMjWI/Vysqo4=; b=smt3/f16jj/R81G93YhlPT59c1
	9PFa3QA1rS9zD3Xsa123DMA3gYC+TTK85A1dglqc7mcym0ptha89IRSzhaRNWHzarrr4KjzDir2mp
	H1tXbzleJmyhjwOYmrWe3HzicHOSl9b3ohXnhLO6oRsrtNHbcTfSRzLE/eBiKpvJrmuW4/09BJF3n
	3B7Vh2TI++Yf1eiGERwM6U+tUMrXBabTLmkAcx/GKHZAKj14ButGqtMhBOhreLjodbj3hwG44oBpC
	wFajmh1WUGB2Uz0nqN8ZXlv3ARlJ4D3uMmesjowiFBQ8sBqsBFdaIZ6Np7vPNRVSJTScKQtQpVfgG
	rMxouuww==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGmC6-0000VS-Ua; Mon, 01 Mar 2021 17:18:55 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGmC2-0000SR-9v
 for linux-rockchip@lists.infradead.org; Mon, 01 Mar 2021 17:18:52 +0000
Received: from guri.fritz.box
 (p200300c7cf38380081778a42153c5979.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf38:3800:8177:8a42:153c:5979])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3319C1F45165;
 Mon,  1 Mar 2021 17:18:44 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 2/2] media: rkisp1: params: fix wrong bits settings
Date: Mon,  1 Mar 2021 18:18:35 +0100
Message-Id: <20210301171835.24202-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210301171835.24202-1-dafna.hirschfeld@collabora.com>
References: <20210301171835.24202-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_121850_471734_3FCD0E53 
X-CRM114-Status: GOOD (  11.10  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The histogram mode is set using 'rkisp1_params_set_bits'.
Only the bits of the mode should be the value argument for
that function. Otherwise bits outside the mode mask are
turned on which is not what was intended.

Fixes: bae1155cf579 ("media: staging: rkisp1: add output device for parameters")
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index 0e69d888e572..885a59bcd6c7 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -1233,7 +1233,6 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
 	memset(hst.hist_weight, 0x01, sizeof(hst.hist_weight));
 	rkisp1_hst_config(params, &hst);
 	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_HIST_PROP,
-			      ~RKISP1_CIF_ISP_HIST_PROP_MODE_MASK |
 			      rkisp1_hst_params_default_config.mode);
 
 	/* set the  range */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
