Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1C3DC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:20:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 455A161155
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:20:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 455A161155
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XuWuDfiXbFSMIbNl3c5bMRVEz1NDYFOTkVwDT8zhw+I=; b=GcJlNbkjYs1KWwM9wLM3IXxgKq
	KBj095jjt7SFl6XXVcJNLzPPDl7VOo8uwyNisuCv85D8vgnTBNXPgynELZA+mYTqZ4NxVlOi0Lx8m
	J91ji58waxiZd1h6bxETo0wKS79CBRoCHcN7/ZWyFQrDb2MOicrNLF/CcVnQq9O+qISgOtjuGpyCz
	xFFhZaDEIgVjSlBJIWORBU5OHyAMwcmojBay0snpN38tWx60l6zjYoMuytfbO659X7nnOaphQjR7t
	Cmpcfv+15TjsoAFdmQS66H0WX5i9Mey9RbSzPX07US+UtbW/9eVg3go5xGnUf/T7obG1f0W5iHp+l
	EFdcE4Fg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWmva-00Dotn-Iw; Wed, 14 Apr 2021 21:20:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmul-00DomC-69; Wed, 14 Apr 2021 21:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=sivu3yMxn7WQFGx4J7BCqHxoq6bWyr/i/BQeBwsAz6w=; b=f9Kan+2rh2CzxBT8+22uwgdt5V
 lS1VBPAuEbL/rNxmjqoCx6arnaEJL28ObVyPkIEVNBW+QSP5v5hnQNp0vHkIuto8spfUjBAD4bpy4
 RU+sZ6nTdEhb9rEEkvuVrNo0WiRSZYwJeZlzj8NeuAw0PHg9eQ8bRi4kLj2Qpc3T+HaSqUwB8Wl7M
 ZNzqD34s9rFr0+kqdCT7g49oKQ0MhTbOzsm5v66qzR8BLZvox1esdUzHSpSbkZqVEPEBrMu8o/Gs2
 aQxtZejAUJ/rQzDREm2LXOA0TKjKKtCUGYp3m3ZDV9SlsSNUla0+60pfxh3sAnsTwBJWAfNhyFn5+
 7K5c41LQ==;
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmuh-0086pN-Iy; Wed, 14 Apr 2021 21:19:09 +0000
Received: by mail-ed1-x535.google.com with SMTP id z1so25421066edb.8;
 Wed, 14 Apr 2021 14:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sivu3yMxn7WQFGx4J7BCqHxoq6bWyr/i/BQeBwsAz6w=;
 b=Ne/Jtg3R3EbB3PKuGutnf/94vrL4JxfSqvcOv9diXq+m8WnrlC7Hmjgy46yv0kjGVv
 Z0qh3xdm3w/9Ei/Kv0xBklKcMIogFEFhQNmtJG2TTp+wkt+/K4D5XxsXgmefTSfsgr46
 gZ7hvKMi6gGoky8WFB9ROmBPhKmHyXTHhiwJerbBzv4Pfzj2tuxJQfDeW/ZediFpeqoY
 A9emGCjGWI0DjqqHG3lF2r5/PaDZZZTAbLtQ5cbbYtvL15pTf/OMLufZI9GMaEan0Uf7
 Gw8rLpHQO0PR9fjtPlX7gQJgaJq091NQJKA8RZETsVqB5KEGxeJfjNAHe5Ug7oXFqR1K
 l/Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sivu3yMxn7WQFGx4J7BCqHxoq6bWyr/i/BQeBwsAz6w=;
 b=kGYnThNk/O37JMGO/hnVcIHS/D3vB0HNB2CV9imS1CTm4seFI5JLWmHL7ZTmZMoSqo
 676w62mJT4CmAJyn6QftXxKYdPJlOhhxJeErEevmIsDiVVP1qxMSK8IuQf64g+z3614u
 LJt5nrcMZmhNhbAM+s2NFCuLhSxKh8OaJdYu8HAm/QBXTVIBUmGaSTK4k2/Tu7UYTViO
 Uh7qfQsSxU6Pkq8eVAMQMoDz/WJu1Xw88V5DFgH4SC50J49Ii7arezIf3uTo6WfTsMKU
 rc8SV9qtHR51sYh3CPzboTo6rEBapaIs1Ip35JZSaI3lq5MuqzozYSfe933MScRJzgN7
 tNeQ==
X-Gm-Message-State: AOAM533Ao3PLERIOyPSUd/h23bvIuCOD9xyETc/Q9/E/4o86s4JVd1q2
 yG+MbgKXfRqG0ZUDomfsMJk=
X-Google-Smtp-Source: ABdhPJxgvC3a2ajhFLpY1gsJ62ZsK+Y70a6DRRd1syLq0+TpLW7ewr20jjQ3xy2O4NDexpBYso6UxQ==
X-Received: by 2002:aa7:cf03:: with SMTP id a3mr259245edy.142.1618435145581;
 Wed, 14 Apr 2021 14:19:05 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v5sm568222edx.87.2021.04.14.14.19.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Apr 2021 14:19:05 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 00/11] soc: rockchip: power-domain: add rk3568 powerdomains
Date: Wed, 14 Apr 2021 23:18:45 +0200
Message-Id: <20210414211856.12104-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_141907_644197_EE7AA7A0 
X-CRM114-Status: GOOD (  11.74  )
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

Changed in V7:
[PATCH v7 07/11]
  Fix TAB warning
  Fix alignment
[PATCH v7 09/11]:
  Fix commit message and author format
  Changed SPDX-License-Identifier back to GPL-2.0
  Remove "clocks", "assigned-clocks" and "assigned-clock-parents"
  Fix indent example
[PATCH v7 11/11]
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
  arm: dts: rockchip: Fix power-controller node names for rk3066a
  arm: dts: rockchip: Fix power-controller node names for rk3188
  arm: dts: rockchip: Fix power-controller node names for rk3288
  arm64: dts: rockchip: Fix power-controller node names for px30
  arm64: dts: rockchip: Fix power-controller node names for rk3328
  arm64: dts: rockchip: Fix power-controller node names for rk3399
  soc: rockchip: pm-domains: Add a meaningful power domain name
  dt-bindings: add power-domain header for RK3568 SoCs
  dt-bindings: power: rockchip: Add bindings for RK3568 Soc
  soc: rockchip: power-domain: add rk3568 powerdomains

Enric Balletbo i Serra (1):
  dt-bindings: power: rockchip: Convert to json-schema

 .../bindings/power/rockchip,power-controller.yaml  | 285 +++++++++++++++++++++
 .../bindings/soc/rockchip/power_domain.txt         | 136 ----------
 arch/arm/boot/dts/rk3066a.dtsi                     |   6 +-
 arch/arm/boot/dts/rk3188.dtsi                      |   6 +-
 arch/arm/boot/dts/rk3288.dtsi                      |   8 +-
 arch/arm64/boot/dts/rockchip/px30.dtsi             |  16 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   6 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  40 +--
 drivers/soc/rockchip/pm_domains.c                  | 252 ++++++++++--------
 include/dt-bindings/power/rk3568-power.h           |  32 +++
 10 files changed, 503 insertions(+), 284 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
 create mode 100644 include/dt-bindings/power/rk3568-power.h

-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
