Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F47AC5AD49
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 13:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Message-Id:Date:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aoFX8+yszGbDN8Mq8QNaJwh5o6VwQ+yrHltUi/KGJyk=; b=mX6XO4TT+mfVgM
	+9cTedfbPH5cyOfbuSbumNq0IOXDs5m1zc26ht87iRPy6a947IiKekMZDCuem98efG47tJEC0cYre
	g65Oon2RejLl9cd31a0WFM1hYCdVn2jrVTOXmKmFKFgASLMj3BgiC7JlrsTWTzY5ee/HA6JA8P/QL
	b1P+wnmnACKEPe/J7/PkZYS2dfA8zb55OPbqZa5nqIgCzTIbqWBZvzSu69EM4MihyvH5BHB0G0YFl
	WrGaDYZfwhhNk9wKdRn+DxhH9GdNkc9ER9pKwozln7k4dZCSQyffGJQg0BWR5M0dUMuTKQDNZpBZL
	hoVAIZ+h/4zgR3eXgoig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKzyh-00000000mxz-45Yw;
	Fri, 30 May 2025 13:40:55 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKzwl-00000000mb9-3Qnx;
	Fri, 30 May 2025 13:38:57 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1748612319; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=SZShYD1t7mTQ9DT2tggEIk7RVpQCf8D3/y2WWQq3xAp3QVq2TJNm8s2lhA5m3Bu7IX4+k3Azipd3wd5/YXEee8Nhg+WAmCgDktW+cPgRxy1nTbwb/ufZlgC6GS60Z0xf1vyoXRkR5neD91mJgPUZrQvyF1lH87/56WRqUC+jYPQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1748612319; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=y1IxS0jtrAS2T8sDTVWHloBSuBdZ/2pcZoSIPKDAGmE=; 
	b=H3rILkaoiVKgWlNhEKjM6EZiyvUnapLf5g56V+3Bs9THP1+BOv0Z/La9coz7lHvXU7B/RDdf5jf6e/0jm8wQ2bkzPYKyCccXL7uaJlyMPby3SAY5DytJsTzDG/N51Mn9PiN+HltABB0RZAlnB5reYvXoawUyqXogI+Fwl+SmxH8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1748612319;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
	bh=y1IxS0jtrAS2T8sDTVWHloBSuBdZ/2pcZoSIPKDAGmE=;
	b=W7EytWmsa4SYw9aRN+PY2FYG2NiUItqPeB4c07/PK1UR/4G5Jl6Yc/dXzga8aXn6
	Pv/I+YN9TL/7dFgSsxf7naHrTNbGeWGerVZPEtxySVSOvA9VafN+FPS1QEVY+YlBGnX
	G80zcibtcscMFFi97xEAkivPAzxujErT5+pGHHVw=
Received: by mx.zohomail.com with SMTPS id 1748612317988810.2056390045541;
	Fri, 30 May 2025 06:38:37 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: [PATCH 0/2] RK3588 rockchip-dfi enhancements
Date: Fri, 30 May 2025 15:38:07 +0200
Message-Id: <20250530-rk3588-dfi-improvements-v1-0-6e077c243a95@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAL+0OWgC/zWNQQqDMBBFrxJm3YEYEytepbiwZtIOJYlNUhHEu
 zdUunwf/ns7ZEpMGQaxQ6KVM8dQobkImJ9TeBCyrQxKKiNNKzG9WtP3aB0j+yXFlTyFktF1utN
 KXxtjFdT3ksjx9jPfxpMTvT81UM4R7lMmnKP3XAYRaCv4j8B4HF+xaBm9mgAAAA==
X-Change-ID: 20250530-rk3588-dfi-improvements-f646424715d2
To: Chanwoo Choi <cw00.choi@samsung.com>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, Heiko Stuebner <heiko@sntech.de>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_063855_924425_00341484 
X-CRM114-Status: GOOD (  10.35  )
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This series consists of two related patches. The first fixes the memory
cycle counter on RK3588, which read half of what it should've been
reading. You can easily verify this with

  perf stat -a -e rockchip_ddr/cycles/ sleep 1

and then dividing the result by the number of Hertz the ddr init settles
on, which for LPDDR4X on RK3588 appears to be 2112MHz.

The second adds support for measuring memory bandwidth with LPDDR5
memory. Results have been validated by comparing its reported bandwidth
with that reported by stress-ng --stream 8 --timeout 15, which line up
almost perfectly.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
Nicolas Frattaroli (2):
      PM / devfreq: rockchip-dfi: double count on RK3588
      PM / devfreq: rockchip-dfi: add support for LPDDR5

 drivers/devfreq/event/rockchip-dfi.c | 91 ++++++++++++++++++++++++++++--------
 include/soc/rockchip/rk3588_grf.h    |  8 +++-
 include/soc/rockchip/rockchip_grf.h  |  1 +
 3 files changed, 79 insertions(+), 21 deletions(-)
---
base-commit: ba2b2250bbaf005016ba85e345add6e19116a1ea
change-id: 20250530-rk3588-dfi-improvements-f646424715d2

Best regards,
-- 
Nicolas Frattaroli <nicolas.frattaroli@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
