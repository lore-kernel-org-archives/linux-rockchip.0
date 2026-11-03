Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCD2606A330
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 08:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YZWjEqm2;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=dsSxLkHt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=gYRsEDyb15p0pCivuRwatRbtKNe1TF/oSx2ZC6qzk8o=; b=YZWjEqm2KtIBic1GwlUUgZ8a/b
	315wbDcyZyQn2xa7u0wkYN11/em7XNzIMfWMEInijhi1IgT6TmX5UxJlWVfv0UsYTtYtRd4hYweOe
	hlF+MR76bsCh8xwLj6Pd3uFJGGKjQHnSNTluyFMeK5Bcxr5630f9mi7sZ3uwyiU4weWa9YfgaKG2s
	fOKlfA0jJ2nfRLZWLdmVmgM3u5YijhPy3115khHHgWvFyJCFjk3JPSJbv9EJL7yymq4otCMvCskrq
	jbSJkIh4MXXc997F1fJay+p9OjAOt0lSIOpOwiptkhJEpKsnG1woZIkh0SNBvIEoHWEkGjZDduD5j
	c5jlbsJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO9sG-00000001XJj-16i4;
	Tue, 03 Nov 2026 08:28:08 +0000
Received: from mail-m118103.qiye.163.com ([115.236.118.103])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO9s4-00000001XCk-2m5x
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 08:28:03 +0000
Received: from localhost.localdomain (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 534fc30a5;
	Tue, 3 Nov 2026 16:27:39 +0800 (GMT+08:00)
From: Frank Wang <frank.wang@rock-chips.com>
To: marex@denx.de,
	trini@konsulko.com,
	mkorpershoek@kernel.org,
	balaji.selvanathan@oss.qualcomm.com,
	macromorgan@hotmail.com,
	sean.anderson@linux.dev,
	heiko@sntech.de
Cc: u-boot@lists.denx.de,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	chenjh@rock-chips.com,
	wmc@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH] usb: dwc3: fix abort on invalid ref clock rate from clk_get_rate()
Date: Tue,  3 Nov 2026 16:27:32 +0800
Message-Id: <20261103082732.18483-1-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Tid: 0aa1a085650309d8kunmec4c1a3f321221
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaHxoYVhgaShlLGk8ZGkweH1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=dsSxLkHtjK7irPA83vzdAqYCb0dR74DwWawuf6eIJ6cQaVYy6m3iprqhSWUny/ZHjR9+eNpLUEHSmg1gTjWttubTiqyss1cprw+EP7/hVZiPu28uYcPegjYR+KkwfJtrd9pEgc6wuHFVEtirLcL98GB3TQiO/3ulFcVrqsL+Z9U=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=HrVF3tXz3d9IzUq/NGfRH+ENwu7QrobKsLRtBPRBTog=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_002758_006663_52ECCD9F 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 32-bit platforms, "usb start" aborted with
"### ERROR ### Please RESET the board ###". If the clock driver
does not implement the "ref" clock, clk_get_rate() returns
-ENOENT, which dwc3_ref_clk_period() treated as a valid rate.
period became 0 and the fladj calculation divided by zero; the
software 64-bit division on 32-bit ARM calls the
division-by-zero handler __div0() and hangs (64-bit platforms
survive silently since UDIV returns 0).

Skip REFCLKPER/GFLADJ programming when clk_get_rate() returns an
error code, as is already done for rate == 0.

Fixes: 6bae0eb5b8bd ("usb: dwc3: Calculate REFCLKPER based on reference clock")
Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
 drivers/usb/dwc3/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index be198041f08..9a84ec6a60e 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -151,7 +151,7 @@ static void dwc3_ref_clk_period(struct dwc3 *dwc)
 
 	if (dwc->ref_clk) {
 		rate = clk_get_rate(dwc->ref_clk);
-		if (!rate)
+		if (!rate || IS_ERR_VALUE(rate))
 			return;
 		period = NSEC_PER_SEC / rate;
 	} else {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
