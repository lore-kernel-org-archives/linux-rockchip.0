Return-Path: <SRS0=sEzw=ML=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84578C07E9B
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 20:53:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43CCA6113A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 20:53:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 43CCA6113A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YSxVHizyV6I+IrwTqMU1cyxtpLM/n9/CbDrnvrZRmYc=; b=tfnDuxTRQAXUD9
	axO+FXgjKDJqEmfO/WEM6+z9+Zcn/jOTDpudtZa9qBVRaKXyZgzIXga/dxZ5L+r+JjJd2XU+9sHvL
	h9O78NlFqeAnn2ERXGFMDdyrfeZnybe4t0kx9OiGAlyL63I6G4/nHwB1dR4/IBwTQrNI3k+kQSKTc
	MjDdXuRfqiLSJuPMvuvnEboorjAmnorPtYlZDYtHd9r/NFdCSPeX/D1OzWG4nYPp7nfoOGikyNNaE
	oHeqOmt+NpIm7CjU7WO79VVYOPKFjaYx2ag+MCGDI/+byljTq2Wks6zjYXE7+d/4QiZdSeXzA59IV
	Ved2FM/LMw3AcowScSTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5aG1-00BJPb-6S; Mon, 19 Jul 2021 20:52:57 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5aFy-00BJOA-Su
 for linux-rockchip@lists.infradead.org; Mon, 19 Jul 2021 20:52:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A10AD1F42015
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 Alex Bee <knaerzche@gmail.com>, maccraft123mc@gmail.com,
 Chris Healy <cphealy@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jonas Karlman <jonas@kwiboo.se>, Kever Yang <kever.yang@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: [PATCH v3 00/10] hantro: Enable H.264 VDPU2
Date: Mon, 19 Jul 2021 17:52:32 -0300
Message-Id: <20210719205242.18807-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210719_135255_105026_D1487242 
X-CRM114-Status: GOOD (  15.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This series adds support for H.264 decoding on the PX30, RK3328
and RK3326 platforms, enabling the VDPU2 core. This core is available
on other SoCs as well, such as RK3568/RK3566.

Patches 1, 2 and 3 are just low-hanging fruit that was on my backlog.

Patches 4 and 5 add some helpers to avoid duplicating some processes
between Hantro G1 and VDPU2. Patches 6 and 7 enable the VDPU2 H.264.
The implementation is based on a patch from Jonas Karlman [1], which
I forwarded ported to mainline.

Finally, patches 8 to 10  add support for the VPU on Rockchip PX30 SoCs.
These patches are based on patches submitted by Paul Kocialkowski [2],
which I ported and adjusted a bit.

I'd like to thank Jonas and Paul for the good work, and Alex Bee
for the additional testing.

Tested on i.MX8MQ EVK and RK3326 Odroid Advance Go, the latter
is able to decode a 1080p sample at ~100fps nicely.

Fluster conformance testing is looking good as well, and producing
expected results:

RK3326:
  Ran 135 tests in 480.067s
  FAILED (failures=9, errors=54)

i.MX8MQ:
  Ran 135 tests in 337.491s
  FAILED (failures=9, errors=54)

[1] https://lore.kernel.org/linux-media/HE1PR06MB40119DE07D38060F531D1070ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com/
[2] https://lore.kernel.org/patchwork/cover/1361795/

v3:

* Keep a single compatible string "rockchip,px30-vpu",
  instead of making it compatible with rk3399. The SoCs may
  have small (but important) differences in their integration
  so it's better to just make sure the proper compatible is mandatory.

Ezequiel Garcia (6):
  hantro: vp8: Move noisy WARN_ON to vpu_debug
  hantro: Make struct hantro_variant.init() optional
  media: hantro: Avoid redundant hantro_get_{dst,src}_buf() calls
  media: hantro: h264: Move DPB valid and long-term bitmaps
  media: hantro: h264: Move reference picture number to a helper
  media: hantro: Enable H.264 on Rockchip VDPU2

Jonas Karlman (1):
  media: hantro: Add H.264 support for Rockchip VDPU2

Paul Kocialkowski (3):
  media: hantro: Add support for the Rockchip PX30
  dt-bindings: media: rockchip-vpu: Add PX30 compatible
  arm64: dts: rockchip: Add VPU support for the PX30

 .../bindings/media/rockchip-vpu.yaml          |   1 +
 arch/arm64/boot/dts/rockchip/px30.dtsi        |  23 +
 drivers/staging/media/hantro/Makefile         |   1 +
 drivers/staging/media/hantro/hantro.h         |   4 +-
 drivers/staging/media/hantro/hantro_drv.c     |  11 +-
 .../staging/media/hantro/hantro_g1_h264_dec.c |  48 +-
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |  31 +-
 drivers/staging/media/hantro/hantro_h264.c    |  24 +
 drivers/staging/media/hantro/hantro_hw.h      |   8 +
 .../media/hantro/rockchip_vpu2_hw_h264_dec.c  | 491 ++++++++++++++++++
 .../media/hantro/rockchip_vpu2_hw_vp8_dec.c   |  32 +-
 .../staging/media/hantro/rockchip_vpu_hw.c    |  43 +-
 .../staging/media/hantro/sama5d4_vdec_hw.c    |   6 -
 13 files changed, 649 insertions(+), 74 deletions(-)
 create mode 100644 drivers/staging/media/hantro/rockchip_vpu2_hw_h264_dec.c

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
