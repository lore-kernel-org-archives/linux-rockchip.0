Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80AD3CE7A8B
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 00:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KlrZYi4z1Bh7//QXAvKA4sPAmFqXRfZdzvps9sELV5c=; b=Yt0cLvxzm5J5RO
	0DpSsRkgWnRjuD0nX1wkmbdpWEjmsiDqHrlNZVKeNI4MmdJE39NUCkEIeDnChcuR1YQfT8kIHz/sK
	xgaAuRCIRw7pR00JZUdN9DDzejs5k6mxsFbUMoIJQkM2vqbfEo++pPQp0AyYT5ciFmHzIhl8R5zOB
	vYPt4oue9bJkcVo7wvszgq+KgA1B58r6LMDqDYfabLP/tUlFLPF1lCZo5v7qNzwFd5ulohebriaax
	DXBinNRmTNdd95WFW5MG9oss0jRQCpWf1lxmuXSPPLrOLUKmmfBjmfXnHQwBBAkTgxgITA9Tq6lF8
	QqvOJ0NXMr3p0WlWC+gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZew-00D1vA-2i;
	Mon, 25 Sep 2023 00:41:10 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZeq-00D1sB-2D
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 00:41:09 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 95CD3842;
	Mon, 25 Sep 2023 02:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695602363;
	bh=laEefnxjMh2UpaIdGxB5tTY7Z0R+cQ3cKGIWvbQ8Jxk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DeFjlpaLyFtP4fNaKlvIBqszUhPgHzNy72uamgvVJmZZvsSXYN64oBUe6wrmQHMpN
	 xH68G96dVFlG2buW3AqrLqkRTM+yG1O3rxXerEb2VhVLaqrM1VRwNubjD7kkfhNr2e
	 i4I4p88S7eWQmkdN0O7OMH/cSqH7QU9zUQT0zzfY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 01/14] MAINTAINERS: Add co-maintainer for the rkisp1 driver
Date: Mon, 25 Sep 2023 03:40:59 +0300
Message-ID: <20230925004112.22797-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
References: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_174104_877724_2CA929AD 
X-CRM114-Status: UNSURE (   8.27  )
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

As I'm actively working on the rkisp1 driver, I would like to volunteer
as a co-maintainer, mostly to make sure I get CC on patches.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index bf0f54c24f81..9ce0d128410c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18512,6 +18512,7 @@ F:	sound/soc/rockchip/rockchip_i2s_tdm.*
 
 ROCKCHIP ISP V1 DRIVER
 M:	Dafna Hirschfeld <dafna@fastmail.com>
+M:	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
 L:	linux-media@vger.kernel.org
 L:	linux-rockchip@lists.infradead.org
 S:	Maintained
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
