Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5140BC7618B
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 08:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p45ENkuRiej+5pIFiFSy4v64HlfWolAKul1JIWBr6V4=; b=PTAQdccTM+uLeB
	7qaUD+h9gHHi+6zx3xdIz/zYkAZpXKYnPyEY3PtfAUsFRn6PbEsnd/sHNdY7iCULjlx+uYBOnmjYc
	Zmhv14SHnWsHML/OlDcU7D0P3CDrDCLhf64baqsM+K3sZP+E9cecQRRaTLmR4ZKTXOdKJGfqsQSCp
	ORi+bSHvjPawII9Ef6xykhxLFEGiKvbQEiZZih23b4JlZX21QBbb9ocZAMetVOHPcFHSZ76P5hE1M
	ikvktEvBdsDgHBxWggBIxEbBJ7gY67tyLRQ9jYbLEuyov0f1f8YhKMjFLCsyokrAyoX1Bxj9Lxcxk
	/eMJqh+YpX7YVaKFIKmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pciiY-00Fcjf-0R;
	Thu, 16 Mar 2023 08:12:10 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pciiU-00Fcf5-1k
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Mar 2023 08:12:08 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 88FC76809E5;
	Thu, 16 Mar 2023 16:11:53 +0800 (CST)
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
Subject: [PATCH v2] usb: typec: tcpm: fix multiple times discover svids error
Date: Thu, 16 Mar 2023 16:11:49 +0800
Message-Id: <20230316081149.24519-1-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUlCSVZJQx8fTUxIGE1IH0NVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpMVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NzI6SBw6Sz0WVhg5OTMMIglJ
	NhgaCjZVSlVKTUxDQk5PSEpPT0lJVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFISk5KNwY+
X-HM-Tid: 0a86e979b8762eb5kusn88fc76809e5
X-HM-MType: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_011206_714549_1C4D04DC 
X-CRM114-Status: GOOD (  10.18  )
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

PD3.0 Spec 6.4.4.3.2 say that only Responder supports 12 or more SVIDs,
the Discover SVIDs Command Shall be executed multiple times until a
Discover SVIDs VDO is returned ending either with a SVID value of
0x0000 in the last part of the last VDO or with a VDO containing two
SVIDs with values of 0x0000.

In the current implementation, if the last VDO does not find that the
Discover SVIDs Command would be executed multiple times even if the
Responder SVIDs are less than 12, and we found some odd dockers just
meet this case. So fix it.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
 drivers/usb/typec/tcpm/tcpm.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index 66de02a56f512..a3ae2c79f3540 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -1515,7 +1515,21 @@ static bool svdm_consume_svids(struct tcpm_port *port, const u32 *p, int cnt)
 		pmdata->svids[pmdata->nsvids++] = svid;
 		tcpm_log(port, "SVID %d: 0x%x", pmdata->nsvids, svid);
 	}
-	return true;
+
+	/*
+	 * PD3.0 Spec 6.4.4.3.2: The SVIDs are returned 2 per VDO (see Table
+	 * 6-43), and can be returned maximum 6 VDOs per response (see Figure
+	 * 6-19). If the Respondersupports 12 or more SVID then the Discover
+	 * SVIDs Command Shall be executed multiple times until a Discover
+	 * SVIDs VDO is returned ending either with a SVID value of 0x0000 in
+	 * the last part of the last VDO or with a VDO containing two SVIDs
+	 * with values of 0x0000.
+	 *
+	 * However, some odd dockers support SVIDs less than 12 but without
+	 * 0x0000 in the last VDO, so we need to break the Discover SVIDs
+	 * request and return false here.
+	 */
+	return cnt == 7;
 abort:
 	tcpm_log(port, "SVID_DISCOVERY_MAX(%d) too low!", SVID_DISCOVERY_MAX);
 	return false;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
