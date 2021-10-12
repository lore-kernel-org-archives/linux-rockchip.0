Return-Path: <SRS0=t7eY=PA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D94C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 22:12:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1199D60E09
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 22:12:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1199D60E09
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0n6qWnIeOryqtyCt0RKKjCbt7RS9kuMPbuZg7x+0Aj4=; b=mfNT6LD7wLckjJ
	wJoytLsJ6azn2mKldIwBPmIEmVsfUIyp/FFnHiFQ+jhJvEflQoT0FfEUu0Lek8sKJ4HaTDMjFgCLF
	xoLJdyMhVa1MHMMs5MThw7Cs1o6GaWwVWtg6Z2ngUXXTCkUVjandQgy/3mLEnkSPJ1Cwf1Jjz6wOi
	kua+694yE6ztuuT7IwfryXUU9HupwEBMNhd0KDdkLkmg9h+ffsogXGgXiXS8Hzi8oW6DHUFwXc1/H
	h+g1uUJDZVdtgfRGTwDKHCFZ8L+ngMbqIKD8Y9k7z3Z0vtFwT0kr6fZHi/527N084yRFzcNpI4IYF
	chm3sJpancZyjhMdOlMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maQ04-00E5LC-NJ; Tue, 12 Oct 2021 22:11:56 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maQ02-00E5K9-F3
 for linux-rockchip@lists.infradead.org; Tue, 12 Oct 2021 22:11:55 +0000
Received: by mail-lf1-x12d.google.com with SMTP id z11so2948124lfj.4
 for <linux-rockchip@lists.infradead.org>; Tue, 12 Oct 2021 15:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PB0eDMKhk86i0GI1+A0jAKhTWNFDGyw5uusrHp5qJ1o=;
 b=S1OiTP1dWe72LOR+oSOBC80jt1H1zlBIVX4x6c0VO9fYYYYlJV9jIoBJcmiir1CgZa
 n/UUUUjfYZoqNE0vw4ZzgPB03GAJ/j3ffCDPLwoImscEzNeP1RHSPBBEzZPgSdiGdqte
 3t0C6qwdCyPPsdinRhIx5a2du9iE4zGl3E4Xfo95x6xJsFA+w+0t3ocBUBxxYcBfdP7V
 XSKTRGeldYrhJ66ILf7kPHtvZOAgZAXqCn6r0T04NxuMnKbeDnqo9wj9Dy31ydqxc1k2
 qSTFz71PGVYfV0nBypO0UDPSUH69CV6KxE2YRgrwtk9TZZUxfOgq2cZcJ80d6UdaEaPa
 Fg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PB0eDMKhk86i0GI1+A0jAKhTWNFDGyw5uusrHp5qJ1o=;
 b=p9nhQEHCNjbQNpHWPd5P0jPJy7bgjzpYbORzRyw4qRR912OKejRnMUjXrHFAbS8Y6l
 OtHJUYzLSWd/4tmUuGRk5cls9kb1dKemo5beY4X6ApQ9Bly27kJCkMsZmjaN9UCdt1tS
 zsvTonfcoeV2bLtMGGpKnioRRgJH+gN/scYJVkhex4Cj8paoHG4cTYxP7oJ9DF/NEbqp
 sPAJBTTjEkZVQYfzvZ77BE1yNjtDmUsnEk3ZGKmuCJFNl+uep4NlIqvb4YN3mrVFclnd
 p1v+lE3a1ZiOX7o7ONTD0cjSeD9s03GZRU2bf8v9YGOx8IMVbx58KVkTjmeocOJQ9YL6
 AiyA==
X-Gm-Message-State: AOAM530E4yCpjWN0OLAI8sgqUmHwgtSOCClbAAc96cBjr+HYERFb0BV4
 JwM5SKxnnA5+EsWBwCLIvkY=
X-Google-Smtp-Source: ABdhPJzhfBx5c1yogIsQxrarVmSKN6V4lDQZbMNMVOMA7DFH4f6xxS3aIqwHk7TFuKFe4AJ/YqRnpQ==
X-Received: by 2002:a2e:8756:: with SMTP id q22mr24920778ljj.271.1634076708253; 
 Tue, 12 Oct 2021 15:11:48 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-5.NA.cust.bahnhof.se.
 [158.174.22.5])
 by smtp.gmail.com with ESMTPSA id v2sm645467lfo.119.2021.10.12.15.11.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 15:11:47 -0700 (PDT)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>
Subject: [PATCH] staging: media: rkvdec: Constify static struct v4l2_m2m_ops
Date: Wed, 13 Oct 2021 00:11:44 +0200
Message-Id: <20211012221144.30638-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_151154_512886_9F9383B3 
X-CRM114-Status: GOOD (  12.63  )
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

The only usage of rkvdec_m2m_ops is to pass its address to v4l2_m2m_init(),
which takes a pointer to const v4l2_m2m_ops as argument. Make it const
to allow the compiler to put it in read-only memory.

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index bf00fe6534a3..28aab5c7fe33 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -677,7 +677,7 @@ static void rkvdec_device_run(void *priv)
 		rkvdec_job_finish(ctx, VB2_BUF_STATE_ERROR);
 }
 
-static struct v4l2_m2m_ops rkvdec_m2m_ops = {
+static const struct v4l2_m2m_ops rkvdec_m2m_ops = {
 	.device_run = rkvdec_device_run,
 };
 
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
