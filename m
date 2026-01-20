Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCE1BD262A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 22:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNVE8zu19GZZfQzZW269kwXl0T34M//1Wg69BcYd1ZQ=; b=xobPA+HOJvJGnT
	qecFriX/J3TIbnGEAd6QpZq7z6NZ+jS2ttK0dWI/dX/MkQ4J1I179rm+8dJbaqy2sEZmDt9z1Gy5B
	Emfge0NfqlnF2L8u5Rf8D76qozBkD8dCYcqqREO6hFN7ionA60vfSqLZhnrDT63ib9P10Niz5g1Ql
	KJYV4AOhlXSoI01nJJL1/LXT24+eJtfXJzpYi2VXs3EKFUrtSUaymOOf9vzqf+szhPP+rqchzcLXF
	SFUIkCLayiQYiCjpKYMnOZY8+o84nF94BTFOgjhVGweychUPtn+O4cnmdC+7nDetl5ynpsoMO2k7X
	fMS4EhjQMaz5hCJyAGUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viK5Z-00000004XCk-0Gq2;
	Tue, 20 Jan 2026 22:20:41 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viK5R-00000004X9N-0QWZ;
	Tue, 20 Jan 2026 22:20:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768947629;
	bh=HpgiMkVZM2rbt1CJK9SEvT0YDcePnD8xTMk69RRfCHQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EccyZG5g8G5KpFsyTHO/bLZvEb0WQqKNh9bWI77xUMMOsSBuqgmKAkkDMW6hEYLzR
	 V4DbUMnqaURWNzZsFiHTqu5l9MzEXfFa8cbmuTUbbi4SLnV/vlL8Cof4lFpUQ4e+47
	 1aM4TQMYJNP9wnusRLcCC3Tg/qUex8rWyuyJ5mAjwXoeG+t6WdeRE8uw9K8X5bBDbU
	 0GR07S7olUoCnk/EKzH6bY5KsVvz4JFGX+K1wCAF/oKOiv6I5N6ELPztsFFBZXLxuR
	 ZJtTbIUc7Y4OJufdOwQSOl24Ye+SrnAbEARyPUett7v2wTDyD7djHf9Na9kqxo13dC
	 R5Qa55vIBgn5A==
Received: from earth.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AD9A317E0CF3;
	Tue, 20 Jan 2026 23:20:25 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Heiko Stuebner <heiko@sntech.de>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Ricardo Ribalda <ribalda@chromium.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Yunke Cao <yunkec@google.com>,
	Hans de Goede <hansg@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Pavan Bobba <opensource206@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	James Cowgill <james.cowgill@blaize.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Jonas Karlman <jonas@kwiboo.se>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v9 01/17] media: uapi: HEVC: Add v4l2_ctrl_hevc_ext_sps_[ls]t_rps controls
Date: Tue, 20 Jan 2026 17:20:01 -0500
Message-ID: <20260120222018.404741-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120222018.404741-1-detlev.casanova@collabora.com>
References: <20260120222018.404741-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_142033_606098_AB493E89 
X-CRM114-Status: GOOD (  17.32  )
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

Some hardware (e.g.: Rockchip's rk3588 hevc decoder) need to fully parse
the slice header, which cannot be passed with the current controls.
There is also no skip method similar as to what can be found in
verisilicon HW.

The SPS is therefore extended through these 2 new controls, providing the
long and short term reference information from the slice header for HEVC
decoding.

These now controls are similar as what is passed in the Vulkan Video API
with the StdVideoH265ShortTermRefPicSet and StdVideoH265LongTermRefPicsSps
structures embedded in the SPS struct.

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../media/v4l/ext-ctrls-codec-stateless.rst   | 120 ++++++++++++++++++
 .../media/v4l/videodev2.h.rst.exceptions      |   2 +
 .../media/v4l/vidioc-queryctrl.rst            |  12 ++
 3 files changed, 134 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
index 497ae74379f6c..3b1e05c6eb139 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
@@ -2959,6 +2959,126 @@ This structure contains all loop filter related parameters. See sections
       - 0x00000004
       -
 
+``V4L2_CID_STATELESS_HEVC_EXT_SPS_LT_RPS (struct)``
+    Subset of the :c:type:`v4l2_ctrl_hevc_sps` control.
+    It extends it with the list of Long-term reference sets parameters.
+    These parameters are defined according to :ref:`hevc`.
+    They are described in section 7.4.3.2.1 "General sequence parameter set
+    RBSP semantics" of the specification.
+    This control is a dynamically sized 1-dimensional array.
+    The values in the array should be ignored when either
+    num_long_term_ref_pics_sps is 0 or the
+    V4L2_HEVC_SPS_FLAG_LONG_TERM_REF_PICS_PRESENT flag is not set in
+    :c:type:`v4l2_ctrl_hevc_sps`.
+
+.. c:type:: v4l2_ctrl_hevc_ext_sps_lt_rps
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_ctrl_hevc_ext_sps_lt_rps
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u16
+      - ``lt_ref_pic_poc_lsb_sps``
+      - Long term reference picture order count as described in section 7.4.3.2.1
+        "General sequence parameter set RBSP semantics" of the specification.
+    * - __u16
+      - ``flags``
+      - See :ref:`Extended Long-Term RPS Flags <hevc_ext_sps_lt_rps_flags>`
+
+.. _hevc_ext_sps_lt_rps_flags:
+
+``Extended SPS Long-Term RPS Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_HEVC_EXT_SPS_LT_RPS_FLAG_USED_LT``
+      - 0x00000001
+      - Specifies if the long-term reference picture is used 7.4.3.2.1 "General sequence parameter
+        set RBSP semantics" of the specification.
+
+``V4L2_CID_STATELESS_HEVC_EXT_SPS_ST_RPS (struct)``
+    Subset of the :c:type:`v4l2_ctrl_hevc_sps` control.
+    It extends it with the list of Short-term reference sets parameters.
+    These parameters are defined according to :ref:`hevc`.
+    They are described in section 7.4.8 "Short-term reference picture set
+    semantics" of the specification.
+    This control is a dynamically sized 1-dimensional array.
+    The values in the array should be ignored when
+    num_short_term_ref_pic_sets is 0.
+
+.. c:type:: v4l2_ctrl_hevc_ext_sps_st_rps
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_ctrl_hevc_ext_sps_st_rps
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u8
+      - ``delta_idx_minus1``
+      - Specifies the delta compare to the index. See details in section 7.4.8 "Short-term
+        reference picture set semantics" of the specification.
+    * - __u8
+      - ``delta_rps_sign``
+      - Sign of the delta as specified in section 7.4.8 "Short-term reference picture set
+        semantics" of the specification.
+    * - __u8
+      - ``num_negative_pics``
+      - Number of short-term RPS entries that have picture order count values less than the
+        picture order count value of the current picture.
+    * - __u8
+      - ``num_positive_pics``
+      - Number of short-term RPS entries that have picture order count values greater than the
+        picture order count value of the current picture.
+    * - __u32
+      - ``used_by_curr_pic``
+      - Bit i specifies if short-term RPS i is used by the current picture.
+    * - __u32
+      - ``use_delta_flag``
+      - Bit i specifies if short-term RPS i is included in the short-term RPS entries.
+    * - __u16
+      - ``abs_delta_rps_minus1``
+      - Absolute delta RPS as specified in section 7.4.8 "Short-term reference picture set
+        semantics" of the specification.
+    * - __u16
+      - ``delta_poc_s0_minus1[16]``
+      - Specifies the negative picture order count delta for the i-th entry in the short-term RPS.
+        See details in section 7.4.8 "Short-term reference picture set semantics" of the
+        specification.
+    * - __u16
+      - ``delta_poc_s1_minus1[16]``
+      - Specifies the positive picture order count delta for the i-th entry in the short-term RPS.
+        See details in section 7.4.8 "Short-term reference picture set semantics" of the
+        specification.
+    * - __u16
+      - ``flags``
+      - See :ref:`Extended Short-Term RPS Flags <hevc_ext_sps_st_rps_flags>`
+
+.. _hevc_ext_sps_st_rps_flags:
+
+``Extended SPS Short-Term RPS Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_HEVC_EXT_SPS_ST_RPS_FLAG_INTER_REF_PIC_SET_PRED``
+      - 0x00000001
+      - Specifies if the short-term RPS is predicted from another short term RPS. See details in
+        section 7.4.8 "Short-term reference picture set semantics" of the specification.
+
 .. _v4l2-codec-stateless-av1:
 
 ``V4L2_CID_STATELESS_AV1_SEQUENCE (struct)``
diff --git a/Documentation/userspace-api/media/v4l/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/v4l/videodev2.h.rst.exceptions
index c41693115db64..6182b4e2d2ee0 100644
--- a/Documentation/userspace-api/media/v4l/videodev2.h.rst.exceptions
+++ b/Documentation/userspace-api/media/v4l/videodev2.h.rst.exceptions
@@ -150,6 +150,8 @@ replace symbol V4L2_CTRL_TYPE_H264_SCALING_MATRIX :c:type:`V4L.v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_H264_PRED_WEIGHTS :c:type:`V4L.v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_H264_SLICE_PARAMS :c:type:`V4L.v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_H264_DECODE_PARAMS :c:type:`V4L.v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_HEVC_EXT_SPS_ST_RPS :c:type:`V4L.v4l2_ctrl_type`
+replace symbol V4L2_CTRL_TYPE_HEVC_EXT_SPS_LT_RPS :c:type:`V4L.v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_HEVC_SPS :c:type:`V4L.v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_HEVC_PPS :c:type:`V4L.v4l2_ctrl_type`
 replace symbol V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS :c:type:`V4L.v4l2_ctrl_type`
diff --git a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
index c8baa9430c14d..82c8b52e771ce 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
@@ -531,6 +531,18 @@ See also the examples in :ref:`control`.
       - n/a
       - A struct :c:type:`v4l2_ctrl_hevc_decode_params`, containing HEVC
 	decoding parameters for stateless video decoders.
+    * - ``V4L2_CTRL_TYPE_HEVC_EXT_SPS_LT_RPS``
+      - n/a
+      - n/a
+      - n/a
+      - A struct :c:type:`v4l2_ctrl_hevc_ext_sps_lt_rps`, containing HEVC
+	extended Long-Term RPS for stateless video decoders.
+    * - ``V4L2_CTRL_TYPE_HEVC_EXT_SPS_ST_RPS``
+      - n/a
+      - n/a
+      - n/a
+      - A struct :c:type:`v4l2_ctrl_hevc_ext_sps_st_rps`, containing HEVC
+	extended Short-Term RPS for stateless video decoders.
     * - ``V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR``
       - n/a
       - n/a
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
