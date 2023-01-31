Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01D64C636CC
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Jan 2023 13:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=as1pEtWXJ4lRhR6m/pyWS6b8k7cMkvcYeg5IrwLnZiE=; b=hmMetRCn8oM8AP
	uhQ+GgdE2dBRmUCJHqBUE5NTESlHpf1hqekSFJ1vRfqav4NPuwBay4jTOAZXhyMA+fXQpakzPn+cO
	6Qf4JW9vEujm9mCP8oFiaPP7yV8YLgcYIqJvz6O4IHX9lrpP/k8yk+MhUd8LIJBwaDyaHnPBwCuyk
	C5ktNAI+AUlcIjw4kjp5MvLdbFtlCofPYJziJ7HN4MALZCMLQCBcIsLDhootgy3IcJQ3gLSNf71Rm
	Vdm5XC4fuXo++RTmKutB9g9iSFi6qhJ4/0/iunJQfo+79CPQ4Y4c7Kav8JlXY3PQ8hhIeia7NV8HR
	reOlHQ3A3zVGZ1SyU0AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMqIz-007xYj-7p; Tue, 31 Jan 2023 13:04:09 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMqIa-007xDV-T7; Tue, 31 Jan 2023 13:03:46 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:d507:461a:a036:bf89])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EF6256602E23;
	Tue, 31 Jan 2023 13:03:41 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675170222;
	bh=ywf8wvzGvrBOTq7V4rX3r1UAVqKt2wfzIb6q7nPGBn0=;
	h=From:To:Cc:Subject:Date:From;
	b=ZO42ntVoIXd1r49AEjT0OYGNro8sGPZyFhwOFHnDSWhFR7VddD/wqXY/5Rlh0te7+
	 xud4/HRJQJ3B7lT0p1kMHFPcJgTMKmOmJsaQwjcApmldVkBohPKfR0734bv/GOd8GW
	 8KH4ACaz4o4e6td4xMX2QgBa6tZTS91xA+bDCeYL8vFXuzmTW3DkBfKdT/4xRue9Uy
	 r/omfGjyChxNo8EMz4v5WaYGoY/tNH7pyRxAd65rxwOYnh6ACUCQHht3r+2CmP2xGa
	 jOhUFphENI58fFKdkifeB9Ggwpn0itCffUCylhvWd6V1GBXVnQbLlvYpZTF27GXwGX
	 7gms6gimf0cRg==
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
Subject: [PATCH v7 0/5] media: verisilicon: HEVC: fix 10bits handling
Date: Tue, 31 Jan 2023 14:03:22 +0100
Message-Id: <20230131130327.776899-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_050345_091053_91910D4C 
X-CRM114-Status: UNSURE (   9.74  )
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

Benjamin Gaignard (5):
  media: verisilicon: Do not set context src/dst formats in reset
    functions
  media: verisilicon: Do not use ctx fields as format storage when
    resetting
  media: verisilicon: Do not set ctx->bit_depth in hantro_try_ctrl()
  media: verisilicon: Do not change context bit depth before validating
    the format
  media: verisilicon: HEVC: Only propose 10 bits compatible pixels
    formats

 .../media/platform/verisilicon/hantro_drv.c   | 39 ++++++--
 .../platform/verisilicon/hantro_postproc.c    |  2 +-
 .../media/platform/verisilicon/hantro_v4l2.c  | 90 +++++++++----------
 .../media/platform/verisilicon/hantro_v4l2.h  |  3 +-
 .../media/platform/verisilicon/imx8m_vpu_hw.c |  2 +
 5 files changed, 78 insertions(+), 58 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
