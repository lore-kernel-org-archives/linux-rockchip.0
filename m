Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B1B5C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 17:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pwbWeKR/NA+9ecgZ93q0BQws9A+34tC5b1QUrcBdolc=; b=HCMrXFkqEWaPDv
	yvJjETJoTSBDelShl1Jmt+nEZ5Q3vUfsho6HJaRpgjnIutzsSmunh/Ql/4Xc0u/T+Dy/4b7pG/Q/Q
	ug4hU9/9l9rtg3+070s/QMyVHCfrLHN2Li7Q/TpcYc5uiyrWxlAtnJNR7DcsZGptKIInau113gSHd
	MY8ds7C9EFgguFU33e72mi+rK5rl2BmekFfRab509ucBvaKlNV+MXpGqBXNdIR3i4TZ52j7w5IL7e
	Bi7gEY+Tn5XaDH+e5yyvhStSc/OWKIJx/NIQdprvdj7gIlLD41cnHXZ3qEZe6eWwYD0FEiLxjJr7D
	f/h6pQ2Shzal2QTs7sMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6yW-000000096Vk-3Qb2;
	Thu, 08 Aug 2024 17:30:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc5up-00000008vse-3s9V;
	Thu, 08 Aug 2024 16:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=PV+G4SQkttZHwQN25E8l67uUEkfDIu3oeofJucfzkuo=; b=pAJxpZ62Hy4lB8fP7JNjbzcvbm
	xnfzgltP7KYgCJtq94L2xkFhP6OEkVIVFXi2fVPsOvz+fOi2dih1uMIzZos2K56lGfCooMus2mkCv
	VItUx4ZB3ejUDTgT8y1psFU2VdzEn0tqKqYTXnYRsHLkcjl5GMP1mCAOT1Cu00HHnvANs5WmNNJ1Z
	2INAl8qeevjhiCwenPf9XfsOP+ld/SY3EKgaN8WLuT+rQabIgZSbAXZToN2zLr2bPmnULAHGPxUgA
	t7lLdqxdR0IQKOMhtpeifiG+EZQNg7tovicrW0VbeMq+TV+/VCotlzx/rHX7oKMK2o1VpBuPeMFP6
	HtKV1guA==;
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc5um-00000006rYa-2JbV;
	Thu, 08 Aug 2024 16:23:02 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723134165; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=S4saYWfvU7yDd/11V5gxU4GYwjw+V44lgzpWpKnZv9tiIOInC9l0R2hyF+9unIpxseIshV8sYpeDSQNWq/klkOm/7YXJTq6olcQmE/aqVmEOjljMyrRnJ2rGyaR6jClDQFwllFPZkKs6LD9zKsZpuPt1ZimaaL7lzfVD3oFstvY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723134165; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=PV+G4SQkttZHwQN25E8l67uUEkfDIu3oeofJucfzkuo=; 
	b=K5fVu9eib1vRA6QzCHFOF2yF492hrKY/TkFnIBqh34CyOqoJUtvXIdInYKFlzRPfa7QUXZoHC8IVRSbBANApgHqgw0N5ZGpvuhINf3k1Kll80KG6/eF1PCFqsYzJNtObaQ6+bEfDi9WapkRJOYa4LymNF746uKh5ZNzOXKoBKMw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723134165;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=PV+G4SQkttZHwQN25E8l67uUEkfDIu3oeofJucfzkuo=;
	b=gSHRfec0Unj/01yTWeXlIvO6a6eEmTUgxwjRtGcNeKJ2bFmjsCVWgsm48Lw6y7UI
	Ghq9EDVjM4TgSuIpZO/Ee3yWM0vv7qSAOXVp8WE7/D74oU9JEWw1cOlcC9PaLK2tZeF
	cLZC5w0EyCqW6F7AAam8vSE+aHdBaeZ+ZeoB51r8=
Received: by mx.zohomail.com with SMTPS id 1723134164385222.1880514309653;
	Thu, 8 Aug 2024 09:22:44 -0700 (PDT)
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
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v3 0/3] Add CRU support for rk3576 SoC
Date: Thu,  8 Aug 2024 12:20:55 -0400
Message-ID: <20240808162258.79271-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_172301_015068_288A6F71 
X-CRM114-Status: GOOD (  11.98  )
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

Detlev Casanova (2):
  dt-bindings: reset: Add rk3576 reset definitions
  dt-bindings: clock: Add rk3576 clock definitions and documentation

Elaine Zhang (1):
  clk: rockchip: Add clock controller for the RK3576

 .../bindings/clock/rockchip,rk3576-cru.yaml   |   83 +
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rk3576.c             | 1819 +++++++++++++++++
 drivers/clk/rockchip/clk.h                    |   53 +
 drivers/clk/rockchip/rst-rk3576.c             |  652 ++++++
 .../dt-bindings/clock/rockchip,rk3576-cru.h   |  592 ++++++
 .../dt-bindings/reset/rockchip,rk3576-cru.h   |  564 +++++
 8 files changed, 3771 insertions(+)
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
