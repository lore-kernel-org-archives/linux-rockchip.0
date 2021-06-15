Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 767D8C49361
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 00:38:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE1DB61378
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 00:38:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CE1DB61378
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LE3xjL1Bz7Wxj2EtJf4m9zZM4LvRpn7sWjOlhNqLKE8=; b=XoiIBauqJCI4mg
	DX7UTy7AqpGHkovKmehF9dUYe4f3Vs0VBk3cBOT3eWGCp1bMuL+7aXJwzsZjR6c64xwgi8RS6BrFC
	fXCD//TracfIvLiUq6V/UFb35ybXgo9UJlIoIaqQnmoG0Z9l4oZrkHlTWhryC3tlagf4LmEDcTLK2
	EugLH600lLKe9qA876WZU/kMLIVwJbf+IutDnMQTl9E9rJCBCprLQ8OwLJXPi6WZO+srubRv+62U/
	I5oNiiDBUSZl0knpRxzw1cYvaqw3++I4pe2oR/faP0ITtG92cm71ts+s5fxC4U2Nvlk4VMGSGnB42
	0EWWCVs2gEkeeKzC6Rvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsx5i-00Gher-PK; Tue, 15 Jun 2021 00:38:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsx5c-00GhYi-M0
 for linux-rockchip@lists.infradead.org; Tue, 15 Jun 2021 00:38:04 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lsx5U-0004ks-Hz; Tue, 15 Jun 2021 02:37:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 heiko@sntech.de
Subject: [PATCH v2 0/7] rkisp1 support for px30
Date: Tue, 15 Jun 2021 02:37:34 +0200
Message-Id: <20210615003741.3758316-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_173800_740529_8E824CC1 
X-CRM114-Status: GOOD (  11.70  )
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

This series adds support for the slightly different v12
variant of the ISP used for example in the px30 soc.

changes in v2 (from rfc):
- split out phy patch into a separate series
- drop dts patches for now
- split v12 addition and v10 prefixes into separate patches
  to enable easier review (Dafna)
- remove {stats,params}_config structs, we can just use the
  correct constant (Dafna)
- adapt to styling comments from Dafna and Helen
- add patch to remove the unused irq variable in struct rkisp

Heiko Stuebner (7):
  media: rockchip: rkisp1: remove unused irq variable
  media: rockchip: rkisp1: allow separate interrupts
  media: rockchip: rkisp1: make some isp-param functions variable
  media: rockchip: rkisp1: make some isp-stats functions variable
  media: rockchip: rkisp1: add prefixes for v10 specific parts
  media: rockchip: rkisp1: add support for v12 isp variants
  media: rockchip: rkisp1: add support for px30 isp version

 .../platform/rockchip/rkisp1/rkisp1-capture.c |   9 +-
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  44 +-
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  77 ++-
 .../platform/rockchip/rkisp1/rkisp1-isp.c     |  29 +-
 .../platform/rockchip/rkisp1/rkisp1-params.c  | 554 ++++++++++++++----
 .../platform/rockchip/rkisp1/rkisp1-regs.h    | 406 ++++++++-----
 .../platform/rockchip/rkisp1/rkisp1-stats.c   | 107 +++-
 7 files changed, 955 insertions(+), 271 deletions(-)

-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
