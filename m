Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EE8AC54EAA
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jan 2023 09:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bKbxqOtfguvM83rtnnB3sqP0zx3J7U/DRmucpO8hE1I=; b=2frhynKifBv+8D
	oWtvP6NC2ULt2b8RG2Fnf+v8w+GSIsK2fh7nXLaLg+RaCZ4orHLhGkEbvYCFk7Qg0VdMn/8IlsfIJ
	ZCH3mg3uwcg+iRnmMa7XGMRkDutgAXjli3+84ISwoVUhGeivwNXJBKRv7V481XbriWgJ9u4qFTpfL
	4ymki3ITAGqLxI4EfCV/7MeaVMwRyXPswBF6wgzZRhx3xkQiFGvHcXidNtJYIXRBTSpRGr4IPEqrR
	4ztHaYLZDPbL2yMOGXLnC+Y54PMuPKJMNyruD1fJcglGcvKB5lsCZcNLtg0qW49+XcKCIb8MTd1Ni
	VdmytfqASkK+9BTXGQhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLKvn-00DcPN-3x; Fri, 27 Jan 2023 09:21:59 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLKvR-00DcHL-G7; Fri, 27 Jan 2023 09:21:39 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:4623:efe7:8a8:33c2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B35FF6602E66;
	Fri, 27 Jan 2023 09:21:32 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1674811293;
	bh=REsCtAkZRuIgQgakBRZ6FEEcPq8lAcKiHRdXzz5RX8s=;
	h=From:To:Cc:Subject:Date:From;
	b=b4PszC+NphdjWD0SnVj5join0Iiiuu16xO81xWXFlCKCIIOgsCrUoQZLn/Rzh9kFu
	 dQyfWf4jdiIFsbkLDaH5w93/r1j0PPa8Hrd6BbCCYx0TdOIDo8BnTG5KSl+NalC8IG
	 HTYQV3Tm3NvZOpWrb8J2ELoHW8jvrysU77zwO56SNR/DFKbRcJ97LbvJ4NTclsAYMf
	 a/WRkpS1gha8n9DjVju5QE5Fa3wqJ/KJIwDzzk7i5pdhmioGAxThBDS2rpD30zPixA
	 nFgQeYVYhVgswsF+KU5U5ztbZY2c8Hbb5gpNTWnHUsf0zZ60Yck/GrpkEyo9cn/Jii
	 Wle80RsO+J5ew==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v5 0/2] media: verisilicon: HEVC: fix 10bits handling
Date: Fri, 27 Jan 2023 10:21:24 +0100
Message-Id: <20230127092126.318268-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_012137_790374_9328932A 
X-CRM114-Status: UNSURE (   8.84  )
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

When decoding a 10bits bitstreams HEVC driver should only expose 10bits pixel formats.
To fulfill this requirement it is needed to call hantro_reset_raw_fmt()
and to only change driver internal state in case of success.

Fluster score (140/147) doesn't change after this series.

version 5:
- Add Nicolas's review tags
- Add Fixes tags

version 4:
- Split the change in 2 patches.
- Change hantro_check_depth_match() prototype to avoid using
  ctx->bit_depth
- Return the result of hantro_reset_raw_fmt() to the caller.
- Only set ctx->bit_depth when hantro_reset_raw_fmt() returns is ok.

 
Benjamin Gaignard (2):
  media: verisilicon: Do not change context bit depth before validating
    the format
  media: verisilicon: HEVC: Only propose 10 bits compatible pixels
    formats

 .../media/platform/verisilicon/hantro_drv.c   | 44 ++++++++++++---
 .../platform/verisilicon/hantro_postproc.c    |  2 +-
 .../media/platform/verisilicon/hantro_v4l2.c  | 53 +++++++++----------
 .../media/platform/verisilicon/hantro_v4l2.h  |  3 +-
 .../media/platform/verisilicon/imx8m_vpu_hw.c |  2 +
 5 files changed, 66 insertions(+), 38 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
