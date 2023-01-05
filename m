Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 439D5C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 22:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5UFvFLxHK5DbImrIr7hBHTaBilHXKTu/Js9cro2Z5jw=; b=QRhG094EH0QmwF
	D+HtA/+OK35FZswUWxXoa8Im66veBm9kIfyGNlaA6xrUKhlWsH4/eY9SlfTpVsZYqc+rUp/NRUuYY
	vQEHPCmuLWnK3v56gY9ZtkkN75qmyGvu5aUM6ZeMPuMicVKyeturDxdrAAVzmAErVk5npYXOLJhaN
	6p+pk/+3/1I9BayvsFRngS4Cu06/pK8PfehfGdOhMSwGS0PIHIlobx2LkkW5UD45PztxIVe3y3uXu
	R9AL6ch0zIqADHQeypiG/W0WEYwVXfCMPEzFROhLvMaUkiRToGZu2yBLpvwxhyXDurkwJkYZAkzc6
	teVkOf2/GJj2nPrhsXNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDYZP-00FW1m-9a; Thu, 05 Jan 2023 22:18:43 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDVDl-00DmVZ-11; Thu, 05 Jan 2023 18:44:10 +0000
Received: by mail-wr1-x42d.google.com with SMTP id t15so28156882wro.9;
        Thu, 05 Jan 2023 10:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R5VFmITpcq980NC7BHDSxAFwvqy7pS4EajnFTTRxXo8=;
        b=KwmlitPYUG0nvLmz8rNf3rqtW8HM76f8nSBVunCIkaSBPwbAvZxYZzHGK3PwNwR7aP
         fXmL4M+I2ETLzUWtEaUP9ZgpU40ro0a++SN8LS/D/grUAMzOWx6pMpjTO2xBTma+fF+p
         8Z3nxBZ+cC1pRdAij++ZrS7CSicWYw5vryfLTNzHWibH4C2JwL/mO05ngE6FAeKFTJPp
         7117FL10SSEFxQmIZmC6nSjOs4c24ZGqcR7nqVsYXQU9BeeIsdoNF9Bm4KRUmUoNNXC8
         SmTSY6Ry8x2RKUASJo4qsQmKlVlyA07StKm5osrTpfbX+VlP9JLQW2BgFMmSPB+jWHEV
         wp5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R5VFmITpcq980NC7BHDSxAFwvqy7pS4EajnFTTRxXo8=;
        b=ZPmPxkHMHoe1vCnOJTWaj/iAJ/b5st6O/dy0zirhkbWY4BnIiCXbZ/6AW0q/aQOZn7
         TnK/7WMv4jeuuAJvTTx2S19M9/sQH7+yoPqMUXbRkiZ9BGKOjsGWzEL6omrpUI3vW9Mi
         /GbpBxt0aNZiw9a5TwkrxX4ZmgX7rNpIIWGZGD/7RxiB4l08trQW/7vGssRsyZ4ERdTP
         AFhJuGcnzucbLr0jIdNmmHj08ERsE7yqN2nWmqY5eOp3n4gtad554y5rZwpkHkwKlohk
         Ux/vypk1qfYbidIUtBFrMcXCboKfRTxq1kTXKuEJHBAjoha5eoW5ytfpEZBmMlNN+fYa
         R8tg==
X-Gm-Message-State: AFqh2kqovBITriY+OjQEQprNjJbL4pN3hNX1VYv7Wcd2F4LkN3CmTfFt
	dtwwyxTznZvjLgtT8Mc/IMQ=
X-Google-Smtp-Source: AMrXdXupHpSiCAPJMry8NhE3IeKFncHiPo3XY0ysiysKAVmAVt/UICl6Oja6cqmdM/4eTxSax6ktpw==
X-Received: by 2002:adf:db11:0:b0:242:6055:dee3 with SMTP id s17-20020adfdb11000000b002426055dee3mr31114213wri.63.1672944244668;
        Thu, 05 Jan 2023 10:44:04 -0800 (PST)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net. [80.193.200.194])
        by smtp.gmail.com with ESMTPSA id b14-20020a05600010ce00b0023c8026841csm37004971wrx.23.2023.01.05.10.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 10:44:04 -0800 (PST)
From: Colin Ian King <colin.i.king@gmail.com>
To: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH][next] media: rkisp1: make a few const arrays static
Date: Thu,  5 Jan 2023 18:44:03 +0000
Message-Id: <20230105184403.63419-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_104409_092427_81AF6DB9 
X-CRM114-Status: GOOD (  11.31  )
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

Don't populate the const arrays on the stack, instead make them
static. Also makes the object code smaller.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c     | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index d4540684ea9a..d1d1fdce03e3 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1131,10 +1131,12 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
 	const struct rkisp1_capture_config *config = cap->config;
 	const struct rkisp1_capture_fmt_cfg *fmt;
 	const struct v4l2_format_info *info;
-	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
-					    RKISP1_RSZ_SP_SRC_MAX_WIDTH };
-	const unsigned int max_heights[] = { RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
-					     RKISP1_RSZ_SP_SRC_MAX_HEIGHT};
+	static const unsigned int max_widths[] = {
+		RKISP1_RSZ_MP_SRC_MAX_WIDTH, RKISP1_RSZ_SP_SRC_MAX_WIDTH
+	};
+	static const unsigned int max_heights[] = {
+		RKISP1_RSZ_MP_SRC_MAX_HEIGHT, RKISP1_RSZ_SP_SRC_MAX_HEIGHT
+	};
 
 	fmt = rkisp1_find_fmt_cfg(cap, pixm->pixelformat);
 	if (!fmt) {
@@ -1336,8 +1338,9 @@ void rkisp1_capture_devs_unregister(struct rkisp1_device *rkisp1)
 
 static int rkisp1_register_capture(struct rkisp1_capture *cap)
 {
-	const char * const dev_names[] = {RKISP1_MP_DEV_NAME,
-					  RKISP1_SP_DEV_NAME};
+	static const char * const dev_names[] = {
+		RKISP1_MP_DEV_NAME, RKISP1_SP_DEV_NAME
+	};
 	struct v4l2_device *v4l2_dev = &cap->rkisp1->v4l2_dev;
 	struct video_device *vdev = &cap->vnode.vdev;
 	struct rkisp1_vdev_node *node;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
