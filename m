Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 859E3C77B7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 19:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ahVfxuo8cgi/1bBtcrolMBOB4WQCRw6nV/DbsODyEQ=; b=CxozwRHFjgcKqV
	rI0JEA+rdkkyVmqXc2IYLVwq9HGB13JNEMgC77SnLDF/1mEz7EuGnnlN52ZY3gbrxMUiQl0BHLSUY
	Rh7uyS4bEhVAvqlO1z9UY6aB96uZPxwIi2fyKp7s8fkOcmKhyRsINUIKX70QE+CHCGIdlbJkCvjo4
	1Ff1e6p6a+6lm5R8ccqI6HU9RpnQg3KBZGk2faeVv5q2GDgCH0OwYWeazo9163zOqSe+yqW6US1n9
	BC8Dvg2RF2B2/gds9CMp/fdh8C5aBLRKJcQBumFnI0Y6rn5mz8HM37jvYW0uW75b1j87mZFY5Wb9K
	NxibxvD8MzO+VkjZnnjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTnAH-00000003s5o-3mlo;
	Mon, 23 Jun 2025 19:49:13 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTjiF-00000003M85-2I01;
	Mon, 23 Jun 2025 16:08:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1750694882;
	bh=hjgMrwRTA3fWP6Sf+lK8Wy4pKEPzPfk2AxMPnEjNQQw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nlWBzUP6DB+1Jn+vVBslLMVPlFvaxyjeyK2ivVv9r1sen405X9zxDqTPyYf8g9iXl
	 HZj0IPCvCA/TWIONlYOR8nspWIxkq+WZ0+7z3ZCHAyudMO/IJsrg1HSY8jmHqTu4q1
	 21U2NBUobIs+3jEU7t+3TZ2ozPqkzFVDJq/YLBchTf9nMEph/oyZ+kK5KFM8O+4EwU
	 gv39r6MxQntnyaOhmi7eTbA5YvmKpfPGJlFhKZ6YvPPJ2xluOQcsfcnnPqaoempqsS
	 vSR4/2nkyVQZF4r7XBfSk5oVZ0C1d2WY/x6kUmwVg/+eT8bDxiiZ7Yvl8bgBE5AF5V
	 eQs7X6mvs39zg==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AC8F717E3659;
	Mon, 23 Jun 2025 18:07:58 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5/8] media: uapi: HEVC: Add v4l2_ctrl_hevc_ext_sps_rps control
Date: Mon, 23 Jun 2025 12:07:19 -0400
Message-ID: <20250623160722.55938-6-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250623160722.55938-1-detlev.casanova@collabora.com>
References: <20250623160722.55938-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_090803_763266_D910BA57 
X-CRM114-Status: GOOD (  11.97  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>, Yunke Cao <yunkec@google.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Frank Wang <frank.wang@rock-chips.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>, Alexey Charkov <alchark@gmail.com>, Ricardo Ribalda <ribalda@chromium.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Hans de Goede <hansg@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Some hardware (e.g.: Rockchip's rk3588 hevc decoder) need the parsed
long and short term reference information for HEVC decoding.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../media/v4l/ext-ctrls-codec-stateless.rst   | 73 +++++++++++++++++++
 .../media/v4l/vidioc-queryctrl.rst            |  6 ++
 2 files changed, 79 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
index 0da635691fdcb..745f38a8fe69c 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
@@ -2958,6 +2958,79 @@ This structure contains all loop filter related parameters. See sections
       - 0x00000004
       -
 
+.. c:type:: v4l2_ctrl_hevc_ext_sps_rps
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_ctrl_hevc_ext_sps_rps
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u16
+      - ``lt_ref_pic_poc_lsb_sps``
+      - Long term reference picture order count as described in section 7.4.3.2.1
+        "General sequence parameter set RBSP semantics" of the specification.
+    * - __u8
+      - ``delta_idx_minus1``
+      - Specifies the delta compare to the index. See details in section 7.4.8 "Short-term
+        reference picture set semantics" of the specification.
+    * - __u8
+      - ``delta_rps_sign``
+      - Sign of the delta as specified in section 7.4.8 "Short-term reference picture set
+        semantics" of the specification.
+    * - __u16
+      - ``abs_delta_rps_minus1``
+      - Absolute delta RPS as specified in section 7.4.8 "Short-term reference picture set
+        semantics" of the specification.
+    * - __u8
+      - ``num_negative_pics``
+      - Number of short-term RPS entries that have picture order count values less than the
+        picture order count value of the current picture.
+    * - __u8
+      - ``num_positive_pics``
+      - Number of short-term RPS entries that have picture order count values greater than the
+        picture order count value of the current picture.
+    * - __u8
+      - ``used_by_curr_pic_s0[16]``
+      - Specifies if short-term RPS i (that has a negative POC) is used by the current picture.
+    * - __u8
+      - ``used_by_curr_pic_s1[16]``
+      - Specifies if short-term RPS i (that has a positive POC) is used by the current picture.
+    * - __s32
+      - ``delta_poc_s0[16]``
+      - Specifies the negative picture order count delta for the i-th entry in the short-term RPS.
+        See details in section 7.4.8 "Short-term reference picture set semantics" of the
+        specification.
+    * - __s32
+      - ``delta_poc_s1[16]``
+      - Specifies the positive picture order count delta for the i-th entry in the short-term RPS.
+        See details in section 7.4.8 "Short-term reference picture set semantics" of the
+        specification.
+    * - __u8
+      - ``flags``
+      - See :ref:`Extended RPS Flags <hevc_ext_sps_rps_flags>`
+
+.. _hevc_ext_sps_rps_flags:
+
+``Extended SPS RPS Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_HEVC_EXT_SPS_RPS_FLAG_USED_LT``
+      - 0x00000001
+      - Specifies if the long-term reference picture is used 7.4.3.2.1 "General sequence parameter
+        set RBSP semantics" of the specification.
+    * - ``V4L2_HEVC_EXT_SPS_RPS_FLAG_INTER_REF_PIC_SET_PRED``
+      - 0x00000002
+      - Specifies if the short-term RPS is predicted from another short term RPS. See details in
+        section 7.4.8 "Short-term reference picture set semantics" of the specification.
+
 .. _v4l2-codec-stateless-av1:
 
 ``V4L2_CID_STATELESS_AV1_SEQUENCE (struct)``
diff --git a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
index 3549417c7febb..dc7caf4bf6208 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
@@ -523,6 +523,12 @@ See also the examples in :ref:`control`.
       - n/a
       - A struct :c:type:`v4l2_ctrl_hevc_decode_params`, containing HEVC
 	decoding parameters for stateless video decoders.
+    * - ``V4L2_CTRL_TYPE_HEVC_EXT_SPS_RPS``
+      - n/a
+      - n/a
+      - n/a
+      - A struct :c:type:`v4l2_ctrl_hevc_ext_sps_rps`, containing HEVC
+	extended RPS for stateless video decoders.
     * - ``V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR``
       - n/a
       - n/a
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
