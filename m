Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06C21C3ABAC
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 May 2025 15:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jvRieWetNeQ1cF2GBuGnY0iLfnaJIZmcyoTi2nANCEI=; b=AKRv4j3S+Lx3XX
	3YS8EeUtzZbDP0wiJ9q0WATDGImDdbLTiao/DN/qFl5Q6dDtD12zvUeX2zdL9JF6+2cDFOLxM51Zj
	xEGsDp4+4oX/qB+ce4CqqC1Aak67Ks04rRvIOANv++ZaxhspeijbvehM5/Ux1tb8JVZp+r0Uikurd
	jv7etCphKy63cxaff6kfb0snBM4pkdmdIG2chFAVXfrdLbS11olzxWCqf5xC0B9D9YS/UMOChFvTR
	ATvjHhk2fcm0AKDcvrcZlnZHMBkzNErnx77VoL6KHhVDQRUyPmmvqlpDIV0hoR49moBE3Q7PWY/AX
	lS9QhYc3NMEC0uGS8SSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uArxn-00000002HTX-2tRk;
	Fri, 02 May 2025 15:06:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uArxR-00000002HAq-45ck
	for linux-rockchip@lists.infradead.org;
	Fri, 02 May 2025 15:05:47 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uArx9-0004HG-02; Fri, 02 May 2025 17:05:27 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paulk@sys-base.io,
	hverkuil@xs4all.nl,
	laurent.pinchart@ideasonboard.com,
	sebastian.fricke@collabora.com,
	ming.qian@nxp.com
Cc: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [RFC PATCH 00/11] VC8000E H.264 V4L2 Stateless Encoder
Date: Fri,  2 May 2025 17:05:02 +0200
Message-Id: <20250502150513.4169098-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250502_080546_013378_52D667F2 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
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

Hi all,

this RFC implements the kernel V4L2 stateless encoding counter part for
the Verisilicon VC8000E encoder. The encoder is capable of H.264 and
H.265 encoding and can be found on several SoCs e.g. NXP i.MX8MP.

The RFC is based on Pauls initial attempts [1].

This patchset is still in a *very very* early state since the uAPI handling
still needs to be figured out. It's clearly not for productive use yet!
The only reason of publishing the driver in this early state is to align
with other developers also working on V4L2 stateless H.264 encoding.

That said, paired with the GStreamer userspace [2] the driver is capable
of:
 * H.264 encoding
 * I/P frame handling
 * Arbitrary frame sizes
 * YUV420M input

Note: Be aware that the GStreamer element [2] is in a *very* early state
too, so don't expect to much. There are limitations like: the element
requires to work on its own buffers, so there is no fast-path and
always a copy involved.

@DT folks
The dt-bindings are missing yet.

[1] https://github.com/bootlin/linux/tree/hantro/h264-encoding-v5.11
[2] https://gitlab.freedesktop.org/dude/gstreamer/-/tree/h264-stateless-encoder

Regards,
  Marco

Marco Felsch (7):
  arm64: dts: imx8mp: drop gpcv2 vpu power-domains and clocks
  arm64: dts: imx8mp: add VC8000E encoder node
  arm64: dts: imx8mp: fix VPU_BUS clock setting
  media: hantro: use hantro_decoded_buffer only for dst_vq
  media: verisilicon: add H264 encoder support
  media: verisilicon: split read/write debug
  media: hantro: add support for i.MX8MP VC8000E

Michael Tretter (3):
  media: uapi: add documentation for the V4L2 H.264 stateless encoding
    API
  media: uapi: add nal unit header fields to encode_params
  media: uapi: add more V4L2_H264_ENCODE_FLAGs

Paul Kocialkowski (1):
  media: Introduce Hantro V4L2 H.264 stateless encoding API

-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
