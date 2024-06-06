Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8636AC25B75
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 06:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8PJOd8wBxx9zqrg8hZq3YjV6b7PvCGUMguwt7DoSnGI=; b=0zW6p/rcN45KfY
	FRRSqmYpkyN5h0dod7h29mIWr9EiAngJn8StCO/DUCHhNEiDhtAJv656mGG5ZywVETF1ULOnz0xTJ
	wqo3NfIKL0QdzGh0mFce2kd9vXC3aWGyCV+pmAklF/oQLSMT3X09RYlvq2gq/91aczDJr2SGvygmF
	pbr12VgAb2ciIQXIIIFloPopwRPkr+f3LdZeCDIhyK/cFVyGo1AFkmtG8uPXoaNcfjYhUEwAxPxOW
	fjwPOx6s0GLe7q7c2yIJyW3HsdrjTW4PJF7R4etVVMXeq64qmQP8ij4E0w3Rkg2qZ37gZbZsN/7vb
	QHJqK6VjdFg2QGk8V1mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF6FE-00000008TCq-3y5x;
	Thu, 06 Jun 2024 06:05:04 +0000
Received: from mail.eh5.me ([45.76.111.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF6FA-00000008TAZ-00l0;
	Thu, 06 Jun 2024 06:05:01 +0000
From: Huang-Huang Bao <i@eh5.me>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eh5.me; s=dkim;
	t=1717653883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QMXP4D7iL2Jw3xOBudLgXxOe6NslpIdO9kJBig+lh+o=;
	b=lbDyrS7euNYKlPciL76y/GFuuUgrhivXJhlxcOe/ILAOJSbo7+JnggWVBtdD1DiRy1iUKh
	1W3sfW2DYWiRCOxUBXqL9VWsP8xAGaioMRnadGlkNSeA6o4I5hBg/5ZxZgrfdwRvOXx2/a
	C9tUfj7OFGi3DRUcQ/ra/FCt/44myg8=
To: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Huang-Huang Bao <i@eh5.me>
Subject: [PATCH 0/3] pinctrl: rockchip: fix RK3328 pinmux bits
Date: Thu,  6 Jun 2024 14:04:32 +0800
Message-ID: <20240606060435.765716-1-i@mail.eh5.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_230500_179791_3159A74A 
X-CRM114-Status: UNSURE (   6.53  )
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

The pinmux settings for RK3328 is incomplete, correct the pin bank
settings and recalced mux data according to RK3328 TRM.

There was a patch[1] in rockchip-linux kernel repo that cover part of
missing mux settings, unfortunatly it never got into upstream kernel
source.

The last patch fixes an issue in rockchip_pmx_set which is general for
all rockchip platforms that might cause unexpected pinmux to be set to
0.

[1]: https://github.com/rockchip-linux/kernel/commit/d69af8ab6534bb28c1556076f08d2a5ab4935d95

Huang-Huang Bao (3):
  pinctrl: rockchip: fix RK3328 pinmux bits
  pinctrl: rockchip: use dedicated pinctrl type for RK3328
  pinctrl: rockchip: fix pinmux reset in rockchip_pmx_set

 drivers/pinctrl/pinctrl-rockchip.c | 68 ++++++++++++++++++++++++++----
 drivers/pinctrl/pinctrl-rockchip.h |  1 +
 2 files changed, 60 insertions(+), 9 deletions(-)


base-commit: 2df0193e62cf887f373995fb8a91068562784adc
--
2.45.2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
