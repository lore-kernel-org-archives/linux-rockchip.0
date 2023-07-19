Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C79BC001DE
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 17:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KCudgxRU7C21H4J5enxqnI4oyKxssVnMj3IOXKn6wKo=; b=IMugZyfKYp4ma5
	pP+xveE4vBsmeYjQNnEOx4m0edMCwtzKDD93u+ePR4zPnVC7VinIdMUGtisTaoiZWL9LLoj0hXvr+
	lTK4qcpF+Dyo0SuVYzKuctItzol6fL1z0DlucM6vBlTdjTOJk7ASyr2/IRSwWAtAv6wHLTQJFg2zf
	WSX/lSrb02RY5FUZm7R3+tnsHB/SHK+Xm/2LucwaKv4DD9sfFYANgIZBzmjvGWAvT0eKyFmPpRqfS
	DrTwmaqnngwdkjA2sxLWbqdweXT831GdIO4GDOTitm7Xh9OnVYl5wiYWTCQ+/WIRPgT1JgQ9XAF+c
	prToUBrgjizeVfn0mHjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMBA7-008NXF-0K;
	Wed, 19 Jul 2023 17:40:31 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMBA2-008NTS-2f;
	Wed, 19 Jul 2023 17:40:28 +0000
Received: from jupiter.universe (dyndsl-091-248-208-009.ewe-ip-backbone.de [91.248.208.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4027F6607030;
	Wed, 19 Jul 2023 18:40:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689788419;
	bh=npdCwm3+Jd5lwBgGPCmM83TseN3mERIRvQQxK5+YEOQ=;
	h=From:To:Cc:Subject:Date:From;
	b=M/Y0L+mGEInoRfd0/tuQH0u9rqufvnDcRD68MWl5xMBZuNZ5VHY67yhMml1IYvaIz
	 s1Bpjkzq4t2QSCLCjgW7LMb55eQcvUulqOgEgkTt9nJNl8reqOMheAiTsRiS1Jsw1H
	 pdXNrzV6JXb36Zj13URCJqUZIoPWvmBESBtHzmfssFG5qzTTIL+ZP/y/GrD/8VHRNe
	 6wJhR+wvzHv8xejN7hutaTdQz1nrtKgZlWTK5eghJ/VixpoGITK92RLF/uZUB63a2e
	 k8aywk5yJc4WDBaHUJt13ob6oaQSPZjBAwTtPPvk+EKLcpetZm9m1olv+8Q1KNUvD7
	 vDe9rT/Y3A8+w==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1EA0A480DA3; Wed, 19 Jul 2023 19:40:17 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 0/2] RK3588 USB3 host controller support
Date: Wed, 19 Jul 2023 19:40:13 +0200
Message-Id: <20230719174015.68153-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_104027_030123_6069BD68 
X-CRM114-Status: GOOD (  10.92  )
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

Hi,

This adds RK3588 USB3 host controller support. The DT binding is
already prepared for the dual-role controllers, which are also DWC3
based, but using a different PHY and a different set of clocks.

The series has been tested with Radxa Rock 5B, which uses the controller
for the upper USB3 port. The patch enabling &combphy2_psu and &usbhost3_0
for this board will be send separately once this has been merged.

-- Sebastian

Sebastian Reichel (2):
  dt-bindings: usb: rockchip,dwc3: Add RK3588 binding
  arm64: dts: rockchip: rk3588s: Add USB3 host controller

 .../bindings/usb/rockchip,rk3399-dwc3.yaml    | 107 ++++++++++++++----
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  29 +++++
 2 files changed, 114 insertions(+), 22 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
