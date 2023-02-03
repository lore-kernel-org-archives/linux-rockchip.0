Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA94FC636CC
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 09:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k5/b1J4AvBwEN/PJ8IrZqECtmq1Yriv3f7GP+2zKAcQ=; b=Tj+Tqp/0c/U0rD
	1bfioX6435kdAAjpIyzyXnvQxQeswnkEZQGNeHVbcoXxt9PkSFOyvUzLmEGg/ceFisHVXvYxPbGJK
	nfdZ1DVZYEp9iqKV9EdxNGT7M6k48HDNaQzO+fE63QUjJdO+oglzq5IVX/3Y0DQP9k4E7VK/brU0Z
	wO/mR1vc8I/wHv8aupIe+QNyjlaUuB/jBw+t+zk33GzULHRhkDLhnnX/NvaQaMVIU5hpKFYMuhp5f
	HQ/k6F7gqUuw/Q/RBKSydqPH71f8LWWFN4swVla5It3+SXu1MikXJkJuEWtnzfLrw+gHmiixCEubY
	jVzh58/yYOwIyXmXdNDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsBp-0017dd-9z; Fri, 03 Feb 2023 09:17:01 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsBU-0017Uf-Vk; Fri, 03 Feb 2023 09:16:42 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:d413:5f9c:fc3a:208d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C4DE56602F05;
	Fri,  3 Feb 2023 09:16:34 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675415795;
	bh=70T3rbgAAMoLX4kBMmbGMTvfjgN+XQOZtyjf09bNSQg=;
	h=From:To:Cc:Subject:Date:From;
	b=ofiYwoR7njdAKceVw0QEINOh71BASDNuuKRHDasRjjoZ8MeSFxlfAt/q2kRhXRSyx
	 8ctwAyrUFXH7cVQRI17sht8AVCW1wjMW4WcYweLxqm+cWxZnVfPTT0avMkSpVV17UI
	 abFy+JV1C0qU0NMnrlz4VIg+XePD+hqNylgaX5sjACtAdeYKoXTXsUKhJ2EPsFkhB/
	 c9oNGEYdXIPPBGO6jzAC6jcdJvSYpZ2tWPqIoV2UGlj6so6KlUKDUMojhn3DqWwcS3
	 nXCza5KSp5pHph997ypFG1/HYxz4wsQY4/Azh7tFTFXWyE/0O29wbqNmkERNdfRiTl
	 75v9qXL19nvYg==
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
Subject: [PATCH v8 0/6] media: verisilicon: HEVC: fix 10bits handling
Date: Fri,  3 Feb 2023 10:16:16 +0100
Message-Id: <20230203091622.127279-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_011641_210672_C78C89BB 
X-CRM114-Status: GOOD (  10.43  )
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

Fluster score for HEVC (140/147) doesn't change after this series.
Fluster score for VP9 is 146/303.

version 8:
- Correct patch 4.
- Add a patch for VP9.

version 7:
- Remove unused ctx variable in hantro_try_ctrl().
- Change HANTRO_DEFAULT_BIT_DEPTH value to 8.
- Simplify hantro_check_depth_match logic.
- Keep ctx->bit_depth as integer value because it is use
  to compute buffers size for hevc.

version 6:
- Split the patches in multiple sub-patches.
- Rework hantro_reset_encoded_fmt() usage.

version 5:
- Add Nicolas's review tags
- Add Fixes tags

version 4:
- Split the change in 2 patches.
- Change hantro_check_depth_match() prototype to avoid using
  ctx->bit_depth
- Return the result of hantro_reset_raw_fmt() to the caller.
- Only set ctx->bit_depth when hantro_reset_raw_fmt() returns is ok.

Benjamin Gaignard (6):
  media: verisilicon: Do not set context src/dst formats in reset
    functions
  media: verisilicon: Do not use ctx fields as format storage when
    resetting
  media: verisilicon: Do not set ctx->bit_depth in hantro_try_ctrl()
  media: verisilicon: Do not change context bit depth before validating
    the format
  media: verisilicon: HEVC: Only propose 10 bits compatible pixels
    formats
  media: verisilicon: VP9: Only propose 10 bits compatible pixels
    formats

 .../media/platform/verisilicon/hantro_drv.c   | 49 +++++++---
 .../platform/verisilicon/hantro_postproc.c    |  2 +-
 .../media/platform/verisilicon/hantro_v4l2.c  | 90 +++++++++----------
 .../media/platform/verisilicon/hantro_v4l2.h  |  3 +-
 .../media/platform/verisilicon/imx8m_vpu_hw.c |  2 +
 5 files changed, 86 insertions(+), 60 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
