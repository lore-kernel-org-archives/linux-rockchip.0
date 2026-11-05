Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C70606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 08:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=x1vLD8s0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=0H8HGV3+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=vrj4/JFwtt+M2jIGBYFDWhrTSHoG5K/K5IeUadz6ZKs=; b=x1vLD8s0nSUoTNV+KUb6K2HoWT
	SIpjzN1UMX+IKhrY1j+JcMtn5e/JvHzGZ5Nw39bNUiKhgh4dvnUrkahfO9cGaVLHC86UWaztfB6g9
	fAoLDi34L5iMcFZqhpHap7MHQjOARsP7D/KQZdN6Gjr+/Xz0+GdZW3PGpi1K5CeGcN96K9QEJu144
	C0J8lVtrm+yYoO70eNV0d/PyoCXySG/AlXgmidryHnLEC7UURTWSsfiZtMXU+2fEnVsRbllUFiv0H
	n/++7FhxSX+vMDVlhFe1IqYE6iW225AfSVUgAhPv5CqfJKENiDvzOpjVf3+gbUj/kF1bfX6OMtoyB
	nrG9XqTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOt68-00000008Bl4-1bQj;
	Thu, 05 Nov 2026 08:45:28 +0000
Received: from mail-dy1-x132b.google.com ([2607:f8b0:4864:20::132b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOt65-00000008BkL-3O5n
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 08:45:27 +0000
Received: by mail-dy1-x132b.google.com with SMTP id 5a478bee46e88-33bf40b0c8bso4371464eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 00:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793868325; x=1794473125; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=pDxvxLItiSCdu3fsI80x3ws6o0fFDQAmdzilH9mdUKE=;
        b=0H8HGV3+54SRL0QpwqwXt2FB1wQh6ipZCg9Y/nxO3vNgc7je1yUialVzJatPBQtXw/
         55hz44XIISdFm+I0Ks8NeZ9S1OKUMoXPKZ8eh+XEc4Krk3QkCxN7vGayda6+H+bNjJqh
         afVjcMpDd72uPFwZr6HCbda9nZ8Mf8+5bPerAQIoTau1gZqYkef38K+SG4bdXQluviP+
         O1T70Ll6uaHzR7Nht9eYlJKjwtbRQi7E0Ws7LSGF9lX50VW3BNz7/yOR8uJIuG1oEJJN
         IpnHNR4ClizhXsopkCB/rzrShi8vhYlkcUyOtXGJO2nX+jzxrubXdt0aP6KtxgW2iG05
         VAjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793868325; x=1794473125;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pDxvxLItiSCdu3fsI80x3ws6o0fFDQAmdzilH9mdUKE=;
        b=WwMjO+xph+2voRY4we/Vmg8eY7bGWCKEm84zSjk75DtkAjQbt9gqyulrZaSHXjImhk
         syFZ/949rKH8WWOjXd4QgO1Vx1M/FcNnFJxnqHPCwPw6Ff6pCv6+Xt5JXxZTM3+c0cj2
         Gq/bX61hWYnl2Nu84JnpDz1wHvmPsMPH/7l/aM6WIU6rccHyON359QuduQC3fsBOauQ9
         zfNuFyGQgTUJK2NeEdNAMmuOgk0RpTmrqLVIz1ZafdJpCsOPZlResT5xY091PkdKNX9k
         tO+54tN1FBLiEDvKYpqFoL2XtJ9jxt2nk8/1YmNLHGoRF+IfLqeLr46yqyuFX9jYSNUu
         Uenw==
X-Forwarded-Encrypted: i=1; AKwUvBzjF6F5LxmKcJLimNeKUqeaDWwcC9lrh3ukklrsiOhHYGLNR9wEYUC3CElU58+1gg6ExJKsl9QCFf351PVCFQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z/abWqy9gbKyirE81nbyZ//xPpJh15b4QTe9okxS9/MF8/ugytz
	oFpZoIKNkDozJwsyifb/6rc19EQRQWalWXgzj3xiyyNyTRjfw5Q828XD
X-Gm-Gg: AYBFou398Sd9sQbeUANNSzaSupEBKEXwAPkH2R4ZRz3hQuHXbAKT12O0FYZJgIjE6Vl
	WiT/Og4ecBPb/+UmiMXpIfX9ZjE0YnIZQcooq2fekXZXxDK9qbI0DVBI0qREV4QuUx5DwUBvU5P
	+M1D7iI6je94jLtFFCnFu3hjpWb5p7e/JFVsfiUhaZE7s9O0kPodxnARJgBwPJCEaO6kSMeZg84
	hxt+iFwun992HwmUYehML/DHLY4e6OFx2pdfuYLI+Ie3tdNN7sDhKSEeLRdKwMAPLxwMjkmLmVF
	o3vNdQ3XOgJg7dINkp+t2LpdU7DeB09lyBsE0i0rnhi4tGy5bPKGa2PNQARgN6EvQThaDp2buPY
	gte4seWylipRAt1TdSCt/JXsTz/PDFvHsz1NKU1cUEnbwStI7WCNc4l54WJxo0OGNxL24WgnQ2h
	p+Tta+Wp39ZkdgrW+idnJqpZ8mfA0uSAmeT7Bezr+ibPjuA8ztTyN3F25By9WPsWU58ZFb0FR5o
	drS2/3xLRGDoX0uV3WsVfyZnxQ95mb2G5ndkb1RhmwPNQ8lXBDhrHvDcyanSENXNR7A0PS0UwsL
	Q3XnuBe9rE3k3nFszSSOq50Rbnr5jly6jd5ZZ+yb4zmVtNZidf04GpzMZQ==
X-Received: by 2002:a05:693c:6393:20b0:369:f291:49da with SMTP id 5a478bee46e88-36a4243f71emr27802086eec.40.1793868324397;
        Thu, 05 Nov 2026 00:45:24 -0800 (PST)
Received: from homik.search.charter.net ([2603:8002:ad40:56f0:ea48:d21a:2ee:9ca2])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36ca3788bffsm14468573eec.1.2026.11.05.00.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 00:45:23 -0800 (PST)
From: Mariia Nikitash <nikitash.mariiaw@gmail.com>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	kees@kernel.org,
	justinstitt@google.com,
	morbo@google.com,
	Mariia Nikitash <nikitash.mariiaw@gmail.com>
Subject: [PATCH] media: verisilicon: Replace strlcat() with seq_buf
Date: Thu,  5 Nov 2026 00:45:18 -0800
Message-ID: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_004525_846103_75AF8819 
X-CRM114-Status: GOOD (  10.02  )
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

In preparation for removing the deprecated strlcat() API[1], replace
the strscpy() and strlcat() calls with seq_buf operations when
constructing Hantro video device names.

This preserves the resulting strings, including truncation
when the compatible string and suffix exceed the destination
buffer's capacity.

Link: https://github.com/KSPP/linux/issues/370 [1]
Signed-off-by: Mariia Nikitash <nikitash.mariiaw@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 26e5d5547466..2bfcd45cc55e 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -17,6 +17,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm.h>
 #include <linux/pm_runtime.h>
+#include <linux/seq_buf.h>
 #include <linux/slab.h>
 #include <linux/videodev2.h>
 #include <linux/workqueue.h>
@@ -883,6 +884,7 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
 	const struct of_device_id *match;
 	struct hantro_func *func;
 	struct video_device *vfd;
+	struct seq_buf s;
 	int ret;
 
 	match = of_match_node(of_hantro_match, vpu->dev->of_node);
@@ -902,9 +904,12 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
 	vfd->vfl_dir = VFL_DIR_M2M;
 	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M_MPLANE;
 	vfd->ioctl_ops = &hantro_ioctl_ops;
-	strscpy(vfd->name, match->compatible, sizeof(vfd->name));
-	strlcat(vfd->name, funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ?
-		"-enc" : "-dec", sizeof(vfd->name));
+
+	seq_buf_init(&s, vfd->name, sizeof(vfd->name));
+	seq_buf_puts(&s, match->compatible);
+	seq_buf_puts(&s, funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ?
+			"-enc" : "-dec");
+	seq_buf_terminate(&s);
 
 	if (funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
 		vpu->encoder = func;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
