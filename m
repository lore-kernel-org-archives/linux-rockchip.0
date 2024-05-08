Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5FB8C04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 21:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LMZDbiunP7mwXjUZTlDZWstZp4aEha93wsK90j0qULk=; b=3JRz1rYpl6fDrH
	gI0fr8HwuuWxFP5PmFHI1HcwJ8NmQkdb8zNpVv9aqLjy/Kw5RkLBYpqbdQgA31xrlkaGkhjE5pdzm
	2x/+4Xvn8PQCy0ymFugJerxVk+wd6aqTzAZ8rPvyks49wHwTmwM0GnNiPMZKCMooWVSaNkh4PTN4Z
	8N3hPiczWqFEZ9epm158v58xu4Uy0OqU2R4eVVeWaNIXRvyIBk5sGlhVui/dPW1n8UqtP/CATMi7Q
	dloOra5dZe/xmJ6LZRcaFkFt5PeqKartZzs4KEkfdVbDau+sVytYCN9FSaTHif50YDw6TnSzmKlqH
	0D/htc7KosIbW0tJBNIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4p23-0000000H3IR-31bK;
	Wed, 08 May 2024 21:40:59 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4p20-0000000H3Gw-20hu
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 21:40:58 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3452716D4;
	Wed,  8 May 2024 23:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715204451;
	bh=sKGmOtVcUTdHHHyght00SZYPiUDaOQWYdoTQwpgcyyg=;
	h=From:To:Cc:Subject:Date:From;
	b=lsz0/nHUncOxIpC2IejWW9n8yIBAo7kjYj8/+8Xdgulg3KUt29Gv6coeUwpnboovS
	 kzln6X1JucIsAY+sj7OuEuW+P37MbHgU2MTlaF8tTTfHHssmmoPTAuA+p3VDArffzi
	 jM4zrwi2JYVgiCOMNSkNvWow8qjRq1eJro0DxBVA=
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 0/3] media: v4l2-subdev: Support const-awareness in state accessors
Date: Thu,  9 May 2024 00:40:42 +0300
Message-ID: <20240508214045.24716-1-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_144056_749300_0AEC86F4 
X-CRM114-Status: UNSURE (   7.03  )
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

This small patch series comes from a mild annoyance I experienced during
a recent patch review, where I wanted to ask for a pointer to a
v4l2_subdev_state used to access the state in a read-only fashion to be
made const. This wasn't possible as the state accessors functions take a
non-const state pointer, in order to return pointers to mutable formats
and selection rectangles.

Patch 1/3 first fixes a small documentation mistake. Patch 2/3 improves
the state accessors to support const states, in the same wait as the
recently introduced container_of_const() macro. The internal macro name
has been subject to a bit of bikeshedding already, so I think we're
reaching a final version. Patch 3/3 then shows how this can be used in
one driver.

Compared to v3, patch 1/3 is new, and patch 2/3 renames the new macro
and updates documentation.

Laurent Pinchart (3):
  media: v4l2-subdev: Fix v4l2_subdev_state_get_format() documentation
  media: v4l2-subdev: Provide const-aware subdev state accessors
  media: rkisp1: Mark subdev state pointers as const

 .../platform/rockchip/rkisp1/rkisp1-isp.c     |  8 +--
 .../platform/rockchip/rkisp1/rkisp1-resizer.c |  8 +--
 include/media/v4l2-subdev.h                   | 50 +++++++++++++------
 3 files changed, 42 insertions(+), 24 deletions(-)


base-commit: e695668af8523b059127dfa8b261c76e7c9cde10
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
