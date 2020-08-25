Return-Path: <SRS0=C56+=CD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4761C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2020 13:04:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8106520738
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2020 13:04:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="fBiCf1Uy"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8106520738
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xiGdAmhFoxEaquh+ene19JSdhVhhjoCNpL9FciSj98c=; b=fBiCf1UywcTYN4ceaMa4bjPJo
	vPgPZNLqAAv+jz8wUvvgxk5m32sitZOXfrdgAzdD1F20WVX9CRFmMApfbSqmpWgahyTJ5kb4HBjjh
	yLYrNElFlB916qsEZyYyIkIa1pV7TiW7XGqXMPbPLapO8DtJwtvYmD691MRrKcH+BsqftBml6NAiL
	zxO47gF1NagjqakGgqLnzkMRJaWr06RP+xB+gL9DGOYOyt4hQcWVV4+cwRMPayCDTo4ORG0H+aQZC
	Q6yOpRoo9jpoxGvqT8uKi4gURGAk9HoUHPJa4OcWEmWv5OM8nURRguZzvrZEyRWfmsrm8nIrvtHLg
	yjLOzyCyQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kAYd4-0006nG-HL; Tue, 25 Aug 2020 13:04:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kAYd1-0006lN-JD
 for linux-rockchip@lists.infradead.org; Tue, 25 Aug 2020 13:04:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 79354299384
Subject: Re: [PATCH v2 1/2] media: pixfmt-meta-rkisp1.rst: add description of
 rkisp1 metadata formats in pixfmt-meta-rkisp1.rst
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200818102703.30471-1-dafna.hirschfeld@collabora.com>
 <20200818102703.30471-2-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <77892b05-5ebb-c4a1-5982-8362eb62aef5@collabora.com>
Date: Tue, 25 Aug 2020 10:04:33 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200818102703.30471-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200825_090443_831150_7A791AAE 
X-CRM114-Status: GOOD (  23.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 8/18/20 7:27 AM, Dafna Hirschfeld wrote:
> The metadata formats V4L2_META_FMT_RK_ISP1_PARAMS,
> V4L2_META_FMT_RK_ISP1_STAT_3A are currently described in
> two files under
> drivers/staging/media/rkisp1/Documentation/media/uapi/v4l
> 
> This patch moves the description to one file:
> Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
> The patch also extends the description and adds the rst file to
> toctree.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

lgtm

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks!
Helen

> ---
>  .../userspace-api/media/v4l/meta-formats.rst  |  1 +
>  .../media/v4l/pixfmt-meta-rkisp1.rst          | 49 +++++++++++++++++++
>  .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    | 23 ---------
>  .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      | 22 ---------
>  4 files changed, 50 insertions(+), 45 deletions(-)
>  create mode 100644 Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
>  delete mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
>  delete mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> 
> diff --git a/Documentation/userspace-api/media/v4l/meta-formats.rst b/Documentation/userspace-api/media/v4l/meta-formats.rst
> index 7dcc4bacbb0c..55a635534bc9 100644
> --- a/Documentation/userspace-api/media/v4l/meta-formats.rst
> +++ b/Documentation/userspace-api/media/v4l/meta-formats.rst
> @@ -21,6 +21,7 @@ These formats are used for the :ref:`metadata` interface only.
>  
>      pixfmt-meta-d4xx
>      pixfmt-meta-intel-ipu3
> +    pixfmt-meta-rkisp1
>      pixfmt-meta-uvc
>      pixfmt-meta-vsp1-hgo
>      pixfmt-meta-vsp1-hgt
> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst b/Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
> new file mode 100644
> index 000000000000..7e43837ed260
> --- /dev/null
> +++ b/Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
> @@ -0,0 +1,49 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +.. _v4l2-meta-fmt-params-rkisp1:
> +.. _v4l2-meta-fmt-stat-rkisp1:
> +
> +*****************************************************************************
> +V4L2_META_FMT_RK_ISP1_PARAMS ('rk1p'), V4L2_META_FMT_RK_ISP1_STAT_3A ('rk1s')
> +*****************************************************************************
> +
> +Configuration parameters
> +========================
> +
> +The configuration parameters are passed to the
> +:ref:`rkisp1_params <rkisp1_params>` metadata output video node, using
> +the :c:type:`v4l2_meta_format` interface. The buffer contains
> +a single instance of the C structure :c:type:`rkisp1_params_cfg` defined in
> +``rkisp1-config.h``. So the structure can be obtained from the buffer by:
> +
> +.. code-block:: c
> +
> +	struct rkisp1_params_cfg *params = (struct rkisp1_params_cfg*) buffer;
> +
> +.. rkisp1_stat_buffer
> +
> +3A and histogram statistics
> +===========================
> +
> +The ISP1 device collects different statistics over an input Bayer frame.
> +Those statistics are obtained from the :ref:`rkisp1_stats <rkisp1_stats>`
> +metadata capture video node,
> +using the :c:type:`v4l2_meta_format` interface. The buffer contains a single
> +instance of the C structure :c:type:`rkisp1_stat_buffer` defined in
> +``rkisp1-config.h``. So the structure can be obtained from the buffer by:
> +
> +.. code-block:: c
> +
> +	struct rkisp1_stat_buffer *stats = (struct rkisp1_stat_buffer*) buffer;
> +
> +The statistics collected are Exposure, AWB (Auto-white balance), Histogram and
> +AF (Auto-focus). See :c:type:`rkisp1_stat_buffer` for details of the statistics.
> +
> +The 3A statistics and configuration parameters described here are usually
> +consumed and produced by dedicated user space libraries that comprise the
> +important tuning tools using software control loop.
> +
> +rkisp1 uAPI data types
> +======================
> +
> +.. kernel-doc:: drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> deleted file mode 100644
> index 32034e481357..000000000000
> --- a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> +++ /dev/null
> @@ -1,23 +0,0 @@
> -.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> -
> -.. _v4l2-meta-fmt-rkisp1-params:
> -
> -============================
> -V4L2_META_FMT_RK_ISP1_PARAMS
> -============================
> -
> -Rockchip ISP1 Parameters Data
> -
> -Description
> -===========
> -
> -This format describes input parameters for the Rockchip ISP1.
> -
> -It uses c-struct :c:type:`rkisp1_params_cfg`, which is defined in
> -the ``linux/rkisp1-config.h`` header file.
> -
> -The parameters consist of multiple modules.
> -The module won't be updated if the corresponding bit was not set in module_*_update.
> -
> -.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> -   :functions: rkisp1_params_cfg
> diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> deleted file mode 100644
> index 4ad303f96421..000000000000
> --- a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> -
> -.. _v4l2-meta-fmt-rkisp1-stat:
> -
> -=============================
> -V4L2_META_FMT_RK_ISP1_STAT_3A
> -=============================
> -
> -
> -Rockchip ISP1 Statistics Data
> -
> -Description
> -===========
> -
> -This format describes image color statistics information generated by the Rockchip
> -ISP1.
> -
> -It uses c-struct :c:type:`rkisp1_stat_buffer`, which is defined in
> -the ``linux/rkisp1-config.h`` header file.
> -
> -.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> -   :functions: rkisp1_stat_buffer
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
