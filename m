Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23DECC3ABBC
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 18:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qW3hz70GQD4OZ+8ClJAyACQZIL7U6QYh6bwJJ0QHw3s=; b=tIaqd0c8jAGV95
	08+HD5/+RrvTTu+DnJqcX99mgY5V5w9/A/t04Q5DVWh16uroQwdcO1UrsRudSsQmvY5cqqUsTUg3o
	hG+f1gpJbBZccFlPoYQU6PeF4CPufrydtRbB/zv+dayR9j0FbXWSvGAgu76/0B1EVES0dCIhEFeJW
	W1O7kBsb1kFzJzhiLjXZOHbTEAUHibieqxNGzx1H9aYlbNAa70ZT7aM4VRghocHOwnnDPY3P2yjP1
	9kSpzYT9bcZp75u0mrmIwOGLXRjOLqyJ69CNiQvcRSXTTgF/MhIk8F/Vlnu5Ig70HjwwOVFHqQq97
	ED9wufxbvRE8yzSfRU4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC0ys-00000008LgY-46Pw;
	Mon, 05 May 2025 18:55:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC0tx-00000008KwO-00sf;
	Mon, 05 May 2025 18:50:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 33B725C5926;
	Mon,  5 May 2025 18:48:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF2D9C4CEF4;
	Mon,  5 May 2025 18:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746471050;
	bh=FA4ZXprxacKTvK0sy51tKZPsTbcahyHK/OPJJTKQBv4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fQwiSl8yPfxn8/ca/CPr/ykouT9Z/FOv4FUQbqLBYldb5O2OF2M2++6fe+tcdjRQ1
	 2/I6oGeGI+AfdRqvXqhkYhv3uvcDNLsrHhv8tes2oPKkwz8TasWJcrfRylI8ljImnj
	 UwkceDOA1cS9FqWAEKW6TfbjKrj/xWCgbUMl+bvxZNMkf/wLW2A+dRgN4Wp1TA9xY2
	 2rRX47nOq80/SDBm7EWokT9Z2XCEM9ExSZHVwgrAjuGF5TJWniQry1k7abfbrj5+XP
	 Y833/5bCGl52uWSVZ/K4IHj1IaAR7KJs/e9JvZ4i4c4MfrDCb3wwtJ/ywUg6keobTJ
	 dRsVMYhRRuKag==
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac3fcf5ab0dso791205766b.3;
        Mon, 05 May 2025 11:50:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUC+HYuSgF3IfyJd7hCQDmLtIp23vM4kP37Veg6OTWaKa/zFyQpxsaQ44C/oDdKYckgatT5bXBbK8+DPaBV@lists.infradead.org, AJvYcCUEH6pBxJxVouxQE7fPO+3B3syi8OHi9wu22XGvIwOk5MCXZz9CC4RYBP0YcX5JK1S1iVHJG4IhBctYiBxYHCs=@lists.infradead.org, AJvYcCUejEjzht7J34dhM+4EF8WA52eOmS47toNCuXqw9WdEZX59YCp7rXW2RwWLcQqr2yr/PPIMv5MNHMB+ABpB/iH5Ew==@lists.infradead.org, AJvYcCVQmSfIiIRVRc5bd+8jAaB3ksn52XP+lBRR6JNqtxnNQHKGj1SgRoxgbU9vGWjLoli8nO/EgsQjBIuNA/mgmOU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzVbUZzmain+AeL1tQm7/zPjwGhfEdn0t9L6Xx0rNP2T+C6Tzwl
	u2VxbjSjjgNamh6flknXI2g482CGtR/RMNaNT6g163ohXN4ziS8czLAZRKqUJ6I+mcPy4MA9JCd
	VKpgzh1VSmHwe2J+ZgatmcvBs9w==
X-Google-Smtp-Source: AGHT+IG+4wrvsmSUA4NXOeBgCVpJAWp31zQ7/foCm/dgAap8A9CGCQ6aZw7m2OsHPJAn0nsZq/ZG84HLBSB1XnJ9F4M=
X-Received: by 2002:a17:907:c292:b0:ac3:446d:142 with SMTP id
 a640c23a62f3a-ad1d450c0e6mr10543166b.2.1746471049255; Mon, 05 May 2025
 11:50:49 -0700 (PDT)
MIME-Version: 1.0
References: <20250410-dt-cpu-schema-v2-0-63d7dc9ddd0a@kernel.org>
 <20250410-dt-cpu-schema-v2-11-63d7dc9ddd0a@kernel.org> <CAL_JsqLGHQ4YBqGGEdyirtgaBnJKRxOxOKTaQLv2jm-g8TNndA@mail.gmail.com>
In-Reply-To: <CAL_JsqLGHQ4YBqGGEdyirtgaBnJKRxOxOKTaQLv2jm-g8TNndA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 5 May 2025 13:50:37 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKr8784O_-p6=EUqTxkVe1JkS8O+KWEfpVoWvy5NYC8DA@mail.gmail.com>
X-Gm-Features: ATxdqUFAJ69lA35S_IWYAUkz4lOUbb3QiPXOkddsmyihxhIW1B6e-CR89pk_81I
Message-ID: <CAL_JsqKr8784O_-p6=EUqTxkVe1JkS8O+KWEfpVoWvy5NYC8DA@mail.gmail.com>
Subject: Re: [PATCH v2 11/17] arm64: dts: amlogic: Drop redundant CPU "clock-latency"
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Conor Dooley <conor@kernel.org>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Steen Hegelund <Steen.Hegelund@microchip.com>, Daniel Machon <daniel.machon@microchip.com>, 
	UNGLinuxDriver@microchip.com, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Andy Gross <agross@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Viresh Kumar <vireshk@kernel.org>, 
	Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, imx@lists.linux.dev, 
	linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org, linux-mips@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_115053_129745_0EC4475E 
X-CRM114-Status: GOOD (  12.33  )
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

T24gTW9uLCBNYXkgNSwgMjAyNSBhdCAxOjQz4oCvUE0gUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIEFwciAxMCwgMjAyNSBhdCAxMDo1MOKAr0FNIFJvYiBI
ZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IFRoZSAiY2xvY2st
bGF0ZW5jeSIgcHJvcGVydHkgaXMgcGFydCBvZiB0aGUgZGVwcmVjYXRlZCBvcHAtdjEgYmluZGlu
Zwo+ID4gYW5kIGlzIHJlZHVuZGFudCBpZiB0aGUgb3BwLXYyIHRhYmxlIGhhcyBlcXVhbCBvciBs
YXJnZXIgdmFsdWVzIGluIGFueQo+ID4gImNsb2NrLWxhdGVuY3ktbnMiLiBBZGQgYW55IG1pc3Np
bmcgImNsb2NrLWxhdGVuY3ktbnMiIHByb3BlcnRpZXMgYW5kCj4gPiByZW1vdmUgImNsb2NrLWxh
dGVuY3kiLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtl
cm5lbC5vcmc+Cj4gPiBSZXZpZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25n
QGxpbmFyby5vcmc+Cj4gPiAtLS0KPgo+IFBpbmchCgpOTSwgSSBzZWUgaXQgbm93IGluIGxpbnV4
LW5leHQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
