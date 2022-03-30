Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D54B0C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 14:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGAamsq26kBfz7G9t2KSZY5BbUVSzqJMFKjVlnKPWgI=; b=ZzvqLDQzFzK03P
	sqeRU5u5JD1bZasOVzbaOI2VUoODE/+TRsKSM8KIVSA7ug4XTK/9vBXG8LZc++ECXToRkm6J+Oau/
	HxF088mhnTk5cZQWkqm4qBQFbp6FdonNquQLTl7szNzKtbXIlU8u4M8ggVSNqfCpurkUNKDBZ3j3g
	F+RVjARCBOgSteERyLO5b0DMnsLKQOfJre4WkqBI32ZzBkQJd3IwNEU+YV2waKj1QMVyWoMBtv6E6
	UBsCx3Tz1p/Zv+07RnSHI/caEiDxgHGDQOkE4Cql7wiuF9TiBvGSQWOLRHxLqGj87xPle9Ao7qJfD
	FGtyvpU5JE946UU65XUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZZnJ-00GN7F-Du; Wed, 30 Mar 2022 14:59:33 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZZgR-00GJUQ-0q; Wed, 30 Mar 2022 14:52:28 +0000
Received: by mail-lf1-x132.google.com with SMTP id d5so36256552lfj.9;
 Wed, 30 Mar 2022 07:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=hc8fraLWBmPS2+8If+3/sRtFOFyaAgxs5c6eZI6wZpY=;
 b=m3AUKtB/RoJ+VRRoPr4TRft7zBZzhRqjrSHJ6EuPYQX2QVUUAsjvrYumRBliHhkKsx
 Dn4kcYGtA0NU7Vyuz5Edy5eOxK1QnQ4SeAmDUSuz8/lJoc97fvrhQ1lNDHSwWZfmqt6z
 UQqwlJXi6F5m3aPTMCVg6KZYnj1fcjZBqOtLzFOqIIKFDGbbv9qdyLLhb8/DFXCBF3qP
 bDSNhqI/aK9YAAAJlMvLRpLc7m8vB5/2+S/UVAc8fBUydLRzOddeU6BQ7QgFsfvXBtLa
 lJvHWb9RPw63H4YcOOaClFMdJqpoTcs41Wt64Xm/JK4tVL8aHQSC441jLgVCE/Dt6bGO
 wb0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=hc8fraLWBmPS2+8If+3/sRtFOFyaAgxs5c6eZI6wZpY=;
 b=Bnt3gmXxSIHnreesOJjPQLsUN3fVYFsU0UyUQ36o2JgVN96tuUyMlgBTN6F8jxP4FY
 +0XTRnfSemQo5Nz1vj2SS4CskvKAySoDAoXPy+0LMtkE/iXdPUpwJiEeAZDmIz8sJOV6
 leQhpLHAdlUoFKAbRphZOkd4O9Dfp2SyfqHFtZBLT0hRX37n10UQFGs1/DU4zVtw8UxU
 KyvbWNKV6KH2tv9CVM7RptbmyQKcFTwhR285vBOy/syc8fg4UGPcZ3mhs4wGdN0PKWyY
 msmItA06v3GahKlOHJWaSI0KxvVWdLsVt4y5qpHFtXGZ4b5TRhjkqTyUZYNWAsRtp1aA
 NPzQ==
X-Gm-Message-State: AOAM531CmBL26hMoQaYaOg/ULw3na8O3G8RUtiBWbPfFp9B5Dxqsakkh
 XwAm/Kyrd9VRphc2ysM4iHTNXm64Tdo=
X-Google-Smtp-Source: ABdhPJzyYYjDtGAGoeg7trsTFkePsA5/OO3BBWaZB84gKUFc4HtGpAK0GxybtA/ISrhgDJfp9iMeag==
X-Received: by 2002:ac2:4d8b:0:b0:44a:2aec:669f with SMTP id
 g11-20020ac24d8b000000b0044a2aec669fmr6981393lfe.49.1648651944653; 
 Wed, 30 Mar 2022 07:52:24 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 k2-20020a056512330200b0044a096ea7absm2351567lfe.54.2022.03.30.07.52.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Mar 2022 07:52:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220330102046.GA12181@pengutronix.de>
Date: Wed, 30 Mar 2022 16:52:22 +0200
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Message-Id: <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_075227_103315_8F03F7D6 
X-CRM114-Status: UNSURE (   7.50  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gdyBkbml1IDMwLjAzLjIwMjIsIG8gZ29kei4gMTI6MjA6Cj4gCj4gRG9lcyBp
dCBjaGFuZ2UgYW55dGhpbmcgaWYgeW91IGRvIGEgIm1vZGV0ZXN0IC1zIDY5QDY3OjE5MjB4MTA4
MCIgYmVmb3JlCj4gc3RhcnRpbmcgdGhlIGFwcD8gT3IgaWYgeW91IHJ1biAibW9kZXRlc3QgLVAg
NDNANjc6MTkyMHgxMDgwQE5WMTIiCj4gYmVmb3JlIHN0YXJ0aW5nIHRoZSBhcHA/IE9yIG90aGVy
IGNvbWJpbmF0aW9ucyB0aGVyZW9mPwoKU28gaSB0cmllZCBmb2xsb3dpbmcgY29tYmluYXRpb25z
CgoxLgotYm9vdAotc3RhcnQgYXBwCi1zdG9wIGFwcAotbW9kZXRlc3QgLXMgNjlANjc6MTkyMHgx
MDgwIC0+IG9rCi1tb2RldGVzdCAtUCA0M0A2NzoxOTIweDEwODBATlYxMiAtPiBncmVlbiBzY3Jl
ZW4KCjIuCi1ib290Ci1tb2RldGVzdCAtcyA2OUA2NzoxOTIweDEwODAgLT4gb2sKLW1vZGV0ZXN0
IC1QIDQzQDY3OjE5MjB4MTA4MEBOVjEyIC0+IGdyZWVuIHNjcmVlbgoKMy4KLWJvb3QKLW1vZGV0
ZXN0IC1zIDY5QDY3OjE5MjB4MTA4MCAtPiBvawotc3RhcnQgYXBwCi1wbGF5YmFjayBpbiBhcHAg
LT4gZ3JlZW4gc2NyZWVuCi1zdG9wIGFwcAotbW9kZXRlc3QgLVAgNDNANjc6MTkyMHgxMDgwQE5W
MTIgLT4gZ3JlZW4gc2NyZWVuCgo0LgotYm9vdAotbW9kZXRlc3QgLXMgNjlANjc6MTkyMHgxMDgw
IC0+IG9rCi1zdGFydCBhcHAKLXBsYXliYWNrIGluIGFwcCAtPiBncmVlbiBzY3JlZW4KLXN0b3Ag
YXBwCi1tb2RldGVzdCAtcyA2OUA2NzoxOTIweDEwODAgLT4gb2sKLW1vZGV0ZXN0IC1QIDQzQDY3
OjE5MjB4MTA4MEBOVjEyIC0+IGdyZWVuIHNjcmVlbgoKYnIKCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
