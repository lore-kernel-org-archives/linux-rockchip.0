Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D1ABC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Jul 2022 12:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3JnbmVJSgNbP+Mly7q/ifwYzn7y6idHxc95DP7FB95U=; b=I5b92f6ONdv9lS
	0x/MHjModj8u912HGYevieKIvDn60e2ctSYkmML89ri93tcVAulYCxGzqwraiOAaysY2EFxGG6Jb/
	PAISj2SsgXaiuWS0Y2oQmA7J7MfAeVIvMc03vynvPKoeoRNcWo9A/u5xOkBluNx570PnWCBKXi2cI
	dUmrvNhXAGtmt3YFmnwwI8L9BDkXU2rr61zz5rtP5M5AkcHJZmohiA3w2s7emG1t3YILNPZEmq7rj
	PViMsNqnICDzTSwgTjVNU+1khiCoRQkSNfBJgtER2QPVbS97JBERljSM6C3r6n5ghy/pbnZyOqyMd
	G+P4V5gaq18sN+2/a6rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8LXT-008vcS-TU; Mon, 04 Jul 2022 12:50:55 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8LUh-008tv7-IO
	for linux-rockchip@lists.infradead.org; Mon, 04 Jul 2022 12:48:06 +0000
Received: from dggpeml500022.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Lc5BR5jwNzhZ2q;
	Mon,  4 Jul 2022 20:45:35 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500022.china.huawei.com
 (7.185.36.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Mon, 4 Jul
 2022 20:47:58 +0800
From: Zhang Zekun <zhangzekun11@huawei.com>
To: <Larry.Finger@lwfinger.net>, <phil@philpotter.co.uk>,
	<paskripkin@gmail.com>, <gregkh@linuxfoundation.org>, <martin@kaiser.cx>,
	<straube.linux@gmail.com>
CC: <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
	<linux-staging@lists.linux.dev>, <linux-kernel@vger.kernel.org>,
	<xuqiang36@huawei.com>
Subject: [PATCH -next] staging: r8188eu: use 'is_zero_ether_addr' to identify an empty address
Date: Mon, 4 Jul 2022 12:45:53 +0000
Message-ID: <20220704124553.101792-1-zhangzekun11@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpeml500022.china.huawei.com (7.185.36.66)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_054803_800756_1B3085CD 
X-CRM114-Status: UNSURE (   8.03  )
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

Use 'is_zero_ether_addr' to identify an empty ethernet address, intead
of using 'memcpy' directly.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zhang Zekun <zhangzekun11@huawei.com>
---
 drivers/staging/r8188eu/core/rtw_mlme_ext.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/r8188eu/core/rtw_mlme_ext.c b/drivers/staging/r8188eu/core/rtw_mlme_ext.c
index cce0575e93b7..365f5b2786cf 100644
--- a/drivers/staging/r8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/r8188eu/core/rtw_mlme_ext.c
@@ -3513,7 +3513,6 @@ static unsigned int on_action_public_p2p(struct recv_frame *precv_frame)
 	u32	p2p_ielen;
 	struct	wifidirect_info	*pwdinfo = &padapter->wdinfo;
 	u8	result = P2P_STATUS_SUCCESS;
-	u8	empty_addr[ETH_ALEN] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
 
 	frame_body = (unsigned char *)(pframe + sizeof(struct ieee80211_hdr_3addr));
 
@@ -3551,7 +3550,7 @@ static unsigned int on_action_public_p2p(struct recv_frame *precv_frame)
 
 		/*	Commented by Kurt 20120113 */
 		/*	Get peer_dev_addr here if peer doesn't issue prov_disc frame. */
-		if (!memcmp(pwdinfo->rx_prov_disc_info.peerDevAddr, empty_addr, ETH_ALEN))
+		if (is_zero_ether_addr(pwdinfo->rx_prov_disc_info.peerDevAddr))
 			memcpy(pwdinfo->rx_prov_disc_info.peerDevAddr, GetAddr2Ptr(pframe), ETH_ALEN);
 
 		result = process_p2p_group_negotation_req(pwdinfo, frame_body, len);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
