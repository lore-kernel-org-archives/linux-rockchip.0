Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C1C3C02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 17:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QiTGlxAgZu+SlpFWqlxaIUmr5lPh7Pynzo+M9dm2nOI=; b=f30VpquuQwOlXC
	JxaYsMOY9a+Faz2ScGlzLTbDRB/G2KDjW/fxn1t5fQ7q9LzfhvtOhUOAEl3TXGyVszkhlaxauWLUy
	R9etRPcPHB5XaboDEHhN2VgTZCM2XRWlKjqxbjcgN6GYtrgmIEJwSRuOs466raG4L5l1ErgiQ3gih
	Mz5QfsXpkeI6ygb5q9opYpBd+QeWvOqfS96qnH85aR9wm5n8gM/9otG6mxXrCrD6tpHbqA6FEQgrj
	N8pSXLClXGuM3fIlXQUlKUluFcvbDGv5Ppik5pvgo2T8Q7BHws25x0PI9rMMfK2NoX4EMR5UPfW4C
	ZO4Jdj4acUzfzYhYYgAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY7Ba-0000000Caxo-0bcy;
	Wed, 15 Jan 2025 17:28:10 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY795-0000000CaRt-2CQi;
	Wed, 15 Jan 2025 17:25:36 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-540218726d5so22758e87.2;
        Wed, 15 Jan 2025 09:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736961934; x=1737566734; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UOk1tpd1Scx8u9ygptTnBU+QUAeBmZsMjmcHaDde8t4=;
        b=bUxnZUY2KcimZNt48XSnevZ+N86CP0devFppYwffoyEIEZOQBnDLk2MeX5c10E3cRu
         llH+DP6IsfBSDhEovvtHBPcaqZm8bqvu7EwTuo1D2D0uDvUAwePMbOqkelxFulkr7pXy
         5CQ0L+TsvTYF2aV6wZRw2ASRYM9JSG2nCUMcLDfotOM8OtwhoK2At1Y/TghM3i1aVLV/
         9CzZydlYQF3nt7I8B0WVMxTCkFjZbTPXlqgIaoNTByQ3Vs5y51CvJQXGRrIE0h4yeUNF
         F4n9cf97AAR2VpKLZkpQtEJ+okBUG4DLATBwPoroMT8/w/Xjd/fg/NPUsiGVjBihb8Bd
         bhKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736961934; x=1737566734;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UOk1tpd1Scx8u9ygptTnBU+QUAeBmZsMjmcHaDde8t4=;
        b=xRzb/BIWv6ggwlsMONzP1wsS5REMEtVp7H871ud+T1T4V0kqXkk0cGJjggZMmbKuL8
         dWUz2lBfri4y95RtghFuxYxnHyI6oaD8j4N2Vx62d2UdJtybe9MKDHlDaPVp7c/tlAQJ
         xPKXCWptMNiuzo/t+URxcAtWwiu7Hcoex/3vnBYmh6mSsCvCx9hJct5ppatvx1/rG6JJ
         pSbwjA4pgFhIPHlX7EvqG8nEZd4W++chxUah6R4/H9+v1CTNHetQhe5ezQvWoZh356Nn
         ExPkTN2tTWYSqePmeEveJAGhjqVlAchme85ba467WKhqwzIyih1wz62CUFJ4/2fmAMMm
         NQCw==
X-Forwarded-Encrypted: i=1; AJvYcCUVbZqwQfHSdTDiz4fX07IjhAKN0/tRi+i7nOdeTsPuEmjIn71uJByNmoTEjEPsYc+a1IhOdD9mfPuhr1mxoDY=@lists.infradead.org, AJvYcCVtO/36U+ASsTV3gQevMI89G7w1QGu9TQ6g45fYSDxFAH/9r+ePAABa3mUPRGxVhIC/DtWGFZ+uEbwX2MoR8hl/@lists.infradead.org
X-Gm-Message-State: AOJu0YwslDF54P7scWBYKuNRdmtmUjOoWXBeL9aFLDK13rJbbRmJHthx
	n/VisbdctSxehLgYzTTVgLX4MLt3jDgdd97Gl1EloiHQWnbj9Fay
X-Gm-Gg: ASbGncuP1sD5g09Z1f6wxGVIk1V+Cq/pMb5OyEleAraBDeBNi/q1ZuokqCJgPvDxxgP
	DHQWutnJ/FVS/qQyUnmg0AHYmHGcYCZTFo2Er508yQA3uMh7SZV7jwRmdnXJ8bTgIpYr8XdmQjg
	Tb7qzhGHwG4xkWwDN7BTG5L8sTcutIR0Z99KrPciuEpvFi9l5KooObmQ7CkLq3cmzmYm/WjiV2G
	HaefcSgkpauas4QYwsakAjGLM2yEk6/ZdcMt/kRgTzhtY87AXIa3Uqbzhn8MiupKpy8X2tndsGz
	+tsC6qdfpHS7QctTZt3q0NPjxLl7vyAUj1YJJClzXWaj1icbLo9A
X-Google-Smtp-Source: AGHT+IFFOoCcSAzA0wB433xlaBd40KuCCYr+BuGWAMVyMEtJFz3DrRjgISJriqbitaXGlv5UNa4Zlw==
X-Received: by 2002:a05:6512:138d:b0:540:23dd:2139 with SMTP id 2adb3069b0e04-542845d322dmr7884243e87.29.1736961933312;
        Wed, 15 Jan 2025 09:25:33 -0800 (PST)
Received: from razdolb.local (static.248.157.217.95.clients.your-server.de. [95.217.157.248])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea6778sm2105360e87.131.2025.01.15.09.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 09:25:32 -0800 (PST)
From: Mikhail Rudenko <mike.rudenko@gmail.com>
Date: Wed, 15 Jan 2025 20:25:06 +0300
Subject: [PATCH v2 2/2] media: rkisp1: Allow non-coherent video capture
 buffers
MIME-Version: 1.0
Message-Id: <20250115-b4-rkisp-noncoherent-v2-2-0853e1a24012@gmail.com>
References: <20250115-b4-rkisp-noncoherent-v2-0-0853e1a24012@gmail.com>
In-Reply-To: <20250115-b4-rkisp-noncoherent-v2-0-0853e1a24012@gmail.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Tomasz Figa <tfiga@chromium.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
 Mikhail Rudenko <mike.rudenko@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_092535_611851_2BE9FF45 
X-CRM114-Status: GOOD (  10.64  )
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

Currently, the rkisp1 driver always uses coherent DMA allocations for
video capture buffers. However, on some platforms, using non-coherent
buffers can improve performance, especially when CPU processing of
MMAP'ed video buffers is required.

For example, on the Rockchip RK3399 running at maximum CPU frequency,
the time to memcpy a frame from a 1280x720 XRGB32 MMAP'ed buffer to a
malloc'ed userspace buffer decreases from 7.7 ms to 1.1 ms when using
non-coherent DMA allocation. When doing cache management with
DMA_BUF_IOCTL_SYNC, DMA_BUF_SYNC_START and DMA_BUF_SYNC_END operations
take around 270 us each.

This change allows userspace to request the allocation of non-coherent
buffers. Note that the behavior for existing users will remain unchanged
unless they explicitly set the V4L2_MEMORY_FLAG_NON_COHERENT flag when
allocating buffers.

Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 6dcefd144d5abe358323e37ac6133c6134ac636e..c94f7d1d73a92646457a27da20726ec6f92e7717 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1563,6 +1563,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
 	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 	q->lock = &node->vlock;
 	q->dev = cap->rkisp1->dev;
+	q->allow_cache_hints = 1;
 	ret = vb2_queue_init(q);
 	if (ret) {
 		dev_err(cap->rkisp1->dev,

-- 
2.47.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
