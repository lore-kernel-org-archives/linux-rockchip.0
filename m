Return-Path: <SRS0=KV8+=EO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A56A6C4741F
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 23:15:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B072E206F4
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 23:15:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TkS5Ld74"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B072E206F4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pEW/oETlzgZjxvyoyJ6rM2GIeidv/I5IgvgE+NFPSmk=; b=TkS5Ld74HOk8WQcYBhbxNuEug
	aodc64eLE+7IQRaVdmtNdRG/rv1LKchhbPY8T4Ch+qhTIy8iuw3neVgXkC1nCQjZUwHNVMij3Fb90
	wUhNoUfQH7i3IwgaFtyisfOCtNZk0o6aIlm+NlujSKY+2HsiCbajUSUkndBSbxIDgStKl4QO7RO6C
	3C/eQdoX26IWIuBA2w/oRo4I3J8fD4ivgj5XULAOKudkVNNzGzHtBBS+iWZz5BwwT+A1lSojoNAA/
	Ft0683/XjzhvtzDv1kCa/HF0GLEQFonXXPcXR45IwiA5/F+qk0BIIOksB5fEhTHmPcMb5qCtLfoaR
	XEKeILO7Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbtuF-0004JP-Qv; Sun, 08 Nov 2020 23:15:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbtuB-0004Ip-48; Sun, 08 Nov 2020 23:15:27 +0000
Received: from p508fc9d6.dip0.t-ipconnect.de ([80.143.201.214]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kbtu8-0005QO-Bn; Mon, 09 Nov 2020 00:15:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v4 0/7] arm64: dts: rockchip: Add Engicam PX30.Core
Date: Mon, 09 Nov 2020 00:15:23 +0100
Message-ID: <2320954.tcIoyGMtcG@phil>
In-Reply-To: <20200929083217.25406-1-jagan@amarulasolutions.com>
References: <20200929083217.25406-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201108_181527_204305_C8A73C40 
X-CRM114-Status: GOOD (  13.15  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Dienstag, 29. September 2020, 10:32:10 CET schrieb Jagan Teki:
> PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.
> 
> PX30.Core needs to mount on top of Engicam baseboards for creating
> complete platform boards.
> 
> Possible baseboards are,
> - EDIMM2.2 Starter Kit
> - C.TOUCH 2.0 Carrier Board
> 
> Changes for v4:
> - collect Rob A-b
> Changes for v3:
> - resolved Johan comments about sorting node properties
> - add copyright to Amarula Solutions
> - update px30 dtsi author
> Changes for v2:
> - include C.TOUCH 2.0 carrier board
> - skip 10" OF LCD as it requires separate dts with panel support.
> 
> Note: These baseboards can be used for i.MX8 SOM's as well. So having
> baseboard on respective SoC seems to be easy rather than making it
> common across all.
> 
> Any inputs?
> Jagan.
> 
> Jagan Teki (6):
>   dt-bindings: arm: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
>   arm64: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
>   arm64: dts: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
>   dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
>   arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
>   arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
> 
> Michael Trimarchi (1):
>   arm64: dts: rockchip: Add Engicam PX30.Core SOM

I've applied the patches for 5.11 with some changes:
(1) engicam,px30-px30-core became engicam,px30-core
(2) px30-px30-core.dtsi became px30-engicam-px30-core.dtsi

That double px30 is unnecessary and confusing in compatibles
and the px30-core thingy needed something less generic, as that is
not px30-specific but specific to the engicam boards.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
