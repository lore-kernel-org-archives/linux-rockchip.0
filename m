Return-Path: <SRS0=aAmn=KF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54612C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 14:57:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CDB59610A0
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 14:57:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CDB59610A0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/rJO/aEcCWx3YHVizrItQG4GSjnay1Q4jrPWp0kg2eM=; b=SI65ImhvYb4MMLdaeU2ZOISkY
	I7icZb+ASLWArenlg2renoTJyzrTy6q+jj3m+zndsSPHs6lRVE5U2VTy3yfps7ap+nwk3wFNcHAWk
	2OnTkXM9yOpWRFfgMEASMJnv3O57ueKwd0r3IxU36f6BZmfL41+GXmCD6aZ1w7DFkIizAnh6dlVHQ
	C+lyCMskb2csP5Wmc6CKSW/sDngx1/jNWMB51vrG1SFyL/QadJdbMU0EYCWuGB2G5hU594dRVU2Ta
	XFiN2xCDv+F0lB5HusTB9tf3CS7oKZ97GUv/y63gSAprHVf5TcFJaEKBkaigo9RtN1WnUD7TZEzb0
	h9GLATICw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg7Lv-00Einj-Oe; Mon, 10 May 2021 14:57:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg7LD-00EiZP-65; Mon, 10 May 2021 14:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=p9RUCQZCDVfNEbJc8QXiQ8AtSX0QEKXDpHIwDYX50IE=; b=2hZvZ2PaGmWRY5THdeiSv6Uzhb
 Yf1PRb3uDizVzEIctbs3ibgaSKJGgfbJssEvvEcBbJpZAbRbuYbLxOVSQ7fSrPL5ri6pbFibNu4YP
 OpZPMsXGa76+la/6iPTDDm3CUe5gpBVy4/Jl5ZhKVzVR71Iwin6e6aHD4TspiJ2zTaG1+CESFpwRH
 PvF6YLyLIgwT3Mflgyvk39u+tjEP7o8hjfp4L84RaivRhWn/9j78tZGhWR+ZAAysdcMs27yXG8JOw
 BPT9BaXOPOOgvh8+CQop9LxF0EpksBkj66Tr9dO6KGlLQhnoK7xqrzim3w22vjCxHKyZcwTuK3yQz
 FdZxrGtw==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg7LA-008q3g-GM; Mon, 10 May 2021 14:57:01 +0000
Received: from [95.90.166.74] (helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lg7L4-0003f3-0e; Mon, 10 May 2021 16:56:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, enric.balletbo@collabora.com
Subject: Re: [PATCH v9 00/15] soc: rockchip: power-domain: add rk3568
 powerdomains
Date: Mon, 10 May 2021 16:56:51 +0200
Message-Id: <162065860682.1723098.16551538520647881153.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_075700_561606_6A6DCEE3 
X-CRM114-Status: UNSURE (   8.87  )
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

On Sat, 17 Apr 2021 13:29:37 +0200, Johan Jonker wrote:
> Fix power-controller node names for dtbs_check.
> Convert power domain documentation to json-schema.
> Add a meaningful power domain name.
> Support power domain function for RK3568 Soc.
> 
> Changed in V9:
> [PATCH v9 13/15]:
>   Rename definitions to $defs
>   Restyle patternProperties
> 
> [...]

Applied, thanks!

[01/15] ARM: dts: rockchip: Fix power-controller node names for rk3066a
        commit: f2948781a72f0d8cf2adf31758c357f2f35e6c79
[02/15] ARM: dts: rockchip: Fix power-controller node names for rk3188
        commit: d3bcbcd396175ac26aa54919c0b31c7d2878fc24
[03/15] ARM: dts: rockchip: Fix power-controller node names for rk3288
        commit: 970cdc53cb1afa73602028c103dbfb6a230080be
[04/15] ARM: dts: rockchip: add #power-domain-cells to power domain nodes
        commit: a3ec2d38f6dd922007ee4d414cf76d1f55570844
[05/15] arm64: dts: rockchip: Fix power-controller node names for px30
        commit: d5de0d688ac6e0202674577b05d0726b8a6af401
[06/15] arm64: dts: rockchip: Fix power-controller node names for rk3328
        commit: 6e6a282b49c6db408d27231e3c709fbdf25e3c1b
[07/15] arm64: dts: rockchip: Fix power-controller node names for rk3399
        commit: 148bbe29f9108812c6fedd8a228f9e1ed6b422f7
[08/15] arm64: dts: rockchip: add #power-domain-cells to power domain nodes
        commit: 837188d49823230f47afdbbec7556740e89a8557
[09/15] soc: rockchip: pm-domains: Add a meaningful power domain name
        commit: 0a69452e03564c5eaf99f729de398cd94ee90851
[10/15] dt-bindings: add power-domain header for RK3568 SoCs
        commit: 8cbc5d2f2fe42a1bb1491f25486999d8f4ba9733
[11/15] dt-bindings: arm: rockchip: convert pmu.txt to YAML
        commit: 41413a20b08258cc34af06e01236980ac68ae334
[12/15] dt-bindings: arm: rockchip: add more compatible strings to pmu.yaml
        commit: c29c9dc89381d94a57759b60ef46f3aa2f7d413d
[13/15] dt-bindings: power: rockchip: Convert to json-schema
        commit: dfbe3e44ae8415772d561e71b9b4be035af96396
[14/15] dt-bindings: power: rockchip: Add bindings for RK3568 Soc
        commit: 53f8551a36f97f04bd896a9e8d2daf0c45ffbae8
[15/15] soc: rockchip: power-domain: add rk3568 powerdomains
        commit: b9402acf6350458d934646a4531392bc4f8605d2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
