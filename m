Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620C4C433E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 10:27:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2454320674
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 10:27:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="RJUadAKj"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2454320674
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=39BJAgJRe5FwFtnjsHn3IbAw6l3EV9Sy/L//VZF2eJ8=; b=RJUadAKjByUd1f5hUPyPi6PXBN
	dXtk9qr1V92Uv0i2Vr/gYDIFWy1XtboVfrmpfbpK1j0ywt7Bd8AizkiaAOAsfl6d7ZY8+ziW4VqJW
	a6r4Q9adWv3kgsnd3xsnl40d9O0yuGb55jrnHx1lER84XiZj8v+rjMEHitW7KMEcuhJERhDy1a30M
	VPa329RSaTGtOsYJubfX8fUBcCA5VEgOWXvMrHRAoAi5Z0fUzIzTUqeVIRiVYRFH868ShBVu34dGO
	70/d24QvYE/ds8mEoljQLAo2uBu60Ub4q7fcjB44SOz/boKq17kz8kVaJ2aXicJKkKKq5YBPdL0dU
	pnZKATvQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7ypr-0004Qx-DS; Tue, 18 Aug 2020 10:27:19 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7ypm-0004O8-Qp
 for linux-rockchip@lists.infradead.org; Tue, 18 Aug 2020 10:27:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 1B2132991B1
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 2/2] media: admin-guide: add documentation file rkisp1.rst
Date: Tue, 18 Aug 2020 12:27:03 +0200
Message-Id: <20200818102703.30471-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200818102703.30471-1-dafna.hirschfeld@collabora.com>
References: <20200818102703.30471-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_062715_132887_B5F054D7 
X-CRM114-Status: GOOD (  25.01  )
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

Add the file 'rkisp1.rst' that documents the rkisp1 driver.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 Documentation/admin-guide/media/rkisp1.dot    |  18 ++
 Documentation/admin-guide/media/rkisp1.rst    | 181 ++++++++++++++++++
 .../admin-guide/media/v4l-drivers.rst         |   1 +
 3 files changed, 200 insertions(+)
 create mode 100644 Documentation/admin-guide/media/rkisp1.dot
 create mode 100644 Documentation/admin-guide/media/rkisp1.rst

diff --git a/Documentation/admin-guide/media/rkisp1.dot b/Documentation/admin-guide/media/rkisp1.dot
new file mode 100644
index 000000000000..54c1953a6130
--- /dev/null
+++ b/Documentation/admin-guide/media/rkisp1.dot
@@ -0,0 +1,18 @@
+digraph board {
+	rankdir=TB
+	n00000001 [label="{{<port0> 0 | <port1> 1} | rkisp1_isp\n/dev/v4l-subdev0 | {<port2> 2 | <port3> 3}}", shape=Mrecord, style=filled, fillcolor=green]
+	n00000001:port2 -> n00000006:port0
+	n00000001:port2 -> n00000009:port0
+	n00000001:port3 -> n00000014 [style=bold]
+	n00000006 [label="{{<port0> 0} | rkisp1_resizer_mainpath\n/dev/v4l-subdev1 | {<port1> 1}}", shape=Mrecord, style=filled, fillcolor=green]
+	n00000006:port1 -> n0000000c [style=bold]
+	n00000009 [label="{{<port0> 0} | rkisp1_resizer_selfpath\n/dev/v4l-subdev2 | {<port1> 1}}", shape=Mrecord, style=filled, fillcolor=green]
+	n00000009:port1 -> n00000010 [style=bold]
+	n0000000c [label="rkisp1_mainpath\n/dev/video0", shape=box, style=filled, fillcolor=yellow]
+	n00000010 [label="rkisp1_selfpath\n/dev/video1", shape=box, style=filled, fillcolor=yellow]
+	n00000014 [label="rkisp1_stats\n/dev/video2", shape=box, style=filled, fillcolor=yellow]
+	n00000018 [label="rkisp1_params\n/dev/video3", shape=box, style=filled, fillcolor=yellow]
+	n00000018 -> n00000001:port1 [style=bold]
+	n0000001c [label="{{} | imx219 4-0010\n/dev/v4l-subdev3 | {<port0> 0}}", shape=Mrecord, style=filled, fillcolor=green]
+	n0000001c:port0 -> n00000001:port0
+}
diff --git a/Documentation/admin-guide/media/rkisp1.rst b/Documentation/admin-guide/media/rkisp1.rst
new file mode 100644
index 000000000000..42e37ed255f6
--- /dev/null
+++ b/Documentation/admin-guide/media/rkisp1.rst
@@ -0,0 +1,181 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+.. include:: <isonum.txt>
+
+=========================================
+Rockchip Image Signal Processor (rkisp1)
+=========================================
+
+Introduction
+============
+
+This file documents the driver for the Rockchip ISP1 that is part of RK3288
+and RK3399 SoCs. The driver is located under drivers/staging/media/rkisp1
+and uses the Media-Controller API.
+
+Topology
+========
+.. _rkisp1_topology_graph:
+
+.. kernel-figure:: rkisp1.dot
+    :alt:   Diagram of the default media pipeline topology
+    :align: center
+
+
+The driver has 4 video devices:
+
+- rkisp1_mainpath: capture device for retrieving images, usually in higher
+  resolution.
+- rkisp1_selfpath: capture device for retrieving images.
+- rkisp1_stats: a metadata capture device that sends statistics.
+- rkisp1_params: a metadata output device that receives parameters
+  configurations from userspace.
+
+The driver has 3 subdevices:
+
+- rkisp1_resizer_mainpath: used to resize and downsample frames for the
+  mainpath capture device.
+- rkisp1_resizer_selfpath: used to resize and downsample frames for the
+  selfpath capture device.
+- rkisp1_isp: is connected to the sensor and is responsible for all the isp
+  operations.
+
+
+rkisp1_mainpath, rkisp1_selfpath - Frames Capture Video Nodes
+-------------------------------------------------------------
+Those are the `mainpath` and `selfpath` capture devices to capture frames.
+Those entities are the DMA engines that write the frames to memory.
+The selfpath video device can capture YUV/RGB formats. Its input is YUV encoded
+stream and it is able to convert it to RGB. The selfpath is not able to
+capture bayer formats.
+The mainpath can capture both bayer and YUV formats but it is not able to
+capture RGB formats.
+Both capture videos support
+the ``V4L2_CAP_IO_MC`` :ref:`capability <device-capabilities>`.
+
+
+rkisp1_resizer_mainpath, rkisp1_resizer_selfpath - Resizers Subdevices Nodes
+----------------------------------------------------------------------------
+Those are resizer entities for the mainpath and the selfpath. Those entities
+can scale the frames up and down and also change the YUV sampling (for example
+YUV4:2:2 -> YUV4:2:0). They also have cropping capability on the sink pad.
+The resizers entities can only operate on YUV:4:2:2 format
+(MEDIA_BUS_FMT_YUYV8_2X8).
+The mainpath capture device supports capturing video in bayer formats. In that
+case the resizer of the mainpath is set to 'bypass' mode - it just forward the
+frame without operating on it.
+
+rkisp1_isp - Image Signal Processing Subdevice Node
+---------------------------------------------------
+This is the isp entity. It is connected to the sensor on sink pad 0 and
+receives the frames using the CSI-2 protocol. It is responsible of configuring
+the CSI-2 protocol. It has a cropping capability on sink pad 0 that is
+connected to the sensor and on source pad 2 connected to the resizer entities.
+Cropping on sink pad 0 defines the image region from the sensor.
+Cropping on source pad 2 defines the region for the Image Stabilizer (IS).
+
+.. _rkisp1_stats:
+
+rkisp1_stats - Statistics Video Node
+------------------------------------
+The statistics video node outputs the 3A (auto focus, auto exposure and auto
+white balance) statistics, and also histogram statistics for the frames that
+are being processed by the rkisp1 to userspace applications.
+Using these data, applications can implement algorithms and re-parameterize
+the driver through the rkisp_params node to improve image quality during a
+video stream.
+The buffer format is defined by struct :c:type:`rkisp1_stat_buffer`, and
+userspace should set
+:ref:`V4L2_META_FMT_RK_ISP1_STAT_3A <v4l2-meta-fmt-stat-rkisp1>` as the
+dataformat.
+
+.. _rkisp1_params:
+
+rkisp1_params - Parameters Video Node
+-------------------------------------
+The rkisp1_params video node receives a set of parameters from userspace
+to be applied to the hardware during a video stream, allowing userspace
+to dynamically modify values such as black level, cross talk corrections
+and others.
+
+The buffer format is defined by struct :c:type:`rkisp1_params_cfg`, and
+userspace should set
+:ref:`V4L2_META_FMT_RK_ISP1_PARAMS <v4l2-meta-fmt-params-rkisp1>` as the
+dataformat.
+
+
+Capturing Video Frames Example
+==============================
+
+In the following example, the sensor connected to pad 0 of 'rkisp1_isp' is
+imx219.
+
+The following commands can be used to capture video from the selfpath video
+node with dimension 900x800 planar format YUV 4:2:2. It uses all cropping
+capabilities possible, (see explanation right below)
+
+.. code-block:: bash
+
+	# set the links
+	"media-ctl" "-d" "platform:rkisp1" "-r"
+	"media-ctl" "-d" "platform:rkisp1" "-l" "'imx219 4-0010':0 -> 'rkisp1_isp':0 [1]"
+	"media-ctl" "-d" "platform:rkisp1" "-l" "'rkisp1_isp':2 -> 'rkisp1_resizer_selfpath':0 [1]"
+	"media-ctl" "-d" "platform:rkisp1" "-l" "'rkisp1_isp':2 -> 'rkisp1_resizer_mainpath':0 [0]"
+
+	# set format for imx219 4-0010:0
+	"media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"imx219 4-0010":0 [fmt:SRGGB10_1X10/1640x1232]'
+
+	# set format for rkisp1_isp pads:
+	"media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"rkisp1_isp":0 [fmt:SRGGB10_1X10/1640x1232 crop: (0,0)/1600x1200]'
+	"media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"rkisp1_isp":2 [fmt:YUYV8_2X8/1600x1200 crop: (0,0)/1500x1100]'
+
+	# set format for rkisp1_resizer_selfpath pads:
+	"media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"rkisp1_resizer_selfpath":0 [fmt:YUYV8_2X8/1500x1100 crop: (300,400)/1400x1000]'
+	"media-ctl" "-d" "platform:rkisp1" "--set-v4l2" '"rkisp1_resizer_selfpath":1 [fmt:YUYV8_2X8/900x800]'
+
+	# set format for rkisp1_selfpath:
+	"v4l2-ctl" "-z" "platform:rkisp1" "-d" "rkisp1_selfpath" "-v" "width=900,height=800,"
+	"v4l2-ctl" "-z" "platform:rkisp1" "-d" "rkisp1_selfpath" "-v" "pixelformat=422P"
+
+	# start streaming:
+	v4l2-ctl "-z" "platform:rkisp1" "-d" "rkisp1_selfpath" "--stream-mmap" "--stream-count" "10"
+
+
+In the above example the sensor is configured to bayer format:
+`SRGGB10_1X10/1640x1232`. The rkisp1_isp:0 pad should be configured to the
+same mbus format and dimensions as the sensor, otherwise streaming will fail
+with 'EPIPE' error. So it is also configured to `SRGGB10_1X10/1640x1232`.
+In addition, the rkisp1_isp:0 pad is configured to cropping `(0,0)/1600x1200`.
+
+The cropping dimensions are automatically propagated to be the format of the
+isp source pad `rkisp1_isp:2`. Another cropping operation is configured on
+the isp source pad: `(0,0)/1500x1100`.
+
+The resizer's sink pad `rkisp1_resizer_selfpath` should be configured to format
+`YUYV8_2X8/1500x1100` in order to match the format on the other side of the
+link. In addition a cropping `(300,400)/1400x1000` is configured on it.
+
+The source pad of the resizer, `rkisp1_resizer_selfpath:1` is configured to
+format `YUYV8_2X8/900x800`. That means that the resizer first crop a window
+of `(300,400)/1400x100` from the received frame and then scales this window
+to dimension `900x800`.
+
+Note that the above example does not uses the stats-params control loop.
+Therefore the capture frames will not go through the 3A algorithms and
+probably won't have a good quality, and can even look dark and greenish.
+
+Configuring Quantization
+========================
+
+The driver supports limited and full range quantization on YUV formats,
+where limited is the default.
+To switch between one or the other, userspace should use the Colorspace
+Conversion API (CSC) for subdevices on source pad 2 of the
+isp (`rkisp1_isp:2`). The quantization configured on this pad is the
+quantization of the captured video frames on the mainpath and selfpath
+video nodes.
+Note that the resizer and capture entities will always report
+``V4L2_QUANTIZATION_DEFAULT`` even if the quantization is configured to full
+range on `rkisp1_isp:2`. So in order to get the configured quantization,
+application should get it from pad `rkisp1_isp:2`.
+
diff --git a/Documentation/admin-guide/media/v4l-drivers.rst b/Documentation/admin-guide/media/v4l-drivers.rst
index 251cc4ede0b6..9c7ebe2ca3bd 100644
--- a/Documentation/admin-guide/media/v4l-drivers.rst
+++ b/Documentation/admin-guide/media/v4l-drivers.rst
@@ -25,6 +25,7 @@ Video4Linux (V4L) driver-specific documentation
 	philips
 	qcom_camss
 	rcar-fdp1
+	rkisp1
 	saa7134
 	si470x
 	si4713
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
