Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87925C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LegYok644gKuYyLv5HVOwqngshvnn6K411DB2VvYR6o=; b=Z2gkGqkQjOKNJI
	34T8nJRdzJTB2qRfk09I7mp7MAik0dfLKJgW8fOU/uOufPVsPLD2ckOQH2mfj4v5/+/dpW+vJe1Ro
	csw6Uve7kjkUHjp/OsDFWHaijkpoRf1xc62G8b/BBIvhS9IKGYyH/j2TPaBIjbGEN9ITZUmAMi7LM
	a0J4UdxkHDr2taSq8AUeYL/5wGK5bmIm+YhphyETOyrXIPA0Q0ZIrgAwA+GWIVdi52TgRECd+iB6Y
	ue2aiuwRmIgZ+sieR0Sr8dVdt6xaw8tDrPjNhzTS3xwpeV8rWsrseLQrbv5B92nmbMQha5mQKokEA
	DHRGQ5tQm1piMzD3znfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Bh-00000008yOP-3Wfj;
	Thu, 08 Aug 2024 16:40:29 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Bc-00000008yNT-3Kcf;
	Thu, 08 Aug 2024 16:40:26 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723135217; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=dfW2r5Fq7UNfxTCilPKqP/00P8hDa2H1+zQ2bTStAwDbj5BNJMh8gZ8nnKuaIYYSGuJGv3nbbjaLB/oAO3mJHw1uBe6cUfcIkY6Pet2tcYC3U7lwNKuCRAUPIzE4NWMmofm66PTcpLP/cumwT2e9ODfE2kbXGUyz6UZoDALPJkE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723135217; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=1hFOOgQNuFw3jng9LfBqqWBIPK6obWd7jc9M0xSkVUM=; 
	b=McIn/+ePhSqIb+ek+O9vojhKyR72+kjoBEjHJM5338J3O5536/Hq70ZZWDa7LFvcULbuKb31nhhWdl1Oi/znYSxxmp1Xj0FXpgSx9mg1bnnxtz+CkCshah2fOf4FS3m8Kx4oFgqhtV21NTETvHa9ZyLoQvXn1IQJx2ztPTqls78=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723135217;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=1hFOOgQNuFw3jng9LfBqqWBIPK6obWd7jc9M0xSkVUM=;
	b=M2LLns+TvwCVfDIBbp2LPddQNbEfiQdKP2zp+APw+RSz55CuYrxO2vC2VYvpEfhQ
	NQCFjv78gKyNCxbZfQSywCvleUd09D1pXnETv+lHqOlSlbW1j+eDBOjOldrX6S1pHto
	bOfIDRpqI8szjhyKm+IBv06WD2NjvYt/RieyIYrE=
Received: by mx.zohomail.com with SMTPS id 172313521613735.44667276664302;
	Thu, 8 Aug 2024 09:40:16 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v2 0/2] Add pinctrl support for rk3576
Date: Thu,  8 Aug 2024 12:39:54 -0400
Message-ID: <20240808164132.81306-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_094024_910851_A8DABF5D 
X-CRM114-Status: UNSURE (   9.33  )
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

Add support for the pinctrl core on the rk3576 SoC.
The patch from downstream has been rebased.

Changes since v1:
- Reorder commits
- Describe sys-grf use
- Update imperative commit message

Detlev Casanova (1):
  dt-bindings: pinctrl: Add rk3576 pinctrl bindings

Steven Liu (1):
  pinctrl: rockchip: Add rk3576 pinctrl support

 .../bindings/pinctrl/rockchip,pinctrl.yaml    |   7 +
 drivers/pinctrl/pinctrl-rockchip.c            | 228 ++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.h            |   2 +
 3 files changed, 237 insertions(+)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
