Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84427C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 08:18:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4FFEB20825
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 08:18:31 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="EzQY4UDS"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4FFEB20825
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=V3BsQO7t1h80264dXUn15sl0mRiw8TqqSPr3+2tqJjI=; b=EzQY4UDSrqqpZ0O0LlDNL76TpB
	qVyZbDDYeMMGOkFFsHGH8RYwu1CLF29YYU4tVK1MIWWmoqarQQRTn+SwfrtEB4j/rfFAchK11h3Tw
	n+kNuSxbAeXDhh6dOQOhaNie8IbIOJ23jTjYwQvS89ni5FN5eBlnIMGwNfAIyn4dZ8E1hKCjCv9q3
	ATs+jp/aVuCLC5qH13Rhqsz6m+pH3Ikx1lxDvBeQvgQnE3OqSYYWjkg5z4Z8CEE9DphdQycqm/du1
	CrTRJC6N1oDeybGMGUemXWfEUIyxF+qp93MMlj3IODMQ0Dcp6VUMEbwlCiP/8ww1YNE1u2lssDdx+
	stZPuTjQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7wp9-0004F5-5x; Tue, 18 Aug 2020 08:18:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7woz-00044T-K6
 for linux-rockchip@lists.infradead.org; Tue, 18 Aug 2020 08:18:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 8BE38294A93
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v6 0/6] v4l2: add support for colorspace conversion API (CSC)
 for video capture and subdevices
Date: Tue, 18 Aug 2020 10:18:00 +0200
Message-Id: <20200818081807.23134-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_041817_952562_4A2BE951 
X-CRM114-Status: GOOD (  28.28  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

For video capture it is the driver that reports the colorspace, transfer function,
Y'CbCr/HSV encoding and quantization range used by the video, and there is no way
to request something different, even though many HDTV receivers have some sort of
colorspace conversion capabilities.

For output video this feature already exists since the application
specifies this information for the video format it will send out, and
the transmitter will enable any available CSC if a format conversion has
to be performed in order to match the capabilities of the sink.

For video capture we propose adding new v4l2_pix_format flag:
V4L2_PIX_FMT_FLAG_SET_CSC. The flag is set by the application,
the driver will interpret the fields 'colorspace', 'xfer_func',
'ycbcr_enc/hsv_enc' and 'quantization' as the requested colorspace information
and will attempt to do the conversion it supports.

Drivers set the flags
V4L2_FMT_FLAG_CSC_COLORSPACE,
V4L2_FMT_FLAG_CSC_XFER_FUNC,
V4L2_FMT_FLAG_CSC_YCBCR_ENC/V4L2_FMT_FLAG_CSC_HSV_ENC,
V4L2_FMT_FLAG_CSC_QUANTIZATION,

in the flags field of the struct v4l2_fmtdesc during enumeration to
indicate that they support colorspace conversion for the respective field.

The same API is added for the subdevices. With the flag
V4L2_MBUS_FRAMEFMT_SET_CSC set by the application in VIDIOC_SUBDEV_S_FMT
ioctl and the flags
V4L2_SUBDEV_MBUS_CODE_CSC_COLORSPACE,
V4L2_SUBDEV_MBUS_CODE_CSC_XFER_FUNC,
V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC/V4L2_SUBDEV_MBUS_CODE_CSC_HSV_ENC
V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION,

set by the driver in the VIDIOC_SUBDEV_ENUM_MBUS_CODE ioctl.

For subdevices, new 'flags' fields were added to the structs
v4l2_subdev_mbus_code_enum, v4l2_mbus_framefmt which are borrowed from the
'reserved' field. In the struct 'v4l2_mbus_framefmt' and reserved2 field
is added before the flags due to padding.

Drivers do not have to actually look at the flags. If the flags are not
set, then the colorspace, xfer_func, ycbcr_enc/hsv_enc and quantization
fields are set to the default values by the core, i.e. just pass on the
received format without conversion.

The patchset includes a patch in vivid that implements the API for video
capture devices and a patch in rkisp1 driver that implement the API for
subdevices.

In rkisp1, the API is used to allow userspace to set the quantization for
YUV formats on the source pad of the isp entity. The quantization is read-only
on the other entities and pads and does not have to be propagated.

I also removed the TODO item 'Handle quantization'
and added the TODO item 'Add uapi docs. Remember to add documentation of how quantization is handled.'

A patchset for v4l-utils to support the API: https://patchwork.kernel.org/cover/11642587/

To test the patchset, follow the instructions from here: https://patchwork.kernel.org/cover/11642587/
with the exception that the branch changed, so the clone command should be:

git clone --single-branch --branch rkisp1-quant-v6-aug-17  https://gitlab.collabora.com/dafna/v4l-utils.git


Patches Summary:
----------------
patch 1 - moves the description of the v4l2_pix_format flags in the Documentation to the right
place where it should be. This is just a fix.

patch 2 - Adds the API for video devices - Adds the new macros and fields and their documentation.
This is only for video devices.

patch 3 - uses the API in the capture device of vivid. Using the API, userspace is allowed to:
1. Set the colorspace
2. set the xfer_func
3. Set the ycbcr_enc function for YUV formats.
4. Set the hsv_enc function for HSV formats
5. Set the quantization for YUV and RGB formats.

patch 4 - Adds the API for subdevices - Adds the new macros and fields and their documentation.
It also replaces the ycbcr_enc field of 'struct v4l2_mbus_framefmt' with a union that includes
also hsv_enc and adds support for CSC on hsv_enc for subdevices.

patch 5 - use the API to allow userspace to set the quantization on the isp source pad.

patch 6 - sets the flags to 0 in the mbus enumeration of the resizer.

Changes from v5:
----------------
- reordering the colorspace fields in the documentation and their flags in the header files
to the order 'colorspace', 'transfer function' 'Y'CbCr/ HSV encoding' , 'quantization'

- in patch 3, move the helpers 'vivid_is_*_valid' as static inline 'v4l2_is_*_valid' in v4l2-common.h , reorder the
handling of the colorspace fields, and drop a redundant assignment 'dev->tpg.quantization = mp->quantization'

- squashing patches 4,5 into one

- in patch 4, changing the documentation in file subdev-formats.rst to not mention 'capture stream'
since this term is only relevant to video devices, so I changed the existing documentations:

"must be set by the driver for capture streams and by the application for output streams"

with "must be set by the driver for subdevices"
and documenting that the CSC is only for source pads.


- In patches 2,4,  in the doc of V4L2_MBUS_FRAMEFMT_SET_CSC/V4L2_PIX_FMT_FLAG_SET_CSC, replacing '0' with ``*_DEFAULT``

- in patch 5 (patch 6 in v2) : replace return of V4L2_QUANTIZATION_DEFAULT was the right value.

Changes from v4:
----------------
- This time I didn't to this patchset the patches from 'media: staging: rkisp1: bugs fixes and vars renames'
but note that this patchset is rebased on that patchset.

- I added the fields 'colorspace' 'xfer_func' to the list of fields that the CSC API supports due to
comment from Hans Verkuil. Also the vivid implementation is extended to support those fields.

- I split the patch that adds the API into two patches. One for video devices and one patch for subdevices.
This is because the two APIs are actually independent and it is easier to maintain and review two small patches
than one big patch.
Also, it can be decided that only one of those patches be accepted.

- I changed the flags fields in 'struct v4l2_mbus_framefmt'  to __u32 and added a reserved2 field before it due to
padding.

- I changed the patch for rkisp1 so that the quantization can be set by userspace only on the source pad of
the isp entity and is read-only and set always to default for all other entities and pads.
The driver also does not validate matching of the quantization between entities.

- Added a patch to the rkisp1-resizer that sets the flags to 0 when enumerating the mbus codes.
This is because the resizer reports the same formats as the source pad of the isp entity but does
not support the quantization conversion.

- various small fixes due to feedback.

Changes from v3:
----------------
- patches 1,2,3,7,8 are new (rkisp1 bug fixes, move v4l2-pixfmt flags docs, vivid patch, support for HSV media bus)

- patch 4 (The API):
1) reformulate the Documentation according to comments from Verkuil and Tomasz Figa
2) remove the code in drivers/media/v4l2-core/v4l2-subdev.c and drivers/media/v4l2-core/v4l2-ioctl.c
so that except of the new macros and fields no new code is added to the core

- patches 5,6 - refactor the rkisp1 implementation so that the userspace should set the quantization separately
to each entity. In patch 6 the validation callbacks make sure the quantizations matches.

Dafna Hirschfeld (6):
  media: Documentation: v4l: move table of v4l2_pix_format(_mplane)
    flags to pixfmt-v4l2.rst
  v4l2: add support for colorspace conversion API (CSC) for video
    capture
  media: vivid: Add support to the CSC API
  v4l2: extend the CSC API to subdevice.
  media: staging: rkisp1: allow quantization setting by userspace on the
    isp source pad
  media: staging: rkisp1: rsz: set flags to 0 in enum_mbus_code cb

 .../media/v4l/pixfmt-reserved.rst             | 17 ----
 .../media/v4l/pixfmt-v4l2-mplane.rst          | 16 +--
 .../userspace-api/media/v4l/pixfmt-v4l2.rst   | 81 ++++++++++++++-
 .../media/v4l/subdev-formats.rst              | 98 +++++++++++++++++--
 .../media/v4l/vidioc-enum-fmt.rst             | 35 +++++++
 .../v4l/vidioc-subdev-enum-mbus-code.rst      | 51 +++++++++-
 .../media/videodev2.h.rst.exceptions          |  7 +-
 .../media/test-drivers/vivid/vivid-vid-cap.c  | 38 +++++--
 .../test-drivers/vivid/vivid-vid-common.c     | 25 +++++
 drivers/staging/media/rkisp1/TODO             |  2 +-
 drivers/staging/media/rkisp1/rkisp1-capture.c | 10 --
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 20 +++-
 drivers/staging/media/rkisp1/rkisp1-resizer.c |  1 +
 include/media/v4l2-common.h                   | 39 ++++++++
 include/uapi/linux/v4l2-mediabus.h            | 17 +++-
 include/uapi/linux/v4l2-subdev.h              |  9 +-
 include/uapi/linux/videodev2.h                |  6 ++
 17 files changed, 402 insertions(+), 70 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
