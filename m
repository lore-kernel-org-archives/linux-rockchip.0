Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5563C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 06:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T2qYfsmEcUzeyJn5z2N8AXIfa3MGeUufHkqZOcGCAVI=; b=fhf3saz9CIQr31w5JiVLb5enBo
	B9TN779TRoKcEJdpNGmVbwjiviwIrlDDMa+13wyqFpclKhBjaSrjpTdDAYwBifl041Hw2E9eHNyvJ
	ZNResw9WlVpHcjwX7UuId0tFfT3NbErc4lkvhEbETLoWh5jj5hxa5JECsxnCgbpbHl/YxucQ1P2PZ
	4c0qLD4WXc69rjZW2a1pyBOgXl3p5xyZVtYVv31gYk22LUXrqeSGC7Qz6eRGW0YCfDMpQ5u92Io2g
	azKmCZ9oWEHS/Ikp1oOX/AjDGqE48I8vcCY+hnvmdFP8xcb83tdIwvXXiMrk1WzJfpdqsZQ2dYe52
	NnLMIXpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZSIQ-00EUL6-FB; Wed, 30 Mar 2022 06:59:10 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZSIN-00EUJX-MO
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 06:59:09 +0000
Received: from localhost (unknown [IPv6:2a02:3030:d:7e3f:91e1:4be5:4001:fd80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AB0641F4425E;
 Wed, 30 Mar 2022 07:59:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648623544;
 bh=OO5IhJqrvpl7EnmyLBkThDfuejEHt3zMXYjy+fGmxIY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hXKi0icpx0gFfmKs73t4gHpVsW/kLu6dbAK3CPpSGaI7pepzLhSOt/p9ZKm+8pnCd
 4m2wmpmbN9zqnAOlbxNn61LDIdPo2q7Gs0D2mUoI8bRlfN1VVECbfZ9kAPHppmu/W5
 UPbaJCSaZ3CPUWUnxTUZi0S3KJIN8xY4aWgeMuiXo0Fg1k+42IAJc54Z5gkOjAY2i7
 IAzbRMl0NfBqYdz1eiu7I34Ay1WwM0QHrXpQH9MN5/3uxHBAvCkI4qJmZtTIbG3+Ks
 HwyCRSka8rjUhhfPqVWsPxsYPf5Ea0JiEVTvVclqqVtXXwKCk/gl2APbGHgCqqRGE/
 ZwEtfEhF18/sA==
Date: Wed, 30 Mar 2022 08:59:01 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 18/24] media: rkvdec: h264: Fix bit depth wrap in pps
 packet
Message-ID: <20220330065901.q6vodbqpes5hqr4y@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-19-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328195936.82552-19-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_235907_905755_6346BE7C 
X-CRM114-Status: GOOD (  11.73  )
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

On 28.03.2022 15:59, Nicolas Dufresne wrote:
>From: Jonas Karlman <jonas@kwiboo.se>
>
>The luma and chroma bit depth fields in the pps packet is 3 bits wide.

s/is 3 bits wide/are 3 bits wide/

>8 is wrongly added to the bit depth value written to these 3-bit fields.

s/bit depth value/bit depth values/

(as we talk about multiple different values)

>Because only the 3 LSB is written the hardware is configured correctly.

s/Because only the 3 LSB is written the hardware is configured correctly./
   Because only the three least significant bits are written, the hardware will be configured correctly./

(original sentence is very hard to read, the sentence could also mean
something like this:
'Because only the three least significant bits, that are written to the hardware, are configured correctly.')

>
>Correct this by not adding 8 to the luma and chroma bit depth value.
>
>Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

Greetings,
Sebastian

>---
> drivers/staging/media/rkvdec/rkvdec-h264.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
>index 847b8957dad3..ec52b195bbd7 100644
>--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
>+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
>@@ -662,8 +662,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
> 	WRITE_PPS(0xff, PROFILE_IDC);
> 	WRITE_PPS(1, CONSTRAINT_SET3_FLAG);
> 	WRITE_PPS(sps->chroma_format_idc, CHROMA_FORMAT_IDC);
>-	WRITE_PPS(sps->bit_depth_luma_minus8 + 8, BIT_DEPTH_LUMA);
>-	WRITE_PPS(sps->bit_depth_chroma_minus8 + 8, BIT_DEPTH_CHROMA);
>+	WRITE_PPS(sps->bit_depth_luma_minus8, BIT_DEPTH_LUMA);
>+	WRITE_PPS(sps->bit_depth_chroma_minus8, BIT_DEPTH_CHROMA);
> 	WRITE_PPS(0, QPPRIME_Y_ZERO_TRANSFORM_BYPASS_FLAG);
> 	WRITE_PPS(sps->log2_max_frame_num_minus4, LOG2_MAX_FRAME_NUM_MINUS4);
> 	WRITE_PPS(sps->max_num_ref_frames, MAX_NUM_REF_FRAMES);
>-- 
>2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
