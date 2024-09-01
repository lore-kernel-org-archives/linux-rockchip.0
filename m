Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 732EDCA101E
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Sep 2024 22:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uUXEYX/0PA3aYbwS//vppr7DqhgkGEi+DgNj1p1P6VM=; b=DT1+kzcCV+XTwU
	3nrxhk5uBOSpMDj+Uy4yrkVVMZ5FvYLvw20psCtv3WqsQNbVxq+U+2479/8y7dkGaji/K4MZ/he8E
	2siQjgPOoQhkxrzqfO1cu6PQhfyfqenqKYujIdJ7zg0XRumUS2CErqQlhBjknLSnkChvjsQugfAme
	U6SeHttkCiXOcq3P+7cx6Tb6Ws4aO443y2+nDXQ1TX1c8syeOwaarC2nSWf/zM228d2sDp/Cw93sO
	zSz8o/67kpITIozxb40KO7JS4Ad0iS3bTIMGM3yfO6ny/rd+fo8HXorm9izlWCxrdm8EkxXykKcM+
	aM3mepG4HeAdMUaTot8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sksoP-0000000CQQc-2OV5;
	Sun, 01 Sep 2024 22:12:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sksno-0000000CQMF-17Qy;
	Sun, 01 Sep 2024 22:12:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=En7lqAj3vsMOX67XHj3kouTnwszC8SPDX3RQFxwtRmc=; b=PJKhBNofZ4oQSJG9OxIi8DFHp7
	RqFFkwaVRnhlw9NKf11yOglDWKr3vBV1d4rXp9UmaQmawPh7CypnJVaLFKWo8IpwpSTPbq+jhVMq0
	vLrKckoFIUWGQ5BfcPul8reyYyiMR1nU9WGNuNVUufxrDchEbB+3dSguvBz8wSgfrdHVSOrCGxLU+
	D+Zqcz5wo8w+zSTKct2UyalUKOAPt39CxZHv/c8iwPiyDSunPPo6PwhdNtHuHq+r2ZDT0NaKSiaXP
	qp5ikGX+yIer0wFSbxT0NT5OPHU/XEeZ8CppKBz/1AmKAXScLmhqm6+buPczT6bTDjWd6RN5kXIFZ
	pv4VyuWw==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sksnm-0006hp-VC; Mon, 02 Sep 2024 00:12:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip driver changes for 6.12 #1
Date: Mon, 02 Sep 2024 00:13:40 +0200
Message-ID: <23316481.ssLaC8jLEa@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_151208_336178_04CD8622 
X-CRM114-Status: UNSURE (   8.88  )
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

The following changes since commit 8400291e289ee6b2bf9779ff1c83a291501f017b:

  Linux 6.11-rc1 (2024-07-28 14:19:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.12-rockchip-drivers-1

for you to fetch changes up to e1aaecacfa135cd264a0db331d3ab8b2a04a54a3:

  soc: rockchip: grf: Add rk3576 default GRF values (2024-08-23 12:33:58 +0200)

----------------------------------------------------------------
rk3308 io-domains, and some default settings for bits in the general
register files for rk3128 and the new rk3576 soc.

----------------------------------------------------------------
Alex Bee (1):
      soc: rockchip: grf: Set RK3128's vpu main clock

David Wu (1):
      soc: rockchip: io-domain: Add RK3308 IO voltage domains

Detlev Casanova (2):
      dt-bindings: soc: rockchip: Add rk3576 syscon compatibles
      soc: rockchip: grf: Add rk3576 default GRF values

Jonas Karlman (1):
      dt-bindings: power: rockchip: Document RK3308 IO voltage domains

 .../bindings/power/rockchip-io-domain.yaml         | 24 +++++++++++++
 .../devicetree/bindings/soc/rockchip/grf.yaml      | 16 +++++++++
 drivers/soc/rockchip/grf.c                         | 32 ++++++++++++++++-
 drivers/soc/rockchip/io-domain.c                   | 40 ++++++++++++++++++++++
 4 files changed, 111 insertions(+), 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
