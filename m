Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1755CC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 03:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=76/NvymwuqBmJ81uNbn7+8jYwos+q6h4Ey6WIM8PrSU=; b=rpWvhxXQtISQpi
	zdOo0gycd3dhm3hBqmRdQ1FFVxEFRxj3d6m9xa3TzlG7TJXpBAR+eO3v5nWpkxvWOTScsh+xNxyJJ
	PDACudc7Q9nLoyxtQaX0Ip9H7CiAzJnlCvmgADn9qqfCGKuF4RjNYJjndpRFJSx8+YoSetAK6fU9Q
	hsA/TAaZhQFi1qgp7Rwav7lz5VI5OfTqbsXGV4Pn4vXtEieD/nFhqCHGgTxynR7fhMmuXfw7W3ON3
	wAeultlNbc8pqWQDLvV4OyRUgVaztjLzPty9w90VT0fzglS9TQnaOO+viO4n09kUB2/sp5NXNHW/I
	sfp56pV/SIOZ3h1kbYKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRQU1-002X7V-Fw; Tue, 08 Mar 2022 03:25:57 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRQTv-002X58-Ug
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 03:25:55 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id 6ACE71DF60F;
 Tue,  8 Mar 2022 11:25:48 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de
Cc: linus.walleij@linaro.org, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 0/4] gpio-before-pinctrl
Date: Tue,  8 Mar 2022 11:25:42 +0800
Message-Id: <20220308032546.2169929-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUNNHUxWTU1ISkpCTB
 5CQ05NVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MBQ6KRw5Mj5WATIUAzUqGS4q
 GA4aC01VSlVKTU9NTEtCQk9DQ09DVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQUpPT003Bg++
X-HM-Tid: 0a7f678fc0bada2bkuws6ace71df60f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_192552_194237_025372BC 
X-CRM114-Status: UNSURE (   4.68  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

These patches make the gpio driver able to register independ on pinctrl,
and fix the output set before gpio register issue.

Jianqun Xu (4):
  gpio: rockchip: get regmap by devm_platform_ioremap_resource
  gpio: rockchip: get irq support for both dt and acpi
  gpio: rockchip: allow rockchip-gpio driver works independs on pinctrl
  pinctrl: rockchip: register gpio driver before pinctrl driver

 drivers/gpio/gpio-rockchip.c       | 230 ++++++++++++-----------------
 drivers/pinctrl/pinctrl-rockchip.c |  29 +++-
 2 files changed, 119 insertions(+), 140 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
