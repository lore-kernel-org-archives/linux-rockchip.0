Return-Path: <SRS0=eRos=EL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07646C00A89
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 12:46:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 47CCD20782
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 12:46:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="c58Y/Xlj"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 47CCD20782
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h/mk/hY9zAXKRWZJg/dzhuAAgPS6PYwDJYK6HZfxlu8=; b=c58Y/XljPY70KmNk+0PNWK6kN
	/6CTeRtyl/3Z75K5Ql2BzKs9DTaEMCMYk6Hx8nwTrh1Baq5drtT6NVXyuCF9NPcO21QO0D3R9e3AG
	fuxNF92tg504437wbE/5pIC7N8wXPkhqjgCPYWWWFpTG0ohZUBgYXeTHMdN+Dac8UtxvtAESAg3rB
	dq10oMx+LBeFPXfcvpWbtbKpKtojV7SBVkQg3LmEKc/H5Wd36sLm8IfmnPtle7rOrG4GjYuqG5Bex
	W9DigfJpOPEjyfbL+Id3emVOpd9paifWkzgsY1CJ949s2pn7Hk/W6ds4eaThEgmuHGvrXAjNARDai
	SeZW3oTPw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaeeK-0003Mu-FF; Thu, 05 Nov 2020 12:45:56 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaeeI-0003Lt-3T
 for linux-rockchip@lists.infradead.org; Thu, 05 Nov 2020 12:45:55 +0000
IronPort-SDR: 5l9YfIb3Uh63aeuvq6O07zJrk2ehU4nqySz6RTdCJIPFgwTD69Uy8nuWzcqLjtUHTs21wU+cVK
 m/SLqLzVFrpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="187281887"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="187281887"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 04:45:47 -0800
IronPort-SDR: yqTSIO2GTivWHZRzCY+NspmOt3C+DlopwlCwFr2MhGM4+Jli0aA1ogrTVejI/W153ev60zbWuO
 5dQC2j1a/29A==
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="353025366"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 04:45:44 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 9522E20901; Thu,  5 Nov 2020 14:45:42 +0200 (EET)
Date: Thu, 5 Nov 2020 14:45:42 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v3 1/2] media: uapi: add MEDIA_BUS_FMT_METADATA_FIXED
 media bus format.
Message-ID: <20201105124542.GE26150@paasikivi.fi.intel.com>
References: <20201030134609.30020-1-dafna.hirschfeld@collabora.com>
 <20201030140241.GQ26150@paasikivi.fi.intel.com>
 <5c8852f5-a803-1bd0-7798-3cca0d7ee9ea@xs4all.nl>
 <20201104123218.GQ26150@paasikivi.fi.intel.com>
 <573fb8b3-e4fd-9239-a407-e904ed18ff3f@xs4all.nl>
 <20201104145456.GR26150@paasikivi.fi.intel.com>
 <98059490-6ab1-c895-5a20-e1b14b70c624@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98059490-6ab1-c895-5a20-e1b14b70c624@xs4all.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201105_074554_291720_1FEFCF7F 
X-CRM114-Status: GOOD (  41.77  )
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

On Thu, Nov 05, 2020 at 01:35:00PM +0100, Hans Verkuil wrote:
> On 04/11/2020 15:54, Sakari Ailus wrote:
> > Hi Hans,
> > 
> > On Wed, Nov 04, 2020 at 02:46:39PM +0100, Hans Verkuil wrote:
> >> On 04/11/2020 13:32, Sakari Ailus wrote:
> >>> Hi Hans,
> >>>
> >>> On Wed, Nov 04, 2020 at 01:16:03PM +0100, Hans Verkuil wrote:
> >>>> On 30/10/2020 15:02, Sakari Ailus wrote:
> >>>>> Hi Dafna,
> >>>>>
> >>>>> On Fri, Oct 30, 2020 at 02:46:08PM +0100, Dafna Hirschfeld wrote:
> >>>>>> MEDIA_BUS_FMT_METADATA_FIXED should be used when
> >>>>>> the same driver handles both sides of the link and
> >>>>>> the bus format is a fixed metadata format that is
> >>>>>> not configurable from userspace.
> >>>>>> The width and height will be set to 0 for this format.
> >>>>>>
> >>>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >>>>>> Acked-by: Helen Koike <helen.koike@collabora.com>
> >>>>>> ---
> >>>>>> changes since v2:
> >>>>>> added documentation in subdev-formats.rst
> >>>>>> changes since v1:
> >>>>>> 1. replace "This format may have 0 height and width."
> >>>>>> with "Width and height will be set to 0 for this format."
> >>>>>> and add it also to the commit log
> >>>>>> 2. s/meida:/media:/ in the patch subject line
> >>>>>>
> >>>>>>  .../media/v4l/subdev-formats.rst              | 27 +++++++++++++++++++
> >>>>>>  include/uapi/linux/media-bus-format.h         |  8 ++++++
> >>>>>>  2 files changed, 35 insertions(+)
> >>>>>>
> >>>>>> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> >>>>>> index c9b7bb3ca089..7f16cbe46e5c 100644
> >>>>>> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
> >>>>>> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> >>>>>> @@ -7899,3 +7899,30 @@ formats.
> >>>>>>        - 0x5001
> >>>>>>        - Interleaved raw UYVY and JPEG image format with embedded meta-data
> >>>>>>  	used by Samsung S3C73MX camera sensors.
> >>>>>> +
> >>>>>> +.. _v4l2-mbus-metadata-fmts:
> >>>>>> +
> >>>>>> +Metadata Formats
> >>>>>> +^^^^^^^^^^^^^^^^
> >>>>>> +
> >>>>>> +This section lists all metadata formats.
> >>>>>> +
> >>>>>> +The following table lists the existing metadata formats.
> >>>>>> +
> >>>>>> +.. tabularcolumns:: |p{8.0cm}|p{1.4cm}|p{7.7cm}|
> >>>>>> +
> >>>>>> +.. flat-table:: Metadata formats
> >>>>>> +    :header-rows:  1
> >>>>>> +    :stub-columns: 0
> >>>>>> +
> >>>>>> +    * - Identifier
> >>>>>> +      - Code
> >>>>>> +      - Comments
> >>>>>> +    * .. _MEDIA-BUS-FMT-METADATA-FIXED:
> >>>>>> +
> >>>>>> +      - MEDIA_BUS_FMT_METADATA_FIXED
> >>>>>> +      - 0x7001
> >>>>>> +      - This format should be used when the same driver handles
> >>>>>> +	both sides of the link and the bus format is a fixed
> >>>>>> +	metadata format that is not configurable from userspace.
> >>>>>> +	Width and height will be set to 0 for this format.
> >>>>>> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
> >>>>>> index 84fa53ffb13f..2ce3d891d344 100644
> >>>>>> --- a/include/uapi/linux/media-bus-format.h
> >>>>>> +++ b/include/uapi/linux/media-bus-format.h
> >>>>>> @@ -156,4 +156,12 @@
> >>>>>>  /* HSV - next is	0x6002 */
> >>>>>>  #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
> >>>>>>  
> >>>>>> +/*
> >>>>>> + * This format should be used when the same driver handles
> >>>>>> + * both sides of the link and the bus format is a fixed
> >>>>>> + * metadata format that is not configurable from userspace.
> >>>>>> + * Width and height will be set to 0 for this format.
> >>>>>> + */
> >>>>>
> >>>>> Does this mean that metadata with dimensions should not use
> >>>>> MEDIA_BUS_FMT_METADATA_FIXED? I guess that's not the intention? For some
> >>>>> formats the dimensions would be relevant but for others not. I'd thus
> >>>>> replace "will" by "may". Same for the documentation.
> >>>>
> >>>> struct v4l2_meta_format as used with VIDIOC_G/S/TRY_FMT doesn't have
> >>>> a width or height either. Supporting width and height for metadata
> >>>> doesn't really make sense for me for metadata.
> >>>>
> >>>> Explicitly specifying the width and height here indicates that the
> >>>> data is basically an array of width x height of some sort which makes
> >>>> sense for video devices.
> >>>>
> >>>> Metadata is more complex data that cannot be represented like that.
> >>>> If metadata is actually an array, then I'm not sure I would call it
> >>>> metadata, I would probably see it as video with its own pixelformat
> >>>> that contains non-video data.
> >>>
> >>> Let's say the metadata is laid out in a similar way than an image; you have
> >>> lines of data, followed by some padding at the end, and a line has length
> >>> and a buffer has a number of lines. Sensor metadata falls into this
> >>> description.
> >>>
> >>> Would you then use struct v4l2_pix_format for it, and use
> >>> V4L2_BUF_TYPE_VIDEO_CAPTURE for it?
> >>
> >> Yes. It's still metadata, but it has the same 'format' as video data.
> >> We have similar situations such as with v4l-touch devices: the data
> >> is formatted like video, but it is actually pressure values from a
> >> touch pad. But it is 'video-like' in its behavior.
> >>
> >>>
> >>> That would make a few things easier but this is still metadata, not video
> >>> data. Albeit I guess it's not important to be so strict about that
> >>> interface-wise, indeed this is not a bad fit for such metadata. Still some
> >>> fields such as colourspace and quantisation are not relevant, but that
> >>> holds also for some pixel formats.
> >>>
> >>
> >> So are you OK with setting width and height to 0 for MEDIA_BUS_FMT_METADATA_*?
> > 
> > One more question.
> > 
> > What do you do if a link can carry both metadata (as in
> > V4L2_BUF_TYPE_METADATA_CAPTURE) as well as pixel data, but with a fixed
> > format?
> > 
> > I'm not sure we have any such case at the moment but it's not
> > inconceivable.
> > 
> 
> This should be reflected in the mediabus format. So METADATA_FIXED if it carries
> metadata, or a video format if it carries video. Userspace could configure this
> with VIDIOC_SUBDEV_S_FMT if it is something that userspace can actually change.

Works for me.

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
