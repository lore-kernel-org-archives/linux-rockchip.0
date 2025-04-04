Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BC43C36014
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 14:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nzx+9QcVC5QA81l5C38ZlTf7Hd9hyeXoQxZ8CxM5Ujw=; b=TPV8gDuFAbPbCq
	yy9AzSEOd2jQpw/Xrw4MD7zxgVvHE7Wat2ehfRZYbXUjX9IZryxfOAd4PW8VmK2oaGA+gg8jHcSAG
	682CaTjTyeA0HvktE446VI5Dp0ZegjtGO9JeDf4Per7cYLCZFkA4zhP6J54AefWOK7SuqfJCyETCD
	JZWhXtJ+onASIPJWbuT0RbRTL8rgq5Y9Qzn6aSS4TmdVyOaRLU+Tfc7jDBMHiRDLGROkOluIHNyfw
	qjmNOvSfoHVJ4NOhgSe+pp51jmi8kukEHlhaJGxdxYI5vmpkuOIF+VahMROGQHGVlFcygjkOEwCio
	PL2Bx/lFs7Or9Su8qcyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0hkC-0000000BwkX-0UnP;
	Fri, 04 Apr 2025 14:10:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0hfY-0000000BvxE-1IIp;
	Fri, 04 Apr 2025 14:05:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4526045076;
	Fri,  4 Apr 2025 14:05:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F935C4CEF5;
	Fri,  4 Apr 2025 14:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743775515;
	bh=sXc59e9oCS1JyARzmEkCFC/sWd+6b3k5Zd9xARKgKhU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=nCGf3I9tEmCSvB0E76/BUXH6Nk1Q786Smv1KYQf7QmCCD9o9Vf7Jhiuw+t0LRBV69
	 fCQDUgY4uJnXj9Qtye3sGi5fSmLjQJjXNRK/EEEdrFO4FIOnMma7eAkGuyZRmfOSfg
	 hldrIX+bb9WXeeI5iiR1rh1rVUuQqiXwgbhatKkxVl4shFjEMD6B/1hgd5VDxXk3s1
	 2GLoeerZIcXyrkvsszXm+iKisJa7hv/VYq64834LR35wmHqQST9N7TujpLPgk8EdVT
	 UcAJ9djGAUQ/qu7XPoq1vjZ58Lh+q8niDbtBdREOB9J7EnKo65uRZQ9qCRO90Gcjnk
	 R08WFLmx941ew==
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e6ff035e9aso4063983a12.0;
        Fri, 04 Apr 2025 07:05:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWJwCWvquNOqZx1+x6N7nRI3HOMGYjQMrfik0HNKkz7C4tfNhygELV+fo3QswR/eX41FLMq4LcT69cm9JO9l10=@lists.infradead.org, AJvYcCWKtnBlG3UOqe3oTLWHKHNygCUfVe5PlQNT7e1/gGXdRBkWO0j5qYLaPNGxBDNfCV5FjNOonxKhJHja/edwH10=@lists.infradead.org, AJvYcCX+tvt/jip5fJ0Q9xo48xvCaDI9ik9l8j8OUqW3aIZHf0Y5ImrMkjTsgcfS+vUK0YRdq6+J/D8qaXrrBfQo@lists.infradead.org, AJvYcCXdm0eYgirIqOUJUX4SNYsNrVm337ztQHpKfbsRBF3XpAw2hR7PzezYTL1zHILoT3cwIB7ypWFTN5IEEgf2WRSTLA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzVmPPgxbG4BvIAS5Uu5alYyFMJSkIw4qfOPY8EIH4CEOamlKVM
	dRL8e3EcI/zdGrbQuiBRc/jt2rB7abvI30PqIsWnghvo9+Ymo3CW+KG6LVi+RmYvonPA1PEzenH
	BFdna0+fe8z1ZYU4bf5p3XERFeQ==
X-Google-Smtp-Source: AGHT+IGvjzmo+S0oZ7wclO731FKO/yFH3v6rfa52+MwQrSf/9tdEEQ9A/kWSXMLtJKL4wmLWRjaXPrcr+vGPnUPbJIE=
X-Received: by 2002:a05:6402:5112:b0:5e7:8be5:d189 with SMTP id
 4fb4d7f45d1cf-5f0b3b62317mr2699905a12.4.1743775513430; Fri, 04 Apr 2025
 07:05:13 -0700 (PDT)
MIME-Version: 1.0
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-9-076be7171a85@kernel.org> <CAPDyKFoEEp8AZ7aJ8-wwp8=n+T4gbij15oYaCNhF1Bd-E1nMbg@mail.gmail.com>
In-Reply-To: <CAPDyKFoEEp8AZ7aJ8-wwp8=n+T4gbij15oYaCNhF1Bd-E1nMbg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 4 Apr 2025 09:05:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLB7SpVNTVruAb98YEPC5sRpssjsSP=NkqdON6qP+74fw@mail.gmail.com>
X-Gm-Features: ATxdqUGVc4_Mt0PqKKmf21CRVRmw-a_zuqLCxbME19ZuBODzSy1GgUUs6hNAKo0
Message-ID: <CAL_JsqLB7SpVNTVruAb98YEPC5sRpssjsSP=NkqdON6qP+74fw@mail.gmail.com>
Subject: Re: [PATCH 09/19] arm: dts: qcom: sdx55/sdx65: Fix CPU power-domain-names
To: Ulf Hansson <ulf.hansson@linaro.org>
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_070516_385507_4DFD7504 
X-CRM114-Status: GOOD (  22.01  )
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

T24gRnJpLCBBcHIgNCwgMjAyNSBhdCA1OjMx4oCvQU0gVWxmIEhhbnNzb24gPHVsZi5oYW5zc29u
QGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCA0IEFwciAyMDI1IGF0IDA1OjAyLCBSb2Ig
SGVycmluZyAoQXJtKSA8cm9iaEBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiAicnBtaHBkIiBp
cyBub3QgZG9jdW1lbnRlZCBub3IgdXNlZCBhbnl3aGVyZS4gQXMgdGhlIGVuYWJsZS1tZXRob2Qg
aXMKPiA+ICJwc2NpIiB1c2UgInBzY2kiIGZvciB0aGUgcG93ZXItZG9tYWluIG5hbWUuCj4gPgo+
ID4gU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KPiA+
IC0tLQo+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL3Fjb20vcWNvbS1zZHg1NS5kdHNpIHwgMiArLQo+
ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL3Fjb20vcWNvbS1zZHg2NS5kdHNpIHwgMiArLQo+ID4gIDIg
ZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9xY29tL3Fjb20tc2R4NTUuZHRzaSBiL2FyY2gv
YXJtL2Jvb3QvZHRzL3Fjb20vcWNvbS1zZHg1NS5kdHNpCj4gPiBpbmRleCAzOTUzMGViNTgwZWEu
LjY0ZDk4NThiNDI0OCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3Fjb20vcWNv
bS1zZHg1NS5kdHNpCj4gPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9xY29tL3Fjb20tc2R4NTUu
ZHRzaQo+ID4gQEAgLTU3LDcgKzU3LDcgQEAgY3B1MDogY3B1QDAgewo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgIGNsb2NrcyA9IDwmYXBjcz47Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBwb3dl
ci1kb21haW5zID0gPCZycG1ocGQgU0RYNTVfQ1g+Owo+ID4gLSAgICAgICAgICAgICAgICAgICAg
ICAgcG93ZXItZG9tYWluLW5hbWVzID0gInJwbWhwZCI7Cj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICBwb3dlci1kb21haW4tbmFtZXMgPSAicHNjaSI7Cj4KPiBBcyBJIHVuZGVyc3RhbmQgaXQs
IHRoaXMgaXNuJ3QgZm9yIGNwdS1wb3dlci1tZ210IGJ1dCBmb3IKPiBjcHUtcGVyZm9ybWFuY2Ut
c2NhbGluZy4KPgo+IEkgaGF2ZSBiZWVuIHRoaW5raW5nIG9mIGFkZGluZyBhIGNvbW1vbiBwb3dl
ci1kb21haW4tbmFtZSBmb3IgdGhpcywKPiBidXQgbmV2ZXIgcmVhY2hlZCB0byBkbyBpdC4gSSB0
aGluayB0aGUgbGFzdCBvbmUgd2UgYWRkZWQgd2FzIHRoZQo+IEFpcm9oYSBTb0MgWzFdIHdoaWNo
IHVzZXMgInBlcmYiLCB3aGljaCBzZWVtcyB0byBiZSB0aGUgbW9zdCBjb21tb24KPiBvbmUuIFN0
aWxsIEkgZG9uJ3Qgc2VlIHRoYXQgYmVpbmcgZG9jdW1lbnRlZC4KCkl0J3MgYWxsIGEgbWVzcyBh
bmQgYWJ1c2Ugb2YgdGhlIHBvd2VyLWRvbWFpbnMgYmluZGluZy4uLgoKInBlcmYiIGlzIGRvY3Vt
ZW50ZWQuIEkgY2FuIGFkZCAicnBtaHBkIiBJIHN1cHBvc2UsIGJ1dCBJIGRvbid0IHNlZQphbnl0
aGluZyB1c2luZyB0aGUgbmFtZS4gT3IgSSBjYW4gcmVtb3ZlIGl0LgoKUm9iCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
