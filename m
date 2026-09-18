Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99695C982DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 13:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qzzyq0P79zPiz7dUzEskrK5Dft4kefjzEAEYYnDJYak=; b=aFDrhPRkQoIlKJ
	EWiLH88kCC76AQNmLGbyFwBVPRw9dhvT4N+NrT0lx6diJPya10GU1AXmP9LZAABbrm3nbGSyp8VyH
	WjGhiZJwPlT7bBWNN80hMolm1TGd2KKkxPaqMWZBlDHxw6DYlrd0rMgMTHqEhgIYn6s6HGFyTGEUV
	Ye1Yj5FWrJI8uQQFCFvN03ZkHs7O5Z6fQeMDpvi2SwnZNOg3PSe7T86KvY/Cd9kTccDA8SrhuJ7Bf
	lCcX6o+RdRtTmOA4PGF/CHr/5BC/Z+FQknv4LJPt/ufMLHMNOBlfvVmETmeW6QEQJqF3wCZAcfPNW
	yeiz2N3o0XpYzNilWuXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7YHx-0000000ERJP-2XK9;
	Fri, 18 Sep 2026 13:06:01 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7YHv-0000000ERIf-3Jlv
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Sep 2026 13:06:00 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49ccfd61ecaso6882685e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Sep 2026 06:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789736757; x=1790341557; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=xTtOVPmjJhEY4Y5vNG5Ynui/aIBMd7EqZyB7db6fqik=;
        b=cqmQHzbkymjXwvWdRWNv7fXu/4Iw686A2ssMjiRKAx1OjnbpXqDNt7VeUnJdJYFqtR
         ixi0onXey87xLiPMHhj7YbTlXQh0+v/grMkJFzT0gw4zqo7b2uUBIj3JLHcuTA8xSYq5
         j8Tkfmk0mLr79QAo6nZYawctR2TusF4C5Us55iGvWaHPBr9jKEzTVM2WnBiYKF3HW6Tt
         a+25j/MlvH2Cu4ezR0CgcAuFSmn8BwpoBPPoDkkiMfNppwqGdbSYZR5rcZO4xplSLnpa
         L1wBCkB1Wk50Vum4cVufEvahcg/2FlS0tSLel7KeWKvp9DJG9sq9S3RF4qT8Ue6OjHjF
         apGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789736757; x=1790341557;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=xTtOVPmjJhEY4Y5vNG5Ynui/aIBMd7EqZyB7db6fqik=;
        b=RnDOi9SIE/eOmRiVyI9hnrt9yqj3LiHpOJu6ZII7tJmJb7JzDKh5H9DWx5xOXuhRLC
         0hxhzaluqcuMoppTik4J2lpMUOt9H/ulzUF2BNJ6K2Ojcw61rs2J8oNsTARP/Bk2rNf8
         zM7OkLy5WbCkyh7G3LPA5W/iMag1ZvHk1cskuj4mEXekyxKWUC4H82LMJInsFgdtL4qf
         ELfMydKQ4Qdy/Ig23aZ2l8R5mOFCD3AfZ479+cmMDU32++hvvRZrLVKUl7/PvJyUauCA
         Sr5z8WzFFyz6rCNkG0TfunyjYjM0TT6rEfc/kRqYN7LB9lyNcFj7vtXicl9/+kBOep0q
         p1iA==
X-Forwarded-Encrypted: i=1; AKwUvBzfE8lcK+sJUb/9L8a9nO7pV3t5j/2/W5N9KDCjsu4/OcaC7vqhHWp7V4KjriSJAZs19/Kr5b20iYyZTX7WHw==@lists.infradead.org
X-Gm-Message-State: AFuF++ne2qh8dA/TKut+CnqBNDXgyudGvbVMEl+A7MOQ7rYkEzqYQ3Xa
	CDiuho9GTw55wJVKgFab4XQWhdXlz7KLfZbrwbIejxxIjR1gr8f1esiN
X-Gm-Gg: AYBFou3nR3CNIV3CaSKleiz22AHlGVSZndmpIrHgkuIqo9hPW458CMTxDG/IrG5SdIs
	rSgYGTEA5NkGyGmF74q/JuzhXGK+k3ooQ4Tnj+G7xdKmJX4B5aeUdZKJIzNONt7SNplxw8fYBWK
	AHaDGiOayKWwuvyKuCty2mFzjijA+mbGU7VXPjAiVEqOdSBxI1+rG0dzbObh5owbnQ7bKIBTdiD
	+X8RQu+aqChxqrIulAOagdxpeyioCERtGxI3l+e4z1Q1hdj5O7+Q7rR4xksts3sx48vf2ErXitV
	bROTBNA2ZjXwXQqJ2hNUvygOchVhOANsIc4nfjOs2NMzcWxfMC7WldRnhzYJ8DS5VVw5R1wEgfZ
	xrYgV1k3A/bo3LKFflZnFZB1lmKMRsvU68RzQ/a1uEAAc99ONJs12UOqsvS0bAke2j420qQRguJ
	pWbiHEMkRRSbER4yrZaXbDwJ3HDLQLk3M+lweAG9TJpIdKPE+XDIwhYYXS90ZX1wMVTtAc1fgG0
	9H7Y/iVZQgUdhzLwoW9JbTmRl26d+Kho4dqdy5P87ZWMd6V+jNYYJRDMw==
X-Received: by 2002:a05:600c:19c6:b0:49c:f4e1:4c2d with SMTP id 5b1f17b1804b1-49fc5741239mr34035075e9.16.1789736757294;
        Fri, 18 Sep 2026 06:05:57 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fc7ce0050sm64995715e9.4.2026.09.18.06.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 06:05:56 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Fri, 18 Sep 2026 15:05:40 +0200
Subject: [PATCH] media: rockchip: rkcif: convert timeout to
 secs_to_jiffies()
MIME-Version: 1.0
Message-Id: <20260918-rkcif-secs-to-jiffies-v1-1-110f336750b0@gmail.com>
X-B4-Tracking: v=1; b=H4sIACM3rWoC/yXMQQ5EQBBA0atIrVWihR7tKmJBT5UpkyBdiETcX
 c9YvsX/JygFIYU6OSHQLirzFGHSBPynmwZCeUdDnuU2c6bC8PXCqOQV1xlHYY45mt5VnbOFLfk
 FsV0CsRz/b9M+1q0fya+/GVzXDcQtwll5AAAA
X-Change-ID: 20260918-rkcif-secs-to-jiffies-1b98a96465f7
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Michael Riesch <michael.riesch@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789736756; l=1003;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=kPgx4cLfFtyea67NwR3E633DUHHI/gx0j+1j/jnDfgM=;
 b=pggsFLR06h1pcvdC/nqDIW9ExWwe/rpDAtuNuj4ftZ2dnTT7yl+yPfCBCZSNWi7x/a3d2+q9F
 RJ1IywmT/tFAYuO0IGq4I2KX34bi0eW6c7CxgTnUEabgIXNiscn45mw
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_060559_838595_38E0A00E 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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

Use secs_to_jiffies() to simplify the code.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 drivers/media/platform/rockchip/rkcif/rkcif-stream.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
index 3130d420ad55..f82eaf9a37d1 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
@@ -314,7 +314,7 @@ static void rkcif_stream_stop_streaming(struct vb2_queue *queue)
 
 	stream->stopping = true;
 	ret = wait_event_timeout(stream->wq_stopped, !stream->stopping,
-				 msecs_to_jiffies(1000));
+				 secs_to_jiffies(1));
 
 	if (!ret && stream->stop_streaming)
 		stream->stop_streaming(stream);

---
base-commit: 238650ef6c7c7cca08e032527329424c9fbd70e5
change-id: 20260918-rkcif-secs-to-jiffies-1b98a96465f7

Best regards,
--  
Amin Gattout <amin.gattout@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
