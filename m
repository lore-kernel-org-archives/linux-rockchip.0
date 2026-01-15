Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EABC4D44C7B
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 16:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9bqJ4Xeq6499yHLMtq6YB+CZLVLbglt4kLyQJI1exJs=; b=BVMGYSF/WDUWiI
	IV/bRekSzAzxOjdhN703B6chGaSXfhadrJibW/kykH1PSZUpiScQk3H4H2nAoEBFADTz37uoSbACr
	VWvIFLZiSFvKjcleK2YJ6p0Y+YNVHnZg6VjgedHxgkkP5DJ7moSQ4aEiK/d9tlQXheP4JRXcfURdl
	RRUT07by1dI4z3DlDS1AREbXsdvIpzvYaqFO6w+aWCj8JSyU+vqc/8MjnD2B9ZRsc/hxW9/a32796
	w3qVDEE3TuxAcDW9OdG4NiVEl7kFv/iiLLWVJFup5ZRVUujzBQLLAQEZdVQyEFxZwmQt1iEYixYPO
	xmvYxaYiuoXRGb8My6xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgQ9o-0000000CgUp-1auE;
	Thu, 15 Jan 2026 16:25:12 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgQ9j-0000000CgS6-15hj;
	Thu, 15 Jan 2026 16:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768494303;
	bh=bHsNW7HAQnNrUBtDDGcPlMhwlJ9HZhIEIGRZ5AuWkrk=;
	h=From:Subject:Date:To:Cc:From;
	b=E7zLKdVdJTAB6HdQdqSN8pRKtGdAFX/mRxTQg3sKw98q2/vhGHPeZ8gJXZJF4oD3G
	 WKJOOZCT+b0MdsFZT4JR6ftaIePKRHSXKUHRDkAzjRnaOd8kblQ2pt3xhx6Lq2RA9i
	 O8hKsD/A5jjei0fxDet6U1Rl+fBd5GaGsjirPtTUYG3Fr9D3BC+7nka549WpDNfbwf
	 lS5DSohKyULQzubpth17mHrZF7Gy9GdzvVtLw5SVWkor205FJuOEo2XAUNXSB60Lp0
	 Bl4aQOe1HL0lOSzHPKU0HlpouvJ73e9QsbOmcYEkhUiHPrnIxZitCKiv1xVvgwcAwu
	 vjpbNQ6vkQP0w==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 514B617E0456;
	Thu, 15 Jan 2026 17:25:03 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 0/2] Hotplug detection fixup on Rockchip DW HDMI QP
Date: Thu, 15 Jan 2026 18:24:42 +0200
Message-Id: <20260115-dw-hdmi-qp-hpd-v1-0-e59c166eaa65@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMoUaWkC/x2MMQqAMAwAvyKZDZiiUvyKOBQTbQZrbUEF8e8Wl
 4Mb7h7IklQyDNUDSU7NuociVFcwexdWQeXiYBrTN0Qd8oWeN8Ujoo+M1BpryVkugBLFJIve/3C
 c3vcDzo5WxWAAAAA=
X-Change-ID: 20260115-dw-hdmi-qp-hpd-142881a8d81a
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_082507_488693_202B1FBE 
X-CRM114-Status: UNSURE (   7.56  )
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

The threaded interrupt handler on RK3576 responsible for providing the
HDMI HPD capability is currently unreliable, since it's affected by a
bug leading to a broken hotplug detection in some cases.

RK3588 is affected by a similar implementation deficiency, however it
doesn't seem to cause any functional breakage.

The series aims to fix the RK3576 HPD issue and optimize HPD handling on
RK3588.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Cristian Ciocaltea (2):
      drm/rockchip: dw_hdmi_qp: Fix RK3576 HPD interrupt handling
      drm/rockchip: dw_hdmi_qp: Optimize RK3588 HPD interrupt handling

 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)
---
base-commit: 9b7977f9e39b7768c70c2aa497f04e7569fd3e00
change-id: 20260115-dw-hdmi-qp-hpd-142881a8d81a


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
