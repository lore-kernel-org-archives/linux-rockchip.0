Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF50BCD98E8
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 14:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0nLYbAHpL44d6DTh2drP55KQNAZqTryN6fB0yGB4Rc=; b=CS7IFofCYEULQf
	LKI9SC1sw2k+P/od32/Pb3iYkarkshvRQM9JEsRtnAyNv5tMIdES+3SrRZ4E19BdzjidyE9Sc7hOP
	Ydg3jXq8iWply7vI2vo+qJTwRdxtxYBgfXO7RBkfU6FxOdLvi0zEKt+UQ9deAtOhNRF1+I9KZBH5W
	4OljdPQe3zs0oYm9eB+EKl5m7c5XtiL7KABabOhBrA9a1Eqjo7QahUAh/MvfElhPHiQQPE7p2CkUy
	MspXn5/f2Zf4L+77iotoeG81n1jyFOVh5uV3Ra5v/GTsPY6DnKqXQvETli+NnN87G8rjJ11HF+4FM
	DeyfWHPaOBPKDvp8tRfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2qO-0000000B3mh-242H;
	Fri, 12 Jun 2026 14:26:48 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY2qK-0000000B3jm-0IS2
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jun 2026 14:26:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781274401;
	bh=oQwOxS3Hw6I/7xWUOiCUqQ18gZdrBmQAvomq/6T/pdw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Hi3PL2bBZup5h9ce9t2P3NvZeCVEttzzXUCYHZwADZ3ZTN6OeZsKITBju9ZuMgBEu
	 tx2jbxYVCvYHshXAqHc/3wVOBNT9yOQ/QB/UJJ1evq/WatRnTirI/kfDLtJSvshIcO
	 /0kMRISwFxqw9n358i/N4IcAbUqtccnmdnqZiRyIU4xd6Zch270UMJ8uHuqBrKcpcn
	 iVSj1mGTtaejZFPirlgcsE6Y35xAgRghMT6vQCOHZcZKazonpTQ6WXDVyrU8EW8g3n
	 dNLCuI+VMvM/nqODcwWga7+kvFK2zctBtAolJk4MiOFsyBNITMakcq81hvC9sdxZkX
	 7BjBR/gdyvwnQ==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6C5BE17E0A49;
	Fri, 12 Jun 2026 16:26:40 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
Date: Fri, 12 Jun 2026 10:26:23 -0400
Subject: [PATCH 2/3] docs: media: add documentation for media client usage
 stats
MIME-Version: 1.0
Message-Id: <20260612-v4l2-add-fdinfo-v1-2-723211abc861@collabora.com>
References: <20260612-v4l2-add-fdinfo-v1-0-723211abc861@collabora.com>
In-Reply-To: <20260612-v4l2-add-fdinfo-v1-0-723211abc861@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, kernel@collabora.com, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Christopher Healy <healych@amazon.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_072644_424727_914E37A5 
X-CRM114-Status: GOOD (  15.39  )
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

From: Christopher Healy <healych@amazon.com>

Document the media fdinfo interface for per-file-descriptor usage
statistics exposed by stateless V4L2 codec drivers via
/proc/<pid>/fdinfo/<fd>.

This interface is specific to stateless (request API based) codec
devices where the kernel driver has per-job visibility into hardware
execution. Stateful codecs cannot support this because their firmware
manages job scheduling opaquely.

The specification defines media- prefixed keys for engine utilization
time, hardware cycle counts, and operating frequency, following the
same conventions as the DRM fdinfo mechanism documented in
drm-usage-stats.rst.

Signed-off-by: Christopher Healy <healych@amazon.com>
---
 .../userspace-api/media/drivers/index.rst          |  1 +
 .../media/drivers/media-usage-stats.rst            | 84 ++++++++++++++++++++++
 2 files changed, 85 insertions(+)

diff --git a/Documentation/userspace-api/media/drivers/index.rst b/Documentation/userspace-api/media/drivers/index.rst
index 02967c9b18d6..61879738836c 100644
--- a/Documentation/userspace-api/media/drivers/index.rst
+++ b/Documentation/userspace-api/media/drivers/index.rst
@@ -34,6 +34,7 @@ For more details see the file COPYING in the source distribution of Linux.
 	imx-uapi
 	mali-c55
 	max2175
+	media-usage-stats
 	npcm-video
 	omap3isp-uapi
 	thp7312
diff --git a/Documentation/userspace-api/media/drivers/media-usage-stats.rst b/Documentation/userspace-api/media/drivers/media-usage-stats.rst
new file mode 100644
index 000000000000..835a74902e6e
--- /dev/null
+++ b/Documentation/userspace-api/media/drivers/media-usage-stats.rst
@@ -0,0 +1,84 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+.. _media-usage-stats:
+
+==========================
+Media client usage stats
+==========================
+
+Stateless V4L2 codec drivers can optionally expose per-file-descriptor usage
+statistics via ``/proc/<pid>/fdinfo/<fd>``. This is analogous to the DRM fdinfo
+mechanism documented in :ref:`drm-client-usage-stats`, but uses the ``media-``
+key prefix for V4L2 media devices.
+
+This interface is specific to stateless (request API based) codec devices,
+including both decoders and encoders. With stateless codecs, the kernel driver
+explicitly submits each frame to the hardware and receives a completion
+interrupt, providing a clean per-job boundary that can be attributed to the
+submitting file descriptor.
+
+Stateful codec devices cannot support this interface because their firmware
+manages job scheduling internally. The kernel driver submits bitstream data
+but has no visibility into per-frame hardware execution timing.
+
+Implementation
+==============
+
+The V4L2 core provides the plumbing: drivers implement the ``show_fdinfo``
+callback in ``struct v4l2_file_operations``, and the core wires it into the
+kernel ``struct file_operations`` so that ``/proc/<pid>/fdinfo/<fd>`` output
+includes the driver-provided keys.
+
+File format specification
+=========================
+
+- File shall contain one key value pair per one line of text.
+- Colon character (``:``) must be used to delimit keys and values.
+- All standardised keys shall be prefixed with ``media-``.
+- Driver-specific keys shall be prefixed with ``driver_name-``.
+
+Mandatory keys
+--------------
+
+- media-driver: <valstr>
+
+  String shall contain the name of the media driver.
+
+Utilization keys
+----------------
+
+- media-engine-<keystr>: <uint> ns
+
+  Time in nanoseconds that the hardware engine spent busy processing work
+  belonging to this file descriptor. The ``<keystr>`` identifies the engine
+  (e.g. ``decoder``, ``encoder``).
+
+  Values are not required to be constantly monotonic if it makes the driver
+  implementation easier, but are required to catch up with the previously
+  reported larger value within a reasonable period.
+
+Frequency keys
+--------------
+
+- media-maxfreq-<keystr>: <uint> Hz
+
+  Maximum operating frequency of the engine identified by ``<keystr>``.
+
+- media-curfreq-<keystr>: <uint> Hz
+
+  Current operating frequency of the engine identified by ``<keystr>``.
+
+Example output
+==============
+
+::
+
+  media-driver:           hantro-vpu
+  media-engine-decoder:   123456789 ns
+  media-maxfreq-decoder:  600000000 Hz
+  media-curfreq-decoder:  600000000 Hz
+
+Driver specific implementations
+===============================
+
+* Hantro VPU (``drivers/media/platform/verisilicon/``)

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
