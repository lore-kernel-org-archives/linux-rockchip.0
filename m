Return-Path: <SRS0=F4g8=O6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D396C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Oct 2021 17:55:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0CFDF60F24
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Oct 2021 17:55:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0CFDF60F24
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XLez5sEZ+D3d2WRtrrQLjQD4W1PE56vhuNMoof6tLiw=; b=yraDIdnKip0Sk/
	sZB7wDr4MC7U2wuNAcP30XP1BPx9FgzBqu9ScgBi5zJM3OrTsutzZRsaegYkQ2XRCmtliQOOiTz1C
	gBbSgm+1oM6skFoRDG0B3HIMRzlc9hG95j6CwSQRT6YQKROHTdjaZ4onx8OUkTMcJp/8D8YgGDcMY
	WOoa/c6pODrRlCHu3DTOdkc/2/Hoto93MMB+/k+p6012rO4ksCLoN5XZMguP4SloqZueUQ93UVkiT
	0A7V6pXhemWBMujPzUSb0nqwHMMZEv4MD5VPMeZ6WQ3uKiBxYy8fSLed/IhBeYPnhGFJ5z9N2YYd+
	uAK9tmNq8Y6VBb8kKJ/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZd2T-007Eof-7a; Sun, 10 Oct 2021 17:55:09 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZd2R-007Enm-DK; Sun, 10 Oct 2021 17:55:08 +0000
Received: by mail-lf1-x129.google.com with SMTP id j21so45601477lfe.0;
 Sun, 10 Oct 2021 10:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3ydAC66omwb1n8JzeihR606o2VoQwnojRyDJQl+M5oM=;
 b=UJ93bh4pdIRSVY7Hax/KViCfkdhDkcsNNlpzVwYW9CQIPNLd/UawcgYsU72qsqkFtY
 zgT34v77cDenF/Hmb2JFJ2EyKv9qk/4+14jIJgy8Mng2cXrUSX0J4AxaIOcV6LKdgn0b
 qsgOJrI14CMQyRVJ+5XXR0uWCRwxjtOW3L+7d/Q1BafBCV7ZzWuzz2NxPIXCoJEW5NZN
 xz7C5ya3cA09rLbCtq9dJpHSMBMjVvYy6DNIj8g5hEBpLkcbs0G9OLLChh1vjOA5BwAI
 RLlChiP4duKlszzdEKnQw3CphjhKia952+Jrn8YjbshQTk5zvTZ6e8imgAkjXhBf6AnC
 exHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3ydAC66omwb1n8JzeihR606o2VoQwnojRyDJQl+M5oM=;
 b=v3uRLQbmV7KAefrr30UPcGWbwxOIaceobugmf1K5BZlZW51pQz/98jDYpUQ/Hz1FpD
 oW65rRuMaM45ayg5r+fDTGViwwLCuMS5SwMNDa2Kxy5SbtD8hdsDaNY7wRi646PpgfFA
 B8P0XzOptWL60rKYoho4zJOoOdFJNwe5V2g+Kfs3hbZ6lGLv8tlMMbrtXdbykX1JQuNw
 lfHE1v4areJAAvI3Qh12ruwyqYZo16OlYCAMV1UFKYkvRTQJo4+R998ZFWSvgVRTKy0k
 4XrWdp9YiwuOxxZQLF8tRuZ8q8W+2LT1zrgbVF7cQyQf7j5qvipEnG1MFtxuNffjrGU1
 legw==
X-Gm-Message-State: AOAM532tSWbv1lNLUQVa7MXnLnZRKA0BXda24Il1rZ3P7Q7k7WVDSUca
 /7YwXNnXAIsyBEB3diXaW9IG2btjaWq9xQ==
X-Google-Smtp-Source: ABdhPJytIFiRW7vug7rXrjFy2fWR+VAQPQZHZxnJgAxhmQ4pktSZp3NIk3wzeKCdSWr7zhP9mqKMJw==
X-Received: by 2002:a05:6512:33c9:: with SMTP id
 d9mr22726278lfg.18.1633888504907; 
 Sun, 10 Oct 2021 10:55:04 -0700 (PDT)
Received: from localhost (37-145-209-168.broadband.corbina.ru.
 [37.145.209.168])
 by smtp.gmail.com with ESMTPSA id u3sm550824lfr.130.2021.10.10.10.55.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 Oct 2021 10:55:04 -0700 (PDT)
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: linux-media@vger.kernel.org
Cc: Mikhail Rudenko <mike.rudenko@gmail.com>,
 Helen Koike <helen.koike@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] media: rockchip: rkisp1: use device name for debugfs subdir
 name
Date: Sun, 10 Oct 2021 20:54:57 +0300
Message-Id: <20211010175457.438627-1-mike.rudenko@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211010_105507_492263_865EDB49 
X-CRM114-Status: GOOD (  11.94  )
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

While testing Rockchip RK3399 with both ISPs enabled, a dmesg error
was observed:
```
[   15.559141] debugfs: Directory 'rkisp1' with parent '/' already present!
```

Fix it by using the device name for the debugfs subdirectory name
instead of the driver name, thus preventing name collision.

Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 7474150b94ed..560f928c3752 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -426,7 +426,7 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 {
 	struct rkisp1_debug *debug = &rkisp1->debug;
 
-	debug->debugfs_dir = debugfs_create_dir(RKISP1_DRIVER_NAME, NULL);
+	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
 	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
 			     &debug->data_loss);
 	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
