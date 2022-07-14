Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C7A2C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jul 2022 11:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9hnKCfUqv0MKMsZN9EaiHe3zMnumv2YIArwSUvKepeo=; b=ddQhcadjBv3uhs
	ZDpWg/CZWL0uMXTALgrEgM5Hu6tJHJfzBKVrEOXzCB4aGWTr1Yu6dZjbp6XYnU1AmURsXm5RA0BIw
	VRG/U53KANDiZz28+n3GvNsfT2kxzqw0s5yIBHNRa6en816xkCqp8fhZVDs0/O9vpM2S1FlUdKa0Z
	oAHHYHfVsjTrUtc4lnTlVDlhJifwiP9lmyLtkPuBEOsVa2ygcIIcAZN24v5PV+ShrWzGrknW5/PjM
	2zbTCfYWBok5d59GyQzDNvy5RaXYWNsrBm1A/HruwEDW0ByvEaLoVRXIMNDE95Z6ncpO+xR3ayf9V
	6sqzK0OqJHWKzB2p98pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBx0X-00DkZx-Ca; Thu, 14 Jul 2022 11:27:49 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBwzH-00DjhI-7W; Thu, 14 Jul 2022 11:26:34 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 53808383;
	Thu, 14 Jul 2022 13:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657797983;
	bh=AQ3cDfs5mqD5D2ZbUTNaZ5y1z0ye9T8PPhXg0VIIDWw=;
	h=From:To:Cc:Subject:Date:From;
	b=nupsxWef+p9mFvJUVCdSBTVCVUME6cmFvHmr8GyJvai4My0K4IXHbYmmFMTAn13DW
	 zXKoUrAuB5QRBEvysWTB31b/YLAXqXY7ackzYJFPevgvq/rQ/mkBj67/FydnMgqTcJ
	 RxLh0p2+OGLjvWkqH+kA8QEsEIBtwJ+1y7wW0ZKw=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	laurent.pinchart@ideasonboard.com,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] media: rkisp1: Add support for UYVY output
Date: Thu, 14 Jul 2022 20:26:01 +0900
Message-Id: <20220714112603.1117335-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_042631_454943_C103ED79 
X-CRM114-Status: UNSURE (   8.02  )
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

This series adds support for UYVY as an output format in the rkisp1
driver, for devices that support it. Notably, the i.MX8MP supports it,
while the rk3399 does not.

This series is based on branch pinchartl/v5.19/isp/1 [1] at this repo [2].

[1] https://gitlab.com/ideasonboard/nxp/linux/-/commits/pinchartl/v5.19/isp/1
[2] https://gitlab.com/ideasonboard/nxp/linux

Paul Elder (2):
  media: rkisp1: Add YC swap capability
  media: rkisp1: Add UYVY as an output format

 .../platform/rockchip/rkisp1/rkisp1-capture.c | 67 +++++++++++++++++--
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  1 +
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  3 +-
 3 files changed, 63 insertions(+), 8 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
