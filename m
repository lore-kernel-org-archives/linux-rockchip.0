Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31434C5B54A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YzBM1ZFPwBvQY5AvLXEH+so8W8XURk7mDWCWvlBbuLk=; b=wjAafp8IlbydHI
	08VCr2BjsSscGk0JmrcgiQ/OWw5pQ3JSLRUG8HGrPoce1wjubBFLJUMnQDceZ9KpQLs4WLcfdQbGB
	X0dt4neYy2C6sD3OKde4P4mo+45n7roo3/fAWF2b6yvhlocmAUro2ZlBduH69OiYNsE4BP52jZUNU
	9N+JExVMU4OgWndtI8i6F8B1Rd0DBsnffP+tt+iiqq1+HY0l/Xg2fDe/FUN7gTrcVLMih+JywcI8e
	xJQ8xZRi2gKziRo2gfc1NUlWvD0Z5J46xr+fHWlUh+aPiDf6xSqLM31Y/hLRz5b7BOqAbcHEA1PAW
	/BpcKZnTj7wVaNEr6imQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKrW-0000000G3cI-0Ylp;
	Wed, 28 Aug 2024 15:45:34 +0000
Received: from a7-50.smtp-out.eu-west-1.amazonses.com ([54.240.7.50])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKou-0000000G1WP-3G80;
	Wed, 28 Aug 2024 15:42:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724859768;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Transfer-Encoding;
	bh=xvS7mUpObgNa0y44bNiTQm/TS6jfEf1+p9f/JF2fZJs=;
	b=O3W7b2tFPIArTnoTwpvggcVI7B+QHPVcjk2p+kSuNcNWX8qUsCJAwBH9oK+7xj8G
	rWuv+ZB3uEDOAxQnvPmcva/sfOJXpfTU04hcr3z0YKPbTpwgNGgpxNDBRyOiJ/YchK3
	pg+sq6MICMh38evtC4mxjTwHdzJreVNU+pp7sljRPzZhS1Dg7rcQ02kUgojJzYbNveK
	1bZRAOEvRVVv1Mj0xM+NR3qoxFlTT0e9yT9rCOVHw9rCeio+hojI9fYl3bATJLGxrAl
	behdh/BJUjq5axQmDNbsV1aMRbyovdIb39DIOEuJhQMVMvLWb5pnfAEcWUCKqV2HtHy
	w03vbxWQKA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724859768;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=xvS7mUpObgNa0y44bNiTQm/TS6jfEf1+p9f/JF2fZJs=;
	b=bu4hQFmFlsZiszzltCIyxjjy13w3RtbJmRZE2ryjF8y0kpr1vAC0gZKlTWCtbzbv
	iuGC1k/0cDipVqUD1PtM2eAuE9nXWS7Im78IA6jVjO1VkEngX8BIqvWk1rG1JZDX4Em
	MFL6U9vzbFW8XxELouQljBPIKbaQvdps84zCWX0I=
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: [PATCH v7 0/3] Add CRU support for rk3576 SoC
Date: Wed, 28 Aug 2024 15:42:48 +0000
Message-ID: <0102019199a75f9b-aab57db6-806a-474b-8295-e5be5a99d424-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.28-54.240.7.50
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_084253_146723_2FC1A6A6 
X-CRM114-Status: GOOD (  13.07  )
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

Changes since v6:
- Renamed HDMITXHPD to HDMITXHDP in clocks and resets

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
