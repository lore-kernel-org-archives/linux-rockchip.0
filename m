Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C773C43334
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 22:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kl/e80M4jXM88GuTr4ubO5tqfibYfEyQ4YGcWf40WRk=; b=Bb8MSyw+hAHFoi
	KtmB0D9qt0fCk8KM8DMfy9Qr5rMO+rOmDu6LSm5zP4gdWCTL6zY1MFcBJdPsHcMnKdP5ncviISQic
	WaGiHtczDEyB2MmSE4sELM+IswG8EMKgKDYbLLCG7nHCagLMZfGFCMMNQVBRbCY+NQzq3biJDjFKy
	ZWdwFUmImpPto1sR7EENdoGuF83GUBbqbnutAQtM9xe4I/m2k/GEFhjRRShd8pfQeanMtJHEZG5Jf
	aUik6U93batEYAZ4AdcLjNrQKZuU9emqABk3juar26TiJ9Fmnb08dEtdEAMRIZ2LW1C04djhbKOvq
	ouYQwKho9Viz25XkX75g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyLZu-0033WN-9g; Mon, 06 Jun 2022 22:52:06 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyLZq-0033Te-QC
	for linux-rockchip@lists.infradead.org; Mon, 06 Jun 2022 22:52:04 +0000
Received: by mail-wr1-x430.google.com with SMTP id d14so12697736wra.10
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jun 2022 15:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Zfe+pXty6RTzLaEKRYWTgvl29MEGKbzeB22SrM+AQs0=;
        b=DKH3w2KV1xkDBggRuQqpD8H75hUn6HQcxLtb6f4OirtcxAAJoWM6sr4dAfGAw9KdEj
         ssHyHai+/rbQnulksUf0hIngR3PwtDdwUfNANiYzDgkrQcNLqG3Jj74q80gh6OHNvCvo
         UkyQ757WdYKuyx6teC4C6NZRHsIfiv6mF8NkvqKNCzOJ6YPpWF9MI/huEvdSbYa7lrFD
         933fxopZlc6DTgubHQIgeZfYm/oejm28vxtjvz/nAudL/VeLV2GsoGUxbWcB196fkTqC
         OYHgL0sh3iezYUdjux2Rglbuz7a1vXCGZUSmzz/wBADjEPM8/72FG8Z4N44pBWF9xQWq
         Xypw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Zfe+pXty6RTzLaEKRYWTgvl29MEGKbzeB22SrM+AQs0=;
        b=qi1PFDu5HyMl6ukNbZ32Y7+Nc/hIPu2AnbkyriyWRZ0oTzDrahaWVn0cN+l8oGJeif
         hlKcnLuLkYSnYq8VNCdIbmW2/0xSnT+q+7B5GCMpdR5UchN/IrKW7cGa7eNc9EZ0e5hh
         GDJuk6U7QPwCbDF9uegVVe5GNhPi6XNEVsJ9rWFJxxuuRgH5xc0nAWMrAs3vy0ladPcg
         07BhIudpoiQEYsdJozLnUlDdMdHcnieqe7eC9wDjdDRlV4Tm62ua8UMWt5/qiITnvYHi
         6LBK+6qxwUPPIN+FkraJ+e8h4fprifi17m8dg8QII/ixkb7IU2yltHRXo+mIEmhEWXi8
         Di6g==
X-Gm-Message-State: AOAM531UnBpni5LPuJvo7ReeBeVDNhQCnOxDqVejdVzpTyV+4VaOY6f1
	goFoV+F4WFV5TNo3uWRoBDcP58t9Nd4=
X-Google-Smtp-Source: ABdhPJxlLHbYVHf0nxaF6yCPrPUUR2FYJs06wVWUrDX1cMVFanyflGD6edEqNtXOx2oUV7mEMBjOHw==
X-Received: by 2002:adf:a3d3:0:b0:213:baff:7654 with SMTP id m19-20020adfa3d3000000b00213baff7654mr19285145wrb.158.1654555918561;
        Mon, 06 Jun 2022 15:51:58 -0700 (PDT)
Received: from localhost.localdomain (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net. [86.13.91.161])
        by smtp.gmail.com with ESMTPSA id l9-20020a7bc349000000b0039746638d6esm18282139wmj.33.2022.06.06.15.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 15:51:58 -0700 (PDT)
From: Daniel Scally <djrscally@gmail.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: dafna@fastmail.com,
	heiko@sntech.de,
	foss+kernel@0leil.net
Subject: [PATCH] media: rkisp1: Don't create data links for non-sensor subdevs
Date: Mon,  6 Jun 2022 23:51:49 +0100
Message-Id: <20220606225149.2941160-1-djrscally@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_155202_875152_2B8DB439 
X-CRM114-Status: GOOD (  10.35  )
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

With the introduction of ancillary links, not all subdevs linked to
the ISP's v4l2_dev necessarily represent sensors / bridges. Check the
function for the subdevs and skip any that represent lens or flash
controllers before creating data links.

Signed-off-by: Daniel Scally <djrscally@gmail.com>
---

This should fix the issues that have been noticed, but perhaps a new flag like
MEDIA_ENT_FL_HAS_SOURCE or something would be a better way to denote subdevs
that need data links?

 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 3f5cfa7eb937..e90f0216cb06 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -134,6 +134,10 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 		    sd == &rkisp1->resizer_devs[RKISP1_SELFPATH].sd)
 			continue;
 
+		if (sd->entity.function == MEDIA_ENT_F_LENS ||
+		    sd->entity.function == MEDIA_ENT_F_FLASH)
+			continue;
+
 		ret = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
 						  MEDIA_PAD_FL_SOURCE);
 		if (ret < 0) {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
