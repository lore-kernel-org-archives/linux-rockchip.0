Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDFE9EB64DA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 14:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8oVk1Hw8t4EwlCjrX9b994tuhyYQuMGNIiQ80beQElY=; b=U2yR9Lp25/C8gZ
	ERVjQtG03SOoQV/HhC7FeEx3+CLwXGVyaedr79Zizo97Mof/ZY81P5Vjp/aJ9tdcAvRxT6wUP9IZG
	rOypbIT1KbNjGoDF/CGiHsHoaWnm6vj9iFgtE3sf4vlgk6AjjIz46zs6mL91gGFxhUcgFDpJuMhx7
	HOLU1mFAH9L8UJAZGJrNeHQ3/mWaXjWe8yq9RQcJ82AtBDWMbKQwQQu21QWxVJomz3+5Tki2Jv35B
	96sh9pAJ/1XR667jsSfU50eMZUZsV8se2mfYmWk5pGdHnRQTjk0YbDht3ZzBhCdBCbKmh6iy4yhT4
	9Fyu6SjZmYEodCJ215WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM8ag-007pfG-2y;
	Wed, 19 Jul 2023 14:55:47 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM8aZ-007pZx-2W
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jul 2023 14:55:43 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99342a599e9so977315466b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Jul 2023 07:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brixit-nl.20221208.gappssmtp.com; s=20221208; t=1689778537; x=1690383337;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bz36UCyZvhK5ImAPfX/8b57agUtYhAfBWMkUTD8b+IQ=;
        b=WQGZyAI7rm3pERIjqORRkLifB2HjLWnL0y7Cytm9LJO+zPgHU9WhLJR9S/Hocn6vRf
         n8hts+SCBfGQLfTZHkhcwkzfNdIMnPeDt8faU1wq2n3vCw+XuMFm1e0whavNQYGqOCie
         dPJwuYzTj1yyDDB+RbsinMmYuEGr+NiO58DlIKRiYXAki3icpT4E5r3SnO55eo+krTvQ
         TL8blYRdXmT1zNz0sbNXlSaulTrMbtBXsCz9yUJ3eF6FHdN2AyY2ihicpKd+As7YsDGO
         lJNgr0BDt9HhwtaF1uJFqhpHYMh8d66Yfm/zsXkrsAUkei3kLmPF76bi9CVz5hFl2MCc
         t9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689778537; x=1690383337;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bz36UCyZvhK5ImAPfX/8b57agUtYhAfBWMkUTD8b+IQ=;
        b=ULp1doakfiYxm8qDSLZMgL89EcJad4K4ePUcaQzUzMyttq+ODuGu+0NEiBzbfhCEG+
         Dh4O5Zga8I8IbEGu4MuoGvQXynBKLT1L8PjuYjgDeq51lHNjLzw0pU8hAGdRSBQv0iO5
         G0avkDF8E1rwdob91gyA7kcTdZ1tLF68/rL1SjVKtyJhCfPiZscFuhYjWAAEeYzAMrkh
         jM8VGGcKMLPlhRanRW06x0gDuZmpl7ELmSWZrPO8tmdqB2UY3U8U51H+7bm87X62OJhD
         TkFe7amiGVpPNptQaCXZJ4tBhdVAVCtLwsBX0FD84IRU6Ejrub4lD5qNpMhqQutEDbfm
         S5sg==
X-Gm-Message-State: ABy/qLb8qEyfkUJst/LKrbLDFaMbd5BeFBp+R9oe/+H1QC8td+2h+x1v
	OauyhxSdADXLGosHAYJY+fXE8w==
X-Google-Smtp-Source: APBJJlGEhZDD5wK6dURkl5u/39BDG2xrhDPhBwSlvx2AFDK4qhGCyr4f/kVymiKRwy3S88vZabea6g==
X-Received: by 2002:a17:906:7386:b0:994:5396:e322 with SMTP id f6-20020a170906738600b009945396e322mr2712499ejl.1.1689778537344;
        Wed, 19 Jul 2023 07:55:37 -0700 (PDT)
Received: from msi.net.brixit.nl (2a00-bba0-120c-9f00-7a8e-8795-650f-7c4e.static6.cust.trined.nl. [2a00:bba0:120c:9f00:7a8e:8795:650f:7c4e])
        by smtp.gmail.com with ESMTPSA id jx26-20020a170906ca5a00b0098d15d170a0sm2397794ejb.202.2023.07.19.07.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 07:55:36 -0700 (PDT)
From: Martijn Braam <martijn@brixit.nl>
To: 
Cc: Martijn Braam <martijn@brixit.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] media: rkisp1: Promote link validation error to dev_err
Date: Wed, 19 Jul 2023 16:55:33 +0200
Message-Id: <20230719145534.9812-1-martijn@brixit.nl>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_075540_303895_3004FAAB 
X-CRM114-Status: GOOD (  11.27  )
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

Show an error when the pipeline cannot start due to an invalid link
instead of hiding it behind the debugging system.

Signed-off-by: Martijn Braam <martijn@brixit.nl>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 8f3cba319762..9361b9086f6b 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1340,7 +1340,7 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 	if (sd_fmt.format.height != cap->pix.fmt.height ||
 	    sd_fmt.format.width != cap->pix.fmt.width ||
 	    sd_fmt.format.code != fmt->mbus) {
-		dev_dbg(cap->rkisp1->dev,
+		dev_err(cap->rkisp1->dev,
 			"link '%s':%u -> '%s':%u not valid: 0x%04x/%ux%u != 0x%04x/%ux%u\n",
 			link->source->entity->name, link->source->index,
 			link->sink->entity->name, link->sink->index,
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
