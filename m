Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE427C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 14:55:37 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A65A613CD
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 14:55:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A65A613CD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tsUv4WpHq0QTuscbAm/8xRbPSlNndUAX/QcsT48szEU=; b=BctBQSqD08jYyRT8VFZmfcmbp
	/nI7+H5XTz6abRsqdvkq228XoyFljGyePitHeA5XVpRLZnFGN/9EiOrS3uwvtty6HixnKkepjftXg
	/TgNbmwJYqIBCnHew8MdNLXQHPKhjCRfA99bkXa+mZ/igAR/4KAtXMifhRwqGe8zkODOoZhBnKo2t
	5Ouiv7+z+pBe/K2GlFockKp9y+P7PuYq++iz5S3v++RNpsqfNpdurGcdOYuoznB1Wo3uX0Lo/BcV/
	jkjhqLuy37HG3ZcFlOnsQ6NK0X47S3o+mfFMihOlBFKvobJpXjZ8GII2GTtyUQp/W7/aV/jXdZ2mD
	ds8YvMngQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leIw0-001V3h-Dh; Wed, 05 May 2021 14:55:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leIvm-001V35-JC; Wed, 05 May 2021 14:55:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=a9bwAO8/d8Jte5gbnZ6hWeu/N4gY3zXOYoK86Tx0wKo=; b=poc2qaGTrb2b13t1aR4I44v97R
 g/OKgYgwE+Lnsji7dhP5NEkPFLNxCeim1jkCZ8GHgXE/bK211gcTvcb/cbe8u25wCwLzvlfrhO8Wm
 nQLko48niawlVCHVvJH8aRCSMU5GwuKjlaPfFpHXAGmtnZT3zxRBK60FVbRxci8pQCHiYKN4b9cI2
 7wZqp/12W74PzOZOyzk9xD/1o6jXO8VR2Icjr3Ovu1njqMyxa4HTsfxn26N+IFThGk5NcX8VnqyzW
 k20R4C5k/ML8l0hIY6zNwj5FaaoIVZ8EyHT0HPhskKOiWIgOezJQwUk0LnI2ScJ6yrECNEtpeszSL
 t63YygZw==;
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leIvj-004qbu-JN; Wed, 05 May 2021 14:55:17 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id eIvblNhz3WztCeIvelLmDW; Wed, 05 May 2021 16:55:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1620226512; bh=a9bwAO8/d8Jte5gbnZ6hWeu/N4gY3zXOYoK86Tx0wKo=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=l1jp6/QflViLdj07ys0xqiPUOqtxLytWpvBIV2eHJHfOOPitkWKkTxIMUnsLaS+W+
 N7USdyoN3rAXrm55ClG1YkG/bhznw5+8nCCM6JrFLqKzfbZS0Ht3Zk2BA9g1Ddu7WG
 DzWCHplasGzSXDsp2b1jx4H62jDxJTbesi0mCnTUUERb+mDKCoYXGHDuVODu5nnFLu
 lB+LtkQV+POlUOjQhpOw8y0lrKFl5k83IkRyBwFL7VSQdUVY3Voy1BW9WBiO6B0/5n
 HkdUiKCIs0YyxVpojUcqk4WrAImsea7g3EsuieV4gweRQ2yzoFMFULtemw+4Hhpper
 IVVkbx5ezxVWQ==
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com, cphealy@gmail.com
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
Date: Wed, 5 May 2021 16:55:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210420121046.181889-7-benjamin.gaignard@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfH+D4/P91TVy0EuRVOPmOcXqXGI+nR9CcO/KU85YvbZGxsCDh9RBU8noV/2jFD3cf4qzM2rx2mNW0gT+YGbLDQhyIzRGzmmogkVBCpTk//D/BBhVqUxO
 2RVIINc8ohtdbYxf6N7HREEB0rlkd1E/iaMdFfeWpiYFg3njYDHQamw7lFuGhNInaUMcMs6Hgx7Yv/ObKGZhXAFipEWi1jzZcA/F9GESyOOjVtYgKcotpxvc
 JV+185F+ZFivxeeeyfBP0nVI/ZMg4+iq2t6nCGDCgYUvXT+AHJ5fWHsKvTbtIM5sUr7omZONA6S9o09aYx2nzjiD7K+qjO1uvuXqGy9MjtvLG5BZ3NfgVeiQ
 X0cugdLM9wTygXqSJh4a1N7sKvzI3ZR8ru5AAhegDVQJ2qn3L90GzXzVpcPpk2kLsk61xDOZ57+sz0km5QQ9eJ3VzlqOjhcK0pIJ1IS7T2lFyqRLIB7cx/ts
 DtWJoSPMBFHCos8ma4I81IaXSVlWk+bZA9gkK7UU0zHlurQaMNa13My+2m1X5aoEjNyZ6bseI7mIwcNxbkhnVFJD/qTmRnkMmZY0VHj6dBJruf0UCXMBdwMH
 dSTHRD5KX8oRIr+5XGaJW77PgwnOewh5Ne4MXKSFJLDE7IenkYSz5Jl6/RVU12iZf1nFSgcfjTRa0oCqHWC77ivYQZvzRhUXO7X5piViNM1OOvuVr1e+8HWB
 yHaZuOnd7WUhrHqsXryjOdy73/oFvAVLCfgPU6UXqgs1WSAM3dIjRiviIH2CXUMMtRo7ShFWqAbJo5nehgao1uUSIaYGF2pPJ30QikGXteaJJ39gyDsWYo5E
 9GaJVvx0WuzIjPHy5F+40SchwiD3A0vwM0txuMiC+oKWUJqlqHhnAA8B6fMUN7DZsO+6wypdaui6bTCWCaz2JIvX/oXH5Fw1XR+JWIuqu+uf0aB6aebsUrUS
 +0G6yrQQAMvrwOplbFBcCxLlulukDGo31SE3ovfX8e4gZLNgLB2Mf7pnmlY2s8NsRW6OFl2wq9Uud+GdELuGrR5lk2qIuEWb6P2wFseTHEQXsKuh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_075515_832330_5A397E6A 
X-CRM114-Status: GOOD (  30.55  )
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

On 20/04/2021 14:10, Benjamin Gaignard wrote:
> The HEVC HANTRO driver needs to know the number of bits to skip at
> the beginning of the slice header.
> That is a hardware specific requirement so create a dedicated control
> for this purpose.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../userspace-api/media/drivers/hantro.rst    | 19 +++++++++++++++++++
>  .../userspace-api/media/drivers/index.rst     |  1 +
>  include/media/hevc-ctrls.h                    | 13 +++++++++++++
>  3 files changed, 33 insertions(+)
>  create mode 100644 Documentation/userspace-api/media/drivers/hantro.rst
> 
> diff --git a/Documentation/userspace-api/media/drivers/hantro.rst b/Documentation/userspace-api/media/drivers/hantro.rst
> new file mode 100644
> index 000000000000..cd9754b4e005
> --- /dev/null
> +++ b/Documentation/userspace-api/media/drivers/hantro.rst
> @@ -0,0 +1,19 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +Hantro video decoder driver
> +===========================
> +
> +The Hantro video decoder driver implements the following driver-specific controls:
> +
> +``V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP (integer)``
> +    Specifies to Hantro HEVC video decoder driver the number of data (in bits) to
> +    skip in the slice segment header.
> +    If non-IDR, the bits to be skipped go from syntax element "pic_output_flag"
> +    to before syntax element "slice_temporal_mvp_enabled_flag".
> +    If IDR, the skipped bits are just "pic_output_flag"
> +    (separate_colour_plane_flag is not supported).

I'm not very keen on this. Without this information the video data cannot be
decoded, or will it just be suboptimal?

The problem is that a generic decoder would have to know that the HW is a hantro,
and then call this control. If they don't (and are testing on non-hantro HW), then
it won't work, thus defeating the purpose of the HW independent decoder API.

Since hantro is widely used, and if there is no other way to do this beside explitely
setting this control, then perhaps this should be part of the standard HEVC API.
Non-hantro drivers that do not need this can just skip it.

Regards,

	Hans

> +
> +.. note::
> +
> +        This control is not yet part of the public kernel API and
> +        it is expected to change.
> diff --git a/Documentation/userspace-api/media/drivers/index.rst b/Documentation/userspace-api/media/drivers/index.rst
> index 1a9038f5f9fa..12e3c512d718 100644
> --- a/Documentation/userspace-api/media/drivers/index.rst
> +++ b/Documentation/userspace-api/media/drivers/index.rst
> @@ -33,6 +33,7 @@ For more details see the file COPYING in the source distribution of Linux.
>  
>  	ccs
>  	cx2341x-uapi
> +        hantro
>  	imx-uapi
>  	max2175
>  	meye-uapi
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index 8e0109eea454..b713eeed1915 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -224,4 +224,17 @@ struct v4l2_ctrl_hevc_decode_params {
>  	__u64	flags;
>  };
>  
> +/*  MPEG-class control IDs specific to the Hantro driver as defined by V4L2 */
> +#define V4L2_CID_CODEC_HANTRO_BASE				(V4L2_CTRL_CLASS_CODEC | 0x1200)
> +/*
> + * V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP -
> + * the number of data (in bits) to skip in the
> + * slice segment header.
> + * If non-IDR, the bits to be skipped go from syntax element "pic_output_flag"
> + * to before syntax element "slice_temporal_mvp_enabled_flag".
> + * If IDR, the skipped bits are just "pic_output_flag"
> + * (separate_colour_plane_flag is not supported).
> + */
> +#define V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP	(V4L2_CID_CODEC_HANTRO_BASE + 0)
> +
>  #endif
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
