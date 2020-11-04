Return-Path: <SRS0=nVt2=EK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6F9CC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 12:32:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 606EC208C7
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 12:32:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="m9bXERdF"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 606EC208C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UoptomUBpP81n4gyGl28qPRECehR0mD/8Q8ab85oBqM=; b=m9bXERdFANMzEgV0Xk3p/pSGT
	xq5CrcAuuMWBCJehEsdDG7WZgamX/JADnBiKAT1f7bhQAJOY4whwsrR20OAAAMjlqD9pI2XhL21zH
	fhgD3HsUItQojQl7MLDNArD/AInjEvdGOfViKNP2+knhJ6mfRqlPcDimMiLt9kWJ8SUaOpc6KrmLK
	h1ySuZ5OnV4/Aaqh3ZhhZI1JVKgNycT6hLoKgLZv79tE+HFGGwTEpvrHZA3YE8iKQJL+4AsKokxfl
	RGWmCU+rfEC3xV50AHaOs/Ex33UCxkZ2jCuV2V70xlPDRXHHM8Gh61zsLQKHGtbXwqd0XhqzBo0OZ
	N4vevbUjA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaHxm-0000PQ-E4; Wed, 04 Nov 2020 12:32:30 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaHxj-0000Ml-58
 for linux-rockchip@lists.infradead.org; Wed, 04 Nov 2020 12:32:28 +0000
IronPort-SDR: 0N29Im6eXt4DT4OO05QVE4+QgdekbE7srn611OgJrpfaPncm0VoLfDbrCKP6s8/xwAlOQt9bum
 PLyY4JQAVsuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="253918750"
X-IronPort-AV: E=Sophos;i="5.77,450,1596524400"; d="scan'208";a="253918750"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 04:32:23 -0800
IronPort-SDR: YHw6fr4NpvYaMsecxJpsx6tDZ4AfP78kSnkfTF+lSC8swYt6M+WFmJRY1TxJ3ktuTFhFbkWT1W
 yX8B6VWv82iw==
X-IronPort-AV: E=Sophos;i="5.77,450,1596524400"; d="scan'208";a="426653312"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 04:32:20 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 8131120A2D; Wed,  4 Nov 2020 14:32:18 +0200 (EET)
Date: Wed, 4 Nov 2020 14:32:18 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v3 1/2] media: uapi: add MEDIA_BUS_FMT_METADATA_FIXED
 media bus format.
Message-ID: <20201104123218.GQ26150@paasikivi.fi.intel.com>
References: <20201030134609.30020-1-dafna.hirschfeld@collabora.com>
 <20201030140241.GQ26150@paasikivi.fi.intel.com>
 <5c8852f5-a803-1bd0-7798-3cca0d7ee9ea@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c8852f5-a803-1bd0-7798-3cca0d7ee9ea@xs4all.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201104_073227_426102_4DD7ABA8 
X-CRM114-Status: GOOD (  35.55  )
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
Cc: mchehab@kernel.org, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 dafna3@gmail.com, tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Hans,

On Wed, Nov 04, 2020 at 01:16:03PM +0100, Hans Verkuil wrote:
> On 30/10/2020 15:02, Sakari Ailus wrote:
> > Hi Dafna,
> > 
> > On Fri, Oct 30, 2020 at 02:46:08PM +0100, Dafna Hirschfeld wrote:
> >> MEDIA_BUS_FMT_METADATA_FIXED should be used when
> >> the same driver handles both sides of the link and
> >> the bus format is a fixed metadata format that is
> >> not configurable from userspace.
> >> The width and height will be set to 0 for this format.
> >>
> >> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >> Acked-by: Helen Koike <helen.koike@collabora.com>
> >> ---
> >> changes since v2:
> >> added documentation in subdev-formats.rst
> >> changes since v1:
> >> 1. replace "This format may have 0 height and width."
> >> with "Width and height will be set to 0 for this format."
> >> and add it also to the commit log
> >> 2. s/meida:/media:/ in the patch subject line
> >>
> >>  .../media/v4l/subdev-formats.rst              | 27 +++++++++++++++++++
> >>  include/uapi/linux/media-bus-format.h         |  8 ++++++
> >>  2 files changed, 35 insertions(+)
> >>
> >> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> >> index c9b7bb3ca089..7f16cbe46e5c 100644
> >> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
> >> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> >> @@ -7899,3 +7899,30 @@ formats.
> >>        - 0x5001
> >>        - Interleaved raw UYVY and JPEG image format with embedded meta-data
> >>  	used by Samsung S3C73MX camera sensors.
> >> +
> >> +.. _v4l2-mbus-metadata-fmts:
> >> +
> >> +Metadata Formats
> >> +^^^^^^^^^^^^^^^^
> >> +
> >> +This section lists all metadata formats.
> >> +
> >> +The following table lists the existing metadata formats.
> >> +
> >> +.. tabularcolumns:: |p{8.0cm}|p{1.4cm}|p{7.7cm}|
> >> +
> >> +.. flat-table:: Metadata formats
> >> +    :header-rows:  1
> >> +    :stub-columns: 0
> >> +
> >> +    * - Identifier
> >> +      - Code
> >> +      - Comments
> >> +    * .. _MEDIA-BUS-FMT-METADATA-FIXED:
> >> +
> >> +      - MEDIA_BUS_FMT_METADATA_FIXED
> >> +      - 0x7001
> >> +      - This format should be used when the same driver handles
> >> +	both sides of the link and the bus format is a fixed
> >> +	metadata format that is not configurable from userspace.
> >> +	Width and height will be set to 0 for this format.
> >> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
> >> index 84fa53ffb13f..2ce3d891d344 100644
> >> --- a/include/uapi/linux/media-bus-format.h
> >> +++ b/include/uapi/linux/media-bus-format.h
> >> @@ -156,4 +156,12 @@
> >>  /* HSV - next is	0x6002 */
> >>  #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
> >>  
> >> +/*
> >> + * This format should be used when the same driver handles
> >> + * both sides of the link and the bus format is a fixed
> >> + * metadata format that is not configurable from userspace.
> >> + * Width and height will be set to 0 for this format.
> >> + */
> > 
> > Does this mean that metadata with dimensions should not use
> > MEDIA_BUS_FMT_METADATA_FIXED? I guess that's not the intention? For some
> > formats the dimensions would be relevant but for others not. I'd thus
> > replace "will" by "may". Same for the documentation.
> 
> struct v4l2_meta_format as used with VIDIOC_G/S/TRY_FMT doesn't have
> a width or height either. Supporting width and height for metadata
> doesn't really make sense for me for metadata.
> 
> Explicitly specifying the width and height here indicates that the
> data is basically an array of width x height of some sort which makes
> sense for video devices.
> 
> Metadata is more complex data that cannot be represented like that.
> If metadata is actually an array, then I'm not sure I would call it
> metadata, I would probably see it as video with its own pixelformat
> that contains non-video data.

Let's say the metadata is laid out in a similar way than an image; you have
lines of data, followed by some padding at the end, and a line has length
and a buffer has a number of lines. Sensor metadata falls into this
description.

Would you then use struct v4l2_pix_format for it, and use
V4L2_BUF_TYPE_VIDEO_CAPTURE for it?

That would make a few things easier but this is still metadata, not video
data. Albeit I guess it's not important to be so strict about that
interface-wise, indeed this is not a bad fit for such metadata. Still some
fields such as colourspace and quantisation are not relevant, but that
holds also for some pixel formats.

-- 
Regards,

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
