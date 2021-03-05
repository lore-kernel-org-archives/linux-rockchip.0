Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD367C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 18:40:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7EB3B64EEE
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 18:40:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7EB3B64EEE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kxKdi3SpVaYnYO4pCYCEJgyUHebGbW1Pttf92RC8zss=; b=cHHZ3u9RVYik7EruatBgkHF34
	Eaddn6c5FJeLx7FhVlomEjSS/ejbOc58UFCZJ0XIF24dv24yNzCnbc9JU4vvytC2hdrpkP8w8ceud
	kPHcxMb8tNGZCQ/weAmNHD7I6xKhXNzNvzhvKHGX5mZR3W7izFtwZLlJEZJ6HwKBMoRdYcsO2Ez/X
	wd4xgVFHsmg7LrRcWJh5MK6CoJ/LhTqly6clkoJcYf4u0cmAp7g+ZZqGkpDxOqaWlMiV2PsOFm5pY
	E8v1iyhkvFmjRdnBw6guBNnb55D2+9v50NwajmlGMFvqauJckHAJRPGsasURDW4AAnwgU3LtKfnJZ
	LIXjAEdag==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIFMv-00G0Sq-2V; Fri, 05 Mar 2021 18:40:09 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIFMQ-00G0B7-8k
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 18:40:03 +0000
Received: by mail-ej1-x62c.google.com with SMTP id r17so5339257ejy.13
 for <linux-rockchip@lists.infradead.org>; Fri, 05 Mar 2021 10:39:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aHERaCb1u1sNTTmIBcxgTpCWC+DW/pRIiKz9xPLnHbA=;
 b=FTYBdkvIe0gUlyOUXdCKjyz0cfOOEzyotpGqU4K/vnTzQXLbKkwZUrm8a+0yBpotKV
 MwcBNU6M+09RdiGjGOj3DVHefrM6ZWjxkCvwJy4ONCp5ZDeKZL6s6iBS9xiGP0qMjgPt
 OIb84AAumaTSau//1ZwWkO7/5K9eF7qPCnhXpuLuGSN6xJIEPahEMXWI/iUCV+bvF53B
 2q25CVaRXVwfBOr7pBBtnYGuODJYojX6X5xoyBRBljuqwbpRAqV1/WytVntn04sFH9LY
 7QaclC+h6xbJgCbSXd0Uxc05KGYCo++IHsy7W/SXcIxtynav2gwySEop7rnhKtvK919p
 mmCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aHERaCb1u1sNTTmIBcxgTpCWC+DW/pRIiKz9xPLnHbA=;
 b=ohGkUL1ZBX4mzcKhAg3fqUxG1MJxuv++0WVuFbcV0umazgC6SVA2M9lNR9BCFKwlwe
 32iGrI/zozCindI+RQJ+sGCyfJEXzjcEW37Bx6mRTQnhK+tfW/epdcyv03UZJClKi9Je
 sIjDyaBWr4cJwtxRb3GRsaf2Beyy99X3vQWpKfGDO8gCGEYG9CQG2nb2b3h9xciZYb4H
 d9VyT/IdKNidfUUbGn58S12jJ0e6O3kGEMLnV77TiGDFxct5IjNzTstwl9eqmqrJ2TyN
 Ayk3x/ryhl+85VhLciOjPIjFf2ultapTBeNdtCgnrwBO+rEWiTKPNOd0O+u9SHlTiAaE
 ro3Q==
X-Gm-Message-State: AOAM531j0K3iuszH3bScaH3AVwseCi4oDhmXDMck8aBboJJLIeOmq+y5
 Fp4qZG6AoNqNQSO9nWj4mMA=
X-Google-Smtp-Source: ABdhPJwFcoYQW+23vhO3nVr0t4cUdcT+S+48ptXSA7tC1DlvVT2VavzFhF92Lg4XXmGSijqw0a5Qfg==
X-Received: by 2002:a17:906:1754:: with SMTP id
 d20mr3541915eje.221.1614969577562; 
 Fri, 05 Mar 2021 10:39:37 -0800 (PST)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id o1sm2121808eds.26.2021.03.05.10.39.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 10:39:36 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 2/7] media: hantro: imx: reuse MB_DIM define
Date: Fri,  5 Mar 2021 18:39:19 +0000
Message-Id: <20210305183924.1754026-3-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_183938_513964_3A7E9983 
X-CRM114-Status: GOOD (  10.34  )
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

Cc: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
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
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
