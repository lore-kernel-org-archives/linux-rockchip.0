Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D41E6C83F01
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Aug 2023 13:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTphUbgXXlKwa0TZG6sazKL7LslJ9U3kBNCFdotjyBg=; b=V0SKtO0Ae96lpX
	3Q8+R7lsv/kJcNjfrocPJHrqUf/s/0MRCFs8wVyF0ygd7L2BgWlFTbfkWCxB9TOcZ6oC0sG/QU0Vu
	vglwjyi1QMTVjh+Rcf090pvkjrfAzh0ndHQhlSWy7HZL7m9MBpIiWMDY2xH2j6AGFfnJkb6eUB2bK
	drSvk+7/SriinzkyVfYZns1uHU8H4mbl1zghhRXVqqPcEVeKoZPm5XkXr0OVjNjIYyrOC731tdSWE
	oT/3VgZBNwfzIggGCsHOL4RzIvjkIq4gBJ6QAEXarfEo8QLKthDnZGRLcHvZUwsOY9/kHd5ssADRP
	ZFFO03HnON1eofeR3Emg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLc5-00Dccz-1U;
	Wed, 30 Aug 2023 13:52:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLc0-00Dcb4-14;
	Wed, 30 Aug 2023 13:52:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 35DA7602F8;
	Wed, 30 Aug 2023 13:51:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DD88C433C8;
	Wed, 30 Aug 2023 13:51:46 +0000 (UTC)
Message-ID: <970e55be-d5ed-e4d5-b12a-451113b9be90@xs4all.nl>
Date: Wed, 30 Aug 2023 15:51:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v5 09/10] media: v4l2: Add DELETE_BUFS ioctl
Content-Language: en-US, nl
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230824092133.39510-1-benjamin.gaignard@collabora.com>
 <20230824092133.39510-10-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230824092133.39510-10-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_065200_456568_76E81CA2 
X-CRM114-Status: GOOD (  25.03  )
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

On 24/08/2023 11:21, Benjamin Gaignard wrote:
> VIDIOC_DELETE_BUFS ioctl allows to delete buffers from a queue.
> The number of buffers to delete in given by count field of
> struct v4l2_delete_buffers and the range start at the index
> specified in the same structure.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../userspace-api/media/v4l/user-func.rst     |  1 +
>  .../media/v4l/vidioc-delete-bufs.rst          | 73 +++++++++++++++++++
>  .../media/common/videobuf2/videobuf2-core.c   | 34 +++++++++
>  .../media/common/videobuf2/videobuf2-v4l2.c   | 16 ++++
>  drivers/media/v4l2-core/v4l2-dev.c            |  1 +
>  drivers/media/v4l2-core/v4l2-ioctl.c          | 17 +++++
>  include/media/v4l2-ioctl.h                    |  4 +
>  include/media/videobuf2-core.h                |  9 +++
>  include/media/videobuf2-v4l2.h                | 11 +++
>  include/uapi/linux/videodev2.h                | 17 +++++
>  10 files changed, 183 insertions(+)
>  create mode 100644 Documentation/userspace-api/media/v4l/vidioc-delete-bufs.rst
> 
> diff --git a/Documentation/userspace-api/media/v4l/user-func.rst b/Documentation/userspace-api/media/v4l/user-func.rst
> index 15ff0bf7bbe6..3fd567695477 100644
> --- a/Documentation/userspace-api/media/v4l/user-func.rst
> +++ b/Documentation/userspace-api/media/v4l/user-func.rst
> @@ -17,6 +17,7 @@ Function Reference
>      vidioc-dbg-g-chip-info
>      vidioc-dbg-g-register
>      vidioc-decoder-cmd
> +    vidioc-delete-bufs
>      vidioc-dqevent
>      vidioc-dv-timings-cap
>      vidioc-encoder-cmd
> diff --git a/Documentation/userspace-api/media/v4l/vidioc-delete-bufs.rst b/Documentation/userspace-api/media/v4l/vidioc-delete-bufs.rst
> new file mode 100644
> index 000000000000..a55fe6331fc8
> --- /dev/null
> +++ b/Documentation/userspace-api/media/v4l/vidioc-delete-bufs.rst
> @@ -0,0 +1,73 @@
> +.. SPDX-License-Identifier: GFDL-1.1-no-invariants-or-later
> +.. c:namespace:: V4L
> +
> +.. _VIDIOC_DELETE_BUFS:
> +
> +************************
> +ioctl VIDIOC_DELETE_BUFS
> +************************
> +
> +Name
> +====
> +
> +VIDIOC_DELETE_BUFS - Deletes buffers from a queue
> +
> +Synopsis
> +========
> +
> +.. c:macro:: VIDIOC_DELETE_BUFs
> +
> +``int ioctl(int fd, VIDIOC_DELETE_BUFs, struct v4l2_delete_buffers *argp)``
> +
> +Arguments
> +=========
> +
> +``fd``
> +    File descriptor returned by :c:func:`open()`.
> +
> +``argp``
> +    Pointer to struct :c:type:`v4l2_delete_buffers`.
> +
> +Description
> +===========
> +
> +Applications can optionally call the :ref:`VIDIOC_DELETE_BUFS` ioctl to
> +delete buffers from a queue.
> +
> +.. c:type:: v4l2_delete_buffers
> +
> +.. tabularcolumns:: |p{4.4cm}|p{4.4cm}|p{8.5cm}|
> +
> +.. flat-table:: struct v4l2_delete_buffers
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - __u32
> +      - ``index``
> +      - The starting buffer index to delete.
> +    * - __u32
> +      - ``count``
> +      - The number of buffers to be deleted.
> +    * - __u32
> +      - ``type``
> +      - Type of the stream or buffers, this is the same as the struct
> +	:c:type:`v4l2_format` ``type`` field. See
> +	:c:type:`v4l2_buf_type` for valid values.
> +    * - __u32
> +      - ``reserved``\ [13]
> +      - A place holder for future extensions. Drivers and applications
> +	must set the array to zero.
> +
> +Return Value
> +============
> +
> +On success 0 is returned, on error -1 and the ``errno`` variable is set
> +appropriately. The generic error codes are described at the
> +:ref:`Generic Error Codes <gen-errors>` chapter.
> +
> +EBUSY
> +    File I/O is in progress.
> +
> +EINVAL
> +    The buffer ``index`` doesn't exist in the queue.
> diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
> index 70e36389b704..3d915b4c33b2 100644
> --- a/drivers/media/common/videobuf2/videobuf2-core.c
> +++ b/drivers/media/common/videobuf2/videobuf2-core.c
> @@ -1634,6 +1634,40 @@ int vb2_core_prepare_buf(struct vb2_queue *q, unsigned int index, void *pb)
>  }
>  EXPORT_SYMBOL_GPL(vb2_core_prepare_buf);
>  
> +int vb2_core_delete_buf(struct vb2_queue *q, unsigned int index)

I didn't realize this the first time I reviewed this, but I would
suggest that you change this to

vb2_core_delete_bufs(struct vb2_queue *q, unsigned int index, unsigned int count)

This is consistent with vb2_core_create_bufs, and I strongly suspect it will
help with locking (mmap_lock), since you don't need to lock for every buffer you
delete, you can do it up front.

And you can move the index/count validation to the core as well, that will help
if e.g. dvb would want to use this ioctl in the future.

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
