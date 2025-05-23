Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AE39C3DA6D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 May 2025 10:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lw1ohQmCDzsAPmleiFIZ1swf3lx/PVD9izrXxrMhmjo=; b=mJPcvLdvlVFnBd
	LLmBXHK0UCYU3sX3QzN6FBJICxR8jjSrts+wrmnZpcn08aj+7AYC2jLGC91rrbWrghu0rBhxt/zsC
	NG1mSVAJLBfGtn4ZrjVv8joleD5+T5v8hW52J4KJO31wmcm8Z11lYaPXkI700KvaJ2lMv+JLilrQq
	i+pxNZLg1XvQ5ArA/y2JAVucwMLulh5rbhkBfrAc9hV6SXPBnSuR+riSngLdfbwAIGVIFwwkDfbi/
	vqb0zM+yV2Mkc6sOPpIJnSsJyUa/O5+gn+Q2RhSsADAXb15ekXBG7L8jTNqU0hMURrMgBTgkc8F7e
	O4K79h8AxlD4p86YSwMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIPLv-00000003Y56-3PkQ;
	Fri, 23 May 2025 10:10:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIPJj-00000003XcA-2e14;
	Fri, 23 May 2025 10:07:57 +0000
Received: from ideasonboard.com (unknown [IPv6:2a00:6020:448c:6c00:a882:21a2:2327:ac4f])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C7D13346;
	Fri, 23 May 2025 12:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1747994850;
	bh=bElBq/KjMYNxvtZnPGAHpUkChi7qdQIIEQkH2F10hAI=;
	h=From:Subject:Date:To:Cc:From;
	b=pHvfurta0vUf2KuUuyqPiI4DAiUvLRH7wZgq++AMbeLxVQjCZZMN0KBR5Vnf3U85Y
	 pEg7XvHPSU5k3VsODWQfbGD1+ADy1WxDs+n+plUvpF9CnTOE7EVX8IHFzgnN6Dx9N4
	 TFllHP+yMFBr/paVfvNLfUXfMCRbxEpEM61JTsP4=
From: Stefan Klug <stefan.klug@ideasonboard.com>
Subject: [PATCH v2 0/2] media: rkisp1: Add
 RKISP1_CID_SUPPORTED_PARAMS_BLOCKS ctrl and WDR support
Date: Fri, 23 May 2025 12:07:30 +0200
Message-Id: <20250523-supported-params-and-wdr-v2-0-5a88dca5f420@ideasonboard.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOJIMGgC/03MQQ6CMBBA0auQrh1Sh5YEV97DuBjoAI3SNlNQE
 8LdbVy5fIv/d5VZPGd1qXYl/PLZx1CAp0oNM4WJwbtihRqttthA3lKKsrKDREJLBgoO3k7g3Ni
 mMz1j64wqeRIe/ee3vt2LR4kLrLMw/Q/xbHVnTG201qYFhLzySKF+PLfp6h1TjqGPJK4e4qKO4
 wtmDdKzsQAAAA==
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Stefan Klug <stefan.klug@ideasonboard.com>, 
 Paul Elder <paul.elder@ideasonboard.com>, 
 Jai Luthra <jai.luthra@ideasonboard.com>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_030755_810926_C4D97AC8 
X-CRM114-Status: GOOD (  10.72  )
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

This series adds RKISP1_CID_SUPPORTED_PARAMS_BLOCKS control to query the
parameters blocks that are supported by the current kernel on the
current hardware. This is required to be able to enable/disable the
corresponding algorithms in user space without relying solely on the
kernel version.

In addition to that it includes the WDR patch by Jai which is already in v5 and
was reviewed here:
https://lore.kernel.org/linux-media/20250521231355.GN12514@pendragon.ideasonboard.com/

Version 2 of this series drops the unnecessary initial cleanup patch.
Patch 1 was updated and has a local changelog. Patch 2 is unmodified.

Laurent I didn't collect your tag on the first patch, as it was a bit
more than touch ups.

---
Jai Luthra (1):
      media: rockchip: rkisp1: Add support for Wide Dynamic Range

Stefan Klug (1):
      media: rkisp1: Add RKISP1_CID_SUPPORTED_PARAMS_BLOCKS control

 .../media/platform/rockchip/rkisp1/rkisp1-common.h |   2 +
 .../media/platform/rockchip/rkisp1/rkisp1-params.c | 150 ++++++++++++++++++++-
 .../media/platform/rockchip/rkisp1/rkisp1-regs.h   |  99 ++++----------
 include/uapi/linux/rkisp1-config.h                 | 101 ++++++++++++++
 include/uapi/linux/v4l2-controls.h                 |   6 +
 5 files changed, 280 insertions(+), 78 deletions(-)
---
base-commit: a5806cd506af5a7c19bcd596e4708b5c464bfd21
change-id: 20250523-supported-params-and-wdr-135394be26d4

Best regards,
-- 
Stefan Klug <stefan.klug@ideasonboard.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
