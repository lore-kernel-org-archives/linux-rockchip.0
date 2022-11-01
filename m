Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80DEBFA3745
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Nov 2022 11:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SIQg+WBC6VA9eFNDoodblRZW4U/mKgH6hrs/VvCVw74=; b=i6LeeepJGSIC53
	BnvnlqthWS6M5xq/ZNEgckjSvD2ZUVmNRSIJkUSal5SyRoPDb/MrdrzitEX4FGNqkl3J8yOtPF7ph
	S+umBLQD1faSvH1WL0S0jYpwpESfyVmt/1JiAkTtdAtAh14JGlSQYL05YjzuK1WwPhvO3YKOFPFI6
	2Qa4Ij+/GjL1m99VbwURrJRcK5qI6gOLfhwvJXFGiXtXWpGxrM0eqyNpwbnuzsJ2mpaFQj4qGrt5B
	gxwRFqugmn44wgmPvT/+RZ14mCxrU/hBa4yNTpxGHBQbQpk1sjnhhiA4fVmmQz2cIdk2JEQG+vicg
	wnDkZSQ14WCPOg18JFOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oppU6-004cre-Sh; Tue, 01 Nov 2022 11:31:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oppSN-004bjl-QX; Tue, 01 Nov 2022 11:29:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 51465615C9;
	Tue,  1 Nov 2022 11:29:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B7C1C433D7;
	Tue,  1 Nov 2022 11:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667302162;
	bh=Vmo3ZHg1pN7KwuHV1CJhSuXf8BQVVmcDqJbW4/gHbJg=;
	h=From:To:Cc:Subject:Date:From;
	b=j+T/niV3QDtRdccCSwCxbIMAL3hyiS9Du2qjYKzOQ6SrGhNw0C9CKg7NkVrl0QjVf
	 Kv8YANndLMWoIEAl/vp3rfDqyoNt3gVxGOwH1OfRNBn/sqHqYbSERabsxISB0QyaG/
	 9y5AtPyQ593PQOht9Ggw6XC0hFBE6N980MFr25DZXTFLg7LjknUr9kxtnbSko2m8PF
	 rqkwlyxNuYnQLuxKzZmNeW7MYfLLQmYQhRMx/QpiHpq4CeZx7/LacG8RKun0chnF8/
	 dvLnpQ15ujW++RpexFuPKe/N/xwyjMCxvcE6EE9ar8ftfoT+LCkQvNQe+Uo0ZjLghm
	 auS2qnp0UsQzA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 01/19] media: rkisp1: Don't pass the quantization to rkisp1_csm_config()
Date: Tue,  1 Nov 2022 07:29:01 -0400
Message-Id: <20221101112919.799868-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_042923_943137_B5AE7BB3 
X-CRM114-Status: GOOD (  15.31  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

[ Upstream commit 711d91497e203b058cf0a08c0f7d41c04efbde76 ]

The rkisp1_csm_config() function takes a pointer to the rkisp1_params
structure which contains the quantization value. There's no need to pass
it separately to the function. Drop it from the function parameters.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index 8fa5b0abf1f9..8461e88c1288 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -751,7 +751,7 @@ static void rkisp1_ie_enable(struct rkisp1_params *params, bool en)
 	}
 }
 
-static void rkisp1_csm_config(struct rkisp1_params *params, bool full_range)
+static void rkisp1_csm_config(struct rkisp1_params *params)
 {
 	static const u16 full_range_coeff[] = {
 		0x0026, 0x004b, 0x000f,
@@ -765,7 +765,7 @@ static void rkisp1_csm_config(struct rkisp1_params *params, bool full_range)
 	};
 	unsigned int i;
 
-	if (full_range) {
+	if (params->quantization == V4L2_QUANTIZATION_FULL_RANGE) {
 		for (i = 0; i < ARRAY_SIZE(full_range_coeff); i++)
 			rkisp1_write(params->rkisp1, full_range_coeff[i],
 				     RKISP1_CIF_ISP_CC_COEFF_0 + i * 4);
@@ -1235,11 +1235,7 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
 	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_HIST_PROP,
 			      rkisp1_hst_params_default_config.mode);
 
-	/* set the  range */
-	if (params->quantization == V4L2_QUANTIZATION_FULL_RANGE)
-		rkisp1_csm_config(params, true);
-	else
-		rkisp1_csm_config(params, false);
+	rkisp1_csm_config(params);
 
 	spin_lock_irq(&params->config_lock);
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
