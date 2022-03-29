Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA8F0C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 07:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lHqIDbiuRmYsOQLDxDqIWHWqQrY1fMzgX3BmDlx6eVw=; b=Sx89mhgcDKCBuRaoa0xqY5v/yK
	BLcAKA3koEGOWkL7yRFXUbbs9tMLuhht1me5WZOJGDyhOMvE+PrGWfRrYMAi3ANpW8QzD4vanruK5
	yJzYlEv6b9OIzt8V6PmL1kH+5NMFkJAP/K9FSppBfmb5IGWLFHN0G3M1nAH3CHa3fGdt+sTPEOt2S
	edhMZyHMq+Mv5DgPveJXUhtEZf9ioFZ8lc6Zj+1AsTKBV9OPSQ7i27cpEYyFsAyU3B1OaWcEd/4wn
	am7w3BGsgLrgP9CFE28vQ94ZWUKyw7ZHEVF/w/uiirJtrUFvsp457MVP03HTv8iAYaZEYA9veWMAN
	ccHLcHUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ6BL-00BIoF-V5; Tue, 29 Mar 2022 07:22:23 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ6BI-00BIne-V1
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 07:22:22 +0000
Received: from localhost (unknown [IPv6:2a02:3030:a:f397:f6bc:b726:2678:839f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 617721F434C3;
 Tue, 29 Mar 2022 08:22:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648538539;
 bh=/W5ETW3ilMG908aam2DSTA6zgd0fm+3tYbWwdkTwWRk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nLF8BzyzhkdV7qtb7zyz8uOMfyvj6z1nQML/smXC3jCjwbbqt+AnC8ggo18xor1Ip
 aXFdV8uGzjQeh4Vy1AWCISf6kN2kITw+l83JbdQSL82l6ZOufzfaRzE+GXZTje0lZU
 oeLppJONQll4PG7lXm0LSfJlzn9Rj2aLKI9LVjPGCS5P21mSxWzg4nc3uJsFI8s7Oo
 OB6gi6bBXctow5FnNG2reIa9HKcgdclI0ad3Ol4JyFoNlGCZGjpEeTm7BcbYJZ2boW
 UtGtB9hHTXU4hn/sjWwwt97x4MBIGxmydRqk0exrPYyvLi4Q5JSh+5J0hmv0RWYUDu
 B/ju1nHdWNA1A==
Date: Tue, 29 Mar 2022 09:22:16 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, Alex Bee <knaerzche@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 24/24] media: rkvdec-h264: Don't hardcode SPS/PPS
 parameters
Message-ID: <20220329072216.gqzcp6lowpfrweb7@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-25-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328195936.82552-25-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_002221_159615_DC74E890 
X-CRM114-Status: GOOD (  14.96  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Nicolas,

The patch series doesn't seem to apply on the latest media tree master
branch. Looking at your tree I can see that you have commit: ba2c670a
"media: nxp: Restrict VIDEO_IMX_MIPI_CSIS to ARCH_MXC or COMPILE_TEST
Laurent Pinchart authored 1 week ago "

But the current head of the media tree is: 71e6d0608e4d
"media: platform: Remove unnecessary print function dev_err()
Yang Li authored 13 days ago"

On 28.03.2022 15:59, Nicolas Dufresne wrote:
>From: Alex Bee <knaerzche@gmail.com>
>
>Some SPS/PPS parameters are currently hardcoded in the driver
>even though so do exist in the uapi which is stable by now.

s/even though so/even though they/
>
>Use them instead of hardcoding them.
>
>Conformance tests have shown there is no difference, but it might
>increase decoder performance.

I think it would be great if we could add some performance metrics to
the commit description to have a metric that following patches could
compare themselves with.

Greetings,
Sebastian

>
>Signed-off-by: Alex Bee <knaerzche@gmail.com>
>---
> drivers/staging/media/rkvdec/rkvdec-h264.c | 13 +++++++------
> 1 file changed, 7 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
>index 891c48bf6a51..91f65d78e453 100644
>--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
>+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
>@@ -655,13 +655,14 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
>
> #define WRITE_PPS(value, field) set_ps_field(hw_ps->info, field, value)
> 	/* write sps */
>-	WRITE_PPS(0xf, SEQ_PARAMETER_SET_ID);
>-	WRITE_PPS(0xff, PROFILE_IDC);
>-	WRITE_PPS(1, CONSTRAINT_SET3_FLAG);
>+	WRITE_PPS(sps->seq_parameter_set_id, SEQ_PARAMETER_SET_ID);
>+	WRITE_PPS(sps->profile_idc, PROFILE_IDC);
>+	WRITE_PPS((sps->constraint_set_flags & 1 << 3) ? 1 : 0, CONSTRAINT_SET3_FLAG);
> 	WRITE_PPS(sps->chroma_format_idc, CHROMA_FORMAT_IDC);
> 	WRITE_PPS(sps->bit_depth_luma_minus8, BIT_DEPTH_LUMA);
> 	WRITE_PPS(sps->bit_depth_chroma_minus8, BIT_DEPTH_CHROMA);
>-	WRITE_PPS(0, QPPRIME_Y_ZERO_TRANSFORM_BYPASS_FLAG);
>+	WRITE_PPS(!!(sps->flags & V4L2_H264_SPS_FLAG_QPPRIME_Y_ZERO_TRANSFORM_BYPASS),
>+		  QPPRIME_Y_ZERO_TRANSFORM_BYPASS_FLAG);
> 	WRITE_PPS(sps->log2_max_frame_num_minus4, LOG2_MAX_FRAME_NUM_MINUS4);
> 	WRITE_PPS(sps->max_num_ref_frames, MAX_NUM_REF_FRAMES);
> 	WRITE_PPS(sps->pic_order_cnt_type, PIC_ORDER_CNT_TYPE);
>@@ -679,8 +680,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
> 		  DIRECT_8X8_INFERENCE_FLAG);
>
> 	/* write pps */
>-	WRITE_PPS(0xff, PIC_PARAMETER_SET_ID);
>-	WRITE_PPS(0x1f, PPS_SEQ_PARAMETER_SET_ID);
>+	WRITE_PPS(pps->pic_parameter_set_id, PIC_PARAMETER_SET_ID);
>+	WRITE_PPS(pps->seq_parameter_set_id, PPS_SEQ_PARAMETER_SET_ID);
> 	WRITE_PPS(!!(pps->flags & V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE),
> 		  ENTROPY_CODING_MODE_FLAG);
> 	WRITE_PPS(!!(pps->flags & V4L2_H264_PPS_FLAG_BOTTOM_FIELD_PIC_ORDER_IN_FRAME_PRESENT),
>-- 
>2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
