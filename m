Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE62C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 02:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZRsXeFqhcfGGnWMRJ7daPbFxELGrf3YVhx9VSs8ouhY=; b=3vQrkldfspwjZG
	/DvTNRfzca/FPZ6qt91qDIye5gtyaoDWgMPKpp1NYkymeSEvpRO7hSAxrawDveeHBO9mHqh/KOJwl
	cI//QyWfS9/JKAyy9OR90L2h3nHHcpwQcLLvbvWn5U0LyBQBVGYv1d7GMTVwZFhJYlYEMoN/wHXcc
	xoBVGcvGFXCiaj07tjwMXC09idFahMFUFdSVZIvTSw+t7XIUWhl4wVgf0gE84yeJ2R8Wwzvkie/W8
	GDU+q3fr4ydho4Tq0LoW8ewpHqPQ6zi5rwVU28fqzYJhCPPbmM2JUE9EdsrTinOjTX1vOqL6BqMrS
	95HL/zPxavOWaW5pv+UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbYOv-0045TG-5x; Mon, 13 Mar 2023 02:59:05 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbYOo-0045Q4-LZ
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 02:59:01 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 698DA6804CF;
	Mon, 13 Mar 2023 10:58:44 +0800 (CST)
From: Frank Wang <frank.wang@rock-chips.com>
To: linux@roeck-us.net,
	heikki.krogerus@linux.intel.com,
	gregkh@linuxfoundation.org,
	heiko@sntech.de
Cc: linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	huangtao@rock-chips.com,
	william.wu@rock-chips.com,
	jianwei.zheng@rock-chips.com,
	yubing.zhang@rock-chips.com,
	wmc@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH 0/4] Fix some defects related Type-C TCPM
Date: Mon, 13 Mar 2023 10:58:39 +0800
Message-Id: <20230313025843.17162-1-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkkfGlZJT0pKQhhMGhoaH0NVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpMVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NjI6Sww5Nz0USC8BEBE9TzA1
	SglPCilVSlVKTUxDTUxNSElOSUlDVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKTE9LNwY+
X-HM-Tid: 0a86d8e7f1992eb5kusn698da6804cf
X-HM-MType: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_195858_903037_22E7F7D7 
X-CRM114-Status: UNSURE (   3.80  )
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

This series fix some defects of TCPM like port reset error, SVIDs
discover error and etc.

Tested on Rockchip EVB board integrated with FUSB302 or HUSB311 Type-C
controller.

Frank Wang (4):
  usb: typec: tcpm: fix cc role at port reset
  usb: typec: tcpm: fix multiple times discover svids error
  usb: typec: tcpm: add get max power support
  usb: typec: tcpm: fix source caps may lost after soft reset

 drivers/usb/typec/tcpm/tcpm.c | 53 +++++++++++++++++++++++++++++++----
 1 file changed, 47 insertions(+), 6 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
