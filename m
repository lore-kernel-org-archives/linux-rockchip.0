Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B03C7C44501
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jul 2026 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05WnDBJ7wGdvwE8PWU1LhtmmIgGvx2qx0jKUFB6Wqks=; b=4RdEkR0y3wnKt2
	q87kyKj9oLElLngck0KAF0bR2P1C0xEFr+qEcU5li/42p5Qg0zbK+6eE/EdB61vUcSk2uoxixR6ty
	XsBPJFbCiBwjYEwrm9EgUvVL/wfeam3ENM77fvokiUd+/1chEBrtYvQ/u4aXBSkF4YTXI8PG9xSB+
	gldcfhw+eUG+OLAoEjLrNMs9v3AhjIEaoSDB9sLK3fxo8aEgMei+slSdI5PXsb8UKQJ/7JB8rY+/O
	q7DHxcsK1dbRxQo493X4Q3wA0f5aTIigahI6xrfiuFOpXUh4pe612cVYRsomY5INNu9KPoip3RGHc
	V6srlVVNO6HYErEnpf2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiyTx-00000007ewv-3Vac;
	Sun, 12 Jul 2026 18:00:49 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiyTt-00000007euW-3gfv
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Jul 2026 18:00:48 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-848d21bbaffso1050181b3a.0
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jul 2026 11:00:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783879245; cv=none;
        d=google.com; s=arc-20260327;
        b=m+Y5qW1214Nm7tYw09CzdhRizLHCFxrv15Yh4Vv+gVXDzwQxfY2MT2H/MPB0HPRxf/
         KnFFlynmmtocPCj6p0W6zqFeNQw3SNOmPnPal0H23+s18iIgYnxiamn9j3Z/slND2TTC
         ZFwZr2HbKWpWWQ/JGnGXgMViPTyRPsohbX1aSO3lYx/Ftm9ZXXabG8XC1jZRkK0pjfbJ
         8Nxhdza/clChPL+v4MbqWgeVgvFEtsxhEMoss0M4CMI8C7smxjmSaYqYcdBERPQFmp0X
         eLlwTZMQ8HgPWVIZlyrjXfBc4WAHHoBcKdgC0dSbkYj09mgjG6C6yc9bcDb2F87h4a0e
         NQHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hOtx5Uo4a/i9Sp4XrnBY2y5AeFcy0ZPNgohX4nU/9DQ=;
        fh=4v6+nyBB+Ixr+BKTRDszUbE5QgaJtz8m7ILKfz1OmvA=;
        b=mEms3bv2dKPb/6hbvO2YJECXTQxc6bH3lvUgmVNfGcuXrQH0OD1ErYj5w7QnfooLqM
         cbXrOKNKSZL5jk41N9IFiu/MmoKByb8Drk6o6uxnU5E9L7ox3BSZN3n+8cfwy0cV7GHT
         aPgG8cG77nnOm8Yo6552x9TGqDbOzCP+kP/cYGGCyTiT2l1WcjkyPiXgBCWuWb+JAGH4
         bNklMPjWuEoKoefSCHx/5143EtQD8UVSiGkN9fzxfamf5sWlM+iI6T/yI05jaFX7sxFv
         Uqp9IxC1aHaQiFnanqilqBKSgJRlD+kUrXYV5a5DwGXmxhQdiZz8pGQ0OjVzxTZxgsbX
         UeAQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783879245; x=1784484045; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hOtx5Uo4a/i9Sp4XrnBY2y5AeFcy0ZPNgohX4nU/9DQ=;
        b=LBVZnBfAx5Byk58Nzo25cVQ6sZwbrMK1jPMADfhZEzLVDpVqQM9P/nxNWYQsOUpGcA
         RCty9uzFQjtQLxoEzedVUH9yxTaMOmmcvgdpVL8Tfkl4YjlLaEqDcJETF767HbbHYodS
         uNs4kB3EFgOX7QIWetF1XeH0AR3Z6nKBMd3DkMh0aDK9hpAUZhmDX5JBw0rCBV2SGqNd
         Ne3UU6M299f0zhJc8hIQ+XWUaRTQ1wuTVtHkRReTaeRd0aSkvKAxmr7k+5gWH/m4S2qg
         +RoajjrRqIe/HUrTj00pEUASSLUT2uK+Re1SgWCR2j1zj/n92kaSNcdfnesueJLpvB6+
         ApNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783879245; x=1784484045;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=hOtx5Uo4a/i9Sp4XrnBY2y5AeFcy0ZPNgohX4nU/9DQ=;
        b=X+WuIS7EV3gfD0CuMnGq2WdGLvIJimtHqjeq6hAcwXAqVaXF+1pI7y8Jg/sGelERrB
         kPmkVPKXyH9q8ohtfopsPr11uFCyhL1QnsWA5WBvi+BvUF5m3Rntc8wcPQyjJA6ZXk+J
         cEnLv68hMcKfFEqqg+mNE0Ljg1jssI67uiq+CrLyItO9HJfzGMk/LpEUVGu+Rvg/q6UR
         fH2fofeq/ERurP6W0WRcap7CLdVZcZ2H+RRwHBLooVWxYbh2MN7cfp172I3V7EUK7M0r
         TcpQjR8wQ4kYk2e6mYg3Z7ql1fu3RGKsaSFbnUychPbxn5HxuUgZ8iC2RNhFzwzQw2nN
         Jexw==
X-Forwarded-Encrypted: i=1; AHgh+RoNzHWdunWYSEI9rFURzevRDH4R9DPeKHKdrlE1lOuDr+rnkXOU56NttBYYtOx5QVSgBa9ZMBQagveIz73YMA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwPbgPhxrMy6JNDv/MmaeiEwCBQffwJC5edoVCVDNy7XXclA1eX
	pEnLoc+/GGz8k79wqtMRsjjl3hLDQcKgIS65vVVxbCob8d5jgPwSbw4UVzC7fWK0fInpMLhcoML
	CrcpeoZcSE8oqTeRPpiV7SB5u+zdhiCc=
X-Gm-Gg: AfdE7ckXKplln/mHXx5fiECA8OYjWfbJPxD1YNBgYlYyXZCLP49PnBaSCtWqDff6ffQ
	cFWAm8YjfS+uwvK9BoLBpgD3/JcoxA0bZEVDQWeu7Dnt515vFqY2GOzBu456pGts0wisDjzLg4q
	syaYg+Xr7ECAPwrv/0zJvv6ls2qtJg5nd5Kryo4x5YQffTzbFCO630zcs5t4AI+AvmpryZx44Sh
	cV1xVwk9VqNf8m1aV2XjBZw5xBAaCLj8P07tcgetqn2XG22pAPMUS0C+IL4sbDGM6isdzYO8ktq
	9WFRrWiH+akM3LGgUXbfToYBZKUqgGrps7mwHNmcV9M7IX0pjwZGSw6VecAySELk9MVL1uJN+97
	FY1ElNx5fRA==
X-Received: by 2002:a05:6a00:4188:b0:848:2f84:72e with SMTP id
 d2e1a72fcca58-848898b9d90mr5651239b3a.65.1783879244916; Sun, 12 Jul 2026
 11:00:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260711-nanopi-m6-v2-0-422675a65402@gmail.com> <ce54c773-22cf-43d2-b831-1ea5355359ca@kwiboo.se>
In-Reply-To: <ce54c773-22cf-43d2-b831-1ea5355359ca@kwiboo.se>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Sun, 12 Jul 2026 20:00:33 +0200
X-Gm-Features: AVVi8Cd8NGiWyQj59k9G_t9WcUTCbNW8tUsN3M5fDY7JrN-hw3Tixg2ATvZSB5M
Message-ID: <CAPSPb=vyKK3ngm+d+nN7KM20ZyA10Hg5cb8EarRF6SE4hLOWFg@mail.gmail.com>
Subject: Re: [PATCH v2 00/12] arm64: dts: rockchip: Add NanoPi M6 board
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	diederik@cknow-tech.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_110045_915374_558A7FD1 
X-CRM114-Status: GOOD (  22.97  )
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

Hi Jonas,

On Sat, 11 Jul 2026 at 01:36, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Hi Joachim,
>
> On 7/11/2026 12:11 AM, Joachim Eastwood via B4 Relay wrote:
> > This patch series add support for the NanoPi M6. This board is very
> > similar to the NanoPi R6C and R6S boards which are already supported.
> >
> > Main differences:
> > * M.2 M-key slot with PCIe (Also present on R6C)
> > * M.2 E-key slot with PCIe and USB (from hub)
> > * 1 additional USB 2.0 port from an on-board USB hub
> > * RT5616 audio CODEC
> >
> > Patch 2 and 3 moves a bit code around. Please let me know if those two
> > should be squashed together.
> > Next few patches adds some missing bits the common nanopi dtsi file.
> > While the final patch adds support for NanoPi M6. Support for M6 has
> > been split into two files one dtsi and one dts file. This is to make
> > it easier to add support to the new M6V2 board at a later stage.
>
> In my personal opinion I think it would make more sense to sort
> patches in following order:
> - adding/fixing missing bits to the common nanopi-r6 dtsi
> - extract M6/R6 common parts from nanopi-r6 dtsi to nanopi dtsi,
>   nanopi-r6 dtsi includes the nanopi dtsi and no changes to dts files
> - final parts that adds the M6 board
>
> Should probably make it a little bit easier to cherry-pick and bisect.

If the additions/missing bits needs to backported I agree.
I'll cook up a patch set with the order you suggest. Thanks for the feedback.


best regards,
Joachim Eastwood

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
