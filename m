Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D001CC54F52
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 09:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SgXVPbp12w23qpf1+mjToWs1VariprX//e2VhjWW6Eg=; b=FZr1wj9LC1rMBX
	UulqMwrbsEexIqHGG9kdF/p2guno1QJOKOyKbeQkdEDNg/aVoGIxc+0xNEs6e9cgoFXAFMCgB7xg1
	xkD9lA+PqFK5hvscLHDfGdu0sOUsHUhACP8+/IZ8/gDE2vr9eJSiIJh2pY/aZ0eaadeDCmin3j5KR
	1YotW1hjujdIpOTvrOkz5YMBrLFEJj5McKJFxxNNt30GVfbxsKxyqTMp0D8qMqEXFde+e7rLB5Zt/
	5+igOiHgceqCr018kCRFMegnRuDt80GKsIib+u3D4tT3beXWA6gKQymA0pyp9p2KkpP6CCgwsQeLy
	HjbrVB7j1MLEIa0cwZzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wodvW-00000004mQO-3snW;
	Tue, 28 Jul 2026 09:16:42 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wodvT-00000004mOo-1zjp;
	Tue, 28 Jul 2026 09:16:41 +0000
X-UUID: 03d400e08a6511f1aa26b74ffac11d73-20260728
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:5bd4b022-18e4-4a7d-a0f2-95c29fe412ff,IP:0,U
	RL:0,TC:0,Content:79,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:79
X-CID-META: VersionHash:e7bac3a,CLOUDID:a5780a3e90f84f7614d65cefa1221d63,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102|850|865|898,TC:nil,Content:3|15|50,E
	DM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA
	:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 03d400e08a6511f1aa26b74ffac11d73-20260728
X-User: lilinmao@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <lilinmao@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1481726761; Tue, 28 Jul 2026 17:16:28 +0800
From: Linmao Li <lilinmao@kylinos.cn>
To: Jassi Brar <jassisinghbrar@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Caesar Wang <wxt@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Linmao Li <lilinmao@kylinos.cn>
Subject: [PATCH 0/2] mailbox: rockchip: fix the pclk lifetime
Date: Tue, 28 Jul 2026 17:16:21 +0800
Message-Id: <20260728091623.3691198-1-lilinmao@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_021639_824065_52D2D3A7 
X-CRM114-Status: UNSURE (   7.45  )
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

The Rockchip mailbox driver enables its peripheral clock in probe() and
never disables it: neither on the failure paths that follow, nor when the
device is unbound, since the driver has no remove callback.

Patch 1 fixes that with devm_clk_get_enabled(). It stands on its own and
is the only one relevant for stable.

Patch 2 is a follow-up cleanup. The pclk pointer is only used in probe(),
so it can be made local and dropped from the driver data. This mirrors
commit 6b0eadf69bd1 ("mailbox: exynos: drop unneeded runtime pointer
(pclk)").

Compile-tested on linux-next with CONFIG_ROCKCHIP_MBOX=y; both patches
build cleanly with W=1. Not tested on hardware.

Linmao Li (2):
  mailbox: rockchip: disable pclk on probe failure and unbind
  mailbox: rockchip: drop unneeded runtime pointer (pclk)

 drivers/mailbox/rockchip-mailbox.c | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)


base-commit: c5e32e86ca02b003f86e095d379b38148999293d
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
