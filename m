Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE350C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 15:00:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 93EE16144C
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 15:00:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 93EE16144C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8PW05L0QHMULrvAixuL90B3DuWjIbOkdZhbK0AJ+SUs=; b=mK+UGSEDROgpEksSHUw57Fpchz
	to0bvLPxJBywDMJ3mKFmvRtZKDyDUpyqK7sZOwZ23FrGYJwnG7e6zul7UiIH7gsl6Ow7L1rRz16Qp
	N66c/34oqPj16KcE7LwGssYJQGLYDANis+o1Xj++zT5Q+jeWy23rfrpdwC4oIeMvWxOGYAAHhGvxL
	AdRQYr5mJGf5v3C7FLnKxYFcd+8ezeHbY3dK7cTsprBEbSDvo6pwMVOnwd4NzwH8z+KqY8X5nCsyj
	NukG1+pLrG/YAZFSDp/r2QM/w8UzuNozS1WG4wP5I7S/9WgkCX1e6QMzCW7IUHCWtJ5lqhbkkSt5c
	JLzFO4mA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhZJ1-008ME9-7z; Fri, 14 May 2021 15:00:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhZHw-008LzE-Kt; Fri, 14 May 2021 14:59:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=tktCZ/xiUCmaqtQidVbHhHaJ29lGZ7PozKStUCb3k8k=; b=cGOo9B6YHfCAkWlN93qg+mmH+L
 m+KaQEdjHCR0qN6KxbJWz1GB/AwScaGaiAmutWNhYHWpF2nh43iVmsEAQNW0C5bjgHdOkNZpZKdVk
 2/sJ2lw9DQAuRIxCiZykBHQtDCUBuFESEkv3+UhupzpSWkyFvlC0mLNVEL7A/YvBWmGsxMX+MSWkR
 zBlwS/Rey/QhW0KFaqP9/eIKR8PGZucm4BA3dkG9rIxe1Ku3KnQlSEGLirIGVEy+m+RrplRSPRJzd
 kQQMZV+SnnrHrRilMSzekwotzxLID+EVp1aUmQN02+iptwBr5RWdeA5oEPY4Dppx+cEscDAxH6HYY
 5vA7Sfyw==;
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhZHs-00C43o-OY; Fri, 14 May 2021 14:59:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id BA3A5222583;
 Fri, 14 May 2021 16:59:32 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 44q7tZGakigW; Fri, 14 May 2021 16:59:30 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH v2 0/5] Add USB support for RK3308 SoC
Date: Fri, 14 May 2021 17:00:39 +0200
Message-Id: <20210514150044.2099298-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_075936_970370_0347BA7A 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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

The RK3308 SoC features integrated USB controllers and PHYs. The USB
controller is compatible with the usual RK3066 USB controller, the phy is
in general compatible with the inno-usb2 phy structure but is not quite
the same as any of the phys supported yet.
This patchset adds USB support for the RK3308 SoC to both the RK3308 dtsi
and Rockchip inno-usb2 phy driver.
I've tested this patchset on a Rock Pi S, works flawlessly with HS, FS and
LS devices.

This patchset depends on grf.txt to YAML conversion [1] by Johan.
This is v2 of the patchset.

Cheers,
Tobias

Changelog:
  v2:
    - switch changes over to Johan's converted yaml documentation
    - document "rockchip,rk3308-usb2phy-grf", "syscon", "simple-mfd"
      compatible
    - fix rockchip,rk3308-usb2phy documentation

[1] https://lkml.org/lkml/2021/5/12/464

Tobias Schramm (5):
  dt-bindings: phy: rockchip-inno-usb2: add compatible for rk3308 USB
    phy
  phy: phy-rockchip-inno-usb2: add support for RK3308 USB phy
  dt-bindings: usb: dwc2: add compatible for RK3308 USB controller
  dt-bindings: soc: rockchip: grf: add compatible for RK3308 USB grf
  arm64: dts: rockchip: add USB support to RK3308 dts

 .../bindings/phy/phy-rockchip-inno-usb2.yaml  |  1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |  1 +
 .../devicetree/bindings/usb/dwc2.yaml         |  1 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      | 73 +++++++++++++++++++
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 44 +++++++++++
 5 files changed, 120 insertions(+)

-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
