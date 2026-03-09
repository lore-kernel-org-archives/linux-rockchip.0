Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1F01EA854C
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 03:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ImA6nuEM1/DVZRFw98RZ6fbjBH5iF6azoREKX+ZbLSc=; b=14qcuwShEGd0Ux
	pxbyoesw2vaReFRmkFqXfKfPOejq045CFIdrDg7/bBHT8TbFTLrGP8T/q35OiDrGqf6D2Ns2Tj9Q2
	9XwyYzzUhPqRGtBVLoImBZ90x/0fiTPBumuOGPdlJ06hfuCvVC3eEDetFJzMKzhbQo+iEcbnelj7X
	slfLdkAXrWOJe8Kbhl7FQBgge3ispS/7/4q3omupswceEsHGKYbe6DU0+tQElk99j1ju2MDkN0UNl
	81DWACKE3hVcS3mcDwbvmrAfvnX3Rn1SZLukd5CfLbEX74G0ZGTXwPPpHJvkACVSAF+I4dmNBpF59
	nMitsFiGEmCFjTV8fdLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzRJ4-00000006awn-0hXJ;
	Mon, 09 Mar 2026 03:29:22 +0000
Received: from mail-m3277.qiye.163.com ([220.197.32.77])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzRJ0-00000006auY-47RU
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Mar 2026 03:29:20 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3631478c1;
	Mon, 9 Mar 2026 11:29:07 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Jaehoon Chung <jh80.chung@samsung.com>
Cc: linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 0/3] Add phase map support in dw_mmc-rockchip
Date: Mon,  9 Mar 2026 11:29:00 +0800
Message-Id: <1773026943-111633-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9cd0a42e8709cckunm2100c80115ef20f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhgYQlZOTksfTx1PH08aGUxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ifAx1XCUUTp7JGc2wKs/wD6z0HoueiEFbiR/iCKmYFVe9ThqDU68cTjAvhz2eCoprgQS7aRPKz88eCXzqWi1X8D/F3SGMefKbelUUhZAmYf55epQTYn49hFJg8JgziGyIHjhMZV3nXmvSM42+jY0VPGn8NgH1/CC5/CA/bQrAfU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=ySVjGdAZL4+L3jsqvqxUzJxN/UQZm9vJ85CDgZhbqzM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260308_202919_517523_A6972703 
X-CRM114-Status: UNSURE (   9.97  )
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


Hi Ulf and Jeahoon,

Currently, in dw_mmc-rockchip, the rockchip,default-sample-phase is only used
for some lower speed sampling, while the output-phase configurations are fixed
based on timing settings for all SoCs and boards.

Subsequent validation shows that this approach fails to achieve optimal timing
performance on many chips and development boards, failing to meet test requirements.
Since different timing profiles demand distinct phase configurations, we introduce
phase map support to dw_mmc-rockchip to address this issue.

Additionally, given that dw_mmc-hi3798mv200 already utilizes phase map functionality,
we avoid reinventing the wheel by moving the phase map parsing logic into the core
dw_mmc framework (similar to how mmc_of_parse() is implemented), rather than duplicating
code in the rockchip driver.

This change maintains backward compatibility: the original default_sample_phase and fixed
drv phase configurations for different modes are preserved, with phase map values taking
precedence when configured.



Shawn Lin (3):
  mmc: dw_mmc: Add parsing mmc_clk_phase_map support
  mmc: dw_mmc-hi3798mv200: Using phase map from dw_mmc core
  mmc: dw_mmc-rockchip: Add phase map support

 drivers/mmc/host/dw_mmc-hi3798mv200.c | 11 ++++-------
 drivers/mmc/host/dw_mmc-rockchip.c    | 27 ++++++++++++++++++---------
 drivers/mmc/host/dw_mmc.c             |  2 ++
 drivers/mmc/host/dw_mmc.h             |  2 ++
 4 files changed, 26 insertions(+), 16 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
