Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B15AAC43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 11:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ofpVbtcTpCi6JeETZWFCRzQPxkg6Nvq2k9n+db/irkw=; b=1jjRYgrXtswZng
	Ql6CZek/t0O84BC3qQChIif5FK6KFVFkxbu5OnWhR7rZd/G9EerfAthSPQlYdCi01jojaGNWNbFTW
	vY/TV1R0GSNyeuqeGIBMFAXJ8M3zxNEoKmpLCmevfruoNv3IMJSTNvsavyZQZrgsmXb+alwpu33jJ
	IMQX9o1zsbzyhA1dtD51eX4DAyow0v4G/bHHENr8k7zX9sRZ7ORziqbqSKbXcKHCzNMfJfPiOpQHM
	jLQFPo58eo1jQvQfgiIr999cVclaRE3G/oj9cmYauUaQTjDGV253kuxrlYPDCWG988liHOFE/b8RC
	L9wisttjGbFS+5lgZrGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wessA-00000001R4y-2Ac7;
	Wed, 01 Jul 2026 11:12:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wess8-00000001R4L-1HHU
	for linux-rockchip@bombadil.infradead.org;
	Wed, 01 Jul 2026 11:12:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=LkoKVbcxFCdFsy87mxquQYAqVgDQSp2s1Hkwlfg3a08=; b=ikNWcczCBtg67cedoc2zOrtm8X
	0Sh8P8IxpHi9bS0GDot1w8K/lgXdctkXsP+guX52fI8VoKdEstHku+qx0S10Lafb08viO9VvYbS6m
	UhsxtHRRyAb6MDoL1QYDm+sI0+Kb4BkpfbLEnb5ecMZNfimV7Wx0OUlw5ZyAA+0MStods5ucy/IDP
	vrHlNTszyOjosPAz6+dA7ZfnKT04cFcvfgw/8RnycIy1JNV8cTIO9MlSPXKrAOYTWuExGPVGm6lQN
	YBLbNSHYD0EBGVxDTkkeRDwWxfWawkNe1LwZ4J6aWu021foBprIkneYjUptwN8UEI6faC4DLCDkeQ
	GlpZ1rLQ==;
Received: from mail-dy1-x1335.google.com ([2607:f8b0:4864:20::1335])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wess4-00000002fWD-2fT2
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 11:12:51 +0000
Received: by mail-dy1-x1335.google.com with SMTP id 5a478bee46e88-30e7eb50b83so567655eec.1
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Jul 2026 04:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782904366; x=1783509166; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LkoKVbcxFCdFsy87mxquQYAqVgDQSp2s1Hkwlfg3a08=;
        b=iX+PIuqDlXvl3UqIRY096CfIRb5umVPgLi3F6Pr1P2+Qq/ntBq/xtRSlWlkUSHncTu
         YFhYrKShH0lD5T5b7xRlnmqYaoCsC3kDWvnzcKCtXVcmdiqEkJmHyDQLlpZGZmHPde8Y
         O1HizsSZAGMqKaguxcIShkScRbHT7jdr9nkMexkK4zKxanuhPG7X49oOZ3iailnFWswI
         l9PFnGV2itPwrkbVWzinSwIh4w5vV/ITzz2VSbuJvsezupkybuKQQs6VMTH5P2soI2Ts
         D9/RRZ9DkyIlJ5xzxM1ETIz4OcinTuGKSs6vuXfNR8D5kCZ3NBtoOOaR0LXpWPL/wyq3
         YetA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782904366; x=1783509166;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LkoKVbcxFCdFsy87mxquQYAqVgDQSp2s1Hkwlfg3a08=;
        b=FVmvZpWzvzb3FkD1FxyHSweYintow9bclXTQQ9f8JzNPkmIE6z77BUTDsmglJ8bGce
         umWJYsWvoz911eb79fuq/cw59mmTaSaevy1O3rCSutTmeMfa3ku7O2B3MxpyLmbT727u
         6s/MsCsKOmPWvbeuvT7iyWR+5qjYthEqqOrbM8dXiRMU11HnG7G9tJkGM4dh1a1Ax/vd
         kTfFrtxRPJ9msVN/lqDzSQtKECEGMDJyqrkOafW3o9zYzN+isnvyTBly2pduxNOQurNs
         0+C2HqQj98xOCz4az7JeeNe5s9JuxrHtOiBtfhz9YyPtx6bJvOViswMBqmwcm444PAlP
         +n6Q==
X-Forwarded-Encrypted: i=1; AHgh+RpzweIXvpCzXPDtnarBwc+vgZDvLr5WtejAQXM5QTqb51vSGg/Xswmy/OoPWGqk6HYjG80YYJWPxKvI8Cmsnw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwsMGMTOl0F+QNbLczBolPNk+2W7+XyzGWG5623Sg6M9ieNKxf3
	08gfWus/oOejMVZdwNlE+YIoE9m9iNyxC4cT6ETTmzMg5MheGeW5dQ/1DHI9Ik30
X-Gm-Gg: AfdE7cls7XA4UtuF+OXKFqejQB04IXv6RVjc5IxDrhTxnNhwSzaXSaMCtzuRLHw2M8e
	kX+0+B0Rdl8pH0N22Tdu+3U1DV5UoMs/UULqIthY6k4gst+D6TjblNgON0kjaVOTkuhRFlaOPhr
	imgoXUbeNEovMooXTi0yDNWq6P8c7rHEbBVuwe4YNgL1DhTLWABYzyz6A52kEAM3ifLRl7i2i0U
	2OU7btIV7lR+46xTw2VlvwWMq/WXWBQ6iqJkMJ3TlfpIKGRbLofvgtymX3K5+XKrMqRza3idT66
	241x5MasTKZyhgWLta5oww+7WGr2xXIJ/LR8LPcaQq+47+jTigNJmGj0hmctb89KYH5D2pYhGz8
	R0HEkIjKfPstL99hDrdWhWJ0rwonqJmuRr6PW/P9bgdk+5BRQoCJQkroFPn/53M+h4BxOryKZWZ
	zua7p/VOgAyWsGzk0Jadg=
X-Received: by 2002:a05:7300:3213:b0:30e:cb0a:fe7c with SMTP id 5a478bee46e88-30eff0a9e50mr1173027eec.17.1782904365910;
        Wed, 01 Jul 2026 04:12:45 -0700 (PDT)
Received: from ahmi-PC.lan ([2401:4900:88f4:d9c5:fca7:1ff8:6590:ebe])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee2fb6514sm16687832eec.7.2026.07.01.04.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 04:12:45 -0700 (PDT)
From: Narasimharao Vadlamudi <ahmisaranrao@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Hans Verkuil <hverkuil@kernel.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Narasimharao Vadlamudi <ahmisaranrao@gmail.com>
Subject: [PATCH] media: rkvdec: Propagate platform_get_irq() errors
Date: Wed,  1 Jul 2026 16:42:03 +0530
Message-ID: <20260701111203.62092-1-ahmisaranrao@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_121248_789893_4875DD25 
X-CRM114-Status: GOOD (  12.96  )
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

platform_get_irq() returns a positive IRQ number on success and a
negative error code on failure. It no longer returns zero. The driver
currently returns -ENXIO for all failures, which loses useful errors
such as -EPROBE_DEFER.

Return the error from platform_get_irq() directly.

Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
Signed-off-by: Narasimharao Vadlamudi <ahmisaranrao@gmail.com>
---
 drivers/media/platform/rockchip/rkvdec/rkvdec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index 1d1e9bfef8e9..37683a6bb40f 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -1818,8 +1818,8 @@ static int rkvdec_probe(struct platform_device *pdev)
 	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq <= 0)
-		return -ENXIO;
+	if (irq < 0)
+		return irq;
 
 	ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
 					rkvdec_irq_handler, IRQF_ONESHOT,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
