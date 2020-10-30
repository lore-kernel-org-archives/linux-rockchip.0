Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DATE_IN_PAST_03_06,
	DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E644C4741F
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 17:09:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CCED620731
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 17:09:40 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="wiF4iFcj"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CCED620731
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aUgWQaX66LIdu0cHmjnIUFS+5YZbgkjaDKcrel49BGM=; b=wiF4iFcjKlECNbl6dkRnpQVJl
	S7+9UHmOjQN0wLO4QOFaMlN/gQZbM33cJUwb4wtwD9Nyu5Tk6workKYbKYXZ+wjt9FAM7v2Qk8JY1
	jZXGFuJwzXhnLXbkcUgpydU/a7Iu/wjK8oMIIoEZGcBP3EwBLKFlLFKrkGQyCgvsoF2tmOqkUGCqF
	o+YUdh/9Y7iDmqgmTGoRzGUl0GOJQjNtu01QRPBHV1lIk/LVXVRnVVBwRI52N+zKwHl2AJJDdnqgB
	VQFs7DRRqd6iJzBZXrL9vALsswSVVkoD0fzRyRGw737FWFDSZ/4ER8tV8u79tQc03CD2tLXPpdvTJ
	JD//2e7cA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYXu8-0002KK-LW; Fri, 30 Oct 2020 17:09:32 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYXu3-0002I8-DA
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 17:09:28 +0000
IronPort-SDR: 8ysmPhSY7gs0XaTeAaREjXdThnJTckiT2/zDMX0gkeJy9WXLRiKfWFCVvJWvzn2j3HWVzBELQg
 E1gcneYulGJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="232815552"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="232815552"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 10:09:19 -0700
IronPort-SDR: 5N2oZGH55VprlyiNlLydwafobFQ6yreOgcuf7zUhyzWb4eHAo6KeTv06azpEnyGk/Dii5CQ/vD
 XgMeaOjoaRjw==
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="335480145"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 10:09:16 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id F2E6A20736; Fri, 30 Oct 2020 16:02:41 +0200 (EET)
Date: Fri, 30 Oct 2020 16:02:41 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3 1/2] media: uapi: add MEDIA_BUS_FMT_METADATA_FIXED
 media bus format.
Message-ID: <20201030140241.GQ26150@paasikivi.fi.intel.com>
References: <20201030134609.30020-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030134609.30020-1-dafna.hirschfeld@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_130927_597359_BDCC63CD 
X-CRM114-Status: GOOD (  26.56  )
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
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

On Fri, Oct 30, 2020 at 02:46:08PM +0100, Dafna Hirschfeld wrote:
> MEDIA_BUS_FMT_METADATA_FIXED should be used when
> the same driver handles both sides of the link and
> the bus format is a fixed metadata format that is
> not configurable from userspace.
> The width and height will be set to 0 for this format.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
> changes since v2:
> added documentation in subdev-formats.rst
> changes since v1:
> 1. replace "This format may have 0 height and width."
> with "Width and height will be set to 0 for this format."
> and add it also to the commit log
> 2. s/meida:/media:/ in the patch subject line
> 
>  .../media/v4l/subdev-formats.rst              | 27 +++++++++++++++++++
>  include/uapi/linux/media-bus-format.h         |  8 ++++++
>  2 files changed, 35 insertions(+)
> 
> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> index c9b7bb3ca089..7f16cbe46e5c 100644
> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> @@ -7899,3 +7899,30 @@ formats.
>        - 0x5001
>        - Interleaved raw UYVY and JPEG image format with embedded meta-data
>  	used by Samsung S3C73MX camera sensors.
> +
> +.. _v4l2-mbus-metadata-fmts:
> +
> +Metadata Formats
> +^^^^^^^^^^^^^^^^
> +
> +This section lists all metadata formats.
> +
> +The following table lists the existing metadata formats.
> +
> +.. tabularcolumns:: |p{8.0cm}|p{1.4cm}|p{7.7cm}|
> +
> +.. flat-table:: Metadata formats
> +    :header-rows:  1
> +    :stub-columns: 0
> +
> +    * - Identifier
> +      - Code
> +      - Comments
> +    * .. _MEDIA-BUS-FMT-METADATA-FIXED:
> +
> +      - MEDIA_BUS_FMT_METADATA_FIXED
> +      - 0x7001
> +      - This format should be used when the same driver handles
> +	both sides of the link and the bus format is a fixed
> +	metadata format that is not configurable from userspace.
> +	Width and height will be set to 0 for this format.
> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
> index 84fa53ffb13f..2ce3d891d344 100644
> --- a/include/uapi/linux/media-bus-format.h
> +++ b/include/uapi/linux/media-bus-format.h
> @@ -156,4 +156,12 @@
>  /* HSV - next is	0x6002 */
>  #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
>  
> +/*
> + * This format should be used when the same driver handles
> + * both sides of the link and the bus format is a fixed
> + * metadata format that is not configurable from userspace.
> + * Width and height will be set to 0 for this format.
> + */

Does this mean that metadata with dimensions should not use
MEDIA_BUS_FMT_METADATA_FIXED? I guess that's not the intention? For some
formats the dimensions would be relevant but for others not. I'd thus
replace "will" by "may". Same for the documentation.

> +#define MEDIA_BUS_FMT_METADATA_FIXED		0x7001
> +
>  #endif /* __LINUX_MEDIA_BUS_FORMAT_H */

-- 
Kind regards,

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
