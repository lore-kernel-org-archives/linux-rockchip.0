Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FCC4C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Oct 2023 18:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IkXO8E103GmajEfqku4frq974TX1bvqXHbfd+um6Ack=; b=ib2i2DXcdQvyrg
	8Ptu5gbhhSVbnwqoRFimDC7Rnh6MVD9gHPx7qw2VgQHZSxNqaoq1NrAqqaNDpoyFPctW5TrLNMEgp
	iZdtgGoFEXjSMusla1R17b0/OmGthp7Yl1ankJlWdGJA6NvD2lkmVYVQ8rDzKBBjGXayt+4jLLOGO
	R2cB4yZsrRaGl9wOUTDA4Lib60izl/jkviRaH06LaGWwaQJMuFyQdKlAK8mPhVkFT2K9QEAfax5u8
	JJ/qjd9uW2RqLbNB1QGKzAiyCtmFfCixK3+eZZdlh4d9j63kxBnVysUjbnwxLQWcJES1LD9fkDBpF
	YkMMhzSUFZ/PDHFZk+Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxAch-0020QS-05;
	Sun, 29 Oct 2023 18:34:55 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxAcc-0020PC-29
	for linux-rockchip@lists.infradead.org;
	Sun, 29 Oct 2023 18:34:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1698604474;
 bh=gogipZf0R0iOWdYyr1sBKjhOfpGlLqwJaMpBSjca5Mk=;
 b=TbQmrQdmtv1diVsFNqCCHz/dK4L8XysokVXa3VRVqEHKN0jKY2T1aCPm4zVmMNgSd2ppviQTz
 VbvoRj92vystgxWqqrhgTqrSNL9nzb7UIYy0iYV4OLFq3aeHHFjJZrm2CB8TohBLaohMxK5aMk9
 lda15CofaROq4Ct/NZDQs0h3sEsuENkypj/SjoDFBuqbx9vwDKEZoFHTvQ39s0qt+ZnqXpYZGuB
 CourrMgUiAuk+hJIYFHXmKyAFZ7SQl7Z+odzNp0av+4Mxj1PDSqAVE+8JsZHK0gFJC2HHqBZCS1
 8MPDOV9B0jxU5A2kagSBf5MKPKK5W4/YBLnlVlLT7W0g==
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>
Cc: Alex Bee <knaerzche@gmail.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 00/10] media: rkvdec: Add H.264 High 10 and 4:2:2 profile support
Date: Sun, 29 Oct 2023 18:34:07 +0000
Message-ID: <20231029183427.1781554-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 653ea5b98fe0ffca230b0f08
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231029_113451_357500_9B76B063 
X-CRM114-Status: GOOD (  10.34  )
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

This is a revival of a 3 year old series [1] now that NV15/NV20/NV30 support
for display driver have landed in drm-misc tree.

This series adds H.264 High 10 and 4:2:2 profile support to the Rockchip
Video Decoder driver.

Patch 1 adds helpers for calculating plane bytesperline and sizeimage.
Patch 2 adds two new pixelformats for semi-planer 10-bit 4:2:0/4:2:2 YUV.

Patch 3 change to use bytesperline and buffer height to configure strides.
Patch 4 change to use values from SPS/PPS control to configure the HW.
Patch 5 remove an unnecessary call to validate sps at streaming start.

Patch 6-9 refactor code to support validation and filtering of CAPUTRE
formats based on codec ops.

Patch 10 adds final bits to support H.264 High 10 and 4:2:2 profiles.

Changes in v3:
- Drop merged patches
- Use bpp and bpp_div instead of prior misuse of block_w/block_h
- New patch to use values from SPS/PPS control to configure the HW
- New patch to remove an unnecessary call to validate sps at streaming start
- Reworked pixel format validation

Changes in v2:
- Collect r-b tags
- SPS pic width and height in mbs validation moved to rkvdec_try_ctrl
- New patch to not override output buffer sizeimage
- Reworked pixel format validation
- Only align decoded buffer instead of changing frmsize step_width

Following drm-misc commits adds support for NV15/NV20/NV30 to VOP driver:
728c15b4b5f3 ("drm/fourcc: Add NV20 and NV30 YUV formats")
d4b384228562 ("drm/rockchip: vop: Add NV15, NV20 and NV30 support")

To fully runtime test this series you may need above drm commits and ffmpeg
patches from [2], this series and drm patches is also available at [3].

[1] https://lore.kernel.org/linux-media/20200706215430.22859-1-jonas@kwiboo.se/
[2] https://github.com/jernejsk/FFmpeg/commits/v4l2-request-n6.0/
[3] https://github.com/Kwiboo/linux-rockchip/commits/linuxtv-rkvdec-high-10-v3/

Regards,
Jonas

Alex Bee (1):
  media: rkvdec: h264: Don't hardcode SPS/PPS parameters

Jonas Karlman (9):
  media: v4l2-common: Add helpers to calculate bytesperline and
    sizeimage
  media: v4l2: Add NV15 and NV20 pixel formats
  media: rkvdec: h264: Use bytesperline and buffer height as virstride
  media: rkvdec: h264: Remove SPS validation at streaming start
  media: rkvdec: Extract rkvdec_fill_decoded_pixfmt helper method
  media: rkvdec: Move rkvdec_reset_decoded_fmt() function
  media: rkvdec: Prepare for adding format validation ops
  media: rkvdec: Add get_fmt_opaque and valid_fmt ops
  media: rkvdec: h264: Support High 10 and 4:2:2 profiles

 .../media/v4l/pixfmt-yuv-planar.rst           | 128 ++++++++++++
 drivers/media/v4l2-core/v4l2-common.c         |  80 ++++----
 drivers/media/v4l2-core/v4l2-ioctl.c          |   2 +
 drivers/staging/media/rkvdec/rkvdec-h264.c    |  91 ++++----
 drivers/staging/media/rkvdec/rkvdec.c         | 194 +++++++++++++-----
 drivers/staging/media/rkvdec/rkvdec.h         |   3 +
 include/uapi/linux/videodev2.h                |   2 +
 7 files changed, 367 insertions(+), 133 deletions(-)

--
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
