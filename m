Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F95C2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:22:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 66791613E9
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:22:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 66791613E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlOzcC9t2F6e7/oZ8fVQIlagUujtNYE7I01DNlV1L3Q=; b=3t7U5RsEfqG63D
	YhiqrGyVgFX5sDrCKC3y/7RaC5nrhpfZeoeu4z1DIaab3dysTZN23EfvJ+c77JqvCZECGpmUnvzNi
	QL3evy0Nxu/U4z94nck32qbQHX+48XL6aa4Zgpia9o8asZdYa0lypnUlLphlQkSQ1r2BsigV8NVBU
	kpWHH84gqhsYAsFCAPz7a454NBvEUlZBafPMS0/C0c/tEhGj4Fm38S+81rJVQ6Yjh+jWhBtaXHnf2
	q7nrRy+hdnQKNRn+wGyK8SuyhxvqdmikRqDCOILCieJQCpI9Y9uxrLg90TG0P9A8XamgrXz3fjKAU
	N6v6rTRPR6TcKu2Lmu/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmcRF-00Fjj9-CY; Fri, 28 May 2021 13:22:09 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmcBt-00FdFL-9O; Fri, 28 May 2021 13:06:23 +0000
Received: by mail-ej1-x632.google.com with SMTP id lz27so5189592ejb.11;
 Fri, 28 May 2021 06:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HCinzeYxY1ACn5rVFsalymDNpiU4s0UULJ02Uf8Q/Xg=;
 b=fZyN+lO4LFqwFoO/0z3KNjFxtMLxQzWT8zoJyQ7UJJup0gRGyBHAsep+UMq5f4nWyc
 0dp/kp10b0V7xAJFvPPLIO1dEti3HqArWKb/SZjPk4YqBwM2hTL6l5Ve5ptRtAng3zQE
 NN6cKmdmx/aOBVkXGJuxBRbsj/VBxffvNjhIhChQSMVXTN978VZqmTDXOqBhn0EOStkZ
 mJb56Mn7hS1E3IwqB22Nn9zm4hH6SAPO5xfaDFcprAnzYYd8unjZ5AWA0HHMukiyM7DZ
 FmBYvtR+wE/lHOm5Iym4enQmYTGcKS4A7Ze4u4IQW1kDyOL/lcndOEV7P2go2GNDIm4W
 /pXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HCinzeYxY1ACn5rVFsalymDNpiU4s0UULJ02Uf8Q/Xg=;
 b=OcD7wczVNQTUi9imR0zn/escQlX17iBkzZ1bqAgDmr/1v+rhAXD6wPdNq7s8WEqoid
 dKpfLbkTN8SemtpAMMV091jpIkXFFy5XaqrIkJyguN0ognD9JdCci/llCGeu/XolRuDN
 33pTBe4Ddm30vytuvXRhVTHCqaVfc8e3J7Zkh0glu6EQfn/yDzbIXOS6jnMGRRamVTRx
 LkDKcBcgwCtvp1JxidyOgHBevqNM391S/QKUn2bzjLwohgGXuS+u1yrMjv55k9xummoN
 /+81FCTkCLh89i7Ih3cZWoCu9UNkz2pzwv1c4wJVjEz7w7FSlMh7/uRtS5n2y9AH83zV
 /3sg==
X-Gm-Message-State: AOAM53385DFBuPhhbBGvyHEGACi7FY323mfrM/4hgjp9fniTYPWP6l0w
 5mebOxHBq6TAaYI6W1nXed0k6datI6x2
X-Google-Smtp-Source: ABdhPJxTQMDcAVUJtuWxOiFDEOTvOyxEsGOfb0YMDTG/HlvUeVbiyINIs4BEhRPMAergrBzosF8RKw==
X-Received: by 2002:a17:907:37b:: with SMTP id
 rs27mr9151356ejb.287.1622207175489; 
 Fri, 28 May 2021 06:06:15 -0700 (PDT)
Received: from localhost.localdomain (ip4d17b4b8.dynamic.kabel-deutschland.de.
 [77.23.180.184])
 by smtp.googlemail.com with ESMTPSA id u21sm2322778ejg.50.2021.05.28.06.06.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 May 2021 06:06:15 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 2/5] drm: rockchip: add missing registers for RK3188
Date: Fri, 28 May 2021 15:05:51 +0200
Message-Id: <20210528130554.72191-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210528130554.72191-1-knaerzche@gmail.com>
References: <20210528130554.72191-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_060617_373150_A0BD6948 
X-CRM114-Status: GOOD (  13.36  )
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

Add dither_up, dsp_lut_en and data_blank registers to enable their
respective functionality for RK3188's VOP.
While at that also fix .dsp_blank register which is (only) set with
BIT24 (same as RK3066)

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

 Changes in v2:
 - drop the not yet upstreamed dsp_data_swap and rephrase the commit
   message according

 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index b046910129fb..2aa6d937a078 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -511,7 +511,10 @@ static const struct vop_common rk3188_common = {
 	.dither_down_sel = VOP_REG(RK3188_DSP_CTRL0, 0x1, 27),
 	.dither_down_en = VOP_REG(RK3188_DSP_CTRL0, 0x1, 11),
 	.dither_down_mode = VOP_REG(RK3188_DSP_CTRL0, 0x1, 10),
-	.dsp_blank = VOP_REG(RK3188_DSP_CTRL1, 0x3, 24),
+	.dsp_blank = VOP_REG(RK3188_DSP_CTRL1, 0x1, 24),
+	.dither_up = VOP_REG(RK3188_DSP_CTRL0, 0x1, 9),
+	.dsp_lut_en = VOP_REG(RK3188_SYS_CTRL, 0x1, 28),
+	.data_blank = VOP_REG(RK3188_DSP_CTRL1, 0x1, 25),
 };
 
 static const struct vop_win_data rk3188_vop_win_data[] = {
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
