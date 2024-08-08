Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE828C52D7B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ESQBPHxdjsEettObj1b/zPNZBIoym31EifcqSaZVk40=; b=iK9t4gdAkcIYml
	+C42H7Pxk2rTKz+2dM0EvbpsKDnJWINzMdjROiT2y6O2HgIwwQe/mgW54oI7GaKU7IAKZypQW/Li1
	w835DHQS3amDOx1UziewL0H/HaJX1Iey5HkqL1pgHjVVj6/fRREqKqX4jRBKdonuQzXDvj0x3nl/k
	wlVb8WjF2z6bGPRyVFPBHp11ESZn4AWlYUpp17N0fsj1hQSZGb+CbgQyQNmGGmvBgP7o+inCwK6+Z
	zPZOpvLm+XbmwRmSPQ5fBFiefAumm56qCnLCms/WNS1jUazOo6pKIJEXex0HfXxVTzVUpxjE6rXel
	NhP6vPusnr0sO4w6afrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6V0-000000091HX-3McB;
	Thu, 08 Aug 2024 17:00:26 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Uw-000000091Fz-0wpZ;
	Thu, 08 Aug 2024 17:00:24 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723136400; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=iufzSaCy1styaAcA1ACND9zvtAK5h50zw+7d/AHF1uHdSCZQh8419xBPItU0tFxPsWuGYGA8154598/0uXsGBVvo/nBp+wAF3EQUcUhArz94Vnj0ehA7Zv5EoZrE+74Twkhsc8rHS7owT8tSbYPE+FmG9hAAGir+qXcZ0mOvK0k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723136400; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=nrb729petfY91nzUq0Q3CuuVyGhgg3PoYngbWZak+YA=; 
	b=oC5ki124tlmSTkczfqJDK0kfBeQ/ZpiYha40PYgfxXguZZpRteU3vUazp5ehtdKx0NkkzTaFJ+VrAEDpsqVjUuvuYRsAF+un+3BCwd1qcVaRqIYE0jxZmOJiinXWTZZ3MvcdhTT/dL4eUB5Y4z2YdM29ryI5hLqHokUIEoW5iMM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723136400;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=nrb729petfY91nzUq0Q3CuuVyGhgg3PoYngbWZak+YA=;
	b=TGazH7mrbZN/WSe2rKBwGJxBtwoy5NfjHrohQ/WRP0ibmbtLkBtaOLgKZx340r2F
	JTftASJFEMHwKLhJoc+j7ENSzlfIYl8pSju3gZLCuahwQnHYx59vvnv3TW9/3LgKdqW
	KxQrG+kabjyKqtK2wwWoPEB/vEaEkiLcW4UDizUQ=
Received: by mx.zohomail.com with SMTPS id 1723136398929189.99879437516017;
	Thu, 8 Aug 2024 09:59:58 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	David Wu <david.wu@rock-chips.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v2 0/2] Add GMAC support for rk3576
Date: Thu,  8 Aug 2024 13:00:16 -0400
Message-ID: <20240808170113.82775-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_100022_502076_142EC30B 
X-CRM114-Status: UNSURE (   8.06  )
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

Add the necessary constants and functions to support the GMAC devices on
the rk3576.

Changes since v1:
- Add binding in net/snps,dwmac.yaml too

David Wu (1):
  ethernet: stmmac: dwmac-rk: Add GMAC support for RK3576

Detlev Casanova (1):
  dt-bindings: net: Add support for rk3576 dwmac

 .../bindings/net/rockchip-dwmac.yaml          |   2 +
 .../devicetree/bindings/net/snps,dwmac.yaml   |   1 +
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 156 ++++++++++++++++++
 3 files changed, 159 insertions(+)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
