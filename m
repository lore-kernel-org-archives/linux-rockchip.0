Return-Path: <SRS0=RUTs=D4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0DFC4363A
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2020 18:58:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC3F8223FB
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2020 18:58:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Zh0Rj1gL";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="FPt5Dr2P"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC3F8223FB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RHLfuhkM1u74OBkhRpCbyFDlnl5zZWqdPlL7rMM/I4A=; b=Zh0Rj1gLsmVATJ78QfoOqY3mn
	dH9JJkVljywadNUmPbqxYVvPkhW1cHRYR//THESAd3rFUqZszF7CWVZq8loODWeu7+Vl9eTVrHncX
	0cvovRaudDNGpmLsotwq+QPt8xIEpNTTIhXEtxGbmq4tGOTQVKKlbo/JEQvad8TpSLD3BEsavHO7L
	TUyBTq4qXCX9UdEaAMyMkpfzljnhZcFl2GwdqhefswZ3N1lyAdaIuDotMcBAXy0lc6mdoOuG8/0re
	w3NkbcGDPneMohu1wdceLVzUXiASsu6hn/IdQMeN/np9YeihLdoFGrxfw7h5ijyLfEdEMy3dDevB3
	STF7qf1Iw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVJJQ-0005OS-EQ; Wed, 21 Oct 2020 18:58:16 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVJJL-0005MZ-8E
 for linux-rockchip@lists.infradead.org; Wed, 21 Oct 2020 18:58:12 +0000
Received: by mail-ej1-x642.google.com with SMTP id o26so4760182ejc.8
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Oct 2020 11:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RD6Pe7uFsqq6lLUnSY5SK+FGVJWIcdwyWReVf1JamtI=;
 b=FPt5Dr2PZVxmcHgGu0EzzWnbd0bBvRHH6JgMV3HonwzIQVLkhj4B4muP3EYJzeuWZH
 R1WTUDZv7Td6B59Tjr6IplLiSgIvMuPgUMzeQkhjuE+qJ/QNXPBSpn59Je+EjX1RXyU4
 IRHj/pG29Ey6zFbGxa4sArGg1YWSAupQ3kKoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RD6Pe7uFsqq6lLUnSY5SK+FGVJWIcdwyWReVf1JamtI=;
 b=CLRanfucDgbWtBoedqG5drJEXS7Rx2A/BFqWyUjAw9TRfNkenFcnUQwt99fpqCQZyg
 VNuj24MdzThs2GS9PiW1wTVmpTcGZIJAo7uxZwIURHQpAd19zHBxeeiSXV1XwelrRSdc
 MdFCVKR1fjTLH6MGXvetQvbMxY2cM9AECyZvRfrKKozd011vnnoDwACl4kOyk6RsfeYI
 TB5GtT1s3S41q5odQLCkMvOf1C/lPKrFbvKAi01k1aIY2uBIiNAfAA0uNAb0uQG+EfXZ
 2jtunL3oirEqXzK6sZ7isrqbL8l8yK5u5VIYc9DBEcvmt9XUUAT53U7DuzqMmvGg1ZXY
 cOLQ==
X-Gm-Message-State: AOAM531idGNfJxlSSzzoBA7epNvh5ZboccXPIE1u12y7M2lqJ/OCLLBQ
 14l9aFtYTv7FRa3Iyw0+iAFmBZ/2x+8ftsCCE17KLQ==
X-Google-Smtp-Source: ABdhPJxxfUjj7Hta8BePOHoLY9p4KODnXrLobEgMBRj1B+m1IjCAXKJZnnKVfNnNHt3piiQTSKReHx4YebGVv6yUsHk=
X-Received: by 2002:a17:907:a8d:: with SMTP id
 by13mr4710348ejc.295.1603306689022; 
 Wed, 21 Oct 2020 11:58:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200929083217.25406-1-jagan@amarulasolutions.com>
In-Reply-To: <20200929083217.25406-1-jagan@amarulasolutions.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 22 Oct 2020 00:27:57 +0530
Message-ID: <CAMty3ZDHDC5TMF=8HJRmZd7HijOM6RP-k4y9JkdWVQGgPKyGvg@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] arm64: dts: rockchip: Add Engicam PX30.Core
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201021_145811_322156_52AEBDC5 
X-CRM114-Status: GOOD (  13.82  )
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

On Tue, Sep 29, 2020 at 2:02 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
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
>
>  .../devicetree/bindings/arm/rockchip.yaml     |  12 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../dts/rockchip/px30-engicam-common.dtsi     |  39 +++
>  .../dts/rockchip/px30-engicam-ctouch2.dtsi    |   8 +
>  .../dts/rockchip/px30-engicam-edimm2.2.dtsi   |   7 +
>  .../dts/rockchip/px30-px30-core-ctouch2.dts   |  22 ++
>  .../dts/rockchip/px30-px30-core-edimm2.2.dts  |  21 ++
>  .../boot/dts/rockchip/px30-px30-core.dtsi     | 232 ++++++++++++++++++
>  8 files changed, 343 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-edimm2.2.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core.dtsi

Any further comments?

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
