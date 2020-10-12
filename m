Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AFEFC433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:07:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 12EE2206CA
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:07:24 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1ShSd74H"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 12EE2206CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZNwKLHZs8ZXJ94PznqniUExyGeIN9ioJYKaWlfetZxc=; b=1ShSd74HIAocI5NPxmm1eknhTL
	OlUTnW4ZQoDVXwPB6DY4e5oSKmt2p4i8jH3IQu7hGgh0VwqlZm3Nf8XOlDYSDdZ4+k5vsMYtBP/ZH
	HzbT6tf2Km6s76fZ7RF3cyb8+6PZarKm3wJFOPsEqRz+o+8CgvxK417qWjbCr0jAjZt4RYvYxMI4A
	8+ydt9b8rMUJawPsawP9XZnrgBt06GgsaftJpuPFBejbk05coHJ279N+n524GvCnPxD9Mt7vE+CgR
	3u30BhwA3H+ivqIaIN9MLWMfL71NSslqVZ8puO2+C+oi8HPZg041N/oCvKZIPg/zT3lFfrAVCDXl6
	ozx/1dTw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS52H-0004jM-PQ; Mon, 12 Oct 2020 21:07:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uG-0000sX-82
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id C2D091F40F09
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 00/18] Add Hantro regmap and VC8000 h264 decode support
Date: Mon, 12 Oct 2020 23:59:39 +0300
Message-Id: <20201012205957.889185-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_165856_413280_9E7BDA32 
X-CRM114-Status: GOOD (  16.07  )
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 kuhanh.murugasen.krishnan@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Dear all,

This series introduces a regmap infrastructure for the Hantro driver
which is used to compensate for different HW-revision register layouts.
To justify it h264 decoding capability is added for newer VC8000 chips.

This is a gradual conversion to the new infra - a complete conversion
would have been very big and I do not have all the HW yet to test (I'm
expecting a RK3399 shipment next week though ;). I think converting the
h264 decoder provides a nice blueprint for how the other codecs can be
converted and enabled for different HW revisions.

The end goal of this is to make the driver more generic and eliminate
entirely custom boilerplate like `struct hantro_reg` or headers with
core-specific bit manipulations like `hantro_g1_regs.h` and instead rely
on the well-tested albeit more verbose regmap subsytem.

To give just two examples of bugs which are easily discovered by using
more verbose regmap fields (very easy to compare with the datasheets)
instead of relying on bit-magic tricks: G1_REG_DEC_CTRL3_INIT_QP(x) was
off-by-1 and the wrong .clk_gate bit was set in hantro_postproc.c.

Anyway, this series also extends the MMIO regmap API to allow relaxed
writes for the theoretical reason that avoiding unnecessary membarriers
leads to less CPU usage and small improvements to battery life. However,
in practice I could not measure differences between relaxed/non-relaxed
IO, so I'm on the fence whether to keep or remove the relaxed calls.

What I could masure is the performance impact of adding more sub-reg
field acesses: a constant ~ 20 microsecond bump per G1 h264 frame. This
is acceptable considering the total time to decode a frame takes three
orders of magnitude longer, i.e. miliseconds ranges, depending on the
frame size and bitstream params, so it is an acceptable trade-off to
have a more generic driver.

This has been tested on next-20201009 with imx8mq for G1 and an SoC with
VC8000 which has not yet been added (hopefuly support lands soon).

Kind regards,
Adrian

Adrian Ratiu (18):
  media: hantro: document all int reg bits up to vc8000
  media: hantro: make consistent use of decimal register notation
  media: hantro: make G1_REG_SOFT_RESET Rockchip specific
  media: hantro: add reset controller support
  media: hantro: prepare clocks before variant inits are run
  media: hantro: imx8mq: simplify ctrlblk reset logic
  regmap: mmio: add config option to allow relaxed MMIO accesses
  media: hantro: add initial MMIO regmap infrastructure
  media: hantro: default regmap to relaxed MMIO
  media: hantro: convert G1 h264 decoder to regmap fields
  media: hantro: convert G1 postproc to regmap
  media: hantro: add VC8000D h264 decoding
  media: hantro: add VC8000D postproc support
  media: hantro: make PP enablement logic a bit smarter
  media: hantro: add user-selectable, platform-selectable H264 High10
  media: hantro: rename h264_dec as it's not G1 specific anymore
  media: hantro: add dump registers debug option before decode start
  media: hantro: document encoder reg fields

 drivers/base/regmap/regmap-mmio.c             |   34 +-
 drivers/staging/media/hantro/Makefile         |    3 +-
 drivers/staging/media/hantro/hantro.h         |   79 +-
 drivers/staging/media/hantro/hantro_drv.c     |   41 +-
 drivers/staging/media/hantro/hantro_g1_regs.h |   92 +-
 ...hantro_g1_h264_dec.c => hantro_h264_dec.c} |  237 +++-
 drivers/staging/media/hantro/hantro_hw.h      |   23 +-
 .../staging/media/hantro/hantro_postproc.c    |  144 ++-
 drivers/staging/media/hantro/hantro_regmap.c  | 1015 +++++++++++++++++
 drivers/staging/media/hantro/hantro_regmap.h  |  295 +++++
 drivers/staging/media/hantro/hantro_v4l2.c    |    3 +-
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |   75 +-
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |    5 +-
 include/linux/regmap.h                        |    5 +
 14 files changed, 1795 insertions(+), 256 deletions(-)
 rename drivers/staging/media/hantro/{hantro_g1_h264_dec.c => hantro_h264_dec.c} (58%)
 create mode 100644 drivers/staging/media/hantro/hantro_regmap.c
 create mode 100644 drivers/staging/media/hantro/hantro_regmap.h

-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
