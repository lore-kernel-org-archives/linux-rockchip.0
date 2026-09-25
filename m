Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1774AC9830E
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2026 08:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pXDxQBKMcWOcIUtOgSSLGd/kz5lnhBc/B/LxpY5UqXM=; b=4Rr6fZJxBPCNSJ
	T68C+Xt3GOGD82h0vYZhucnWkusvnoD1JUJG+O3if9N2PqAsjuZIW3eOGVgeelRDqhey1Vva1/ipq
	30AZDTH8zBPnOhE7znUKJR8LjjpBwNknjd8AeUmE0QT9An8J2xGfV0BGBq3RbyXbBfQPkL9Jpa4yZ
	whI44K8iy6UXHNjh09r1KkLT1odzbz8Ym4b0iO+kOU6M4QqX00fxVBtvVnrVYCnTWSIp0jIj21cpR
	AhRXmGdky+x8swjs90M0dQjMS+CI3vKTz5KQgSqXjvUdCPCR/ujNK1hB4rEUjjeH/VtqLbK0vjryq
	YHpHCZDb5bc9dgfQ7Ltw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA0tr-0000000CsfN-16q3;
	Fri, 25 Sep 2026 08:03:19 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA0te-0000000CsZW-0W33
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Sep 2026 08:03:09 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c2940ef15d3so72477866b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2026 01:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wermuth-pl.20251104.gappssmtp.com; s=20251104; t=1790323383; x=1790928183; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=KR0mL9J3pFxTuxFhHbavstVLXuIlIRgXe/fcgJ1tOjw=;
        b=hYX4fv3wSk/14MSLbHw/6bfPF4YVEp/bg/qLZa1mObuBCeBUr5xJCpL8bZ3LqAAVs9
         hXHsDAUgouanYXP8BDDzLVjmI2QS6/qMyr5j5xO1lE4QSGq2dqnXQvuC8vTvfjPetKDU
         gHkpqvm2T4wJxVsWJ7+dwXzrDkVhjhVpYbTIVIg3sFFt6ctXvHxjyfCqt2qzXcD2y41r
         IJI0GEQ20LxVM7Yxajh37cH15mz/6RrF73mF1Sk5YklQH0IhGv2ipnHCvvCf7wnhSS/c
         sKZfla1tR65LkJHoMsG1jDjxEULtwxNN/6OEPzbAqa8VL1x+xJBs3pleURlRFWxH9Ofg
         1jCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790323383; x=1790928183;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KR0mL9J3pFxTuxFhHbavstVLXuIlIRgXe/fcgJ1tOjw=;
        b=ueQId4TwFDQkO/TzrVK4eHp1AkWH9CaMYyI06sX4OEPjbe+57QW4+RAl4qOOzseNU0
         yg5BehaXd3IxRDP9dVEa3nQDdtJBNk5SeHdChNs3LC8mPQmbuBhWMA3bWvrSlIZFmsqy
         1GJlVHUd/mbxz6hhVKwII2CbJz9+6kRYcTb+Yt2FsfJiVZjBvuNduNXQ/24lhnt7lcbA
         XN6V4TJiRh2e6RsH+g3NFf4ew4tmUnD+/MuAw6HXe0XtZZzasK0JMig62wMve4QIUmEx
         i/bWxUJ20zh31N0mc4gl5mIJDMdFzSqK4FepbI7NNEK0rOWae0WJc6bUvWd/N7eOB9nl
         DGFA==
X-Forwarded-Encrypted: i=1; AKwUvBzThPFKb05D7UHvCVGVetL1kMAhd60yQN+dQba5vnHrRZF3bilCJw2vNEY+VKhuy0Vd9bwPKdBUt9Oj/ZOInQ==@lists.infradead.org
X-Gm-Message-State: AFuF++loHUdnIQdhwtS4kR0FpNgXp5WAB6XF/hmjBKCmz76U79KNRTc5
	6/OI8SS37vKHSlNGH2WHiEss4XFsBQFYCc+7iEuaouloZaS8QMLnRkeITXYc1Pr/fKM=
X-Gm-Gg: AYBFou3TVIqc7/IVHrUSJh2u2usNMJJNcf+FpfsjrZYdqnarOUZssCxZFL6TUGSeneL
	UvBvgJe6mz0mqPe1ex3JC4E18TraZyPa3nJ+i2CO3hc8dcjftcoQtF2dIQC/xxs1ERwM7IL1UkP
	d7saUzajwV0p4VQ/IF/OSMFmHZHZx3jGPPqmEvRxWqW0we06p19yB6Xb20AbzmpTCevruYvMW2n
	377DUzjp5ySBaY5fbFGm1NPOYqHXWId2249KNU5RbgTZWx/YwNS7stySZcy904az3bah3npQe9c
	sRBCIThkYbfvw0RpXIqHEstGjfo029ktsy2NujPRbteTsTrxxTb3wqwUs2hNyB127ENkckBDTyO
	Fg0IPpRIW2dSbQ+at/vJRsNCKmHVBBZZLEIGNcvR8sbRsyUmbB08n4gLI8MSD11XEjFOSiz/KcD
	lclPeb2iFsDgIlTYPqP1GVvFa5E7QdtZQ45ec53w9hqp1BKih6ugo/OSvQpBDFz2FHJp+QpZBTa
	n+beeb1beo42JDF5g+y4pze14Zj5nAr8GrHtTPSf4KaAjRJWEH7g5dvsA==
X-Received: by 2002:a17:907:6c17:b0:c29:f5d5:5a9d with SMTP id a640c23a62f3a-c2ac246608emr448681066b.39.1790323383296;
        Fri, 25 Sep 2026 01:03:03 -0700 (PDT)
Received: from janlin-02.home.wermuth.pl (109-206-198-27.host.skynet.net.pl. [109.206.198.27])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2ae757b9c1sm76976966b.33.2026.09.25.01.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 01:03:02 -0700 (PDT)
From: Adam Wermuth <adam@wermuth.pl>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Jonas Karlman <jonas@kwiboo.se>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Adam Wermuth <adam@wermuth.pl>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add PWM fan and WWAN overlay for Radxa ROCK 3B 
Date: Fri, 25 Sep 2026 10:02:56 +0200
Message-ID: <20260925080258.46489-1-adam@wermuth.pl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_010306_337122_2F48CD1A 
X-CRM114-Status: GOOD (  12.65  )
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

The Radxa ROCK 3B has a 2-pin fan header and an M.2 B-key slot
intended for 4G/5G modules, neither of which is currently described
in the mainline device tree.

Patch 1 adds the PWM fan and ties it to the CPU thermal zone. Patch 2
adds a device tree overlay for the B-key slot, enabling the USB 2.0
host controller serving the slot as well as its power, RESET# and
W_DISABLE1# controls.

Pin assignments were checked against the ROCK 3B V1.51 schematic.
Tested on a ROCK 3B with a SIMCom SIM7600G-H module and a 5V fan,
running Linux 6.12 (OpenWrt) with the same changes applied.

Changes in v2:
- Move the USB host1 enablement and the WWAN slot handling into a new
  rk3568-rock-3b-wwan.dtso overlay, as the slot is not always
  populated (Jonas)
- Drop phy-supply from usb2phy1_host, as the M.2 slot has no VBUS
- Put the fan patch first, as it no longer depends on the others

v1: https://lore.kernel.org/linux-rockchip/20260924071445.441822-1-adam@wermuth.pl/

Adam Wermuth (2):
  arm64: dts: rockchip: Add PWM fan to Radxa ROCK 3B
  arm64: dts: rockchip: Add WWAN overlay for Radxa ROCK 3B

 arch/arm64/boot/dts/rockchip/Makefile         |  5 ++
 .../dts/rockchip/rk3568-rock-3b-wwan.dtso     | 65 +++++++++++++++++++
 .../boot/dts/rockchip/rk3568-rock-3b.dts      | 51 +++++++++++++++
 3 files changed, 121 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-rock-3b-wwan.dtso


base-commit: 23d8f49fcae5d72b77744c7f349c12462c3bb748
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
