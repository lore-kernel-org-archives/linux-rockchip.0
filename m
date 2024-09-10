Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A092EB64DE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 14:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jjDGNHkqB7adC7jUCYDtnxUrd37VYOpQc5VU+QaMcO0=; b=PxFKwj70+/2Lx7
	CMCoUMoRNnU3oiX7c/p5DKt9tuPz1dsWaFX8NocpNJ8iHQL/6PfRKMQGrEMtT335WE4N3YE5cvXtg
	JGFBXO1YlFNqXHdw6ESPE0DKmqmD71Ut1OmJs7v5WK9FwpVZWQYouufBowRfbifhzsDi5Zz0hktlC
	+Mn32LyXaYKpgljW8LnOHn5j2iiI84LYr5BATPYTiTd439iUz4grCJ3YvdVgUNbSnJ5efU8qblOYT
	roTDzkP+ZUnZ1M1iWZoBzHAtMN/fCOBspcFu4tnFdY0GdDukg0qq23U9hTLTRXYfH2/PHztBpSTcd
	KLeGK6ZThGwQ4qlMenUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so1ZQ-00000005olb-0mBC;
	Tue, 10 Sep 2024 14:10:16 +0000
Received: from a7-39.smtp-out.eu-west-1.amazonses.com ([54.240.7.39])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so1ZN-00000005okf-0Faw;
	Tue, 10 Sep 2024 14:10:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1725977409;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Transfer-Encoding;
	bh=Z6iH79IgsccM8IOZRV23HWvG93x+QmrBBT16l/5gsWA=;
	b=fVlZggUzw2ijGcBqwn6vADrylP0/eRVI76LUhJW/JpZvEvUwVKJCzO+dcZz25UtL
	ieeJX+WF9PNxe88iatPPi+18t3DqPExQaY84Z//2wEklFMCPn4JSIbMWjRgJU5BGTj4
	lYUm/yQ+4PaPnN3YAJm1lgBPUSGpWdEUrA5i7Zzrgltq9p3Hz9a8g6LwGQQGeQx4VV8
	SLpxvhNv8d9sdqOMzcascdfIZzEH1nzaKtWvqG7WnOWx9N5wMgKs1FnnhQuZ69UwMmm
	lceS9iAJWlir1Now9ivEOEiS1CJfYVjrl8UrYjVupO9YDm26Iid27iqiyoqwNTFvzLP
	PqZJKE1QoA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1725977409;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=Z6iH79IgsccM8IOZRV23HWvG93x+QmrBBT16l/5gsWA=;
	b=OsvjldKn2qGKdbq8pISK3lGIR9WQ/JA6gBFgH/pVjR3hUquoUzzqGW6uDo9Fa8VQ
	cVA/AUqKJT6R5H2Hty7gHc+v7mb8SASg/hqHmgeAWGhxADq7QxcwzpFniC1C2jkr3Bb
	lY8XDb753k5TTiA1Yn6N5z9CzmUSIL3lONv77dnM=
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, 
	mchehab@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: av1: Fix reference video buffer pointer assignment
Date: Tue, 10 Sep 2024 14:10:09 +0000
Message-ID: <01020191dc45365b-26b103cd-153a-4b74-a663-ed7beecc1713-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.09.10-54.240.7.39
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_071013_302539_5B9A773F 
X-CRM114-Status: UNSURE (   7.65  )
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

Always get new destination buffer for reference frame because nothing
garanty the one set previously is still valid or unused.

Fixes: 727a400686a2 ("media: verisilicon: Add Rockchip AV1 decoder")
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c    | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
index 372dfcd0fcd9..2b9a1047479c 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
@@ -161,8 +161,7 @@ static int rockchip_vpu981_av1_dec_frame_ref(struct hantro_ctx *ctx,
 		av1_dec->frame_refs[i].timestamp = timestamp;
 		av1_dec->frame_refs[i].frame_type = frame->frame_type;
 		av1_dec->frame_refs[i].order_hint = frame->order_hint;
-		if (!av1_dec->frame_refs[i].vb2_ref)
-			av1_dec->frame_refs[i].vb2_ref = hantro_get_dst_buf(ctx);
+		av1_dec->frame_refs[i].vb2_ref = hantro_get_dst_buf(ctx);
 
 		for (j = 0; j < V4L2_AV1_TOTAL_REFS_PER_FRAME; j++)
 			av1_dec->frame_refs[i].order_hints[j] = frame->order_hints[j];
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
