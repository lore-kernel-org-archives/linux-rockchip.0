Return-Path: <SRS0=3pYS=JO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 363A4C433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:30:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A20CD613C5
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:30:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A20CD613C5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SlOB6Xezs6SJZRXEJ34fwnAU5Vp+tqmjqy3NS7xOfQ4=; b=pLd7K18LdPU3kAlpWPM/plQREq
	HtlaWxLKml0k5hH16ezLlN9Z27Q4Ww2OqlyU9z6D55YZ2cvTqpy5A8tQF6JDV1IduhwFZSnTZqw4q
	fJNmzcB/AfyqRr1UfTEE34Q+C0VK6iNLjb0zPAATbUDd7q8gBEoeS+RrLH1f5gx5xlG4QH+McGqOI
	a5/yGzru9f1D7lGvudx9dTvsQNiU1CEcbQT/qtAh3dAAflurg+zWIgIDtP0Vs+vfwB8j/ZV+GmFfs
	8RC7oozAVQOCAWKhamH9DybrjnMssq/qPkLrGEAzkFOkwlyl5QJG30IcwkR7llQW65/TuHTNIHcZ6
	9CK47KNA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXj9y-0058Vd-Os; Sat, 17 Apr 2021 11:30:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9L-0058Ma-Ph; Sat, 17 Apr 2021 11:30:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=xhYT+iV3aFgNz8/yb0rx39O1slLtrptPkFLaM/76FAs=; b=Zn1C0Nufz1pEkcFUoV7AAsTEQI
 XsLvO80QO/KrZjNyeSxxvd0Z3qb1hkF1xfNuGQVqiWviGTi188xTSXyxut+MchEZIPnfBSPuicE9h
 3AlqqGd+nHdQQkPdcIYXEjTBnBdNuaDWuNQ6WBHD5d5TRhEegDqHuR+8I5J+Tmrmeyj7mMZ1gCV9g
 tIWeXBO8VTKa7IkGns34xVU4bwNWTYwpPFMHmmTbbQS17nvdKqquGWK4vuTXiDA/9Ld78Qgyn/UF5
 tVMIIAQCIXkmymyIYIvA0yGm3JHQYPRQIzJ9Myj4jtKi7SkzFHbRs4zs3DT9zFD44ehJB3AqoMLUs
 IpEnMW8Q==;
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9H-00A0AZ-8T; Sat, 17 Apr 2021 11:30:06 +0000
Received: by mail-ej1-x629.google.com with SMTP id e14so45808965ejz.11;
 Sat, 17 Apr 2021 04:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xhYT+iV3aFgNz8/yb0rx39O1slLtrptPkFLaM/76FAs=;
 b=PxBG7GzoOc499bBgqz/aqmBi/4tVAUZ4vK5TqznPACo+H/X9C5AFfbK4728HJ8+eRK
 CJSH9lTGNXom2e9T9vL220sQUhoihY9neURJaJeXnW2iirHMnDOt1BqQLvMSGVbZENZr
 RnuSoowxYQRIa5qkoaviYaPeIDkDYbJqMMDs9n5nHXLr1yyFOctBPROrUl5HUUU+zCWX
 cqiJSIysVTWVNpnGt5IZlFzBPEX7MRczqLsgNGz9VjnVM52/KZzbOzORaVwwKDssIgbo
 HYVoXUqCi6KJgyE1TmZdZ5FkNOix4V8zre7uaRBRvdjPQgtFKIeIYczXJPj9gd2skhKE
 rQIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xhYT+iV3aFgNz8/yb0rx39O1slLtrptPkFLaM/76FAs=;
 b=ci+2KxO2//ET/H1RARHM9NrvMYfzVmR7VXmgJWqmPdUiK2ciMkOVgFnMOwLaUacsRI
 ihE3WGikEr/Zpjt8WVtNGdi/1IQlXk0o7r8ZBYGeKLovK96DcPumwzgGNaEVOvBZgU/6
 SrwTxP83sqU4RVN059QDdpkPJGAJ4WCYXCDgixznxXrTKpeOzLfgjXlc0QASDW4H8Nay
 VStUZOn+ZHFa6+09ceU3PvZa65j9DdclUeE+/o5BMZ8TaxBQKXpR1fbJzAPSn4F286xP
 J+pypnY5ra6KHnFsvOsxrqBwo1n9nEdoP+XdVsCJdVsArT6WrQDqOPgOjTIrI7CxOXsx
 F26A==
X-Gm-Message-State: AOAM532l2AgkB66HXFoc9j91+Gcja5qMwfM30pYFVqB488C8LguFjv3D
 rpaehOyStj1mabbJ9v0dnBY=
X-Google-Smtp-Source: ABdhPJxahI6kLtSFba3L+kGx9qvwj1gA/irHSGxfgNPQqFsckHYX+tIVMotagqZ+xWuy5XiFAoJzjA==
X-Received: by 2002:a17:906:c29a:: with SMTP id
 r26mr12420956ejz.259.1618659000696; 
 Sat, 17 Apr 2021 04:30:00 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.29.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:00 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 00/15] soc: rockchip: power-domain: add rk3568 powerdomains
Date: Sat, 17 Apr 2021 13:29:37 +0200
Message-Id: <20210417112952.8516-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043003_326982_9A6C8CD0 
X-CRM114-Status: GOOD (  12.92  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix power-controller node names for dtbs_check.
Convert power domain documentation to json-schema.
Add a meaningful power domain name.
Support power domain function for RK3568 Soc.

Changed in V9:
[PATCH v9 13/15]:
  Rename definitions to $defs
  Restyle patternProperties

Changed in V8:
  Add #power-domain-cells to power domain nodes.
  Convert pmu.txt to YAML.
  Add more compatible strings to pmu.yaml
[PATCH v8 13/15]:
  Add pd-node ref schema.

Changed in V7:
[PATCH v7 07/11]:
  Fix TAB warning
  Fix alignment
[PATCH v7 09/11]:
  Fix commit message and author format
  Changed SPDX-License-Identifier back to GPL-2.0
  Remove "clocks", "assigned-clocks" and "assigned-clock-parents"
  Fix indent example
[PATCH v7 11/11]:
  Fix alignment

Changed in V6:
[PATCH v6 7/11]: Use kbasename(node->full_name).
[PATCH v6 9/11]: Update the commit message.

Changed in V5:
[PATCH v5 1/11]: New.
[PATCH v5 2/11]: New.
[PATCH v5 3/11]: New.
[PATCH v5 4/11]: New.
[PATCH v5 5/11]: New.
[PATCH v5 6/11]: New.
[PATCH v5 7/11]: New.
[PATCH v5 8/11]: No change. Same as [PATCH v4 1/4].
[PATCH v5 9/11]: [PATCH v4 2/4] Fix up yaml code styles.
[PATCH v5 10/11]: No change. Same as [PATCH v4 3/4].
[PATCH v5 11/11]: [PATCH v4 4/4] add a meaningful power domain name for
RK3568 Soc.

Changed in V4:
[PATCH v4 2/4]: Fix up yaml code styles. Remove the new compatible to [PATCH v4 3/4]
[PATCH v4 3/4]: Adding new compatible for RK3568 Soc.
[PATCH v4 4/4]: No change. Same as [PATCH v3 3/3].

Changed in V3:
[PATCH v3 2/3]: Fix up the code styles and add rk3568 base on:
https://patchwork.kernel.org/project/linux-rockchip/patch/20210225102643.653095-1-enric.balletbo@collabora.com/

Changed in V2:
[PATCH v2 2/3]: Fix up yaml code styles.

Elaine Zhang (10):
  ARM: dts: rockchip: Fix power-controller node names for rk3066a
  ARM: dts: rockchip: Fix power-controller node names for rk3188
  ARM: dts: rockchip: Fix power-controller node names for rk3288
  arm64: dts: rockchip: Fix power-controller node names for px30
  arm64: dts: rockchip: Fix power-controller node names for rk3328
  arm64: dts: rockchip: Fix power-controller node names for rk3399
  soc: rockchip: pm-domains: Add a meaningful power domain name
  dt-bindings: add power-domain header for RK3568 SoCs
  dt-bindings: power: rockchip: Add bindings for RK3568 Soc
  soc: rockchip: power-domain: add rk3568 powerdomains

Enric Balletbo i Serra (1):
  dt-bindings: power: rockchip: Convert to json-schema

Johan Jonker (4):
  ARM: dts: rockchip: add #power-domain-cells to power domain nodes
  arm64: dts: rockchip: add #power-domain-cells to power domain nodes
  dt-bindings: arm: rockchip: convert pmu.txt to YAML
  dt-bindings: arm: rockchip: add more compatible strings to pmu.yaml

 .../devicetree/bindings/arm/rockchip/pmu.txt       |  16 --
 .../devicetree/bindings/arm/rockchip/pmu.yaml      |  57 +++++
 .../bindings/power/rockchip,power-controller.yaml  | 248 ++++++++++++++++++++
 .../bindings/soc/rockchip/power_domain.txt         | 136 -----------
 arch/arm/boot/dts/rk3066a.dtsi                     |   9 +-
 arch/arm/boot/dts/rk3188.dtsi                      |   9 +-
 arch/arm/boot/dts/rk3288.dtsi                      |  12 +-
 arch/arm64/boot/dts/rockchip/px30.dtsi             |  24 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   9 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  60 +++--
 drivers/soc/rockchip/pm_domains.c                  | 252 ++++++++++++---------
 include/dt-bindings/power/rk3568-power.h           |  32 +++
 12 files changed, 564 insertions(+), 300 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/rockchip/pmu.txt
 create mode 100644 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
 create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
 create mode 100644 include/dt-bindings/power/rk3568-power.h

-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
