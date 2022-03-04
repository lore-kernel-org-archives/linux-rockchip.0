Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBD1DC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 09:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=34py999C8ruAuQsGy0r+2xyCR7rD5K1SwLNFYylNO5Q=; b=FSzIoQkGOwQiD4
	Rl7knpLO5ZEEMDFKmPnOPscYbVWQ9TEc/nsRrr7pOU6KWaHuTNW6jlgIZ2HjN1Hsq05Ahce89BBl+
	l9JUHkvqSJv3OlU8YA42qn8cTeVswwowg5T4fQITI3b4k1sCQEDRZJCzUrqbrKeSui/9GUlWt+9N3
	qI5cv28lA3YlDBCCfoIcd7SsavzaGPUQQ38p0+sqHgMsWDk9R9Xg4aLhpLoBhQR7sDhCb4TYjGJWZ
	H0Ch9vyG/QlMgyJu//JaJSlBXV69LZ8SAdodoX0ChihaFykSI70ETamnHctxeIX1NVRd2KcfL54gn
	6KC6kYQT9gr0tgI5jkMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ4IK-009Iho-TD; Fri, 04 Mar 2022 09:32:16 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ3sP-009BqF-Iq
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 09:05:31 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id 6705C1DFEBD;
 Fri,  4 Mar 2022 17:05:25 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de
Cc: linus.walleij@linaro.org, linux-rockchip@lists.infradead.org,
 linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH v1 0/3] gpio-rochchip
Date: Fri,  4 Mar 2022 17:05:20 +0800
Message-Id: <20220304090523.1748297-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUNNT0NWSR1LTEofGU
 JIQhkdVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nj46Chw5Oj5DGT9MLSFILA4w
 OhgwChpVSlVKTU9NSENPTElOQ05OVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQUpIS0s3Bg++
X-HM-Tid: 0a7f542d3e1fda2bkuws6705c1dfebd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_010529_847418_577C7A76 
X-CRM114-Status: UNSURE (   4.88  )
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

The first patch fixes gpio driver to support works without cru, and the second
patch try to support different dt node format.

Jianqun Xu (3):
  gpio: rockchip: make gpio work without cru module
  gpio: rockchip: get pinctrl node from 'gpio-ranges' property
  dt-bindings: gpio: rockchip,gpio add optional 'gpio-ranges'

 .../bindings/gpio/rockchip,gpio-bank.yaml     |  7 +++++-
 drivers/gpio/gpio-rockchip.c                  | 24 ++++++++++++-------
 2 files changed, 22 insertions(+), 9 deletions(-)

-- 
v1:
  - add gpio yaml file patch
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
