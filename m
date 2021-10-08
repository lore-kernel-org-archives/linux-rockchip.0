Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D307CC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 10:06:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9DE1D60F5B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 10:06:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9DE1D60F5B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UEYsw/VAmVSWFNjiEQs9N7VkN1Z42uu6nd3QXfkfrSw=; b=IHrwfI3u+1aKhc
	FG1wLKQf4YGIgnD9vIFDqRLswvugfdKsjWOk8HKg3hX9oMdgdE3oo/V2FAYd6Nm8CdQU54j+Cr6/I
	wKM7x+R+e1lcfsHFWcCQ4cD/qOeoz/EMBCqEDQaTuOO786a1GU4jUBLnc5JxmVesIIpThmnX8Lega
	CeXUKgKRkVi5HqAREsBf8Y2RQL2BqkFoqg+mFOiJWJpWHoI+Ki/DChe4IizsFx8i4iAnUFdusLyYA
	AUc+8q9s55MVWXvwaW+Iv5HAPhj1oOSn4oDH1M91aqw39sk+1uja+omoUZaSDzvUV+ACk2eWwRDEB
	SST8YQQtpEMjXxvLq3dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYmlX-002KR9-GX; Fri, 08 Oct 2021 10:06:11 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYmlU-002KOz-Kt
 for linux-rockchip@lists.infradead.org; Fri, 08 Oct 2021 10:06:10 +0000
Received: by mail-pj1-x1035.google.com with SMTP id k23so7212737pji.0
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Oct 2021 03:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OzoTpc5FXnHcSloTlGi/7AXCgf7dBEC1jkxAe77KXeE=;
 b=LpauymSNX9w1tBNgyes0/5NF8kSaIGg2a8v9QUXm3LfmX6BZi2lrszHYLztN3+N9IQ
 Y6qkh4YrIAzDiF4g9Tr8AKSLLK/UP94QF5qqqZWmTKRwS60+cdl4GdvAzoWSNlScmDbg
 gK9gsL5va9SYEExcIy1UcpTF84Ay4Kx0pzZrg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OzoTpc5FXnHcSloTlGi/7AXCgf7dBEC1jkxAe77KXeE=;
 b=gRyCQWBMshfIoD5RjGEqa4LIuqrm0XXuEBb5V6RVlegAqPCfTZtQTapgLRmmmHZFF+
 Kmh1e33iXPK+vsKc0IdcGdiH6TXsm4oPg29FWWAGWJTqgS+soKRceUTggY6WFX7SDldS
 Oc8ddvxbQ5sGbxU5OAVybP0QYR/53/UQWKSwbi8rUKuQVSZRRXzOqe0ss5rqaChzfmec
 KnfKUPmkmAdzYlEY4AqRARad5zzFEdfcH5KP8spgSi1+zhd/1wOodETD0kEL+WweRBv/
 9FanBQDR7GSdPKgJQJwLO8ldYyW7GomWnojfWjkHpK9junRAc1O3Gw+C+buBsqh/R75R
 y2fg==
X-Gm-Message-State: AOAM532YTN764uqIekD/Zid33FxeKk5NVHKquwCqViycd91kYgPNf0Fk
 uhkgwQssSk7uoYnVAcwa3Izucg==
X-Google-Smtp-Source: ABdhPJzJVsYPcjlZMl4UGYSd/jIzybZRW4K3X481JHpKP8/MszRBdV0Jexrh0L7avTtIStwZrTWy8A==
X-Received: by 2002:a17:902:7ec8:b0:13b:9d7a:6396 with SMTP id
 p8-20020a1709027ec800b0013b9d7a6396mr8603898plb.86.1633687567030; 
 Fri, 08 Oct 2021 03:06:07 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:ad8d:f936:2048:d735])
 by smtp.gmail.com with ESMTPSA id a7sm2082255pfn.150.2021.10.08.03.06.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Oct 2021 03:06:06 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: [PATCH 0/2] media: rkvdec: Align decoder behavior with Hantro and
 Cedrus
Date: Fri,  8 Oct 2021 18:04:21 +0800
Message-Id: <20211008100423.739462-1-wenst@chromium.org>
X-Mailer: git-send-email 2.33.0.882.g93a45727a2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_030608_694753_65A2D438 
X-CRM114-Status: GOOD (  12.68  )
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

Hi everyone,

While working on the rkvdec H.264 decoder for ChromeOS, I noticed some
behavioral differences compared to Hantro and Cedrus:

1. The driver always overrides the sizeimage setting given by userspace
   for the output format. This results in insufficient buffer space when
   running the ChromeOS video_decode_accelerator_tests test program,
   likely due to a small initial resolution followed by dynamic
   resolution change.

2. Doesn't support dynamic resolution change.

This small series fixes both and aligns the behavior with the other two
stateless decoder drivers. This was tested on the downstream ChromeOS
5.10 kernel with ChromeOS. Also compiled tested on mainline but I don't
have any other RK3399 devices set up to test video stuff, so testing
would be very much appreciated.

Also, I'm not sure if user applications are required to check the value
of sizeimage upon S_FMT return. If the value is different or too small,
what can the application do besides fail? AFAICT it can't split the
data of one frame (or slice) between different buffers.

Andrzej, I believe the second patch would conflict with your VP9 series.


Regards
ChenYu

Chen-Yu Tsai (2):
  media: rkvdec: Do not override sizeimage for output format
  media: rkvdec: Support dynamic resolution changes

 drivers/staging/media/rkvdec/rkvdec-h264.c |  5 +--
 drivers/staging/media/rkvdec/rkvdec.c      | 40 +++++++++++-----------
 2 files changed, 23 insertions(+), 22 deletions(-)

-- 
2.33.0.882.g93a45727a2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
