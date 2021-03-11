Return-Path: <SRS0=iGaN=IJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56A5C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4645864E31
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4645864E31
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aHgG3BUPAerKGIN5w6u78I9+7Il/92WY/MT+wYnbUxY=; b=b4/3tOuHp0TM/Cz8DcDMskwj1
	P3teEQ7i4EQYUQXFMbxz7QLcA/o5o3qlGOdgGVRa1zU7wSJWoJRLlYxPEf3GfaoApC6zr4Qt4u8Du
	TruFsB3Hxu/yyU1hLj50OojK8Z8GuEt/db9SPX00hLqpbCfkdPImVe5X+bcwFi0rq30W098tQZRb7
	rH9zH/tUGplzynvvnrzXn8Zor2ZLJ8O3zVjCc9NM01yYECcdgbo4aTPEbXpQRB6BofqfsmuTUZ9K0
	wdUeXgmo0++SK+0XTqYYbHDRFGPbxOYbDD+xJa+L+U02xvyvSGx8NE5M1p+YDcRRxw0NPd3BPEJ2C
	GIkQpzkXQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKNR2-009UEY-5J; Thu, 11 Mar 2021 15:41:13 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKNQv-009UC9-EK
 for linux-rockchip@lists.infradead.org; Thu, 11 Mar 2021 15:41:08 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 f22-20020a7bc8d60000b029010c024a1407so13496394wml.2
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Mar 2021 07:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kKmhv2Y0oUyyi/VXeYaxzp9JGOustNOwjC5/Ra6ht2Q=;
 b=qgnAy80K0P4ESBNv8l3gm6xQ52lXJ5JFgOP6sl9KO4Cuha2cLxIireMBCSbdQ7egGf
 mT5mSjE3JbBjRYkVyknxVYZgcm8N+UmsoYuLA+NrBD+LVItCeI1vcQ6HHG0Id6xke8XU
 bTacpY5cbA9wjhzMWmm0/dWCxeJMP6FSn85I3Bwh7TmVnJb90698r31mc31SsmIcbsW5
 MG6QJFPAD2ORQE4+hzQzEV81XkfOWsNjqtxlhNbAtANCPx8vYL8Yttn6jsBQ0Q9FY+Bf
 Kdv67OSQ7lr26cOgy8RhOtwtaSIYeHIvMhQ+wJI7Wm/Ilm/ZB+I+C3YiUKMTMwghOE3z
 RHzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kKmhv2Y0oUyyi/VXeYaxzp9JGOustNOwjC5/Ra6ht2Q=;
 b=XmI6mAfS66EEZSZCOetUfyA+qdp47QYCjpf1kzHxCRbqaUWTJf4N2udGeHv7YpNv+X
 CaL5eajOzaCK6kyy1QWi1OmkMLQ2RNroTxl3Nse4mWdCZeMNL/pSh8erGehBQAUQAoOk
 IxzEmmVfdB0Dc7Dqy1NW9BVcTYkietHNqQFbSYKATCsMG3UFDNVDQupSh12GA+33oVNg
 yRgwtxDbvx+luRweRvqS9D3oz7mjSxgGrfI6h1xbu+f4JYlE8J4KXRnhuNU8Sp2ohTl+
 4bjlPyCb8wf3a3I3Iti46wGuPgsqnO3g5bdOvMlUBt7QiF2IdHicJhn/XtO9EMId8Ork
 uaog==
X-Gm-Message-State: AOAM533nyOZx9eHsGkc9s6zUIpTQuGn2KE3UeYJIbap8/WCJnt023UQf
 PQCElSK/lfW+nfdwx467iZs=
X-Google-Smtp-Source: ABdhPJwgR89QBqoRghUCewrCWayclTBmXDuP7KmBhKWoB55wtpWDGR4+HiegDvgrfhvj7ywLxPIrEw==
X-Received: by 2002:a1c:498b:: with SMTP id w133mr9146215wma.134.1615477264937; 
 Thu, 11 Mar 2021 07:41:04 -0800 (PST)
Received: from arch-x1c3.. ([2a00:5f00:102:0:b16d:9752:8f38:7d6b])
 by smtp.gmail.com with ESMTPSA id a17sm4008547wmj.9.2021.03.11.07.41.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 07:41:04 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v2 02/10] media: hantro: imx: reuse MB_DIM define
Date: Thu, 11 Mar 2021 15:40:47 +0000
Message-Id: <20210311154055.3496076-3-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_154105_670494_16A4233C 
X-CRM114-Status: GOOD (  10.37  )
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
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
