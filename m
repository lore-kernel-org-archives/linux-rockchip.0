Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8A1606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 07:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xn6BeoXH;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=WZ3cO+wW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=u0YTvCqvsgvzawBSywHbF2sy/pn7j2zSzm0L1UetJV0=; b=xn6BeoXHXaQYbHjWqk9NX+e33A
	OXWJ0TVv/arxVYN0c49HEzZFGOkqIWs604yGzorprc0SMCV1ycv5AoQyeE5Cr5x12/syyJmatbiDW
	ZIUj3rziAhbCGTehYtB2CQbzfC1XCfoOxG8oRNjcZlCM+r+orct37DsVcCLUU5bmsbPMBtSjJx5NU
	b3hC04fSjqMRXFMkDUBzBRnsmHL4bCSsphbOOh3/EpKAzDHUHHH0+468fWYJSvKBgpQfha0sEiXoC
	/v1af7ZqMKaYP/5PglP9EYWQeQQKJkZD5Vn8ActAgIKhT6pdfK9lDVZ/RuHm5zlqhrlrYW8R+8KTW
	2saQS9ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMKVe-00000008XG1-0mdG;
	Thu, 29 Oct 2026 07:25:14 +0000
Received: from mail-m19731116.qiye.163.com ([220.197.31.116])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMKVa-00000008XFa-1TT6
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 07:25:12 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 52c491321;
	Thu, 29 Oct 2026 15:25:04 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <mkp@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] scsi: ufs: rockchip: Improve RX noise immunity
Date: Thu, 29 Oct 2026 15:24:55 +0800
Message-Id: <20261029151030.1.I61cd43e660b146e49d4380a754e936270e5fb6a1@changeid>
X-Mailer: git-send-email 2.25.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa1868c4fe003a4kunm83c5329213e600
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCH0oYVk8aGhpLSx0eTkJJQ1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=WZ3cO+wWijVGbctlALLZvC47QgebXvXj9s93VX/EXQMVvX3GIOl7vDjxOxE9MyiqYpy80UvtAzJcYdRQ4XOwbYovhQHWrdKYa2Hz9Lgpc3qLiPratjKQ6Hz2AoSJHPj2Hl5OiLqEaQTsYOuaYdwusVbbuFpF8SWog0mgMIz0gYw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=laRlzAtsKIRBcFs8iM4s6pQnI/rS0v1hGyELb/if4n8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_002510_911255_3E1B2B97 
X-CRM114-Status: UNSURE (   7.29  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Program VND_RX_SAVE_DET_CTRL for each RX lane to raise the receiver's
tolerance against short transients on the incoming signal, as recommended
by the Rockchip PHY team.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

 drivers/ufs/host/ufs-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ufs/host/ufs-rockchip.c b/drivers/ufs/host/ufs-rockchip.c
index bac68f238e1c..87308c9b1070 100644
--- a/drivers/ufs/host/ufs-rockchip.c
+++ b/drivers/ufs/host/ufs-rockchip.c
@@ -82,6 +82,7 @@ static int ufs_rockchip_rk3576_phy_init(struct ufs_hba *hba)
 		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_RX_LINERESET_PVALUE2, SEL_RX_LANE0 + i), 0x02);
 		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_RX_LINERESET_OPTION, SEL_RX_LANE0 + i), 0xf6);
 		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_RX_POWER_SAVING_CTRL, SEL_RX_LANE0 + i), 0x69);
+		ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(VND_RX_SAVE_DET_CTRL, SEL_RX_LANE0 + i), 0x18);
 	}
 
 	/* disable the mphy DME_SET cfg */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
