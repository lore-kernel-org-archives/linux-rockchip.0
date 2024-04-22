Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EE0CC4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 10:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ph5yqlL4DUQxNrNAM708J/GlzNBOIa91ElZCduaDxJc=; b=hs2SPFM88Wxg5w
	wRiU0zdCI3SqRnMcmvWkynkEix+YVDDnowNTE4OokEOqwymtfUuSvY58yXtcMQGdyLRw/DopXMWyo
	gPAOmA8rph/SR4gurUsJFE8j4unoqdG2svxmkzaVjWmJoWNYQ+AAYLzEWDIL+bMIxerd0yxpmVPVU
	9+zOCIM1mdUD8UCvNMdkKgXfPqoCxuxGhVAvK0VEkAcMgZUz8bc17kZkTgtAcJ4SU7eiRSF/bonj6
	fl06De+VU6sJghaIRGKKt7ZPQm3pP+hCtTj509UYZI00L8TeZ36G4bMrHN7K9JfG4tZM6FXtW+qfN
	kw8UGBCXg9i0xNrQSVFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqm7-0000000D7EX-39vY;
	Mon, 22 Apr 2024 10:19:51 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqm3-0000000D7CJ-0Tgx;
	Mon, 22 Apr 2024 10:19:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=twF0f
	VgcdFbRYd/8dnq/6sOb23kJ0H7GRTQUDCTRWBs=; b=XhedbwYIfrJsCpytTVmBT
	SkUg6r7FCcyJ9FMdWtN6caV/Kl7evm6meMcy8/oktADqbZ0x8dMXHvrAKukQMqsn
	wODY0j/7hUPTieJA1v75vb2jp6MHjppMUbinip34iTpv0yw7th47gygJgAipiIT6
	FXbpeDxdRNrDxEpLV7gXLQ=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g1-3 (Coremail) with SMTP id _____wB3fymbOSZmRwO9Bw--.23790S2;
	Mon, 22 Apr 2024 18:19:10 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: tzimmermann@suse.de,
	mripard@kernel.org,
	hjc@rock-chips.com,
	s.hauer@pengutronix.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 0/1] Fix the port mux of VP2
Date: Mon, 22 Apr 2024 18:19:04 +0800
Message-Id: <20240422101905.32703-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wB3fymbOSZmRwO9Bw--.23790S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU3FksUUUUU
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMwDIXmXAkyK0RAAAsB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_031947_646335_DDDE2160 
X-CRM114-Status: UNSURE (   9.58  )
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

From: Andy Yan <andy.yan@rock-chips.com>


The port mux bits of VP2 should be defined by RK3568_OVL_PORT_SET__PORT2_MUX,
this maybe a copy and paste error when this driver first introduced.
Hi Heiko:
   Maybe thi is the problem you met when you porting the dsi2 driver.
I previously sent you this patch when you ask me about this issue on
email,but I'm not sure if you received it.


Andy Yan (1):
  drm/rockchip: vop2: Fix the port mux of VP2

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
