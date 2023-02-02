Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 290A4C636CD
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Feb 2023 00:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J4ZlH7ecap4BKEd3P5MQr9tlzg9Of6AEQffZKCJJ1gY=; b=uFKn9L7OKRsqZj
	yzbpu2MOuxwB2pK3h6qRyiGPLtJUv4+IRSylL8r75jff35FJay62KJwJ4x8WJuc9WTODQJCKiVlqk
	05cf46Xh/heyQXRs7hHVG7qin6HKiFVg7QWsNSAONZkDkGa5rhm45aT4mbs/MQhoGi/SqZmnCcbXT
	m4ABhT9/wb91iMHegawKAs5eEMgg4WN9JhJJdSJl8ynjQhrIGYyFWuslGVkxZgLh6pzq+m88ZtfcF
	kK4UQnHULzJewaOsUmyEq7Ej5YqeaNpjNdD1q9lWdJ0uQl4FGIviBa/k72PkLWZlqXKGE7+zKVlUH
	v/vIMEy7PaHlvAHoJlMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNNZg-00DywJ-Rv; Thu, 02 Feb 2023 00:35:36 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNNZe-00Dytw-HW
	for linux-rockchip@lists.infradead.org; Thu, 02 Feb 2023 00:35:36 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 1CAE8280117;
	Thu,  2 Feb 2023 08:35:22 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 0/3] Some features and fix for sdhci-of-dwcmshc
Date: Thu,  2 Feb 2023 08:35:15 +0800
Message-Id: <1675298118-64243-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSh5IVkhOSxgdGEpITE9JSlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ND46NBw5OT0QFDMzMTUcNAtJ
	TVFPCgxVSlVKTUxOSUJDSklJQktJVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpPTUM3Bg++
X-HM-Tid: 0a860f8ca9f72eb1kusn1cae8280117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_163534_752001_7BEF27E6 
X-CRM114-Status: UNSURE (   8.04  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


This patchset has 3 patches. The first one is a signal improvement
actually. Then we add runtime time support and hsq support which have
been tested in vendor kernel for a long time.


Changes in v2:
- fix Kconfig error

Shawn Lin (3):
  mmc: sdhci-of-dwcmshc: Update DLL and pre-change delay for rockchip
    platform
  mmc: sdhci-of-dwcmshc: Add runtime PM support
  mmc: sdhci-of-dwcmshc: Add host software queue support

 drivers/mmc/host/Kconfig            |  1 +
 drivers/mmc/host/sdhci-of-dwcmshc.c | 93 ++++++++++++++++++++++++++++++++++---
 2 files changed, 88 insertions(+), 6 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
