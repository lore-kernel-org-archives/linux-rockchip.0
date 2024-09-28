Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79C84CF649F
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Sep 2024 04:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LMK8sjxFoyRcfzOhw2f/3ODrNCKQfmig5ZOzRkCUfes=; b=BC+nOFpTdLf/zc
	WwrGdOQa7fqIH0Kn8Hf6RCyi5qja5i/6zyKJmeWYkvOrDPg/nlstAaViCd5yo+8KH72D05ED9S4l7
	4R58lLtGrAZ+OlE39mh/r0YEceu4R13MwGUJANn7sfXMy+8BcsIwd7+1H8jQRWRPyHuA3gODonefW
	HhbTce1OdN7PA5FotFO6weJXO8fUApduc9S6GfdOv1OIgz+56kWQ+Jf2hKBgz65/QFycvEVeYgaNb
	5pIxfoX+cLPvLbRMllD7jGIWYc2ZSgml+CGbDeL7Psf4fqUtkzXEINBh5LvJnlsPdrdR72Dt8a9Pd
	nTqcyXwArR9wBLpyyEwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suOrh-0000000Ca0F-2Gov;
	Sat, 28 Sep 2024 04:15:29 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suOpK-0000000CZbY-0HrB;
	Sat, 28 Sep 2024 04:13:04 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727496777;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qS5nkhcrH6/JPE0N46P3G0z3ZV7o8bVGZuynbcKGW2M=;
	b=KxO0WnHSIFgSno8fx9WrJMLd/EXOM67M3/NwdWWc+IKTam0akO+1oZZYYSU+Gl9RV/2+N3
	1OjfQucYTD69xHPDM3weaOYl/1nSd4Sh8dPRpK3p6wlpkNsCe85a4nCrAWEKly7Q6PUE/l
	WxanNhmbFoiNxNs4cZfknw/c7bxNTrRYZfSyuJV+ePZkGrIrkdzr196sL5AEqLNmId5fnf
	of/JJuTBKdEH51miIjglNKbRdwArsI2KIYGhiXzwXmaNCXxG3YroiVEhTc6bHUABZW22xO
	iRLi/3AGz9LBo0+caa2Op/B/sUE0skdDBq/o5tDyRGkFrjxYz0XGFInoJzD5yA==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	gregkh@linuxfoundation.org,
	rafael@kernel.org,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] Add dev_warn_probe() and improve error handling in Rockchip SPI drivers
Date: Sat, 28 Sep 2024 06:12:44 +0200
Message-Id: <cover.1727496560.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_211302_616718_47E97134 
X-CRM114-Status: UNSURE (   9.52  )
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

This is a small series that introduces dev_warn_probe() function, which
produces warnings on failed resource acquisitions, and improves error
handling in the probe paths of Rockchip SPI drivers, by using functions
dev_err_probe() and dev_warn_probe() properly in multiple places.

This series also performs a bunch of small, rather trivial code cleanups,
to make the code neater and a bit easier to read.

Changes in v2:
  - Collected three Reviewed-by tags from Heiko [1][2][3]
  - Dropped patch 3/5, [4] as suggested by Mark, [5] improved the check
    to use dev_err_probe() and folded that into new patch 5/5
  - Added new patch 4/5 that introduces function dev_warn_probe() that
    produces warnings in probe paths, to avoid the promotion of logged
    messages from warnings to errors, as noted by Heiko [6]
  - Adjusted the description of the series and of the individual patches
    a bit to reflect the changes, where appropriate

Link to v1: https://lore.kernel.org/linux-rockchip/cover.1727337732.git.dsimic@manjaro.org/T/#u

[1] https://lore.kernel.org/linux-rockchip/6085918.31tnzDBltd@phil/
[2] https://lore.kernel.org/linux-rockchip/2285557.3ZeAukHxDK@phil/
[3] https://lore.kernel.org/linux-rockchip/10409403.0AQdONaE2F@phil/
[4] https://lore.kernel.org/linux-rockchip/ce2e7f90e62b15adc2bed1f53122ad39c3a9b5ac.1727337732.git.dsimic@manjaro.org/
[5] https://lore.kernel.org/linux-rockchip/ZvUmk48R4hZYlO71@finisterre.sirena.org.uk/
[6] https://lore.kernel.org/linux-rockchip/6673004.tM3a2QDmDi@phil/

Dragan Simic (5):
  spi: rockchip: Perform trivial code cleanups
  spi: rockchip-sfc: Perform trivial code cleanups
  spi: rockchip-sfc: Use dev_err_probe() in the probe path
  driver core: Add device probe log helper dev_warn_probe()
  spi: rockchip: Use dev_{err,warn}_probe() in the probe path

 drivers/base/core.c            | 110 +++++++++++++++++++++++++--------
 drivers/spi/spi-rockchip-sfc.c |  21 +++----
 drivers/spi/spi-rockchip.c     |  55 ++++++++---------
 include/linux/dev_printk.h     |   1 +
 4 files changed, 117 insertions(+), 70 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
