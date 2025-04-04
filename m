Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7200C36010
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 14:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7y3kZLIse+hhICpXgY0tOh8Lcdw1vwOPZe2evbZEFDQ=; b=B8OuXRO5yNynFx
	Ln4dLWoosos+RKFf61SZz6bJIhmhDlo9XwY4Il76VelKaJ7bXH7cEWaflv/+axinVIF5QcRIFaUG4
	pgmVTG0fLwQ9G+Aj0BGYyluYy7RXds9gmu9LidMYIZUW/v7yuLmMzvcdNw7IglswVQPkZXfpCAtDv
	/Pc9BKEURbcH1ou3e82dAQbUsguSFmLnYmmsqVVFYZLNvA5StbLPWen2QxnsA4EosZYKuhUcRE08f
	41Tc+juwgVsBanKwOzDI5xkBVQ2UIak0EvL1Lw4fwFRAXnvydV6HYFIkj/Bc+LvTGA2/f3mhssm1I
	Do7HkTp/MiGqurTQxUZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0hkh-0000000BwtQ-0eKC;
	Fri, 04 Apr 2025 14:10:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0hkf-0000000BwsV-0wIa;
	Fri, 04 Apr 2025 14:10:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EF34261136;
	Fri,  4 Apr 2025 14:10:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC096C4CEEC;
	Fri,  4 Apr 2025 14:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743775831;
	bh=l2lzsNRrga+hAwlZPw2hZyVI7hOngQ48zjWgc72CGr4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=MhXqLqpa43mJjzUE+SiXJTbXwmVJ/HY6gBTctJU9FfRezIv1qLjartTS85rOgNg9a
	 ZhN4HzOepVa85NDLlDWJODei3AOF6LINQBifXsj/9vcNkRNTNwOPyODWr//oY7SEXN
	 pqbYfSz27XnI8DD+h0GaWdbcrDerOqpp+11Vuj4JYUOWKhgGITX67L3hbAOFtsPvzb
	 xSZsVs/S+Pr54A87UysNCn/RkaXJaFv8XaW0L8BHyTXXNGj+g0awaZqTwq7UI8BMyg
	 xtscO/vdTlk2M4zdjpWE5iml8FERUp0D7y1vv/91pL6IP0dkPhJrxNVtmC/K/73oRz
	 naujA3WQObjpA==
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e8be1c6ff8so3930499a12.1;
        Fri, 04 Apr 2025 07:10:31 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUGDRh2xgauy5zgvxdxdXf3nkEq3lOYsxYlbgM0gKF98ef+nTYbpcI0IOXKcrFGz7ijVva1E5+n5lOT2PZJ@lists.infradead.org, AJvYcCVdjP2pieNiJ4kqYOcKWEj/vhTF16bxKWk1IIDZ5JMI4zrr81IZivcjRaWQyjlMTwXly6r4Dex6fKmbfDZ2r7w=@lists.infradead.org, AJvYcCW3uSgswGc+lCOC/MmALyuBQejAHDQpNZh/H2PpULYhcxipYfhq5xjvUiyDOxuMYMbSsCJZlIMYvwIDLwp1jWLq7A==@lists.infradead.org, AJvYcCW91qWSdDN8o/+GbxrnBSzS2EsHliUrEe8Eb1/7fNdum21cU212Tom2kRhCnCvGamEIx6ktDNLD/hMv5gFqFBE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzuwECURqnE/iqLHH6tQzXtTy6tb28SgrjePgCrqSuyB9ZHTFtB
	J7zHAHeIKkNoTgmUxC0ByJzZAoSQ8aefupuRHi8e7POlAFhlrHiPO3cTlnSoH7t/Ud0FeWk4id+
	nAxsqEaUU/67txM/JvM6xBo70AQ==
X-Google-Smtp-Source: AGHT+IGYXjl+q1G3Ghk1zMOjaKXndZfqYp9hiiK7OTWs/zAZNM/+0QVdqEQQ+zuW4YRtKHDm+WaT1WT3knVA25eifPc=
X-Received: by 2002:a05:6402:3481:b0:5ed:921a:ded6 with SMTP id
 4fb4d7f45d1cf-5f0b657862emr2694084a12.18.1743775830233; Fri, 04 Apr 2025
 07:10:30 -0700 (PDT)
MIME-Version: 1.0
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-6-076be7171a85@kernel.org> <Z-_K2XDEcbtcCMVM@linaro.org>
 <CAL_JsqJT-0gwvJnMb63izy6WwJpBVsswkauL8OMLCrF08q9HYQ@mail.gmail.com>
In-Reply-To: <CAL_JsqJT-0gwvJnMb63izy6WwJpBVsswkauL8OMLCrF08q9HYQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 4 Apr 2025 09:10:18 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJDkoj4d-aKvZ92kZ1mikqjJV4J4w=-3eNk3z6q6g0ssw@mail.gmail.com>
X-Gm-Features: ATxdqUGgk50-VgqfiN2r-WHP1-0cyp1Dem4hGHbf6672N4-b5gggSNdLRbwnjDg
Message-ID: <CAL_JsqJDkoj4d-aKvZ92kZ1mikqjJV4J4w=-3eNk3z6q6g0ssw@mail.gmail.com>
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

T24gRnJpLCBBcHIgNCwgMjAyNSBhdCA4OjE44oCvQU0gUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmksIEFwciA0LCAyMDI1IGF0IDc6MDTigK9BTSBTdGVwaGFu
IEdlcmhvbGQKPiA8c3RlcGhhbi5nZXJob2xkQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4KPiA+IE9u
IFRodSwgQXByIDAzLCAyMDI1IGF0IDA5OjU5OjI3UE0gLTA1MDAsIFJvYiBIZXJyaW5nIChBcm0p
IHdyb3RlOgo+ID4gPiBUaGUgInFjb20sYWNjIiBhbmQgInFjb20sc2F3IiBwcm9wZXJ0aWVzIGFy
ZW4ndCB2YWxpZCB3aXRoICJzcGluLXRhYmxlIgo+ID4gPiBlbmFibGUtbWV0aG9kIG5vciBhcmUg
dGhleSB1c2VkIG9uIDY0LWJpdCBrZXJuZWxzLCBzbyB0aGV5IGNhbiBiZQo+ID4gPiBkcm9wcGVk
Lgo+ID4gPgo+ID4KPiA+IFRoZSBib290bG9hZGVyIHdlIGN1cnJlbnRseSB1c2Ugb24gdGhlc2Ug
ZGV2aWNlcyByZWFkcyB0aGVzZSBwcm9wZXJ0aWVzCj4gPiB0byBzZXQgdXAgdGhlIHNwaW4tdGFi
bGUsIHNvIHJlbW92aW5nIHRoZXNlIHdpbGwgYnJlYWsgYm9vdGluZyBzZWNvbmRhcnkKPiA+IENQ
VSBjb3Jlcy4KPiA+Cj4gPiBUaGUgbW90aXZhdGlvbiBmb3IgaW1wbGVtZW50aW5nIGl0IHRoYXQg
d2F5IHdhcyB0aGF0IDMyLWJpdCB2cyA2NC1iaXQKPiA+IGtlcm5lbCBzaG91bGRuJ3QgYmUgcmVs
ZXZhbnQgZm9yIHRoZSBkZXNjcmliaW5nIHRoZSBoYXJkd2FyZSBibG9ja3MgaW4KPiA+IHRoZSBk
ZXZpY2UgdHJlZS4gVGhlIGNvZGUgaW4gdGhlIGJvb3Rsb2FkZXIgaXMgZ2VuZXJpYyBhbmQgaGFu
ZGxlcwo+ID4gZGlmZmVyZW50IFNvQ3MgKGUuZy4gbXNtODkxNiB3aXRoIDQgY29yZXMgYW5kIG1z
bTg5Mzkgd2l0aCA4IGNvcmVzLCB0aGUKPiA+IGVuYWJsZSBzZXF1ZW5jZXMgYXJlIGlkZW50aWNh
bCkuCj4gPgo+ID4gQ2FuIHdlIGtlZXAgdGhpcyBpbiBzb21laG93PyBUbyBiZSBmYWlyLCBJJ20g
bm90IHN1cmUgd2hhdCBwcm9wZXJ0eSB3ZQo+ID4gY291bGQgbWF0Y2ggb24gdG8gY2hlY2sgaWYg
dGhlc2UgcHJvcGVydGllcyBhcmUgYWxsb3dlZCAuLi4KPgo+IFllcywgd2UgY2FuIGtlZXAgdGhl
bS4gV2UnbGwgaGF2ZSB0byBhbGxvdyB0aGVtIHdpdGggInNwaW4tdGFibGUiIGFuZAo+ICJwc2Np
IiBJIGd1ZXNzLgoKSSBjYW1lIHVwIHdpdGggc29tZXRoaW5nIGxpa2UgdGhpcyBpbnN0ZWFkOgoK
LSBpZjoKICAjIDIgUXVhbGNvbW0gcGxhdGZvcm1zIGJvb3Rsb2FkZXJzIG5lZWQgcWNvbSxhY2Mg
YW5kIHFjb20sc2F3IHlldCB1c2UKICAjICJzcGluLXRhYmxlIiBvciAicHNjaSIgZW5hYmxlLW1l
dGhvZHMuIERpc2FsbG93aW5nIHRoZSBwcm9wZXJ0aWVzIGZvcgogICMgYWxsIG90aGVyIENQVXMg
aXMgdGhlIGJlc3Qgd2UgY2FuIGRvIGFzIHRoZXJlJ3Mgbm90IGFueSB3YXkgdG8KICAjIGRpc3Rp
bmd1aXNoIHRoZXNlIFF1YWxjb21tIHBsYXRmb3Jtcy4KICAgIHByb3BlcnRpZXM6CiAgICAgIGNv
bXBhdGlibGU6CiAgICAgICAgbm90OgogICAgICAgICAgY29uc3Q6IGFybSxjb3J0ZXgtYTUzCiAg
dGhlbjoKICAgIHByb3BlcnRpZXM6CiAgICAgIHFjb20sYWNjOiBmYWxzZQogICAgICBxY29tLHNh
dzogZmFsc2UKCk5vdCBpZGVhbCBhcyB0aGVyZSBhcmUgbG90cyBvZiBBNTNzLCBidXQgYmV0dGVy
IHRoYW4gZW5hYmxpbmcgZm9yCmV2ZXJ5IDY0LWJpdCBwbGF0Zm9ybS4KCgpBbHNvLCBpcyBhZGRp
bmcgdGhlIGNwdS1yZWxlYXNlLWFkZHIgZmluZT8gSXQgY291bGQgdHJpcCB1cCBhCmJvb3Rsb2Fk
ZXIgdGVzdHMgaWYgdGhlIHByb3BlcnR5IGlzIGFscmVhZHkgcHJlc2VudCBhbmQgZG9lc24ndCB1
cGRhdGUKaXQgaW4gdGhhdCBjYXNlLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
