Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78772C433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A85322EBF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ziz8jU0K"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4A85322EBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z5qTb2rK3ijeHkojHDYCLY7qqYaQPX2eb3i80CjAEdI=; b=ziz8jU0KzZ5Yi6DKOiqJhAltQl
	L1CHRla740trn41/GPagzHB5gGSqQM9nHY4D4o7DAcmZutMNyxon4CsqpHE69HGRWy4p7LJF5naIF
	g7np2dYSUeV3uG8rATcvl9Kax75mSGQUXvPGh+ahWqNI98KnXbJyWTr2ar5+Y2KatmLMWTxFYeXkA
	H/BaDRWB2r3FnaRG3qqYRfYxLqeSvlNCjXbv74D5KRSxoWC7AEb5kZgLGnOBG3GvTUQpYHm2CBxc6
	nl3Y2EnvpzD5n9a6UECGXLdfEokra9WNolHnrghB0ZJsEhadNj4Vd5ExExVExV0Bg6BhGk1Ds0UAX
	Q4AYGoIQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6tZl-0001PR-LL; Sat, 15 Aug 2020 10:38:13 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6tZZ-0001HD-DG
 for linux-rockchip@lists.infradead.org; Sat, 15 Aug 2020 10:38:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 2D7EA29A94E
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 14/14] media: staging: rkisp1: params: no need to lock
 default config
Date: Sat, 15 Aug 2020 12:37:34 +0200
Message-Id: <20200815103734.31153-15-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_063801_639016_F847CB7E 
X-CRM114-Status: GOOD (  12.88  )
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

In the function 'rkisp1_params_config_parameter' the lock
is taken while applying the default config. But the lock
only needs to protect the buffers list and the 'is_streaming'
field, so move the locking to lock only what is needed.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 7d5c21fa630e..6c71da311294 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1283,8 +1283,6 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
 {
 	struct rkisp1_cif_isp_hst_config hst = rkisp1_hst_params_default_config;
 
-	spin_lock(&params->config_lock);
-
 	rkisp1_awb_meas_config(params, &rkisp1_awb_params_default_config);
 	rkisp1_awb_meas_enable(params, &rkisp1_awb_params_default_config,
 			       true);
@@ -1309,6 +1307,8 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
 	else
 		rkisp1_csm_config(params, false);
 
+	spin_lock(&params->config_lock);
+
 	/* apply the first buffer if there is one already */
 	if (params->is_streaming)
 		rkisp1_params_apply_params_cfg(params, 0);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
