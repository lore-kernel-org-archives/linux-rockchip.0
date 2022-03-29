Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F088EC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KrvP3bBqmUhoEC5gW5UUtPnZwHyz0b/fr7SgWBBmj6k=; b=1U2BOXnMj0JCVFdzeF/wha4gSW
	IaN1RtVonv8+JxLZre83yBx52MkFXINAdJz8TVxAd5Lx/XvvAQHWeORQbALNglOzsq6v3IlBX7FEW
	RuAQYLJqstTZ4BfPkVTV2VRvz8XSZlGtq3lY0HailDopkYhyCMz75Ks9NcWD+YvW9+I7i5glK6HgR
	CpW9O3v2RuC8s1ytcMtuMD2bXOUvum5C8fDMtILgtznOOxt1vLRJsm++BCNZdfTpsxAzlt9dbPoXH
	ad/nKngQfA/lv53quJAzQS6BXpRJd95sbLulCZ4vgJzw3wnPtD8gspIBu64/JBy1tiytVcRqXxDZH
	5o57pNHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDyD-00ClO3-Dj; Tue, 29 Mar 2022 15:41:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDrU-00CiGk-0S
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 15:34:25 +0000
Received: from localhost (unknown [IPv6:2a02:3030:a:f397:f6bc:b726:2678:839f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8CD3F1F44125;
 Tue, 29 Mar 2022 16:34:22 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648568062;
 bh=nGX92UvfWgt2Qv/de13zxyDQ5ZWhrMUfiZ3gbHkaldY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k2sQ2pq+IanUJcoPmS5cQ2dTSCNdmrop2QBRkMayanfPOvpqf4G1Vk3ibBPFQI08d
 9xZWHReZFrwyveeZ3QZ+Nd0ue4A3tukodjvm5IsdNhsGIwj6sL/W4FFoCRwIr57wP9
 fP6SCna099Z1aCMb+P4klF15+KT+UhqTRYwep52fpbDtREnjNeaGY4FQfskQ07D/PG
 j+0VA4o3E264anCZbpKv+7ZWvJJSYU9MAjd5eWp0EOn7uf9Hr6n1YEJIuSCOXKxHeN
 f6Ja5nAoJnLO1gbtxd1rvZbgIMieoFHYUaSa1dTwYVnH5IVbxCmNJOZNviFTj9Wsd3
 nKvMaCqOP1oPA==
Date: Tue, 29 Mar 2022 17:34:19 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 15/24] media: rkvdec: Enable capture buffer holding
 for H264
Message-ID: <20220329153419.2l67xawgabqefcao@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-16-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328195936.82552-16-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_083424_234140_C67F6EA4 
X-CRM114-Status: GOOD (  12.54  )
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
>In order to support interlaced video decoding, the driver must
>allow holding the capture buffer so that the second field can
>be decoded into it.
>
>Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

>---
> drivers/staging/media/rkvdec/rkvdec.c | 4 ++++
> drivers/staging/media/rkvdec/rkvdec.h | 1 +
> 2 files changed, 5 insertions(+)
>
>diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
>index 2df8cf4883e2..05824f1997f7 100644
>--- a/drivers/staging/media/rkvdec/rkvdec.c
>+++ b/drivers/staging/media/rkvdec/rkvdec.c
>@@ -138,6 +138,7 @@ static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
> 		.ops = &rkvdec_h264_fmt_ops,
> 		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_vp9_decoded_fmts),
> 		.decoded_fmts = rkvdec_h264_vp9_decoded_fmts,
>+		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
> 	},
> 	{
> 		.fourcc = V4L2_PIX_FMT_VP9_FRAME,
>@@ -394,6 +395,9 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
> 	cap_fmt->fmt.pix_mp.ycbcr_enc = f->fmt.pix_mp.ycbcr_enc;
> 	cap_fmt->fmt.pix_mp.quantization = f->fmt.pix_mp.quantization;
>
>+	/* Enable format specific queue feature */

s/feature/features/

Greetings,
Sebastian

>+	vq->subsystem_flags |= desc->subsystem_flags;
>+
> 	return 0;
> }
>
>diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
>index 2f4ea1786b93..e37f1a015fa0 100644
>--- a/drivers/staging/media/rkvdec/rkvdec.h
>+++ b/drivers/staging/media/rkvdec/rkvdec.h
>@@ -81,6 +81,7 @@ struct rkvdec_coded_fmt_desc {
> 	const struct rkvdec_coded_fmt_ops *ops;
> 	unsigned int num_decoded_fmts;
> 	const u32 *decoded_fmts;
>+	u32 subsystem_flags;
> };
>
> struct rkvdec_dev {
>-- 
>2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
