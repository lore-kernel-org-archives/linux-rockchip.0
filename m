Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84F8EC7618D
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 10:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5pxeqkEpTYOcUJn0LTDD/IaB8vInV7f+rCPk25vYUd4=; b=sTqT4cz3AqLKvU
	VgHa/eF8ZXKRxNexhx8M801NPBIQAwNTgx8kP4q17CLycfYn4SeefuUVFQnYWAQB4WYPMHumk3KNE
	Tep8ywMbWe5RDxAc9mNWmsFaAIq+KiGPf19kgsq8RiI569W4EveoIxVJNgPO2VUPTFrtMt6OdgZJg
	BxvDkNurYsA3k5wrscx/8D0RlnjYp4tsQ+vrAyZskXiTXO4oB6zSvm1Y9jkphfjxllza/5m7BVgJO
	rdmcDQeczU/P9WnG2XWP92sumAdfxXZHpwapGD3Iyge08Jm/bpRljCBIB0kBolHDkbZpCpyIKin0U
	ny4sLQwEeYTd932X8C9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peCQJ-008Zbg-0j;
	Mon, 20 Mar 2023 10:07:27 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peCQG-008ZZ6-0Z
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Mar 2023 10:07:26 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 19B9D6801EE;
	Mon, 20 Mar 2023 18:07:13 +0800 (CST)
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
Subject: [PATCH v2 0/3] Fix some defects related Type-C TCPM
Date: Mon, 20 Mar 2023 18:07:08 +0800
Message-Id: <20230320100711.3708-1-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0MdTVZITkIfGEodGkpCGUpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpMVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MAw6GQw6Mz0RFxEzIzw3GFEB
	A1EKCghVSlVKTUxCSEtNQ0hIQ0JNVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKQ0lONwY+
X-HM-Tid: 0a86fe7cbde52eb5kusn19b9d6801ee
X-HM-MType: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_030724_362879_12C4BE7A 
X-CRM114-Status: UNSURE (   4.61  )
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

Changes in v2:
 - Make some tweaking based on Guenter and Heikki's comments for [PATCH 1/3] and [PATCH 2/3].
 - Abandon [PATCH 4/4] in v1.

Frank Wang (3):
  usb: typec: tcpm: fix cc role at port reset
  usb: typec: tcpm: fix multiple times discover svids error
  usb: typec: tcpm: add get max power support

 drivers/usb/typec/tcpm/tcpm.c | 43 +++++++++++++++++++++++++++++++++--
 1 file changed, 41 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
