Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E77B6CF6497
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Sep 2024 09:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k7lyZLwrz9c0/YFv0RbuhxS6FvmY+J6r7Gnm+lesfyI=; b=e/TkDH2COQK5IY
	zE2V/vX68dWMbQ0G8up/59dvYYmg3NM6cJJzv/jBnUcMtS43Ht9x7aolWA7Rf6xR2e7uSzHq4te9T
	R5wHFFoN8wQTw3r6CfBc+Ol1tzar97H/QLYbC2z4NCChp+FcV3tYgIczrOjjg5pF1zU8lrpcr+HBu
	ze+hq0aAZT6M537/PCrgdeEbNzvJr5MhKrfgljbWA7Di+Sd1KccMO+Yo12VaQ9bJDxu2vD2xPxlUD
	xNCAgtKs/y0MLrOWjJ0IU3WY+adAu5r61y2Uc6zJZU5GfRcMCf36KGRc2+uaqTcf7mPC/qIFPFFxM
	V1iRio/nHYTLVSJ3KVZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suqXT-0000000EYYJ-39x1;
	Sun, 29 Sep 2024 09:48:27 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suq8I-0000000EUoj-15qB;
	Sun, 29 Sep 2024 09:22:30 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727601741;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=IOgiRyvba8Y4cnx6yoRPaNn/yxrNbxMiZ1Dl0tI3O6s=;
	b=ihucZZvqz6UCEjRr+2z7P5frZEl8Ik2GtHJ1yn0uFWNAq+0/zQ0pBEPAwRa8F2FWgoZFc0
	acYvUOltHnNxBY0THxDyCFYSX+f7V5pfocrJCVMDffZy6XA/Su4QF+6x7VtpLwEOf0OTop
	rMZFYLNoeXRMuQM+CcOXO3PLzp6NxiF9id67ks/ZutAUtWIpLjoaMzX01rxCFZsYHTelJf
	rLgrgsIAcDktkMMT3SkHHl+VBIcCszw67XpP55Z8xVdj6bAmcMxXL01ztBjYGG+yO4im+p
	pvKYM/i9sWaVd9FQDZs2xnKQvVXkCXbQAIs1abN2kYDa9ENhb1ZQWzqzuA3VIA==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	gregkh@linuxfoundation.org,
	rafael@kernel.org,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/5] Add dev_warn_probe() and improve error handling in Rockchip SPI drivers
Date: Sun, 29 Sep 2024 11:21:12 +0200
Message-Id: <cover.1727601608.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240929_022226_864835_9C40715F 
X-CRM114-Status: GOOD (  11.62  )
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

Changes in v3:
  - Fixed a couple of rather embarrassing issues in patch 4/5 pointed
    out by the kernel test robot, [7] one of them using the va_copy()
    workaround approach already established in the commit 3fbcf75bb41a
    ("efi/printf: Factor out width/precision parsing"), but all this
    really made me think how didn't I notice those issues myself before
    sending the patches, which perhaps slipped by because I didn't take
    the specifics of x86_64 into account :/
  - Added a somewhat lengthy comment to patch 4/5, to explain the newly
    introduced va_copy() workaround, partially reusing the comment found
    in the above-mentioned commit 3fbcf75bb41a
  - Added underscores to the name of the "worker" function in patch 4/5,
    to additionally emphasize its internal nature
  - Adjusted some of the variable names in patch 4/5 a bit to use what
    are seemingly more commonly used names

Changes in v2:
  - Collected three Reviewed-by tags from Heiko [1][2][3]
  - Dropped patch 3/5, [4] as suggested by Mark, [5] improved the check
    to use dev_err_probe() and folded that into new patch 5/5
  - Added new patch 4/5 that introduces function dev_warn_probe() that
    produces warnings in probe paths, to avoid the promotion of logged
    messages from warnings to errors, as noted by Heiko [6]
  - Adjusted the description of the series and of the individual patches
    a bit to reflect the changes, where appropriate

Link to v2: https://lore.kernel.org/linux-rockchip/cover.1727496560.git.dsimic@manjaro.org/T/#u
Link to v1: https://lore.kernel.org/linux-rockchip/cover.1727337732.git.dsimic@manjaro.org/T/#u

[1] https://lore.kernel.org/linux-rockchip/6085918.31tnzDBltd@phil/
[2] https://lore.kernel.org/linux-rockchip/2285557.3ZeAukHxDK@phil/
[3] https://lore.kernel.org/linux-rockchip/10409403.0AQdONaE2F@phil/
[4] https://lore.kernel.org/linux-rockchip/ce2e7f90e62b15adc2bed1f53122ad39c3a9b5ac.1727337732.git.dsimic@manjaro.org/
[5] https://lore.kernel.org/linux-rockchip/ZvUmk48R4hZYlO71@finisterre.sirena.org.uk/
[6] https://lore.kernel.org/linux-rockchip/6673004.tM3a2QDmDi@phil/
[7] https://lore.kernel.org/linux-rockchip/202409290910.55WdSCMH-lkp@intel.com/

Dragan Simic (5):
  spi: rockchip: Perform trivial code cleanups
  spi: rockchip-sfc: Perform trivial code cleanups
  spi: rockchip-sfc: Use dev_err_probe() in the probe path
  driver core: Add device probe log helper dev_warn_probe()
  spi: rockchip: Use dev_{err,warn}_probe() in the probe path

 drivers/base/core.c            | 129 ++++++++++++++++++++++++++-------
 drivers/spi/spi-rockchip-sfc.c |  21 ++----
 drivers/spi/spi-rockchip.c     |  55 +++++++-------
 include/linux/dev_printk.h     |   1 +
 4 files changed, 135 insertions(+), 71 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
