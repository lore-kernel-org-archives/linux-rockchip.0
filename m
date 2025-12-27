Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C53E3E8FDD4
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Dec 2025 08:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nnpsnYlcIwD+/Qq9UapHl19hIxAg96YuwHwbVWxpyhs=; b=KW7rDpltqv9TRj
	tRRZcpQAgMk9952tVRDyq9hM/1W8bEBJio9zga2DtVxqIWTveg80razgeOXF/grInV4QyNXhsa0fE
	46BQMeVJih3gpI7696OSF7gYVujzsWnEQEPjPmx5gStBfj8suqwwYtIJOMYi7st8vZXCJ1E106sRe
	oPT+zh5QOb1pw7GjbXl86KVuae/SUXfvqpxDpPknnWxMpkGMN0XnwE7JhWiyOFQrDf8ZuYIqva/ZI
	KfvGZ05XiXX2MyU8H+e39fZcJaFXj97dXhGV3Vg9jxsalywFfplEKNDUnckve5vlm2Qu8CLC/rvCJ
	cavCsVHDukCKGu2dWzTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZPrD-00000001o2i-2Sq1;
	Sat, 27 Dec 2025 08:41:03 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZPrB-00000001o21-1cgE
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Dec 2025 08:41:02 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5943d20f352so8345461e87.0
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Dec 2025 00:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766824859; x=1767429659; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h1mzLS7EMQ7CMEUjGijkTRd2ui9VJENWahANf3YnZYY=;
        b=eP6b1zJgSwR4BvPIKwbkhBPCkZeFCNsucqvPKj4Q66ETr6sRuh73lf+pRdUeslbQ53
         e8BWgkyZYEOUVX0ikHT8IWIPxLn79FekdbGWlTH3MHgQcUMCui6a19aPDpspiaMvg3QF
         9vd1YmKf5vADU4AUIwjBoNv1odZ53jxTkIO3VdmbK5pBjZ2uuBpJYvUUxDfeI5aqeJ5m
         haBDikLJnAxZo36ygrsnCvGMa6KMt7SaRjyfcYt/mu9GIgMbS1ea8ude6YSt05g1J3CV
         A+ETNFyX+NU3i79XB5/i5qDuRD9hUE/yStjXrDe1i+D6jcG6Lw6KUGiF0sVazItc+/UG
         TZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766824859; x=1767429659;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h1mzLS7EMQ7CMEUjGijkTRd2ui9VJENWahANf3YnZYY=;
        b=E5Kk1Vnf0c7GXchYhGrAWQKeT0rEHEKkJmlCJBERRkjQ3NQu0tXC17y8khI9CDWNq0
         tm7IkboWnIrzhER62IF072HqNuO2dAegdnOftSwsGPs1uGQOXUmsO5inPuV4TLODuenU
         6YSUNOWzytRLi19htOYVnLUdHj+yZuYWuqLAdWYOnRWYkIhgJmLsgCPG0bUhu+WgzZan
         1bt/2EJ0MTiJhpqRnZTqEpAxCIuuC/nkIiG4xi/wXljxox9zsWhhj9hrqZ6cd4Pb21Mc
         NsNAjYOUrZMq2dRPkbxq16cUsqh5+wA5wk+7hs9rRsnnybGZ9Mqo6bEGWJNfP9wpIPVF
         0Bbw==
X-Forwarded-Encrypted: i=1; AJvYcCUjnqfcDSV/ttfU0paemp5lxP7itDIdm4wGMDxA6IqxZBg1Af+nmbj5PD880TvlrQga2/dKjbDmOb0ZGyorgQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz61j/crZD/x4nUx4LwVodNVlobNMOkdXAbGW9v8HLR+tmusHnn
	IciLJmAaRtgxGp/0fsSbrPPoUdhGCq/TGRH0XPD/RIuCQbkXCqEaQKG3
X-Gm-Gg: AY/fxX4X8TgMEhVUJuKAo2+Bblv4DuDDvREPhBt6u9UV461Vn9zzBT+7Bzt0aciF9wu
	jR3QHFBeiM5EU9hXmanRctzCpnQb2wx4UNtzGhdjKv0KcPevA0Ez0+c1QVZVxxrJQCBqgA6EWFG
	BMmdq0iIbsaIFaye5G5WcVl54K6JJq5+c+H2Ko5m/5N7nLQO+Y31Ashi6HRQ70rBZdw6dLapCPo
	yoHcntUCbhidilFUS9wGzII5FmIyG3Y7ilSfIzniKe3K0rSIzkAWaD6IBmELrQiKFLaCtOhx/Je
	Zt3QSh6QLwzatfhgNVOMcQYJcCxHx1XHe9HurHmq8gvLoinKl4oV48Qv33lJwY5kDZek55laLNX
	QR3wBHoNLKe8KZe5dlTaWUqEJ+MRtpuwxK3D/tf1gx/eJveatrlLBiWASk32LdfOxmqMNdtYYlF
	+WobAlgI6aqt3ellZ1MeOx2cRF6uI=
X-Google-Smtp-Source: AGHT+IE1gCiVZ/51w+w16JK8HSkIEZBaavUo8dO1lP3TNd8GAXnf3MFYxs6ktYqH0uvy4VDHnjLsEQ==
X-Received: by 2002:a05:6512:3b9c:b0:594:34ae:1446 with SMTP id 2adb3069b0e04-59a17deb93amr8297083e87.41.1766824858531;
        Sat, 27 Dec 2025 00:40:58 -0800 (PST)
Received: from localhost.localdomain ([176.33.65.121])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861ffffsm7171646e87.81.2025.12.27.00.40.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 00:40:56 -0800 (PST)
From: Alper Ak <alperyasinak1@gmail.com>
To: hverkuil@kernel.org,
	mchehab@kernel.org
Cc: Alper Ak <alperyasinak1@gmail.com>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Tretter <m.tretter@pengutronix.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] media: rockchip: rga: Fix possible ERR_PTR dereference in rga_buf_init()
Date: Sat, 27 Dec 2025 11:40:37 +0300
Message-ID: <20251227084038.28679-1-alperyasinak1@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251227_004101_498932_9BDE6C27 
X-CRM114-Status: GOOD (  10.43  )
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

rga_get_frame() can return ERR_PTR(-EINVAL) when buffer type is
unsupported or invalid. rga_buf_init() does not check the return value
and unconditionally dereferences the pointer when accessing f->size.

Add proper ERR_PTR checking and return the error to prevent
dereferencing an invalid pointer.

Fixes: 6040702ade23 ("media: rockchip: rga: allocate DMA descriptors per buffer")
Signed-off-by: Alper Ak <alperyasinak1@gmail.com>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index 730bdf98565a..bb575873f2b2 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -80,6 +80,9 @@ static int rga_buf_init(struct vb2_buffer *vb)
 	struct rga_frame *f = rga_get_frame(ctx, vb->vb2_queue->type);
 	size_t n_desc = 0;
 
+	if (IS_ERR(f))
+		return PTR_ERR(f);
+
 	n_desc = DIV_ROUND_UP(f->size, PAGE_SIZE);
 
 	rbuf->n_desc = n_desc;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
