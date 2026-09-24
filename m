Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E471C98317
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 08:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aS0nQrwDZzjZKNCfFrd1tW3ETR1bC79ETgZhHjEgyqE=; b=f/9psDmZWgYsbE
	XgwvosbqA6fFSsg8RrcYM//FaAckBqpKFU0yxw2rigwyenhmC4vhkk+dVO1jSNUtpTz8JM91DM73n
	XARra/l4GwWb0n/s5qtmZsOJxEsYoVbpkvXItRIjP2M2N9/YgHq0JGpwdoijMwMo5M04JQjwpeS6I
	ucjmNTJIkk79j/t+dCR9zmJe+1Isyi+c2XJXf5kewwRxJhavaI2qC5odZpIWgv1zyX/XKF62WVUbq
	6yst3g7LGLI8RC//QTRvd6NOS+4vCF/XnYE8Ox+avGIFW9+UFdv+t+MEyddZmycWSxsekiDScD97A
	n89EUv93Vy1Jo+Ulvqng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9fAV-0000000AUjz-04xG;
	Thu, 24 Sep 2026 08:51:03 +0000
Received: from mail-m93223.xmail.ntesmail.com ([103.126.93.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9fAQ-0000000AUiN-3vKA
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 08:51:00 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4f01e1b71;
	Thu, 24 Sep 2026 16:50:47 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
	linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 0/2] Add mmc_send_tuning_timeout() and use it in dw_mmc-rockchip
Date: Thu, 24 Sep 2026 16:50:21 +0800
Message-Id: <1790239823-139583-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa0d29c30d603a4kunm11feacd55405a7
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQkhPQlZNQhhCTUsdHk
	0dQh5WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=IV+LFnnd31T9ych4OGRCyuz3V/pE/6svu548dtAP/Pv+CFcqQVq3YCe6mA2RHyGCA05tYHdTgwGHOqEfPxnkJgyPXJrUD7C2fj0YEtLdUV1qj8FBPQVttw10SkS4XLOJ0bJdxqNSxlXyK5hk6I1Luwga/E+/9x5bktPK3nHOcR8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=1l6ScudUKR/MxhyEGDAKQAZvdVOzve1sqQv9S4LEbrc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_015059_183452_5B601F60 
X-CRM114-Status: GOOD (  11.90  )
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


The tuning specs guarantee that a *sequence* of 40 tuning commands
completes within 150 ms, exclusive of any host overhead:

  eMMC, JESD84-B51B 6.6.5.1 "Sampling Tuning Sequence for HS200":

    "The Device is guaranteed to complete a sequence of 40 times CMD21
     executions within 150 ms. This is exclusive of any host overhead."

  SD Physical Layer Specification Version 4.00:

    "The card shall complete a sequence of 40 times CMD19 executions
     in no more than 150ms. The tuning process is normally shorter than
     40 executions of CMD19, and therefore should be shorter than
     150 ms."

mmc_send_tuning() however applied that 150 ms as the data timeout of
every single CMD19/CMD21, i.e. 40x the per-execution budget implied
by the specs (150 ms / 40 = 3.75 ms of device time, excluding host
overhead).

The data timeout only matters for tuning commands where the device
never returns the tuning block at all; a wrong sampling phase
normally fails fast with a CRC error instead.  Waiting 150 ms per
such test makes software phase scanning painfully slow.  With
dw_mmc-rockchip HS200 eMMC the TMOUT register saturates at ~112 ms
for the requested 150 ms, and dw_mmc-rockchip's execute_tuning() scans every
phase of the tuning window, stalling that long on each phase that
misses the window.  Multi-second boot slowdowns have been reported[1].

This also increases the cost of runtime re-tuning, not just the tuning
performed at enumeration time.  So this series introduces a new helper
for host drivers to provide their own timeout for each tuning command.

[1] Link: https://bugzilla.kernel.org/show_bug.cgi?id=221781


Changes in v2:
- Let drivers provide the timeout via a new mmc_send_tuning_timeout()
  instead of shortening the default for everybody, as suggested by
  Adrian, so it is less likely to cause a regression.
- Split into two patches; mmc_send_tuning() keeps its current
  behaviour (150 ms) and dw_mmc-rockchip opts in with 5 ms.

Shawn Lin (2):
  mmc: core: add mmc_send_tuning_timeout()
  mmc: dw_mmc-rockchip: use a tighter per-command tuning timeout

 drivers/mmc/core/mmc_ops.c         | 22 +++++++++++++++-------
 drivers/mmc/host/dw_mmc-rockchip.c |  2 +-
 include/linux/mmc/host.h           |  2 ++
 3 files changed, 18 insertions(+), 8 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
