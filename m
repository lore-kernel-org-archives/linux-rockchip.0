Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A694C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 19:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5jTwTPHy5hvl8ZQMuSufGf2/ckSpPEibSTcPfM69pHA=; b=bfnGAZJfAGUw0l
	vQtpXhD7IRXkVKk1TUpFJ35X8w45W+ufA4bdOSPJGbEUYyTorjkXUnqTbuBmCPE8TzsXyIFotebBa
	KLDY0nnT5gwCVdEODAiY2iiSEloTH4qGX/VDDmNPPhs86U0Wb+ceY/u+Y1qkrupgpZA/IgfPx8Cjl
	7SDdHBYA9lgnvUVo9PJOAIyznG4zy626MIAYYAQ6nxwPFQzCqyw9FHjz/erKdSsiui5p/249gJfNb
	AEZ6fs1E8BccMZjyETvJi6TMAcvJHgriSwGT30chieJekYmyVXASbOdSmOLzr/STYrHzBqk/N8H73
	P8+qq5lRVK6bOiUbCzkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDpV-0000000E9Ky-1oSQ;
	Thu, 22 Aug 2024 19:50:45 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDpP-0000000E9KG-3jqg;
	Thu, 22 Aug 2024 19:50:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724356228; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=E41yLdpZ+X5SnFdkNfrcl7f8jySEoAsAfCRDiNbZbVbNyMrNT+volmD1StncEwRskKETGn0QuPb3bqwJXgJJdqRszmxdLELOneG7QFH0fJzOjn5vdrxiyCznIO9mG9q6AD6wOaI0L5LWiXb6GG0fCvlnRm7M5EV/Rk8IqGRNzm8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724356228; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Mb1fbrEw+bwWMVwy9MvhckXYVriHPI7yDfsI9liML/w=; 
	b=YYwqR67K/sinkUlIMzVPVUTrV4RmsaRu72ZxTb1CP6TLn3WqgTfTxaTFTbO5txV1QXjRJNdaMrmfmzT82Wmd6BVxFc5Cpgu1sI/clb4Dk0MZcv/T3zJln9s8CEfuuU9UKmMZEreFtrSAnho+9NwElqPSmz22UVVFd7TCT4TLCgA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724356228;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Mb1fbrEw+bwWMVwy9MvhckXYVriHPI7yDfsI9liML/w=;
	b=eTpeRTTzrVfAcr60NE2GH5TAMPg1PgTFrlQopLiyTkawNcwZXLnx+f4dUd9D8pxW
	pLrkguv3hoqistyXH3aAbgryboFtMhebeHVYpIafivX4/NqkKf3d89Ec/4qYc48ry85
	kBlT/P5BvbsCqw9hy3MmWbRKTnAFklvlRL8AKvgA=
Received: by mx.zohomail.com with SMTPS id 1724356227134647.7294909083045;
	Thu, 22 Aug 2024 12:50:27 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v6 0/3] Add CRU support for rk3576 SoC
Date: Thu, 22 Aug 2024 15:49:31 -0400
Message-ID: <20240822194956.918527-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_125040_167641_E7A3717B 
X-CRM114-Status: GOOD (  14.10  )
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

Add support for clocks and resets on the rk3576.
Patches from downstream have been squashed and rebased.

The resets have been renumbered without gaps and their actual register/bit
information is set in rst-rk3576.c as it has been done for rk3588.

Also add the pll_rk3588_ddr pll type that is used by the ppll clock.

Changes since v5:
- Use mandatory syscon lookup instead of optional grf phandle
- Add pll_rk3588_ddr type to always have correct rate values

Changes since v4:
- Fix commit message with idx starting at 0
- Stash all bindings commits
- Cleanup example and add me as maintainer

Changes since v3:
- Add missing include in bindings

Changes since v2:
- Renumber IDs from 0
- Commit clock header with clock bindings
- Add missing resets on sub-cores
- Add redundant fields in bindings

Changes since v1:
- Remove reset defines that are probably out of the main core
- Separate resets and clocks bindings
- Renumber the resets without gaps

Detlev.


Detlev Casanova (1):
  dt-bindings: clock, reset: Add support for rk3576

Elaine Zhang (2):
  clk: rockchip: Add new pll type pll_rk3588_ddr
  clk: rockchip: Add clock controller for the RK3576

 .../bindings/clock/rockchip,rk3576-cru.yaml   |   56 +
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-pll.c                |    6 +-
 drivers/clk/rockchip/clk-rk3576.c             | 1829 +++++++++++++++++
 drivers/clk/rockchip/clk.h                    |   54 +
 drivers/clk/rockchip/rst-rk3576.c             |  652 ++++++
 .../dt-bindings/clock/rockchip,rk3576-cru.h   |  592 ++++++
 .../dt-bindings/reset/rockchip,rk3576-cru.h   |  564 +++++
 9 files changed, 3760 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3576.c
 create mode 100644 drivers/clk/rockchip/rst-rk3576.c
 create mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rk3576-cru.h

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
