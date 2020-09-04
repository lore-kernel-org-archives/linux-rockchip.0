Return-Path: <SRS0=xWqI=CN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED198C43461
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 19:19:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5EA1A20684
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 19:19:08 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Mr1s1p/l";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="CJ4sNtaV"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5EA1A20684
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I/ScJ6ByHC2soVP5RDfnQFRH2GfFCThbmAKjtTyIxiY=; b=Mr1s1p/lzwQvpm4jbDDse7/M72
	bNG0Iuv6bb+IEjlZRYuvbnzDbtB3ym4eHx+64MwUxLlhUhirJX5a2kWZamga68+h13IHf07Gdn+Lg
	nQuCpOUNyvSG0ozEizkEBuNfI7f5bHEYb54wMKlZAFG1HoRh/SPzo2A3/XyXG8DfSXWUF3+EHd6a6
	+xBTTOHOJqGDRRUd+NXk7kZb8Guk4kTm9OdPRjbaiiuOU8XcB5e+Bjqn4Xw8RRzI2mhzJfMosGSAG
	e3otmUGtkXVEJSYOOg2mCQ/o/H7hwLskOUDh88GHNk2bB6TLyAeC94D26cb4v2tMSyWec5ZW5/Ofk
	J5I+H95Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEHEk-00054j-OZ; Fri, 04 Sep 2020 19:19:02 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEHEa-00050V-Sf
 for linux-rockchip@lists.infradead.org; Fri, 04 Sep 2020 19:18:54 +0000
Received: by mail-pg1-x542.google.com with SMTP id m5so4808712pgj.9
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2020 12:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BQ3Za1ulBYpN6P3MWzPM8LHHd18bcHtpU18gBebPUd8=;
 b=CJ4sNtaVT/wZNtZnBVnxz7DODlBAmOVNmIGMPjv6QcCUBziyn96kTlpdgR76NVKTQD
 kikQUpeq5K2YSKosNrj/D/vyT/Nv14u8Xrci14GTIppj2owJuAZ8i+6xoyQgGX79vDIP
 a+h4rbgnL/5/aKwRBzcPda/hRo9OSnIkF89Nw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BQ3Za1ulBYpN6P3MWzPM8LHHd18bcHtpU18gBebPUd8=;
 b=lj6HSAsvNv5rQAF9l5ljP1EeAiOHY152Q2HkkLngFPkeu6tSQx8qkeszeuQP5/Zlkv
 7g+WgD3EfZ0NsztvGOjFerOe44La7wxS59e+ufEwSP96IjhpSaBEhakED49NmNt6ye1j
 g94HrVNB9Is658t/qf/GyG07BeJ5qmB8l5smxiVKuFVW86bskDfj/+QAFVldjihSXLxn
 DrIPROvuMCofZ6wFjdI/DXe0BKdPVT7DXOb5wCtk0Wc/vi305rj9NlTj1/WrXWbZ9Mtb
 YR+TCiuDRnLWpSKU+FnBjG/2tMRININUL5017ndPJ4pRCRqkhzSbokESqR4RViNuj95b
 bRGw==
X-Gm-Message-State: AOAM531Zm9z6ZlLxcuHlKFqfvFU0UNw9KC9d4v07mRyQooI7Ar2lG9XL
 XSebv50p2BQy9O3aSQJE3FX2asAFPhWLLg==
X-Google-Smtp-Source: ABdhPJxL1HrEmjVqHII42Qjc4LuSWAD0dWbQkB6r3vNPeYT1NHHcj1jRE7Uwi0GsLh3NqWV7jmmcNw==
X-Received: by 2002:a62:5e45:: with SMTP id s66mr9893108pfb.230.1599247129115; 
 Fri, 04 Sep 2020 12:18:49 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b9ea:24bf:6b2b:1eee])
 by smtp.gmail.com with ESMTPSA id t4sm5986001pje.56.2020.09.04.12.18.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 12:18:48 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/3] extcon: Add Type-C Virtual PD
Date: Sat,  5 Sep 2020 00:48:27 +0530
Message-Id: <20200904191830.387296-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200904_151853_757917_81B55B30 
X-CRM114-Status: GOOD (  11.64  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

USB Type-C protocol supports various modes of operations
includes PD, USB3, and Altmode. If the platform design
supports a Type-C connector then configuring these modes
can be done via enumeration.

However, there are some platforms that design these modes
of operations as separate protocol connectors like design
Display Port from on-chip USB3 controller. So accessing
Type-C Altmode Display Port via onboard Display Port 
connector instead of a Type-C connector.
 
These kinds of platforms require an explicit extcon driver
in order to handle Power Delivery and Port Detection.

This series support this Type-C Virtual PD and enable the
same in ROCK Pi 4C SBC.

Any inputs?
Jagan.

Jagan Teki (3):
  dt-bindings: extcon: Document Type-C Virtual PD driver
  extcon: Add Type-C Virtual PD driver
  arm64: dts: rk3399-rock-pi-4c: Enable Display Port

 .../extcon/extcon-usbc-virtual-pd.yaml        |  66 ++++
 MAINTAINERS                                   |   6 +
 .../boot/dts/rockchip/rk3399-rock-pi-4c.dts   |  16 +
 drivers/extcon/Kconfig                        |  10 +
 drivers/extcon/Makefile                       |   1 +
 drivers/extcon/extcon-usbc-virtual-pd.c       | 285 ++++++++++++++++++
 6 files changed, 384 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/extcon/extcon-usbc-virtual-pd.yaml
 create mode 100644 drivers/extcon/extcon-usbc-virtual-pd.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
