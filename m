Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83564CCF9E9
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 08:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yX4qM5l8AihAfjoP105Bk3+XWP79K3+x+HbgrfGsdjU=; b=Ph82OTb09mBOpZ
	/7b8BjDmS6d5+wwVf0QNkhUo0H8h8q+kWB1L3zXOwLBGubn2OyPgI8jGJIfIjhEOtY8p3RQUqFHFL
	F8hpOD8LPdiMfqV5dMcdktuDsXrPHP+eLT8pGjAdm7DNY974eRJpJ8ckClTTyM6f7h5uR8qjTkRAS
	WWfxHYWEhLhk6wRSrBneWDl8C9EKzBBnL5+npF1USM/t1/X8VatCwAnbRF1xOAifg81324l2NzrRo
	HWdSpqpPl0ruvInko3vjqbAnLOWT5IJFBj8La0q+URn7RZo09z7+FlGWSaiH/JrbcjVNZXUE1ESft
	5vuDnKHg5d5xGEX44CzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkDA-00000007l5B-2Otr;
	Thu, 26 Sep 2024 08:50:56 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stk14-00000007iFt-0vw2;
	Thu, 26 Sep 2024 08:38:27 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727339904;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JyVuCIrRcBjtbj1uJvQkCOOG4PUr556iRdy/26xsPOc=;
	b=MwEgWUG0W8rwROkafIYlJAMV08BIxbtgZPgy9jX2TbDoeWO8T2YyLkT6YYYytGsy/ZjuMG
	5l1IeHVIH87u54SXF2Iqs6v5igxprjFF9k7cm7sTo4Ut3DZwUDlIflzM6PVveGfAbVp7PP
	QHbKXTWWG8xOWYESmu7cBO4Yc6Kb+iMx0LW5ZHqZ+HOR3Bp2pB3WCUKZcApgH0dkDKJjlb
	W6Zk2EoEMtaYQmtcVTfGvF3/AqNu89KwDqSfU4x2s5zV+n10IuGA7H0FwpZLpz9VY6wR6y
	T2O1r3aRKwyTlmQ1SpSQcK2NsvCJFK9qwFLX2lQ3+tjwfdybLeOTdulwTW1H8g==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] Improve error handling in Rockchip SPI drivers
Date: Thu, 26 Sep 2024 10:38:11 +0200
Message-Id: <cover.1727337732.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_013826_426375_20A5F129 
X-CRM114-Status: UNSURE (   6.30  )
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

This is a small series that improves error handling in the probe path
of the Rockchip SPI drivers, by using dev_err_probe() properly in multiple
places.  It also removes one unnecessary check of a function return value,
and performs a bunch of small, rather trivial code cleanups, to make the
code neater and a bit easier to read.

Dragan Simic (5):
  spi: rockchip: Perform trivial code cleanups
  spi: rockchip-sfc: Perform trivial code cleanups
  spi: rockchip: Don't check for failed get_fifo_len()
  spi: rockchip: Use dev_err_probe() in the probe path
  spi: rockchip-sfc: Use dev_err_probe() in the probe path

 drivers/spi/spi-rockchip-sfc.c | 21 +++++--------
 drivers/spi/spi-rockchip.c     | 57 ++++++++++++++--------------------
 2 files changed, 32 insertions(+), 46 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
