Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 814BAC54E67
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Mar 2024 09:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nAf3KNYwhH6XAdbkVzAFUjnG3PsRf6UgqhjWUj4Fpr4=; b=sRJDQD52bp+IB0
	9EhU1PHc/eHfTwHQqWHmwjke5BX00AO4SvWoiAQZ/BB8JZY4+NLNSOs2u31SXBwY1ucUudPwE8sjK
	vSbH0dMH7Nw192nRUFLsU5ObrjMUkEEYQ+WelB3fnxEkvYmLBG3Iv8NH92R6jbSfv+i8MLKfYQWaS
	63MzShJH+fEQFR+/Rfb/+Pg6Y9kC/kCTynzlvw/U+OXa7BFQs+9Zv8f/3opcuqqqMuBHxq7fWm+H8
	QjMF4mvWf2aKWEOwqiscXjIQVhTw2A4eIa9dbs4sbbWaeGU30WXhXPTHnvXVsb1iHUriIQPXLJh8z
	am82sgVGzqdmfyk6eVIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpmA5-0000000DMv8-0wOO;
	Thu, 28 Mar 2024 09:35:05 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpm9o-0000000DMmm-3NMB;
	Thu, 28 Mar 2024 09:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711618485;
	bh=rzOR/SQyYYN02F8+nxnnUUb/7ROlgWUvJTqH3GuWMSo=;
	h=From:To:Cc:Subject:Date:From;
	b=MLHdlc3P+nix/YLt9j0iEfYhWBPXeREvzJFFpz9oDGuMr8XKIb/xq3u4X6FYl3CjQ
	 IxKLc2gLiAdvRMBFwumNh/6GnwTF1xi9zwXVpCVQ5JdTMIcwonkUQiLwSXZ3lNwefq
	 xoI7hZCxXpvqTtgThR+QNd56hUgS4gV791tdtEXMq9hXK9SV15Uke8TZ7Ku8sB30mk
	 youFGeB5CT8bX6hVEQDThp+D7agEOFzDBkoiqHHWppoXQZh471tVvocOJcgJ5kz3G4
	 Be3ELSeOwQ2F+Ns/RMAMfEt+hHnN8GjKYqF6kvAnopYOGt4hya2O2ywCxUvtM2926f
	 +W+JsW2F05NoQ==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 654D13782112;
	Thu, 28 Mar 2024 09:34:45 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	heiko@sntech.de
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: AV1: Be more fexible on postproc capabilities
Date: Thu, 28 Mar 2024 10:34:38 +0100
Message-Id: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_023449_186987_55EB6B0E 
X-CRM114-Status: UNSURE (   8.78  )
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

RK3588 post-processor block is able to convert 10 bits streams
into 8 bits pixels format.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Fixes: 003afda97c65 ("media: verisilicon: Enable AV1 decoder on rk3588")
---
 drivers/media/platform/verisilicon/rockchip_vpu_hw.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
index f97527670783..964122e7c355 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
@@ -82,7 +82,6 @@ static const struct hantro_fmt rockchip_vpu981_postproc_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12,
 		.codec_mode = HANTRO_MODE_NONE,
-		.match_depth = true,
 		.postprocessed = true,
 		.frmsize = {
 			.min_width = ROCKCHIP_VPU981_MIN_SIZE,
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
