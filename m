Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74133C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 12:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=THOLNU73JdY0rQhtb8PPOA1YPR4LrOa9TluzN4TQEIc=; b=ki7/KdCrJ2bbbp
	GytmybmsgjF5NOJ459XNpmqkJ7xTT5CZ8DezDyc+EbMdj8gfgJENGjCri1pMhmgv3EZ7xeycw4g52
	QPBwcXSOshCsuIDvIt9vebKnd38/HEgRZ6I54OX59KKgTU23eZpPACIRVtRJfmi7h9+Dci64juAja
	S1Hc+LAeFqSDQjgElKhoIdAmpxOqO1o/b6P6OW5nbNzClHhGtU2kdjfjdnxxjV6Qn4PGb+DWJkf60
	mD90Iy+Cy51Hqbq/5qS/V6BPWTRXLtpKYC/D6UZ6Y96OIJqytRggyqhH7Alaz6lzzMaKrTp4mvBa2
	uryprIWcOD5kbPLcTx+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scPCG-0000000BGN9-2U0l;
	Fri, 09 Aug 2024 12:58:20 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scPCC-0000000BGMf-2YEt;
	Fri, 09 Aug 2024 12:58:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723208289; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TFYc5GC2InGK2vJkzxzVWTL9GN3QpNSaShANM3c8hq4SgcO1sj7ZN26EMVdkVgi9WHi/+uGr9eVriYY4F0vUiq6wWIRrHWLQu3oqPvn0J/YvKrKBzHhH8LJFZtBB/JzBefzTGkI/nXpuY28RWtV749aXz0Lm1XJQkqN3FuPzM3Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723208289; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=QgHKMVm9qef45pCQ2A52WWjlGN1Vwr37tZFt+U9C6FE=; 
	b=FPRT68Kuzo0e0ITTlViZO1K3d6GeY5cFy3axyw9CfuO9gWf3TBiWPnHnlY9t2H1Uv3TwVLNzVAChWPP1UiAa3UqkgbGmo4GXysKHpXG8w6UggkajXAFPcu/xlwa+Onuiq6+JuwIugeeBH4FHJBwvVPu5xmuQsGCM834hptoM1jc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723208289;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=QgHKMVm9qef45pCQ2A52WWjlGN1Vwr37tZFt+U9C6FE=;
	b=fIGHu2gkMWgQrvoFr4Icwf3IrBEmG2HcFbaT1oBi9exQv5l/ODSUYIcTgt8o82n8
	JQnvdf7a6hdrZ8BRZXDEBC74B7opNzWwO+XH7JzKLw7Nr/RHX99XKhvpUESckFERHOl
	xGEwM73kr58aJrqEENWKA3YH+XWquhtd2Opf9sLk=
Received: by mx.zohomail.com with SMTPS id 1723208288516683.9262197649491;
	Fri, 9 Aug 2024 05:58:08 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Jagan Teki <jagan@edgeble.ai>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v3 0/2] Add power-controller support for rk3576
Date: Fri,  9 Aug 2024 08:58:03 -0400
Message-ID: <20240809125925.4295-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_055816_692492_376CD982 
X-CRM114-Status: GOOD (  11.20  )
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

Add support for the power domain controller on the rk3576 SoC.
Patches from downstream have been rebased.

Note that the mentioned TRM is not publicly available.

Changes since v2:
- Remove unused delay for npu and vop

Changes since v1:
- Rename rk3576-power.h to rockchip,rk3576-power.h
- Add memory reset support
- Squashed header files with bindings commit
- Updated license
- Fix commit messages for subsystem.

Finley Xiao (2):
  dt-bindings: power: Add support for RK3576 SoC
  pmdomain: rockchip: Add support for rk3576 SoC

 .../power/rockchip,power-controller.yaml      |  1 +
 drivers/pmdomain/rockchip/pm-domains.c        | 66 ++++++++++++++++++-
 .../dt-bindings/power/rockchip,rk3576-power.h | 30 +++++++++
 3 files changed, 95 insertions(+), 2 deletions(-)
 create mode 100644 include/dt-bindings/power/rockchip,rk3576-power.h

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
