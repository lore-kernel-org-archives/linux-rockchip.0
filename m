Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99C03CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Nov 2025 23:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irI0Bi1P7P1SXlMDNvF9aQhGV2H66ZRjYqKIUCgQ4kM=; b=PjVWZBm1rVSnrI
	sLh18XL6q8Y6U6MF5+lTcGhVCF0cV+GXgL+HjwlshLb6JAK7GcJQmQDx+YIfuN69yh9Y16Pb9GgBo
	w7lwMdQhOysTpHow4NUC6GP6IrGJxo/D5GpgY/hmZiUGBwy9Yn6Vi1xHzR5pRcJRWV6OZcZGchN5Z
	4oy/gijD0AoGd/y8uexjl540ibGNDwMlBg3L8t90onMYQZEJv8GH/0bIkJkXLtgotUWPalPxL2+au
	xoqg3V0rf4hlfLaBXgZ7qhFdpLI8ONcQjE46wn3Z7v1euzrKn9scR9RAALgit6IpzfhNTEO2WMT1S
	M299JrlgTKFCr4MyYIAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHVyM-00000001YdV-2KlX;
	Fri, 07 Nov 2025 23:34:26 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHVyJ-00000001Yd0-1tFP;
	Fri, 07 Nov 2025 23:34:24 +0000
Received: from pendragon.ideasonboard.com (82-203-161-95.bb.dnainternet.fi [82.203.161.95])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 129F1A8F;
	Sat,  8 Nov 2025 00:32:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1762558345;
	bh=v+aqR0oFDtbY2RGxbmZS4i8tsceD2wMT6FgrKxFkNuE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ez+Kc6Zz2r29s2sYFBQG5meYqDQS0uR06fGd3xSE43sTrHVbruW1AMszX9TAleTON
	 u4RbeQ8JObhaehHFv3VGDLcKakJ5LehXpt9KkbYsUSV7k7MVrQAO9q0GNU73VX/6Ib
	 4nJS82/EDBUunMnuyX6kPqAVpNiBvhX7KnNyXuzo=
Date: Sat, 8 Nov 2025 01:34:15 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Keke Li <keke.li@amlogic.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dan Scally <dan.scally@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Antoine Bouyer <antoine.bouyer@nxp.com>,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Michael Riesch <michael.riesch@collabora.com>
Subject: Re: [PATCH v8 8/8] media: Documentation: kapi: Add v4l2 generic ISP
 support
Message-ID: <20251107233415.GK5558@pendragon.ideasonboard.com>
References: <20251020-extensible-parameters-validation-v8-0-afba4ba7b42d@ideasonboard.com>
 <20251020-extensible-parameters-validation-v8-8-afba4ba7b42d@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251020-extensible-parameters-validation-v8-8-afba4ba7b42d@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_153423_640838_2008C20C 
X-CRM114-Status: GOOD (  27.62  )
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

Hi Jacopo,

Thank you for the patch.

On Mon, Oct 20, 2025 at 10:24:54AM +0200, Jacopo Mondi wrote:
> Add to the driver-api documentation the v4l2-isp.h types and
> helpers documentation.
> 
> Reviewed-by: Daniel Scally <dan.scally@ideasonboard.com>
> Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
> Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> ---
>  Documentation/driver-api/media/v4l2-core.rst |  1 +
>  Documentation/driver-api/media/v4l2-isp.rst  | 49 ++++++++++++++++++++++++++++
>  MAINTAINERS                                  |  1 +
>  3 files changed, 51 insertions(+)
> 
> diff --git a/Documentation/driver-api/media/v4l2-core.rst b/Documentation/driver-api/media/v4l2-core.rst
> index ad987c34ad2a8460bb95e97adc4d850d624e0b81..a5f5102c64cca57b57b54ab95882b26286fb27de 100644
> --- a/Documentation/driver-api/media/v4l2-core.rst
> +++ b/Documentation/driver-api/media/v4l2-core.rst
> @@ -27,3 +27,4 @@ Video4Linux devices
>      v4l2-common
>      v4l2-tveeprom
>      v4l2-jpeg
> +    v4l2-isp
> diff --git a/Documentation/driver-api/media/v4l2-isp.rst b/Documentation/driver-api/media/v4l2-isp.rst
> new file mode 100644
> index 0000000000000000000000000000000000000000..150ba39b257b23e6a8ca1a348047f5b55588fbf7
> --- /dev/null
> +++ b/Documentation/driver-api/media/v4l2-isp.rst
> @@ -0,0 +1,49 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +V4L2 generic ISP parameters and statistics support
> +^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> +
> +Design rationale
> +================
> +
> +ISP configuration parameters and statistics are processed and collected by
> +drivers and exchanged with userspace through data types that usually
> +reflect the ISP peripheral registers layout.
> +
> +Each ISP driver defines its own metadata output format for parameters and
> +a metadata capture format for statistics. The buffer layout is realized by a
> +set of C structures that reflects the registers layout. The number and types
> +of C structures is fixed by the format definition and becomes part of the Linux
> +kernel uAPI/uABI interface.
> +
> +Because of the hard requirement of backward compatibility when extending the
> +user API/ABI interface, modifying an ISP driver capture or output metadata
> +format after it has been accepted by mainline is very hard if not impossible.
> +
> +It generally happens, in fact, that after the first accepted revision of an ISP
> +driver the buffers layout need to be modified, either to support new hardware
> +blocks, to fix bugs or to support different revisions of the hardware.
> +
> +Each of these situations would require defining a new metadata format, making it
> +really hard to maintain and extend drivers and requiring userspace to use
> +the correct format depending on the kernel revision in use.
> +
> +V4L2 ISP configuration parameters
> +=================================
> +
> +For these reasons, Video4Linux2 defines generic types for ISP configuration
> +parameters and statistics. Drivers are still expected to define their own
> +formats for their metadata output and capture nodes, but the buffers layout can
> +be defined using the extensible and versioned types defined by
> +include/uapi/linux/media/v4l2-isp.h.
> +
> +Drivers are expected to provide the definitions of their supported ISP blocks,
> +the control flags and the expected maximum size of a buffer.

What are the control flags here ? Is it a leftover from a previous
version ?

With this addressed,

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

> +
> +For driver developers a set of helper functions to assist them with validation
> +of the buffer received from userspace is available in
> +drivers/media/v4l2-core/v4l2-isp.c
> +
> +V4L2 ISP support driver documentation
> +=====================================
> +.. kernel-doc:: include/media/v4l2-isp.h
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5833f82caa7f2f734bb0e1be144ade2109b23988..cd1137c7754538d02bd72521fec6c89e082246d2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -26856,6 +26856,7 @@ V4L2 GENERIC ISP PARAMETERS AND STATISTIC FORMATS
>  M:	Jacopo Mondi <jacopo.mondi@ideasonboard.com>
>  L:	linux-media@vger.kernel.org
>  S:	Maintained
> +F:	Documentation/driver-api/media/v4l2-isp.rst
>  F:	Documentation/userspace-api/media/v4l/v4l2-isp.rst
>  F:	drivers/media/v4l2-core/v4l2-isp.c
>  F:	include/media/v4l2-isp.h

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
