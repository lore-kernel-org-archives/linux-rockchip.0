Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA236CD4F59
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 08:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WcRsmyPYDoKrxdJrtONVOjEPb03ZSan4gUlLOrdsPms=; b=DfU9us2WNEevSO
	TiSe6W+u83cFDCBeiD3LfwJEjzxkgUAA9u1fhoiNI98vCphztCoGSxJxusJ4lf0VxGuPWOl8fuo8/
	qtTZBZWJSqHzTv38a2IlKJTlIBkc0TfgKNXLEAo6BTAZAPJLho+77f8aUjq4CnY0F8KbTt0Uxl3Y1
	8mGpk8xdd5heLhMmRA21vlkq8Zyt6PA0LnAFvDN9JWedZQf5Cfj4Dgo5p6XKYOHna1aLE7Ue6YC+B
	rrJaLiqOZkmw9HxMpBdq+1E7u9NN5/9xlinL20oUKVUL6hqmCJ/9EKj9ONCzixg6a0Du9fZxdNp9Z
	CwBMNfTAmxB7X3QtUtBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm7sx-00000007adw-0FEn;
	Thu, 05 Sep 2024 08:30:35 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm7r0-00000007a54-2At9;
	Thu, 05 Sep 2024 08:28:36 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1725524909;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QGbYTu2hqsFggew3uw7+862rMPLb1SOuJtmtRUbdkcQ=;
	b=QZizFzOcelRH+iBInyBr3yjcET0dYugZ0HXQiTXga278uMJ83t9l5ZWHMqzGIfNmmm8ZgI
	4ZzUaZ8pByTw0FYX9ReO40DywXxUrutj0NaWHV2KfoxJfh/+bQcFIRqtRuDe7RhV7IWcK1
	Xl2Nst472A8tQ6oy3C6eSdLD0qxFJiQygaOU8ttWJktgfR4pO7F7MmG8sGovVaMRxR5snS
	1DXOZjFaTNdd8rCNKKAY705oFiS93+75CVGYqYucF50I+KtCyjdl/kiIYzEKy/bvjLHKBX
	rdxSnOrqZGdfqilmfGmqlDnnlR5ga2t8qtdfnf62oYH9/uRgi2JbJbPLCBA5iQ==
To: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] Improve error handling in Rockchip Inno USB 2.0 PHY driver
Date: Thu,  5 Sep 2024 10:28:21 +0200
Message-Id: <cover.1725524802.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_012835_083740_6C4AEF12 
X-CRM114-Status: UNSURE (   8.67  )
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
of the Rockchip Innosilicon USB 2.0 PHY driver, by returning the actual
error code in one place and by using dev_err_probe() properly in multiple
places.  It also performs a bunch of small, rather trivial code cleanups,
to make the code neater and a bit easier to read.

Changes in v3:
  - Collected Reviewed-by tags from Heiko for patches 1/3 and 2/3
  - Brought back one empty line as a separator of dissimilar operations
    in patch 1/3, as suggested by Heiko [2]
  - Dropped one backward conversion of dev_err_probe() to dev_err() in
    patch 3/3, as suggested by Heiko, [3] and adjusted the summary and
    description of patch 3/3 accordingly

Changes in v2:
  - Expanded into a small series, after a suggestion from Heiko [1] to
    use dev_err_probe(), because it all happens in the probe path

Link to v2: https://lore.kernel.org/linux-phy/cover.1724225528.git.dsimic@manjaro.org/T/#u
Link to v1: https://lore.kernel.org/linux-phy/5fa7796d71e2f46344e972bc98a54539f55b6109.1723551599.git.dsimic@manjaro.org/T/#u

[1] https://lore.kernel.org/linux-phy/4927264.xgNZFEDtJV@diego/
[2] https://lore.kernel.org/linux-phy/5307900.6fTUFtlzNn@diego/
[3] https://lore.kernel.org/linux-phy/6073817.31tnzDBltd@diego/

Dragan Simic (3):
  phy: phy-rockchip-inno-usb2: Perform trivial code cleanups
  phy: phy-rockchip-inno-usb2: Handle failed extcon allocation better
  phy: phy-rockchip-inno-usb2: Use dev_err_probe() in the probe path

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 56 +++++++------------
 1 file changed, 21 insertions(+), 35 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
