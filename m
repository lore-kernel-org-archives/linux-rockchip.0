Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E823C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jan 2023 19:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzP2J2q784Ff246vx1bBCO3D5CbmtA6lAAwBTCe8OLo=; b=tsfs1JW/cIp4cr
	/+2iG+G4Js0NuUftuU6L34qQpKEx0n/cDZ4QFCAUbbzW8vMSTkXuKIiGX8HI2AIyaWPw7jVoTOHpv
	vvfitz4rvqMXYmrjPoErAffjsHppIBwFmeC+NDxXhNDRywixx5NMWXX+c+gBN1YNmuG+bnolME0og
	0aypSf6dimzFViStoOGGK+kqmI3G8XOBhPaPcjFIXEiMZJ/K+6iUQ5Q59JNC6MDLGgHgXs/2YjV9j
	zNxaiPQNsE8RbC2hgRj+LgJ+EJMvDPwqiTjap3zJhWqnU0rZYY3zrAlS3zF1p/dP+rpb3mFT5pU+n
	RXQTmdEMSRV3/6fCwiDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD9Vr-00BTPJ-CV; Wed, 04 Jan 2023 19:33:23 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD9Vm-00BTIz-4b
	for linux-rockchip@lists.infradead.org; Wed, 04 Jan 2023 19:33:19 +0000
Received: by mail-lj1-x236.google.com with SMTP id v23so26383778ljj.9
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jan 2023 11:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F6N+OP+6yy03flX+mI06gXGKWmxb8vTgx5JtQZDesWc=;
        b=ywyJ1diL3UYldnanPgu/gbwLosUj6n9Xuv3577wYf9BSvcU2PDcsjh2ibb8sXd9Tie
         E8aPBCBkVzYCMbxpOU/YKCI9CmG2nYIvmQQ3kh6jz5mxzAmxYrml35vV8rCxjRVeFb1U
         fO4J6FyfrVi5S0U8084vsGWn4mFMng22spHnL0OCYGndX/sdTlO62l2U5oaud7K8q8bS
         EPYLdxoRLKrlnbA6SBQjod7CIIMlmj4hl/vLD8KCEOkMk73GZMehbfs6yKOw8IlliRIi
         3sFKYdwvw8iBK0q7aL4/8QhxNS5xd/ThFdxd2q0xaei41ggJMZ+qVKOtTb/3r27vexB4
         8gPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F6N+OP+6yy03flX+mI06gXGKWmxb8vTgx5JtQZDesWc=;
        b=Xp8hhThgwX3zZpJF+yqIC+rJgyBn//XEs3I35tJ05Z96PkxdeqY8yboYPSYFwb27P/
         dFVQ8A/wJLb4iwM2qyse+fN7NzSc0RhWRnzGN+kZ/Ez5uN2RKzsh+a9ClUWoKK/olzpU
         sGDkDCLLCBZNVaFEpkQTUfj8TEgRjr077ebzCal+XGBoiC0FjnfJMQ80/3oGhYhtdPVy
         MqcIF1uD5OCJ/xAMgjBAf5oxd47Am1Jj+QJbiMC5ZQZKbqJN3bZI8MEhsO6hgtWX918l
         OOreaWCb5BoQvxOgJmDmUOdA1AGEBZVbemZ+95lmLxqLHr70VkxTFiR4v0fUxUAGeRt+
         CScQ==
X-Gm-Message-State: AFqh2kqFqzOgRHmxvdpb1mppllIZgExO8ewvHDFVOSQbFrV7xhTgGAN+
	jV79a4tBMernWMvQmZVrqU4QbmqzQN3NoJ8Wv41Cmg==
X-Google-Smtp-Source: AMrXdXsw/78tBcgISSlM45Fz8wx/0zC7FLlIbONYasugHZBibZQRhly4sSsbLzK+gYIUEjhvu2ylEmwzLDylydzpIy8=
X-Received: by 2002:a2e:b54c:0:b0:27f:e3e3:7f25 with SMTP id
 a12-20020a2eb54c000000b0027fe3e37f25mr655188ljn.103.1672860793967; Wed, 04
 Jan 2023 11:33:13 -0800 (PST)
MIME-Version: 1.0
References: <20230103170058.810597-1-benjamin.gaignard@collabora.com> <20230103170058.810597-8-benjamin.gaignard@collabora.com>
In-Reply-To: <20230103170058.810597-8-benjamin.gaignard@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 4 Jan 2023 16:33:02 -0300
Message-ID: <CAAEAJfBpGwa-ZDFFCep8rk4+dgLrYOFdfyrqBZP68C+jkN0qMQ@mail.gmail.com>
Subject: Re: [PATCH v2 07/13] media: verisilicon: Check AV1 bitstreams bit depth
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_113318_500430_1B5F89E4 
X-CRM114-Status: GOOD (  19.68  )
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

Hi Benjamin,

Thanks for the patch.

On Tue, Jan 3, 2023 at 2:01 PM Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> The driver supports 8 and 10 bits bitstreams, make sure to discard
> other cases.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/media/platform/verisilicon/hantro_drv.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 8e93710dcfed..16539e89935c 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -282,7 +282,13 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
>                 /* We only support profile 0 */
>                 if (dec_params->profile != 0)
>                         return -EINVAL;
> +       } else if (ctrl->id == V4L2_CID_STATELESS_AV1_SEQUENCE) {
> +               const struct v4l2_ctrl_av1_sequence *sequence = ctrl->p_new.p_av1_sequence;
> +
> +               if (sequence->bit_depth != 8 && sequence->bit_depth != 10)
> +                       return -EINVAL;
>         }
> +
>         return 0;
>  }
>
> @@ -333,7 +339,13 @@ static int hantro_av1_s_ctrl(struct v4l2_ctrl *ctrl)
>
>         switch (ctrl->id) {
>         case V4L2_CID_STATELESS_AV1_SEQUENCE:
> -               ctx->bit_depth = ctrl->p_new.p_av1_sequence->bit_depth;
> +               int bit_depth = ctrl->p_new.p_av1_sequence->bit_depth;
> +
> +               if (vb2_is_streaming(v4l2_m2m_get_src_vq(ctx->fh.m2m_ctx)))
> +                       if (ctx->bit_depth != bit_depth)
> +                               return -EINVAL;
> +

Please use the v4l2_ctrl_grab API. Can you send a separate series to address
this for the other codecs?

Thanks a lot!
Ezequiel

> +               ctx->bit_depth = bit_depth;
>                 break;
>         default:
>                 return -EINVAL;
> --
> 2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
