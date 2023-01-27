Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6ECBC54EAA
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jan 2023 00:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z24lmoL+d3PLJQQOVUf0ThyIh8aVXKvITKpUHy2xeaQ=; b=S7kNhhkYmZh81E
	NEr+asyzzVik2ReWUHMeaDfMgbW1FihO9Yoyu/58j3MGLHJBgi1YYL3m4ZnfIcnW4sj0cENfPaB+3
	yY1/DJWrtupnQga/IhmvUD0ybBukaC2K5rwmOZm51KxPXb6m3/S64lPnv7Wrl+1u3ilNgpLSiirDL
	ZMjIGejivp+UVBDZm6uY/GsBNvzi+1DAt6blVtG3ClncuXDp7FXiY4AMTwpwXJbQfe1XTe1V4kz+n
	7qmjin/hS0Zqv45Bf7gwBFUTp7CCJ8KuPhTg/YIfPAKNuWyoq+bBW+LIQQkfDymo2y8gqPWZVh0gd
	gsHW3Z5OOCi8+Mfb3GZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLCeV-00D0CC-2o; Fri, 27 Jan 2023 00:31:35 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLCeR-00D0B7-AI
	for linux-rockchip@lists.infradead.org; Fri, 27 Jan 2023 00:31:33 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1AF25CDB;
	Fri, 27 Jan 2023 01:31:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1674779488;
	bh=THvmh/aS4ndeaTgR8Ic5BDYPv0LHoQr1fpV2vypIyGw=;
	h=From:To:Cc:Subject:Date:From;
	b=FxqC1rIBt6e0KKb8h0smLtM1M6BaJ2VsUlpqaQEtQqBnglcHPpeEc4Fnfzmn9Ls6i
	 UR5Ro/4uRXsm/Iaj74njqXKSTrk7EF734iQkgEiqxztDjlatLoXgCMJffpZqBo8Zkn
	 ylxbGZeWRujKF/mnjJTkwndEX6Pj52M2yiBYOXLA=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v1 0/3] media: rkisp1: Convert to V4L2 subdev active state
Date: Fri, 27 Jan 2023 02:31:21 +0200
Message-Id: <20230127003124.31685-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_163132_474453_BC5E1540 
X-CRM114-Status: UNSURE (   6.42  )
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

This small patch series converts the three subdevs of the rkisp1 (CSI,
ISP and resizer) to use the V4L2 subdev active state. This simplifies
the implementation of the subdevs, as well as the locking scheme. There
isn't much else to add here, please see individual patches for details.

I have successfully tested this series on an i.MX8MP (Debix) and an
RK3399 (Rock Pi 4).

Laurent Pinchart (3):
  media: rkisp1: resizer: Use V4L2 subdev active state
  media: rkisp1: isp: Use V4L2 subdev active state
  media: rkisp1: csi: Use V4L2 subdev active state

 .../platform/rockchip/rkisp1/rkisp1-common.h  |  18 --
 .../platform/rockchip/rkisp1/rkisp1-csi.c     | 107 +++----
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 261 +++++++-----------
 .../platform/rockchip/rkisp1/rkisp1-resizer.c | 184 +++++-------
 4 files changed, 201 insertions(+), 369 deletions(-)

-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
