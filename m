Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A847CFC53F
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 10:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rXFHNuaUAGBkurgUp7aDiSWzHbh8sdus/5J59kpPFUo=; b=QasBmIWTbXaCJs
	bsUuXdM+Xt1bACg9kDoorVI1TNtjyRtpfykVji8XQoq100/XDmiD8ZHQ9hZDgZDyedA1c7NPXTOUk
	0B5sZFnu41w7ot6IqvJ7BcWQMouh8tMQejqpTQvHQzDt9ENQEMha9wrZtBufX25ftiL0P98tXFsBp
	r94ODJZ8kDK5KbfUAhe0vPatF1KPQq2W5SmLgMQu/ZSw0djeCdVFRmGdSA2b5IzKKXIo2emaASkl0
	UO7vNFMg7Xe9ykAyf2rjuWI0aJWp26cp5IQ1VmepaoMdL+DJ0JwYmnvPK7SM9Eiq4RVCg9q/hwRgT
	Kq5oT4K8kgLJYvWMuDMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Iae-00000004jsd-2B3k;
	Mon, 14 Oct 2024 10:46:16 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0IYK-00000004jD1-0K0w;
	Mon, 14 Oct 2024 10:43:53 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728902629;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kTtU49jAZt+GMuY9hdcUXdRTNTM4uQk2ZKyxJx9kNS4=;
	b=bxSxiWmY1biH//gBzN4IfVicDZSnyurBw+SngafUdYJhegVBHsgFj3hOzG4QQhqeYC5lpM
	UgUwG0MF4zv4hXI+Op70XBwBqEJzSwYdXeRk/YlnF33Stu+t31Pq69Xs0CNL/nSVbNBFHg
	w4ndC0DMIqdUhVP72QrzSHXROw0826RuBFE5dWe0sfS/KmmBsRjUioBKcVMTp9+5F7SwrP
	Q9NsDEx0gZjf66JXQT+SbVuSmCGvFDTth0lLLixVpPHcdZrvogjxI3j81+06YwGwHOGGmZ
	gmx1qcIw/8WeAFD03BK+Q2YNbXBrvYHstCAxLEBkSQw1rhliMAEdjgCcBvhzng==
To: lgirdwood@gmail.com,
	broonie@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Allow use of DVS GPIOs on the RK808 PMIC variant only
Date: Mon, 14 Oct 2024 12:43:38 +0200
Message-Id: <cover.1728902488.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_034352_296577_18715FC1 
X-CRM114-Status: UNSURE (   7.10  )
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

This is a small series that primarily makes the rk808-regulator driver
more compliant to the DT bindings, by allowing use of DVS GPIOs on the
RK808 variant only.  There's no point in allowing that on the other PMIC
variants, because they don't support the DVS GPIOs, and it goes against
the DT bindings to allow a possibly misplaced "dvs-gpios" property to
actually be handled in the rk808-regulator driver.

This series also cleans up the code a bit, improves some comments, and
replaces dev_err() with dev_err_probe(), where appropriate.

Dragan Simic (3):
  regulator: rk808: Perform trivial code cleanups
  regulator: rk808: Use dev_err_probe() in the probe path
  regulator: rk808: Restrict DVS GPIOs to the RK808 variant only

 drivers/regulator/rk808-regulator.c | 41 +++++++++++++----------------
 1 file changed, 19 insertions(+), 22 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
