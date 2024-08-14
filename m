Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01678C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 22:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HTLONZVTXBg0O9friFvdFFZ9YyOz0T7WNs2QI/mcpc0=; b=NpqEn7nzhR+l5A
	36aMfHNgLrXUebU72q+iKXFkZtqGon8V0AOYxKHQs1wqaTtDVHkJ9YLQJH72oZrO+cZooD8QsRWr/
	SrSXhOZOjexA4b0gZ2MO8YzQjs0thhKiM/5KZTAZkDkpyN0ppRQxBMs5srqvszzgSgkco+FFdLRJ/
	ZrlSeNI08D5tBfHT32D+IjQSGZXrd+3O3n/yV5FYJgPKaahrrvqqCMyolSVJolkIv8aERWNqkRUB+
	Sz5LwNAcH9K+anXAuGLJa+C5slfZmIcW6i15ylA136He9FZ2Y0baqvpdCH0ib866yHN6tM0LNekhY
	XV6Cg7rWcRTsWc/uOzRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMSZ-00000008S0H-1CLS;
	Wed, 14 Aug 2024 22:27:15 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMSS-00000008RyD-14vf;
	Wed, 14 Aug 2024 22:27:12 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723674420; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=X0Q+0WbzCl+mNg8bE/Ns8Z1K2ucO71ZR8jLFHvoxkDcBl2HfYiuK/b6JHPC4DYgNjxGSrzUKzzQ0w8yWgqRayMKzUVU67zuS5a66YXl6D0WJ6d9maeGVWK94HPlEfvksb94apRocJr2SkXFVvPZNQv+obnelSrc5dJ9QaLxs/KE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723674420; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=C5EV/s8GV9lXY41yul4dYE04bI+39q3p/wGsLk5ULio=; 
	b=DjUkBXuF7vfqFb9VLjh+U4aaYUW949auzqs3O9lS0y8aHkauAbRCkktzwJtVWKTAeX+q8uKcqLfX1judCR+FmQ5ddYPh9t/nO/YpYRHM646RGU5mp8XBNg2mRJiaNOPD5LN6hLnUmq2DKGtXC1OWYrYr3Qg6tTpX1yn+vLijFuQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723674420;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=C5EV/s8GV9lXY41yul4dYE04bI+39q3p/wGsLk5ULio=;
	b=gw/eeOJkZGdvTIBY+6w+9vXaGby37PS1slrN1B7/qd8hxrZ+1NXHA1LTAA5L/25m
	B6Z0gqpyJoxei6/w4wJavrHF0lA2iZzP5Q2vodmVfo29OxHvSDmtWmG5wI570XXreuq
	WJi4Rd3uYyDJvESverBbam8Vr+TxzAJ8H5umvyjc=
Received: by mx.zohomail.com with SMTPS id 1723674418214400.92705418065145;
	Wed, 14 Aug 2024 15:26:58 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Jagan Teki <jagan@edgeble.ai>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v4 0/2] Add power-controller support for rk3576
Date: Wed, 14 Aug 2024 18:26:40 -0400
Message-ID: <20240814222824.3170-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_152708_388753_FE5D695F 
X-CRM114-Status: GOOD (  10.54  )
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

Changes since v3:
- Remove unused g_mask and reuse DOMAIN_M_O_R

Changes since v2:
- Remove unused delay for npu and vop

Changes since v1:
- Rename rk3576-power.h to rockchip,rk3576-power.h
- Add memory reset support
- Squashed header files with bindings commit
- Updated license
- Fix commit messages for subsystem.

Detlev.

Finley Xiao (2):
  dt-bindings: power: Add support for RK3576 SoC
  pmdomain: rockchip: Add support for RK3576 SoC

 .../power/rockchip,power-controller.yaml      |  1 +
 drivers/pmdomain/rockchip/pm-domains.c        | 45 +++++++++++++++++++
 .../dt-bindings/power/rockchip,rk3576-power.h | 30 +++++++++++++
 3 files changed, 76 insertions(+)
 create mode 100644 include/dt-bindings/power/rockchip,rk3576-power.h

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
