Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3B3CC87FCB
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Aug 2025 06:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QI44i0DrfDWY22voOayktuGK8O8hNK7PPjn7QmK9RQg=; b=XO+KSEMriY9WiD
	WMMY97aNQ5hFh+DimwFWJUwQ9hCjhccmp4ErUOmEAOSA3URdBBUxe2EUSethDFsviJSqkkZ99rSap
	Lm9AJpWdUizE3rS3BZvm2YLo8FL+KJaKjBrmLECjObu3cYB50LpclsdCTvsI3ZsnftfZrsTVrnSQM
	daV9M00M0tKl5xM/LXR1wbxLiwpaR2my5gFYXcanZPmplbVGmPFG7IWkiVvPp4jqlC5Lx09MqsIsB
	FH7N7Yjnx7zGBHB5yqzvD3D/tyEgZT5xHhdeDF/a2n/1YYqqzDO3DfPUAbAg28yrmrJUzrOLrRH2R
	yApGD/29Fe8FhDyM0RKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujB0b-0000000BrzB-0xN7;
	Tue, 05 Aug 2025 06:18:49 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujB0Y-0000000Bryc-1aEF;
	Tue, 05 Aug 2025 06:18:47 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-76bddb92dc1so4704419b3a.0;
        Mon, 04 Aug 2025 23:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754374725; x=1754979525; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fGHZJELToikpWrlEcySa0pC3zkPCl8tzMg7YyI1CbFU=;
        b=Xhfux82iXgtm56sewqpcyhmK/BrxiRzV525n5JPOOcIykNTKtX5QB+iOwf6puZSAUY
         XE56tsYeLhNHIC908LVYN9SVMO5vi5AOIjaQQJDCSUo6cX4zIgEOm63/glpirjWfl/Ct
         wMhCK9meMsWjngFNGh+0lu7NudqUH8W4izwMT+NYFP8QtyTGTiSvyxiwiPvdBVAImRl9
         ovPcNQt54DdaZgxHSWQfw3xrAby/5+Tj9X/iwM/kmqTzqFzid1YE0WrXcM0oFwAsNKkl
         rY5ko3RNNfbub+qEyu/4fhPrft9a64QLX63aggPSYNVDMzgkKCKyjvvoavKXfwQ1hq6w
         4UyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754374726; x=1754979526;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fGHZJELToikpWrlEcySa0pC3zkPCl8tzMg7YyI1CbFU=;
        b=t3Fm2WHklhTpGsqY26zLpmXUtcnjfnG/dQYt1QBla/dY/Yz0NGmpVDh/TvFSw4av1A
         MJ6XOYZDWd6cbN6SutpmkFEsNnKp53/bHzgDtDeilU+0QdwIwOL97JjTBkv6pVpqKfuv
         GMqxJbkxYxQNTKYjPQ2r5PAzkceBFLD25lpxJb8J5oZSgQYtnRfkc0yA+lCMcm7gI73Y
         FYxk2LUeJWyTWwxfCTRWjgcE6qi6Fuf1KGj3D5/P40sAqLnxla/q7WpFUu8Fcv2d25UE
         jmfdfaJZyiofQfvBrhJddWoQot/1ph84kNSBLWkID/VY25P+caClIFzrwfb94dc4/H7B
         2bTg==
X-Forwarded-Encrypted: i=1; AJvYcCVCdA4ZuqL5MTp8xBvfb22GEO1JZm74Mr2kgGxAEwMqwO/7G6i4m6af/+qkUAVk9CeiBDHjvDTqmQJ79g0ktpY=@lists.infradead.org, AJvYcCXUBpGrB5489sK/ZxvmOF+moVBDC4un0aydtKYj5WnctsK2i7Xf2CV2/IfH0zw8USpWqDBAQnLmqpXap9h55Tzq@lists.infradead.org
X-Gm-Message-State: AOJu0YyFgOLhBmiQvCiLlchQgSZdABljFoO7BHB11EhW25vxNL5JL6li
	kpGUeqUrWwuMhBkOfG6nF27Q4BSHvTSBWni+FYBsu54/26Vxp3+amlj3
X-Gm-Gg: ASbGncvPJjjxgaJj8HkJ95vBIMjpJ4dEFqydpdNTX/06oDy/uwXunuOpxvuGSaQymav
	iMyJyy1VFYwPuKElV0fg5TU3TAIRQPOiv+3k2qNCWdi+Y2Lkx5jwzfiQXOsEJsGRY9dpZaBJuTA
	mYWLmCh5J/2849g+t/u+VeHaY6hy5vN9AOBj7gQYV2L8NuOZP/6U++59AZFISFuOOTGtj8X7O23
	L0A0r/sCfzZoSyT8/yOPKw1K1hO5aU44bhD+uS4ccPKWHxl2blOVdxzsdKEYvbfVp/HZYwCi1bf
	wD+JMPnyPCB9ldvPS3y/GK+ibu6Ow3VePKAdT1etAYKewHrO+ynbQlz6VdMVdmRIu6pvJxwyMxx
	GdbIQdlx/GXGA3azDDRsgODaZ
X-Google-Smtp-Source: AGHT+IE8nPyMvHh3pB8DMo8HilMGNFFOAKHrsxWK8FE8utvRKfVlcZipsi1Qi7BgLY3ug6Mpthh3cw==
X-Received: by 2002:a05:6a00:3d47:b0:740:67aa:94ab with SMTP id d2e1a72fcca58-76bebfb33c7mr16586220b3a.0.1754374725467;
        Mon, 04 Aug 2025 23:18:45 -0700 (PDT)
Received: from c45b92c47440.. ([202.120.234.58])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-76be9143a4asm8058029b3a.24.2025.08.04.23.18.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Aug 2025 23:18:45 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: linmq006@gmail.com
Subject: [PATCH] media: rkvdec: Fix incorrect NULL check for iommu_paging_domain_alloc
Date: Tue,  5 Aug 2025 10:18:33 +0400
Message-Id: <20250805061833.3670085-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_231846_431537_A9EA9D06 
X-CRM114-Status: GOOD (  12.59  )
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

iommu_paging_domain_alloc returns error pointers on failure.
Replace the NULL check with IS_ERR to correctly handle error cases
and avoid invalid pointer dereference.

Fixes: ff8c5622f9f7 ("media: rkvdec: Restore iommu addresses on errors")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/media/platform/rockchip/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index d707088ec0dc..1d40e81f44b9 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -1162,7 +1162,7 @@ static int rkvdec_probe(struct platform_device *pdev)
 	if (iommu_get_domain_for_dev(&pdev->dev)) {
 		rkvdec->empty_domain = iommu_paging_domain_alloc(rkvdec->dev);
 
-		if (!rkvdec->empty_domain)
+		if (IS_ERR(rkvdec->empty_domain))
 			dev_warn(rkvdec->dev, "cannot alloc new empty domain\n");
 	}
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
