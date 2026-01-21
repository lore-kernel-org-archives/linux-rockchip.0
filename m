Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 822B2C44508
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 23:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RKHsBvqjyDvhUM7IRCwfo4MO7nmmkio6Nw+W6HZIJDU=; b=t8QG1O4MAOumLM
	xGfMDIVRfSWgFQSTw+cFE7d0VO4M6pW8QUSy6Rl1zETkjmQtU6iD2EYnf54g5++30BbEzrjF4BAPj
	Uefbs/Yb41lTOAPEqhIDCLJJHwYKbr0Uh6Ekrv7l4+CmXJF8MuxKkDpHWvWCMb5fY1smJg8GRcD0I
	0tViO+rTBOC0d7E2KVwTuKkvcLBLpyFMvFhd/6TaGTpLYwmq5tEqIDYj9Yrlp72dzWhfU6dJlqoC0
	AgQPOZI9FDn8tIQYITVhuc7QZKtGvp221p8eTpsybDUDmNemzNYJgFkyfj1sMwmi1tnxHJ++ece+h
	7E9fi63OaiJHSRuggmYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vihSj-000000069hT-3za0;
	Wed, 21 Jan 2026 23:18:09 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vihSb-000000069bo-2ry9;
	Wed, 21 Jan 2026 23:18:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1769037477;
	bh=raKq3vJAy1xYlXJ3j4zfMGnhmo0+q4HQy4gbDp6nNys=;
	h=From:Subject:Date:To:Cc:From;
	b=itkKlVVpHbCYaEOsFnSkJA6SJZ5+C3VaDUkgnIYHMxONzdIJVHbyNuKLkN6tgIF0B
	 /J/SHhSIma+OYaxm2XhvKd+62Hw9v9TnSgRiwhh+QpFzKr75fqhS6nipiu1lSLL8tP
	 B4fHlvUBdmiKmtsO3G2jITrBodxwIp2aYkVIfq3Nnby3eQ32T5YxREhNANbmdwyU8S
	 CipZkkPeSgfI/mbBqut/QBxcejCSQC8O4an+3feQSvibClOtCO10yNPiWni2jn57+X
	 Zfag8JjFZnuHUpbHmGvnyp05TJv3QosdV/73CULFGrYzKcDzGiIt1vB0xtkz4DZvw/
	 SEvsWs84CyaQA==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5EA3E17E0342;
	Thu, 22 Jan 2026 00:17:57 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 0/6] Rockchip DRM use-after-free & null-ptr-deref fixes
Date: Thu, 22 Jan 2026 01:17:33 +0200
Message-Id: <20260122-drm-rk-fixes-v1-0-3942f185750e@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAI1ecWkC/x3LQQqAIBBA0avIrBvIiRK6SrQQm2qILEaIQLx70
 vLx+RkSq3CC0WRQfiTJFStsYyDsPm6MslQDtTS0lggXPVEPXOXlhN4NRMHZvu8Y6nIr/6Ee01z
 KB8v24fVeAAAA
X-Change-ID: 20260122-drm-rk-fixes-a7622c71553e
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_151801_891908_0651D0F5 
X-CRM114-Status: UNSURE (   6.76  )
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

The first three patches in the series are fixes for use-after-free &
null-ptr-deref related issues found in dw_dp and inno-hdmi Rockchip DRM
drivers.

The remaining ones provide a few minor improvements to dw_dp and
dw_hdmi_qp.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Cristian Ciocaltea (6):
      drm/rockchip: inno-hdmi: Switch to drmm_kzalloc()
      drm/rockchip: dw_dp: Switch to drmm_kzalloc()
      drm/rockchip: dw_dp: Fix null-ptr-deref in dw_dp_remove()
      drm/rockchip: dw_dp: Simplify error handling
      drm/rockchip: dw_dp: Drop unnecessary #include
      drm/rockchip: dw_hdmi_qp: Switch to drmm_encoder_init()

 drivers/gpu/drm/rockchip/dw_dp-rockchip.c      | 35 ++++++++++----------------
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 13 +++++-----
 drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c  |  3 ++-
 3 files changed, 21 insertions(+), 30 deletions(-)
---
base-commit: 68b271a3a94cfd6c7695a96b6398b52feb89e2c2
change-id: 20260122-drm-rk-fixes-a7622c71553e


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
