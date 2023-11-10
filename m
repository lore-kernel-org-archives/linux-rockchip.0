Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C333DC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 21:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:In-Reply-To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Pr/bPz6nXbMIaDdkCL2+5tRenD1BcO47yhZULhmQw7c=; b=QfKlPGJO+bm/hv
	UKxaTO1yErRhClZ4IO7VKmDm2q8Z7rvewSVW8cHhcnSGc0w71GgKPj90PkZcrlKS6ktEHMKHl7az5
	A1MQZeKceLsvlL8aqIHVguDiSXJQ0a4FjjZpBS9k1m/8DAVS99PUOR4KgX+WIMcw3HVouyF2rN4Mz
	FvC2vzkpcBlOPKE/VPQ70/CXWMlSjAA3RHM62mZDRDbaahAM6kS/R8qtsy19ThkrEwkHYHxGMKv9Z
	aG9T3GXw/nYeSmcJFn3XNDhUZCj/a7+HgBe7rVfbKZjFPKCCW6BXddh5QBVmg70HSmvQfo0MOL3wC
	HmGgwlaroWNpVEcz/wSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Yjy-009SJv-1D;
	Fri, 10 Nov 2023 21:08:34 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Yjw-009SIo-02
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Nov 2023 21:08:33 +0000
Received: from hamburger.collabora.co.uk (hamburger.collabora.co.uk [IPv6:2a01:4f8:1c1c:f269::1])
	by madras.collabora.co.uk (Postfix) with ESMTP id D3FAD66073EF;
	Fri, 10 Nov 2023 21:08:27 +0000 (GMT)
From: "Daniel Almeida" <daniel.almeida@collabora.com>
In-Reply-To: <20231109201640.340556-4-paul.kocialkowski@bootlin.com>
X-Forward: 127.0.0.1
Date: Fri, 10 Nov 2023 21:08:27 +0000
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev, "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>, "Philipp Zabel" <p.zabel@pengutronix.de>, "Mauro Carvalho Chehab" <mchehab@kernel.org>, "Hans Verkuil" <hverkuil-cisco@xs4all.nl>, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Nicolas Dufresne" <nicolas.dufresne@collabora.com>, "Sebastian Fricke" <sebastian.fricke@collabora.com>, "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>
To: "Paul Kocialkowski" <paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Message-ID: <667d-654e9c00-5-40e97880@22375169>
Subject: =?utf-8?q?Re=3A?= [PATCH 4/4] =?utf-8?q?media=3A?==?utf-8?q?_rkvdec=3A?= 
 Hook the =?utf-8?q?(TRY=5F)DECODER=5FCMD?= stateless ioctls
User-Agent: SOGoMail 5.8.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130832_177407_F6DEC675 
X-CRM114-Status: GOOD (  14.12  )
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

On Thursday, November 09, 2023 17:16 -03, Paul Kocialkowski <paul.kocialkowski@bootlin.com> wrote:

> The (TRY_)DECODER_CMD ioctls are used to support flushing when holding capture
> buffers is supported. This is the case of this driver but the ioctls were never
> hooked to the ioctl ops.
> 
> Add them to correctly support flushing.
> 
> Fixes: ed7bb87d3d03 ("media: rkvdec: Enable capture buffer holding for H264")
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 84a41792cb4b..ac398b5a9736 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -461,6 +461,9 @@ static const struct v4l2_ioctl_ops rkvdec_ioctl_ops = {
>  
>  	.vidioc_streamon = v4l2_m2m_ioctl_streamon,
>  	.vidioc_streamoff = v4l2_m2m_ioctl_streamoff,
> +
> +	.vidioc_decoder_cmd = v4l2_m2m_ioctl_stateless_decoder_cmd,
> +	.vidioc_try_decoder_cmd = v4l2_m2m_ioctl_stateless_try_decoder_cmd,
>  };
>  
>  static int rkvdec_queue_setup(struct vb2_queue *vq, unsigned int *num_buffers,
> -- 
> 2.42.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
