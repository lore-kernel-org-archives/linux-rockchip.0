Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE626C982D8
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 18:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYF69tj4l9byvQhcVjV/z30W5iMt4BD4zUXzBPoZmpo=; b=eKd8Q3nrMZlRdX
	ohh0SHAmWn0EvcTWyFQ8unnYfMZfuW0gNcubyNLzaGgpmaxUmQ4Q3LxhMPo0LW7H3F+5fCX5Soj2o
	jHa5nW75Fb06aGuGqGUBGOJdZSfAIeQWcfMjKsyWqDEgbYfUHGGoO3OSE0Kg4Z06h3SBVvQkjrhGf
	rhIlahCt9+hqe1v59u2m8AlyjDWuO619dcTf5Yw0uTuQl+nnWfNUct74PU7p6wVM3y4um05wG06ou
	wyPTURO+YHRI6c0vRRT8yDYWpEjIkbjk1dEHaPZe3f6Q7A51HpT93UaqLSVG1Fq+6aCYV8Cd0ZOv8
	3spaun7N7OHapFdxaiPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7dMP-0000000FJhr-2EiO;
	Fri, 18 Sep 2026 18:30:57 +0000
Received: from mail-pz2-x10.google.com ([2607:f8b0:4864:3b::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7dMM-0000000FJgw-3dlX
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Sep 2026 18:30:55 +0000
Received: by mail-pz2-x10.google.com with SMTP id 41be03b00d2f7-cc4d2fe2056so691660a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Sep 2026 11:30:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789756253; cv=none;
        d=google.com; s=arc-20260327;
        b=eWKywYZhrDNYgy/3wbdBvBtCzTyLaumZdc8vSwhZFdMm7eRvkBI7gbDUvlMVGsxEsU
         UzNdKo1YqECDRwm6NmV2/kBP+liddClGUn3TzUNtRLicNsK7582nde+bdtXbu5XTSeFX
         IpXgwxI+3yR4ijhq0wnD11G9EUyJupMrZePmg9sYfWDlgSx/O3NzIe6nxGMMiK4ZmLGQ
         zj2jcULKf3c8W27+7rNuthVTEIwPXvtqmIkPzQc4pETWOZXdS3vQzyAwAZvwNqjXZDwU
         4pqXLCnlF+i4NzkskICov0Hwi7NlGdBbCdbqW34z+MihVVaTpH89aKdSb+ujgxk6wYWW
         2irg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UthLOTqsgx1H7Ky6X1sMBpSJ/ushOzRSeE2EVOIQouM=;
        fh=1jZTGkZieX/iBUYXdUgNsR1/X3HN0G9yEooXUlqu4GM=;
        b=jhEDfgHef7pwQvClluKDtGogJZxmljJQxg++3cvHsRUHOiCWtGBqguXegt/7MXWEjH
         lF8fvaEyyvH4S0A+3kJRieJ0Am7w1mybZq7iipxL2icDvLiL1tSQp83jxYDJ1wgsKyVQ
         ZpL8CE/r9ueB5bc5bCHZz4x974x5WwlBxQcB84ZUd8WwJPCa1el2FyuYNbB8vCDp4fmw
         bBsmZXyeD17BT7tbULp75yo0OW9i9B8gRjQf0eMS4z+HQfwajLFAxnwy4WKD17alFJU5
         BW+alEC9U9pxMFYThwWtr4oU0fUK4MYRWlwFFjxUaQg4FceXKcpyC3ppyxVBH/2UJuUi
         bR0w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789756253; x=1790361053; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=UthLOTqsgx1H7Ky6X1sMBpSJ/ushOzRSeE2EVOIQouM=;
        b=RydFIpVhlpg4mqTJ7kOGY5CAD/CZ0idd685xsyHS5BVdKr2tp8WIVV8gRb4yqssMCz
         esKkftT1qQtwN+SiUA1F/qFsJCTWIoLzb7Nl2FVdzFL0wddpGVPkpN/hw1NHFXZA6QJ7
         yVEvMQKS2IcAPlAgkKl0EVReN1+ijnWRIQDGbMzR79BOBCCG3tiAnyK/WCHbB/CNQbTT
         +jtJvFRVE+8QefjMMUcAoK1ybZzrJQCZ33kDBULbmb7juXd2jeuLWD1kwWSVlbqCUe88
         35mxnf3X3oIKZVK3pT1CQsRoiswGRuJ4TI+cQ8HY2Jl8Hg+vCFsObz//uDpYconMZtEJ
         TvnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789756253; x=1790361053;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UthLOTqsgx1H7Ky6X1sMBpSJ/ushOzRSeE2EVOIQouM=;
        b=S/88Bxdpe5DOJBMcJ7ZpOn8Bs8HpLBumRiJtmBg9mXhyMs2ri7OuVo4+VcJ8wXLMqV
         Q4FCWl/YXodFUJf9gYjJIdbhBqFuRwVkpljFm1el8vcO1g/gz8XRjP/pEb3qv2XdmPjs
         m7JlebK6SF/DtjFZ+JFIa3U/uVm0LCUoMjrQwCBjGHb+eohgVSHzvzTDUsnYuDeF1H4o
         2N6W3g1+CfWFA76cKG9PPXNkvWNfblKe9tWhQumLoVGyXkppXxim4Cpoq5gLg8qJsgx5
         njbxgwFZ3OMaIIb8LUEB/EGdkxL59eTAF8Yt/slzJ98QbbIj8mAYziw+nDaj8alJCuoQ
         tA4Q==
X-Forwarded-Encrypted: i=1; AKwUvBxOQw5pShGsCRrjBshc+DeZptX3ZPY1l8Jsh8UXNZioeMHVV/4QOPtg2n1ji7/+dpp9AbyZjWSR4LOZNqxSXg==@lists.infradead.org
X-Gm-Message-State: AFuF++npNzjeOupcdkkVODs2ecJuuz4D6ixyyn5X/Jb3rEGgS273L57Y
	mOsRVfgYXB7i4hd9ITVDvEanwNz1DoP5P95oS0BPk6l84Kt8d1f0SGLNBur0XuExN+z5jxIn6hr
	Gka/Wkq2Z0g8ci9v1/DPWLIe/LGF7VNI=
X-Gm-Gg: AYBFou1Vl0M4Z8P+Oj6CTGAsRDgs22IDz3V9Q2OyDkS6FUmmy7C5Fs8wXCdC0duNKLL
	EahsDFncqmp+cEthO35O3O1pzFVzFhnSbc0e1cZc4mjmVa5blJ0+YgNyhXRdu5UxNBwHylHC2Vo
	VASOG+SLS0TnP8DrDgf/im05qpP7wsIGSz3Fc46AUVV7wKvxvonTRDyRc4do3CdIJWW3WKFT+yl
	NqW1hvdA7BoVlTDoqoyrNNCPljqCYw/2ii+pmAYu0LWLvLhsM8yc89QUdjIymguPz2s8XXS7tRb
	xsAk08wPjvi9hNBnlbusMshy1HHun8P24NaCeDFdFqVNlWGB6UOrMFT6Fc5MoBXxQuDlT931SmS
	B42HSktcn+Rzj
X-Received: by 2002:a17:90b:2681:b0:39e:6c69:f482 with SMTP id
 98e67ed59e1d1-39e6c69f55fmr655165a91.65.1789756253090; Fri, 18 Sep 2026
 11:30:53 -0700 (PDT)
MIME-Version: 1.0
References: <20260918-kbingham-orientation-v6-0-5e8b1f01be29@ideasonboard.com> <20260918-kbingham-orientation-v6-5-5e8b1f01be29@ideasonboard.com>
In-Reply-To: <20260918-kbingham-orientation-v6-5-5e8b1f01be29@ideasonboard.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Fri, 18 Sep 2026 21:30:41 +0300
X-Gm-Features: AcwNN1UUuDTcQsQdT6LSC3YiQR-XJenFcyp7p3MxtUdbO4cYi1dTxigUEDSEcPc
Message-ID: <CAPVz0n2pZukL2tnaJef-N=kRiudVLN7RsTjKJJkTqp9-_k7HwA@mail.gmail.com>
Subject: Re: [PATCH v6 5/6] ARM: tegra: Convert to new media orientation definitions
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jacopo Mondi <jacopo@jmondi.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Jimmy Su <jimmy.su@intel.com>, Matthias Fend <matthias.fend@emfend.at>, 
	Mikhail Rudenko <mike.rudenko@gmail.com>, Daniel Scally <dan.scally@ideasonboard.com>, 
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Michael Riesch <michael.riesch@collabora.com>, 
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
	Sylvain Petinot <sylvain.petinot@foss.st.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Paul Elder <paul.elder@ideasonboard.com>, Martin Kepplinger <martin.kepplinger@puri.sm>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	Tommaso Merciai <tomm.merciai@gmail.com>, Richard Acayan <mailingradian@gmail.com>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux@ew.tq-group.com, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-tegra@vger.kernel.org, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_113054_918275_0B014298 
X-CRM114-Status: GOOD (  12.05  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

0L/RgiwgMTgg0LLQtdGALiAyMDI24oCv0YAuINC+IDEzOjQ0IEtpZXJhbiBCaW5naGFtCjxraWVy
YW4uYmluZ2hhbUBpZGVhc29uYm9hcmQuY29tPiDQv9C40YjQtToKPgo+IEZyb206IEtpZXJhbiBC
aW5naGFtIDxraWVyYW4uYmluZ2hhbStyZW5lc2FzQGlkZWFzb25ib2FyZC5jb20+Cj4KPiBUaGUg
b3JpZW50YXRpb24gcHJvcGVydHkgZm9yIHZpZGVvIGludGVyZmFjZSBkZXZpY2VzIG5vdyBoYXMg
ZGVmaW5pdGlvbnMKPiB0byBwcmV2ZW50IGhhcmRjb2RlZCBpbnRlZ2VyIHZhbHVlcyBmb3IgdGhl
IGVudW0gb3B0aW9ucy4KPgo+IFVwZGF0ZSB0aGUgdXNlcnMgdGhyb3VnaG91dCB0aGUgbnZpZGlh
IGRldmljZSB0cmVlcyB0byB1c2UgdGhlIG5ldwo+IGRlZmluaXRpb25zLgo+Cj4gUmV2aWV3ZWQt
Ynk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBLaWVyYW4gQmluZ2hhbSA8a2llcmFuLmJpbmdoYW0rcmVuZXNhc0Bp
ZGVhc29uYm9hcmQuY29tPgo+IC0tLQo+IHYyOgo+ICAtIEZpeCBNRURJQV9PUklFTlRBVElPTl9S
RUFSIHRvIE1FRElBX09SSUVOVEFUSU9OX0JBQ0sKPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMv
bnZpZGlhL3RlZ3JhMzAtYXN1cy1uZXh1czctZ3JvdXBlci1jb21tb24uZHRzaSB8IDMgKystCj4g
IGFyY2gvYXJtL2Jvb3QvZHRzL252aWRpYS90ZWdyYTMwLWFzdXMtdHJhbnNmb3JtZXItY29tbW9u
LmR0c2kgICAgfCAzICsrLQo+ICBhcmNoL2FybS9ib290L2R0cy9udmlkaWEvdGVncmEzMC1sZy1w
ODk1LmR0cyAgICAgICAgICAgICAgICAgICAgIHwgNCArKystCj4gIGFyY2gvYXJtL2Jvb3QvZHRz
L252aWRpYS90ZWdyYTMwLWxnLXgzLmR0c2kgICAgICAgICAgICAgICAgICAgICAgfCAzICsrLQo+
ICA0IGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgoKUmV2
aWV3ZWQtYnk6IFN2eWF0b3NsYXYgUnloZWwgPGNsYW1vcjk1QGdtYWlsLmNvbT4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
