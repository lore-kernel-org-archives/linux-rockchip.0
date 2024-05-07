Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7170C10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 06:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XHP6pXqJHoDd9ST7VztR87nBKerAF9ujpfWKjaPXPtM=; b=S9wC6sxyWFjQlj
	O+nqS8rBdjWmqJPW2+qfdpgsTLDk4/P85YHM1Du7+h4yZbbCMuEpk0a3u3KeJsvo0lxPeVpXLu9qz
	eyIK3fwlOxM1ycnikPJ02qMXAJtlYsskOTf5I2gCTRgIcw4YCvGF1j1njEYv49FHfA8phdzJEBATh
	ITroIdhWYRoNI1z42wmoRXmMXlJXlJIAZGRRCxlOCGSNfyXT8wZZHbn/7Pb1TXzWvkYvEapovS4vF
	2PL0Gw/jgYHKWhI6ufDJZHZWdMQLGuGE1Z9t2uD0c+c41B/Wrl3YxFQ4tWQzsWKkyp8GN6fPuZE+w
	AVLo2K13mJk1VFrAgzAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4DvM-00000009lxS-3oAQ;
	Tue, 07 May 2024 06:03:36 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4DvK-00000009lvW-2M6O
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 06:03:36 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 364A43D5;
	Tue,  7 May 2024 08:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715061809;
	bh=hzw1wOyov0AIgxXRRO0rnUf/xHvzEM6thuNWtbDTq/U=;
	h=From:To:Cc:Subject:Date:From;
	b=GyIF6GgNZkJ8xUxrJ3l/HnUYu+kVdsLKchMc9sBMsFv2D6zwxCIgk/9XVlOsNg0m4
	 0zKeSmW+wF+WFV0Cg6TGbuZaa7TooD8d3dZsLk8UmyEpEhd96RhGpzYGNkS+iONdPz
	 v6SlMilYjtklvEpb85gSVg26V1PJNOONrzZyywOc=
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/2] media: v4l2-subdev: Support const-awareness in state accessors
Date: Tue,  7 May 2024 09:03:21 +0300
Message-ID: <20240507060323.26950-1-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_230334_814532_9AFCC5E6 
X-CRM114-Status: UNSURE (   7.07  )
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

Hello,

This small patch series comes from a mild annoyance I experienced during
a recent patch review, where I wanted to ask for a pointer to a
v4l2_subdev_state used to access the state in a read-only fashion to be
made const. This wasn't possible as the state accessors functions take a
non-const state pointer, in order to return pointers to mutable formats
and selection rectangles.

Patch 1/2 improves the state accessors to support const states, in the
same wait as the recently introduced container_of_const() macro.
Bikeshedding of the internal macro and function names is expected. Patch
2/2 then shows how this can be used in one driver.

Compared to v1, patch 1/2 uses _Generic() in a single macro to wrap all
calls, instead of duplicating the _Generic() statement in all accessors.

Laurent Pinchart (2):
  media: v4l2-subdev: Provide const-aware subdev state accessors
  media: rkisp1: Mark subdev state pointers as const

 .../platform/rockchip/rkisp1/rkisp1-isp.c     |  8 ++--
 .../platform/rockchip/rkisp1/rkisp1-resizer.c |  8 ++--
 include/media/v4l2-subdev.h                   | 40 +++++++++++++------
 3 files changed, 35 insertions(+), 21 deletions(-)


base-commit: e695668af8523b059127dfa8b261c76e7c9cde10
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
