Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58848606A31D
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 01:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=N6Mutz0P;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=Ea53EblT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=5yR0E/5e2NypRfHex7PfzAMNfbkskC2sd5Qwc+LIEQ4=; b=N6Mutz0Pdqpapan6xpvK/DN/bb
	VQToJA6Y2HSSLNL9rFmCBmV4mJpkL9rB8Fll/iXjP0tOLYUfoy/6Zw2JQKTtvHHvgSzzEV+fIqYr+
	JdbDnZDUCFmVpnHWvLbcxrNuSbRyQQ8JKK1ZjEaugexF9eytmRqv+LiXEoy1sI6rHgIOdgksbMyMu
	UJSSLenoS1bgi5uLpoD14nhuIrPnjhgW5t9z4PO4tG4z2GXsXXo+PL34GGMMEQ81QA0mo7vPM6LTD
	47Q9/kXypwCgje7Q9uB+0cIRfkZqsZnaSrsGbEOT4ONroBVD73yI4Jir0qBDNwUIGQ4RgRqoH5jq9
	EkBbmcKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMFGO-000000089tv-3CWx;
	Thu, 29 Oct 2026 01:49:08 +0000
Received: from mail-m12843.netease.com ([103.209.128.43])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMFGJ-000000089p0-01Ss
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 01:49:04 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 52b912910;
	Thu, 29 Oct 2026 09:48:49 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <mkp@kernel.org>
Cc: Bart Van Assche <bvanassche@acm.org>,
	Bean Huo <beanhuo@micron.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Stanley Jhu <stanleyjhu@google.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-rockchip@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 0/2] Retry the full device init on fatal link loss
Date: Thu, 29 Oct 2026 09:48:37 +0800
Message-Id: <20261029014839.3390579-1-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa18558751703a4kunmb608b1c410961f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaQhlOVhoYSkoaGkxLGk9CQ1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Ea53EblTJOg1xWrK0Oo/wBuIXJGt3m7Dgg6shKF6wL1H4VT6Uf/9mELvH8hzNHHgQhqjjPW6SKgHrXkacRNM6PsZa9/DjfX8/FauLtgLGwNhjkP1vtHuroq6kKHuVsIvMuR79Xpb980J32l5R3Tl4tiBT03TgepcMLEQRmsuVr0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=aRmcfacEfs2rrBgysy9LNl7I54CQ6xpqJjiIzapBhcU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_184903_267393_F0EFEC73 
X-CRM114-Status: GOOD (  10.11  )
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On an RK3572 board the UFS device is sometimes reported dead during the
initialization at boot: DEVICE_FATAL_ERROR | UIC_LINK_LOST is latched and
the following UIC query fails with -EIO, leaving the device unusable.

  [    2.784068][    C0] ufshcd-rockchip 2a2d0000.ufs: ufshcd_check_errors: saved_err 0x880 saved_uic_err 0x0
  [    2.784112][    C0] host_regs: 00000000: 0187011f 00000000 00000200 00000000
  [    2.784125][    C0] host_regs: 00000010: 00000000 000005e6 00000000 00000000
  [    2.784137][    C0] host_regs: 00000020: 00000000 00031ef5 00000000 00000000
  [    2.784148][    C0] host_regs: 00000030: 00000008 00000001 00000000 00000000
  [    2.784159][    C0] host_regs: 00000040: 00000000 00000000 00000000 00000000
  [    2.784170][    C0] host_regs: 00000050: 02dd3000 00000001 00000000 00000000
  [    2.784182][    C0] host_regs: 00000060: 00000000 00000000 00000000 00000000
  [    2.784193][    C0] host_regs: 00000070: 02dd4000 00000001 00000000 00000000
  [    2.784204][    C0] host_regs: 00000080: 00000000 00000000 00000000 00000000
  [    2.784215][    C0] host_regs: 00000090: 00000016 00000000 00000000 00000000
  [    2.784266][   T13] ufshcd-rockchip 2a2d0000.ufs: ufshcd_err_handler started; HBA state eh_fatal; powered 1; shutting down 0; saved_err = 2176; saved_uic_err = 0; force_reset = 0
  [    2.784334][  T168] ufshcd-rockchip 2a2d0000.ufs: ufshcd_query_flag: Sending flag query for idn 1 failed, err = 5

Recover by resetting the device and the controller and redoing the whole
initialization sequence, up to three times with a 100 ms settle delay in
between. Patch 1/2 moves the initialization sequence into a new function
so that it can be retried as a unit, and patch 2/2 adds the retry loop
around its call site in ufshcd_init().


Changes in v2:
- Move the initialization sequence into a new function and retry by
  looping over its call site instead of adding more gotos to
  ufshcd_init()(Bart)
- Stop a pending error handler and clear the error state latched by the
  failed attempt, so that the retry starts from a clean state(sashiko)
- Reconfigure and re-enable MCQ after the controller re-enable, since
  the HCE toggle clears the MCQ mode setting(sashiko)

Shawn Lin (2):
  scsi: ufs: core: Move the device initialization sequence into a new
    function
  scsi: ufs: core: Retry the full device init on fatal link loss

 drivers/ufs/core/ufshcd.c | 114 +++++++++++++++++++++++++++++---------
 1 file changed, 87 insertions(+), 27 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
