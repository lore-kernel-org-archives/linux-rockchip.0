Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D37FAECE587
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 19:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVeBSV0w89ir7lZeMrC0ldDb42HTFTvNxXldAp/h9TY=; b=FhhHN/+TUZ0Ou2
	yHMGiL9iWihtqZ0VM00I0ABopeEtapxXI8UxSjd0uHUBR9r9jBThKsfS04+RLCFKCwFsY13d56fPq
	9INvhBma5irpSje24Oyi6pdGVpOgPki5M8JNC2vRLWtir50GkMBmkyNxsA58YeOFH/XcGPvOwyPl8
	sfJb94nW9WdM6AIvyuSYffVvyW0IKg2Upd/eOotP/nj0MKLZDggXNUuVsjVVZIM1voZ7KDI4s/RoC
	5QdMrhtypD02RLWlN1WaUE1PDVYTv1A8rrp8JcARuanC7d6mp6y0xKXrrjw8ZNLfO+IcbCBoOMI2q
	+JkmD/IuhUFUVy0JOCXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snk2I-000000035NS-1wBt;
	Mon, 09 Sep 2024 19:26:54 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snk2E-000000035Ls-3jXo
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 19:26:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1725909996; bh=MqUj8A8o8xViBmolQgigKvVukl8yo9wbPYV1IfunL50=;
 b=BkI6+NS0Cv+Q4HJESeMcK2GKj8uSaSQlI+BZUklvGzn6xy0bjIaMvaWK+UEV3kyLw/wSyIRK6
 o0LQC1TZgocH9jGzYrjMNJ2CaJxM5mEsMjNFgFBHFJnl8IEKkVMups63wxBAgRZNT4N46dmEM6c
 hcoiZBOQRYfrnu/yjDp3eDcqv5V1WHudpcysncazfnJl2qLYbxgg701fA80ujV2Rw3Ae7kFpstJ
 YWKdpPlHufvhfZ9VSNLwozdgLuUymFzznUqv38wCuqe4Rahv6O38x68j47wK+VMlq6SE4BpO+kU
 VU7AZJekqHxEDwKYV8BswFm8uxI3gEKwwXGS92aWL8fw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Boris Brezillon <boris.brezillon@collabora.com>
Cc: Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH v6 11/11] media: rkvdec: Fix enumerate frame sizes
Date: Mon,  9 Sep 2024 19:25:09 +0000
Message-ID: <20240909192522.1076704-12-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240909192522.1076704-1-jonas@kwiboo.se>
References: <20240909192522.1076704-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66df4beac680cb8b7d2dc270
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_122651_098455_79803F87 
X-CRM114-Status: GOOD (  11.48  )
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

The VIDIOC_ENUM_FRAMESIZES ioctl should return all frame sizes (i. e.
width and height in pixels) that the device supports for the given pixel
format.

For coded format returning the frame size used to enforce HW alignment
requirements for CAPTURE buffers does not make fully sense.

Instead, signal applications what the maximum frame size that is
supported by the HW decoder using a frame size of continuous type.

Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
Suggested-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v6:
- New patch

With this change FFmpeg V4L2 Request API hwaccels can implement a strict
check if frame size is supported by the video device:
https://ffmpeg.org/pipermail/ffmpeg-devel/2024-August/332037.html
---
 drivers/staging/media/rkvdec/rkvdec.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index c8c14f35ac44..9002eb3a59e5 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -334,8 +334,14 @@ static int rkvdec_enum_framesizes(struct file *file, void *priv,
 	if (!fmt)
 		return -EINVAL;
 
-	fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
-	fsize->stepwise = fmt->frmsize;
+	fsize->type = V4L2_FRMSIZE_TYPE_CONTINUOUS;
+	fsize->stepwise.min_width = 1;
+	fsize->stepwise.max_width = fmt->frmsize.max_width;
+	fsize->stepwise.step_width = 1;
+	fsize->stepwise.min_height = 1;
+	fsize->stepwise.max_height = fmt->frmsize.max_height;
+	fsize->stepwise.step_height = 1;
+
 	return 0;
 }
 
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
