Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636DC606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 03:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GATVe9kF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=rxxf3v7j
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=h6yEt9/Kx4s5Ddt9n2GvOk1evcAjPc5rQclL2fXA/Do=; b=GATVe9kFtu3WfYM1lHZxsrf8eW
	3eUoJzs+6svR0zUy/JxbeZ1g3qNCthVfhZZ9RhrwQNhHS9qDUiRcxwd6QmmZ6Ra6naQh5zhqT8RoQ
	BCKMKZYDcYZHlulasbFAVoEKvZzZu4AHu5HKGK5cJ7AhNmmqPKvXL/lo+Cww6J6f+Aa4mbVkG9pQO
	zhYwih97CqwTLrnjY7q9OAmxlfuFamkkSlh1zBQvY9L/A9HJpMK7/FjOKV11+sm56mLn/iP94mmtg
	LmVTy8ieIzpEOOT0+KqxLg+GGQy9ZRiBktPQcFJ2cuwLagqFl0YyzM2L0eJImmUVykFn07aKpfmqq
	HLoDAWuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQyzL-00000005Y8Q-0cTI;
	Wed, 11 Nov 2026 03:27:07 +0000
Received: from mail-dy1-x1335.google.com ([2607:f8b0:4864:20::1335])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQyzH-00000005Y7l-1zXg
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 03:27:05 +0000
Received: by mail-dy1-x1335.google.com with SMTP id 5a478bee46e88-37071c0f42aso4792622eec.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 19:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794367622; x=1794972422; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QP9+Ctp3NviXfDVXP2gE2ILUUDfgBim84aqNH/sgLwY=;
        b=rxxf3v7jQG14xuMVJiKA24A2WK8hhppzNYcHs8xT95ckAqTxDPFFxJ0i/67H896qrF
         YV6AFDNsfAHZPExfy9BANUvvCveZzXB+a+vL2M5Ixt1yohPUoUTBNKJE6n90aLXI/etA
         m4btNKylZNJgDNkeRgA9JnKJjc0NCq+cEIzxIphOsqwZju/PtD+sG3HE0T2lIXT30Cow
         qxa0K/228P3oQjKufQIst4kN+Y2Up+rLEBE6wRdmQFsxRkc9w5qw0qZooV5bDJF2zA9I
         iPofS3cIE+3TqDJuTC+vq9uTgqPnuSShxyA8blVUe8WmvCxoJy+/l3VxpBIUDy1/0PkO
         2sBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794367622; x=1794972422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=QP9+Ctp3NviXfDVXP2gE2ILUUDfgBim84aqNH/sgLwY=;
        b=OShwSN2YvUNPAwGSf150/1lpD77MiNS0xHvAzSSPWXGxumDjvzuvaQ+fndMbMmRaUq
         gMCd+PtTk6+mOS7MXzCq6KLxTEg8/v/+aBiEqCp1jIsGLqCQ7jI2+hJXw5N8V9i1fzwk
         Jq8mgMFdCr+Fn810vjV1G0HTRDroliCk9RSEDfGi/IIsXDzXfMZetLf/YjOS5nhcXXM6
         u+/KdpjUXIzqh5DJy+XeRqbwn+h0R+GB4TC2rdUNvKQEjtSYT1SFkMdWEcQOLwz5e7YI
         Bz3P19sSum6c+vxiZBbsitcIB4OfjjO2rr6M+47uL7B0xPUAa5wuihwq6/05T0Ph8h6f
         bT/w==
X-Forwarded-Encrypted: i=1; AL+hErFrB5Jg1mnHeC6U5HR3G8qJEdXagTcS50W+a7gSVdEq+vNskeFbYqxoicehLXdo/faXwcX97n8E94PjmBLeeQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z9Ov5OCR3H6fObLFlKhlTpLGsvNzaPXcvXi2zWCdx0J/rk6+/3p
	gCysr425CAaLK/HEM26Bpx3ohzPO/dDrbLgW+x5SeyLwzEw8nQ1PI9oH
X-Gm-Gg: AYBFou1+tptjj14rFkQhojtO6HPuyCRsK1qEfgdex1T9ee0gXEK3lSmcptlIr8LfVdH
	OpZzyKWLmLbEIGWRKMu+HeZ/KNbNKV0n4p1noJhZiI5RpL4kkL63brBpWUL7mlBf1gMdrcq1Bke
	xWQx4b5jmOCikluY27TZh1pnm57L1Wumb2jqZUxRfOzMRYexZr06cYhj0B7tRepT+NplS4561Ff
	EfQbfCO6gh7w8bAOOB+uwHWF9jp+QMtaqXIem568DXZjUOj/PgO3GklE8W5OcfYOlOgnyg5tS/K
	+DwWNvhwQiHQT1Y+bJRlvJXjRSDAhFJdWWOdnnOXtVlHwMk3UJUsawhms6wn49qtoKKoOwZnai2
	SOruUedva+rbczq6OHGaOJXwEg1AuDBnQR1y4oS5iC65HaXjwSn2AhvyytC9er86Nis8MUVFTNF
	We3GnY7sR6RzzzLw0QJ0jaNJlAoOXu3Eobjnmc4oCE0Z1BXu/AZkhgRafp9ZG5d/NzLnD5H1ocg
	cO/XewXXInovtPoxd6LqbKcsIUdCTwQzpNp4HpoU1WQu36PGx9LqbV7gecPjGby+hV4Sqk/Q/jY
	3G2dMebi20vj1i9aY9olRmGN0P9dSyYPnJAa9+7iMbWZSmrcfSj6xWKd3dys
X-Received: by 2002:a05:7300:51c3:b0:36e:d060:8bad with SMTP id 5a478bee46e88-3768385dc4fmr1982303eec.5.1794367622326;
        Tue, 10 Nov 2026 19:27:02 -0800 (PST)
Received: from homik.search.charter.net ([2603:8002:ad40:56f0:521b:36dc:be93:10f2])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-37520512ec1sm10567569eec.12.2026.11.10.19.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 19:27:01 -0800 (PST)
From: Mariia Nikitash <nikitash.mariiaw@gmail.com>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org,
	hverkuil+cisco@kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	kees@kernel.org,
	justinstitt@google.com,
	morbo@google.com,
	david.laight.linux@gmail.com,
	Mariia Nikitash <nikitash.mariiaw@gmail.com>
Subject: [PATCH v2] media: verisilicon: Replace strlcat() with scnprintf()
Date: Tue, 10 Nov 2026 19:24:46 -0800
Message-ID: <20261111032446.29803-1-nikitash.mariiaw@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
References: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_192703_540652_8414348F 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

In preparation for removing the deprecated strlcat() API [1], replace the
strscpy() and strlcat() calls in hantro_add_func() with a single
scnprintf() call.

This preserves the resulting string, including NUL termination
and truncation behavior.

Link: https://github.com/KSPP/linux/issues/370 [1]
Signed-off-by: Mariia Nikitash <nikitash.mariiaw@gmail.com>
---
Changes in v2:
- Replace seq_buf with a single scnprintf() call, as suggested
  by Hans Verkuil.

 drivers/media/platform/verisilicon/hantro_drv.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 26e5d5547466..d8854ceb4fed 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -902,9 +902,8 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
 	vfd->vfl_dir = VFL_DIR_M2M;
 	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M_MPLANE;
 	vfd->ioctl_ops = &hantro_ioctl_ops;
-	strscpy(vfd->name, match->compatible, sizeof(vfd->name));
-	strlcat(vfd->name, funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ?
-		"-enc" : "-dec", sizeof(vfd->name));
+	scnprintf(vfd->name, sizeof(vfd->name), "%s%s", match->compatible,
+		  funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ? "-enc" : "-dec");
 
 	if (funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
 		vpu->encoder = func;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
