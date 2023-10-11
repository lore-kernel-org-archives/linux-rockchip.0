Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FEAECD98F9
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 08:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MqWyA09r4zc7T7Wmmbpkg8EQpHjNm+YqmDJ++SDZkjw=; b=UKC5Qfhk/og03P
	d27fwXKLkQz4UBsHaSPDqQlyapuTyN1+XIEBkaj33ZSI61+nk7f0adTGvzFLjBE5S0jqlLnVqeNxB
	WLIbVMYmMhlhiPmcAQEsvFiLAifH6rAawRw7tV64tKbXQEymEzPKMWlcBLFpdtivs7NFgAnI+oVta
	0BpObl/ZgQdlHxoqmn8vfE9ITgBFgMjBk9A6PH6SQIMUIrZ8nSOER/lTinYWPZnG08zjQGymAhtfC
	wDn036cqPQwJZ2kXAVfIwfaxOtDIL1/Z7YIy3lei0W5w8Cftp8gLF8frpoWuqwt/FJG8cmysd+CDr
	UWbO/YX+d4W/pCUhbhfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqUAI-00FBO7-1C;
	Wed, 11 Oct 2023 08:01:58 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqUAG-00FBMV-01
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Oct 2023 08:01:57 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3226cc3e324so6358070f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Oct 2023 01:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697011312; x=1697616112; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YZT/8mXHXiKgkNO5lwynSIruokO6XSAvA489Hqpy4Bo=;
        b=ZD9Ic02o+KApf5yJD3eHKHyPa9/BdfIkULH3ozINmtpYiv8csAZymywh74gINsfIYQ
         JgWo8snWp0XMLZMt+FubsTh6oPrK1w1mQLWjJ2siYaNHQqqi4TxqmINRGsDTHHafn9aR
         BW8itgUcpi9iHX33wO3lXugx1wUF5P8tBEjzYcR777EVU7uMT6Kh5b7e0mkgnS8NfmE9
         P+LxfAyGjhiArNRwI+hEdVCb4CawoMvZ5T/CMFwLthYNmLSqG36LKL0MzB4zvis4bx6E
         Zj1+90DupBQkuxOr2ecAfBFTDGdbBEpqj0ev7s283n5RuALbbNeh0cvP/tWWWVQJk4QU
         eUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697011312; x=1697616112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YZT/8mXHXiKgkNO5lwynSIruokO6XSAvA489Hqpy4Bo=;
        b=DdMZfpU4kts4bB9p/cJ7R7LFa2rTfbCFodB3RSzEPMlQR3qT8tHhLo9pztf349ZTYw
         8YDROCzJMLbkC7lNViDl5eNgl5xzDQ47aMML8ZQlroccVpLg5exRFEASq91/nQIc2dav
         WeT3dC3cRmL+HKTKEbC9NF3nx030+xkBH9atMfq+LycE5qZ1LCA8w6JAL5WljtKOXUmm
         WTiQyLxBxK/vs23UFcWDCi+jJ8cunfhe4TxHMvzhJYSGa32zFwfbGbgp7gEcpdYXXcUW
         96TwGN8/mLje5sCiSdKD4p3mk1He8aIpgJgYE90ot+3Ry/CRyxkHCctVyNQQ5Gj+pEs8
         q9Gw==
X-Gm-Message-State: AOJu0YyaZ4M35+ZNEdM7KTRYFXhlbI/HgZJkvpjTZ/P4I/LciWL2h6fH
	djjgrYX0dV2ntWbiY5irKvpQlA==
X-Google-Smtp-Source: AGHT+IHlYGaipThrXKIKMr2CcQW1kf8ZvYk9AY5BdTWtgsZ4chvat2yBykWEZU5sAaKVW2Tsl/EQeQ==
X-Received: by 2002:a5d:5911:0:b0:324:e284:fab8 with SMTP id v17-20020a5d5911000000b00324e284fab8mr19093365wrd.39.1697011312630;
        Wed, 11 Oct 2023 01:01:52 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id n6-20020adffe06000000b003140f47224csm14690117wrr.15.2023.10.11.01.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 01:01:52 -0700 (PDT)
Date: Wed, 11 Oct 2023 11:01:48 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Tomasz Figa <tfiga@chromium.org>
Cc: Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Shunqian Zheng <zhengsq@rock-chips.com>,
	rjan Eide <orjan.eide@arm.com>, Mark Yao <markyao0591@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org
Subject: [PATCH] drm/rockchip: Fix type promotion bug in
 rockchip_gem_iommu_map()
Message-ID: <2bfa28b5-145d-4b9e-a18a-98819dd686ce@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_010156_058301_C6C38613 
X-CRM114-Status: GOOD (  13.30  )
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

The "ret" variable is declared as ssize_t and it can hold negative error
codes but the "rk_obj->base.size" variable is type size_t.  This means
that when we compare them, they are both type promoted to size_t and the
negative error code becomes a high unsigned value and is treated as
success.  Add a cast to fix this.

Fixes: 38f993b7c59e ("drm/rockchip: Do not use DMA mapping API if attached to IOMMU domain")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index b8f8b45ebf59..93ed841f5dce 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -40,7 +40,7 @@ static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
 
 	ret = iommu_map_sgtable(private->domain, rk_obj->dma_addr, rk_obj->sgt,
 				prot);
-	if (ret < rk_obj->base.size) {
+	if (ret < (ssize_t)rk_obj->base.size) {
 		DRM_ERROR("failed to map buffer: size=%zd request_size=%zd\n",
 			  ret, rk_obj->base.size);
 		ret = -ENOMEM;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
