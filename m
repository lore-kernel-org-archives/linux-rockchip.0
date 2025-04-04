Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE17AC36010
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 13:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLiXmzGjhTTIV/a1LHROOOJTmYG3/sBR/eaGxkoI8D8=; b=Z+IrPmZil6BDUu
	e0nV8ssVfaUaVnvNGKuQeeBRIWEM9L7Ep7I78MF5JjcGqgYYzndDvK0uElWarSPHSsuvwP9cEp8hd
	v+3HGdy3XZcrtP1hk5GlsEfRp6J/8x7NHfjc3rvjf63zKkl8l+yWKVDUs2kejng2UlyGKaUS9ZTG2
	FdhWDtxDqsY9uRf214sPvTL34K7a1EEvD4PAQ5wTrgz0JQeMtHYvxJO/M6W/7G5ac6slS0ITi2Z/5
	EbRsg3m6oa5ywWNFO+OPo5mSPECwE93icGY4HmDEEvKMR8EQTRFJMFNTpCzcNmRMiWvVePyZOaxox
	A8kOcCcU2UiYupLedIag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0gwY-0000000Bo6o-2SaQ;
	Fri, 04 Apr 2025 13:18:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0gwW-0000000Bo60-3cpd;
	Fri, 04 Apr 2025 13:18:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C136368441;
	Fri,  4 Apr 2025 13:18:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CAC7C4CEEF;
	Fri,  4 Apr 2025 13:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743772723;
	bh=8p+c4MB2Vz2NLD+RiN8PNGA7Pc+YAFAuwCP+/mMX5Bs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=eKW8BkEPXJzBEfA6eyTODP0H96m9hqR98uXmWJ+NQbzBwEXHrdYrjtSd1C8RWZmfz
	 2rcbpHdZXLJRVcFaE9n5Kp4yS8ugzHBQqGEDWJS2qXvoobc+wP2LpgFooZ3AZGa3xa
	 6bKGGVFi85i5+b/AfCt8XkZRJhnqVnGqQ0ftCT5vqRVzGTuQFelxLx7V8tqxC1gZv7
	 u1xcnhxGxabJM0V87wUWYVqmKLm/TNRviJGpd0rTUcnJlFhcHwhwwXhdKoE4G2UVgz
	 pjRM+2K+IxITVbj+DgcmSYFJK28J91/7Ppto2N1C+xXzQUFvu+zdmpvR8Gf7606QS7
	 J6mnKZPky2aVw==
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ac29fd22163so345915566b.3;
        Fri, 04 Apr 2025 06:18:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU89SZ7WSwM+FsPD4QZaN/ni8ig18d9XCqInUFi5EEyShdtDX2Z8xQ91oN1rZlH73gjgY/Bo+FNm+cn+/KjZMFplw==@lists.infradead.org, AJvYcCUh5eNNAG7LcLgYNR3aI4NOHTmlrVRkL1yyFoxum1sVVGn2zz4ercrX0aRWu9th4cJSuGmbAYkHN8ig8rvM@lists.infradead.org, AJvYcCVYCCOyaI1r3QDRCSRx0sZfIkZlc1aeFrVoPeJOsIi16X5KDD/ZJHWhPBkaeBdoZkD9UetTHM0py1wISP/Jo4I=@lists.infradead.org, AJvYcCWPhKysrv68PcuNsDbbNG51rOtvxhTdhQQkpryy3VcFkuY6dPTkrNmo8epSfvTG+qlYHhsPV3xZG28hKLz1zZs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8fzUEUWI6+Enk23TzFgDo3MfC4AAG5u7GbdSvaCqXy7h2uL7c
	7sotFIVsAMc2FCwIFvfa7IbpGUb4L4t9N7wFZxDtKOcSG/Oqh+nnbEV78ZZWgBqTNge9u+XrQ/t
	IvtM2NvRsTTeBTAHWuoirYJyBNA==
X-Google-Smtp-Source: AGHT+IGeMGvCEeK8AclL93nVBIzL9ZaOIe89VJXnsQlCY86LywWmTQFiXrpurfnLdBj4EjlXLbq/bSkPsN9UQIZ0bQ0=
X-Received: by 2002:a17:907:7209:b0:ac3:45c6:a1ec with SMTP id
 a640c23a62f3a-ac7d6d5dff4mr229454566b.25.1743772721929; Fri, 04 Apr 2025
 06:18:41 -0700 (PDT)
MIME-Version: 1.0
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-6-076be7171a85@kernel.org> <Z-_K2XDEcbtcCMVM@linaro.org>
In-Reply-To: <Z-_K2XDEcbtcCMVM@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Fri, 4 Apr 2025 08:18:30 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJT-0gwvJnMb63izy6WwJpBVsswkauL8OMLCrF08q9HYQ@mail.gmail.com>
X-Gm-Features: ATxdqUHOgMca65CFxOkpc1GwFhcina94zKtpSzj7uSzh0WZ2vI4WGj4U0KjYQTw
Message-ID: <CAL_JsqJT-0gwvJnMb63izy6WwJpBVsswkauL8OMLCrF08q9HYQ@mail.gmail.com>
Subject: Re: [PATCH 06/19] arm64: dts: qcom: msm8939: Fix CPU node
 "enable-method" property dependencies
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Viresh Kumar <vireshk@kernel.org>, 
	Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com, 
	Conor Dooley <conor@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Steen Hegelund <Steen.Hegelund@microchip.com>, 
	Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-mips@vger.kernel.org, 
	imx@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-renesas-soc@vger.kernel.org
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

T24gRnJpLCBBcHIgNCwgMjAyNSBhdCA3OjA04oCvQU0gU3RlcGhhbiBHZXJob2xkCjxzdGVwaGFu
LmdlcmhvbGRAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIEFwciAwMywgMjAyNSBhdCAw
OTo1OToyN1BNIC0wNTAwLCBSb2IgSGVycmluZyAoQXJtKSB3cm90ZToKPiA+IFRoZSAicWNvbSxh
Y2MiIGFuZCAicWNvbSxzYXciIHByb3BlcnRpZXMgYXJlbid0IHZhbGlkIHdpdGggInNwaW4tdGFi
bGUiCj4gPiBlbmFibGUtbWV0aG9kIG5vciBhcmUgdGhleSB1c2VkIG9uIDY0LWJpdCBrZXJuZWxz
LCBzbyB0aGV5IGNhbiBiZQo+ID4gZHJvcHBlZC4KPiA+Cj4KPiBUaGUgYm9vdGxvYWRlciB3ZSBj
dXJyZW50bHkgdXNlIG9uIHRoZXNlIGRldmljZXMgcmVhZHMgdGhlc2UgcHJvcGVydGllcwo+IHRv
IHNldCB1cCB0aGUgc3Bpbi10YWJsZSwgc28gcmVtb3ZpbmcgdGhlc2Ugd2lsbCBicmVhayBib290
aW5nIHNlY29uZGFyeQo+IENQVSBjb3Jlcy4KPgo+IFRoZSBtb3RpdmF0aW9uIGZvciBpbXBsZW1l
bnRpbmcgaXQgdGhhdCB3YXkgd2FzIHRoYXQgMzItYml0IHZzIDY0LWJpdAo+IGtlcm5lbCBzaG91
bGRuJ3QgYmUgcmVsZXZhbnQgZm9yIHRoZSBkZXNjcmliaW5nIHRoZSBoYXJkd2FyZSBibG9ja3Mg
aW4KPiB0aGUgZGV2aWNlIHRyZWUuIFRoZSBjb2RlIGluIHRoZSBib290bG9hZGVyIGlzIGdlbmVy
aWMgYW5kIGhhbmRsZXMKPiBkaWZmZXJlbnQgU29DcyAoZS5nLiBtc204OTE2IHdpdGggNCBjb3Jl
cyBhbmQgbXNtODkzOSB3aXRoIDggY29yZXMsIHRoZQo+IGVuYWJsZSBzZXF1ZW5jZXMgYXJlIGlk
ZW50aWNhbCkuCj4KPiBDYW4gd2Uga2VlcCB0aGlzIGluIHNvbWVob3c/IFRvIGJlIGZhaXIsIEkn
bSBub3Qgc3VyZSB3aGF0IHByb3BlcnR5IHdlCj4gY291bGQgbWF0Y2ggb24gdG8gY2hlY2sgaWYg
dGhlc2UgcHJvcGVydGllcyBhcmUgYWxsb3dlZCAuLi4KClllcywgd2UgY2FuIGtlZXAgdGhlbS4g
V2UnbGwgaGF2ZSB0byBhbGxvdyB0aGVtIHdpdGggInNwaW4tdGFibGUiIGFuZAoicHNjaSIgSSBn
dWVzcy4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
