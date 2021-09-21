Return-Path: <SRS0=QbJo=OL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 352F3C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 10:09:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D98E860F9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 10:09:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D98E860F9D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+8Obw9+SGubgKohnzL9A9nr5cNUMIgbz1cDTGG9n8g=; b=wp3VjQNF93gvp6
	bB3ReLOWaLDOqlEUZS2ueAbo5EEnq7dzvkr4T5hXr/ol/p22lj9oVEMsYoe+J65OBxb82GAqKzgWm
	DcrmonT1kiaOQqCDlvJ+tXpXqe1K/i6oTrc9P4FpkEy35a1NeKldCGuQECsTb3K68+LJGwKd0hIcR
	YRvBxvHFlPmfXlaplYdr7Pbgg78jx3dDcWDDPON0UohBZmsi1vple7MWzcIhtq/pxHDkG8aK35+dw
	0n2v0c04CAgxg46qdh/vQX0ubA6oZpiXdTpEmc5Kxv4a9GjFJFS0UQBcLMbO8uwBjEg9wtSgKHuRA
	d7RVrgzf0FkgEdQIvoQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSci1-004COB-3w; Tue, 21 Sep 2021 10:09:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mScdH-0049Zw-3G; Tue, 21 Sep 2021 10:04:13 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mScdC-0001rd-RH; Tue, 21 Sep 2021 12:04:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 airlied@linux.ie
Subject: Re: [PATCH] drm/rockchip: dsi: Fix duplicate included linux/phy/phy.h
Date: Tue, 21 Sep 2021 12:03:33 +0200
Message-Id: <163221857584.2031971.9461320682192946569.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <1629454729-108701-1-git-send-email-jiapeng.chong@linux.alibaba.com>
References: <1629454729-108701-1-git-send-email-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_030411_238179_0F5E50DE 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, 20 Aug 2021 18:18:49 +0800, Jiapeng Chong wrote:
> Clean up the following includecheck warning:
> 
> ./drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c: linux/phy/phy.h is
> included more than once.

Applied, thanks!

[1/1] drm/rockchip: dsi: Fix duplicate included linux/phy/phy.h
      commit: d90def98f90fb166191f19b41620e1a54b6dac75

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
