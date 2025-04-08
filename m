Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73DF6C369A5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 13:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBIyUZuYz9lW2y/ok/edqBf1cSTHiqTYXMdX1RGPEyY=; b=NjooktsIxSCo/T
	7ozI+h0fozy+JHPhOtxv6cOWBzsnNOss4nlXIntgqx0C9yGQdRbZmgF0HZIlBNWfxGSrBhh+RU00t
	ft1XsW8yIBdmPGrydSg+AQiUQnvb9CigSG7dX1cEfHh/0kBqAx4gCI/sjS3w9Uk63+AQs0PbjLQC4
	Ov1TDvt/TulGR9JOvbJPJmL4g+vnMqKo3+F0gJ8XCdWwODNcZd4D8aCdK7Srz6Wcnsi/vnGCYdIfF
	Y4LDMPBYNBU/ByjNBkJ5FBVsnEbqhaS0nMj5vmjHu0sDq5z1yhtd+M1cdemTXq33cZhL4l62ohJTs
	3V90e4DB15gyfAGisRnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u28nU-000000048tl-2d8v;
	Tue, 08 Apr 2025 13:15:24 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u27tg-00000003xmI-49yz
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Apr 2025 12:17:46 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-6feab7c5f96so52625307b3.3
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Apr 2025 05:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744114663; x=1744719463; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XgQfANebtdqnI5c6U+NPo92x9wLAySpUrYEpuKhqRpM=;
        b=aL3WhV6qI4pDtIFufwSuHLMYAwqdBBammaQbOZXuC1bVcmSE7b4+7GK7Saa3IcmRrl
         BCTnPcpbOOo6i18MeJci06xc5JzOxGq/8AVBGv6zOqZBmwC4De6Tp0N5wNgpnTA5uqRt
         eygzOT/YVX0wJy+xR9bH+YEUr2jSbn82uqSR/fZ7ZO5+bWA1YO9vyly2gB4n9hneTMNf
         Ynczyrs97ixYvFlsxuXj0XbTTCLjtqzflJgcAcj6D+rdSfHSsUKyNKKcxNFDLFU/0UZS
         5PWCwQZALVZgP8Kp9Kh/liHa8rNj2QndhP0JeESv6m60hCE173Gzl53eYHnvK7zvM8DB
         3k1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744114663; x=1744719463;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XgQfANebtdqnI5c6U+NPo92x9wLAySpUrYEpuKhqRpM=;
        b=RO+MW1ArpPug+JPPviSQSwKX4bVeXLsznUShqzqkA8Xv9MVAHFy0/vS9KELsUAXt0X
         HySKxLfSrdP1C5XxTocRVz8FY3LKZezoMry4e0fbYoQh5R9CJnsXU2nmAselpzqwSQz9
         QMIZv1wUz7tElGY+OoqyAdgRinwEech0eiDO+cJBWAdeu/SlBdc/kxTUQg9iWO20rUWr
         TWIiQsXslNP0u5oIYLDyzIqiaQQU7oLHO3GLedIo04f3jKccrp4MVi/Ne8UdKamzRo/z
         PVJsWQSx82uDA/bAEGaQVtI28Tasv8I+dnY490lzusAb2LuoDkE/ynWNfKs3yJw2j0Wr
         OsCA==
X-Forwarded-Encrypted: i=1; AJvYcCVX+nKQ8L19aJHQtsAvXqTW98fsfXy7/pUUV8hyk0S2Ru7DIouJ9i/RPKmR+DdU+e4w2EzHoDiVfiU3aRnkfw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzWFAN/JrHt0vE4AISM74OmaxInk7BE0LqCxSYbFYuq+KmcJCyO
	njl/I8OKjdszpVJbriNKlt1QH9kRyyvJU0Z7XNOSfr4Rg/pbDHf3OxHy0MXKDcw+G3PjGuvLg2e
	CwrihNRKJSNrMrvK20TkCTj/ymIDUoft7LUa0CQ==
X-Gm-Gg: ASbGncuBV5vaF96IeRpbrDj90s8MSHhEGlvJkuryuCeMwmvBUEb/O1PIdFZ6Lb12nSs
	xobwJPwpMxtMzy6QmsE+NUJSEkb9O1s7IFGXr+gpv5uG3gj3ODj8DDTKz7YzzGc6G7/gFjXiF0e
	1a25kUzCeqY+CGJAKbnk4XQo/DtWc=
X-Google-Smtp-Source: AGHT+IE9ys53OzSUdrwDVzPrCpJ3j0rVw9UiRXdXpPHOiJneCGTZtJTMxzg8Xq2rdR9GYtx0ZTNP05CFJHjGpzcayc8=
X-Received: by 2002:a05:690c:67c4:b0:6ff:28b2:50e1 with SMTP id
 00721157ae682-703e14ffd3dmr297170407b3.2.1744114663553; Tue, 08 Apr 2025
 05:17:43 -0700 (PDT)
MIME-Version: 1.0
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-18-076be7171a85@kernel.org> <CAPDyKFrFRrPVJ_t0JrAE1VTbS02hwr=L-EHtqb7CQiWzB1MnQg@mail.gmail.com>
 <CAL_JsqKygxhcQ=PZW84sfiW7BVXKF839vfNyxS9GwAXuqmN=8g@mail.gmail.com>
 <CAPDyKFoHQdHED0hHUR7VKin0XG6SVnYXuvPjB=Xe+1o2hpiPJA@mail.gmail.com> <CAL_Jsq+Oa7MvVO7Y-RG+qrY2e86B_q0XGq1LWoy5Mq+G72ZHzQ@mail.gmail.com>
In-Reply-To: <CAL_Jsq+Oa7MvVO7Y-RG+qrY2e86B_q0XGq1LWoy5Mq+G72ZHzQ@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 8 Apr 2025 14:17:07 +0200
X-Gm-Features: ATxdqUE7frfhfuxoKUlf3DinAq4W783EiniruawsYcgTKF9-ms73Ag05S_dZWTY
Message-ID: <CAPDyKFoKdj-Y4-dCwYRG7TLdS1HcSH=i9EN-b9Cpyo50kMmC5Q@mail.gmail.com>
Subject: Re: [PATCH 18/19] dt-bindings: arm/cpus: Add power-domains constraints
To: Rob Herring <robh@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
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
X-CRM114-CacheID: sfid-20250408_051745_042051_8B42FBAA 
X-CRM114-Status: GOOD (  25.32  )
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

KyBTdGVwaGFuIEdlcmhvbGQKCk9uIE1vbiwgNyBBcHIgMjAyNSBhdCAxODo1MCwgUm9iIEhlcnJp
bmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24sIEFwciA3LCAyMDI1IGF0IDEx
OjIz4oCvQU0gVWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4K
PiA+IE9uIEZyaSwgNCBBcHIgMjAyNSBhdCAxNTowOSwgUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIEZyaSwgQXByIDQsIDIwMjUgYXQgNTozN+KAr0FN
IFVsZiBIYW5zc29uIDx1bGYuaGFuc3NvbkBsaW5hcm8ub3JnPiB3cm90ZToKPiA+ID4gPgo+ID4g
PiA+IE9uIEZyaSwgNCBBcHIgMjAyNSBhdCAwNTowNiwgUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhA
a2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhlICJwb3dlci1kb21haW5z
IiBhbmQgInBvd2VyLWRvbWFpbnMtbmFtZXMiIHByb3BlcnRpZXMgYXJlIG1pc3NpbmcgYW55Cj4g
PiA+ID4gPiBjb25zdHJhaW50cy4gQWRkIHRoZSBjb25zdHJhaW50cyBhbmQgZHJvcCB0aGUgZ2Vu
ZXJpYyBkZXNjcmlwdGlvbnMuCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogUm9i
IEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4g
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vY3B1cy55YW1sIHwgOCArKy0t
LS0tLQo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDYgZGVsZXRp
b25zKC0pCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vY3B1cy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9jcHVzLnlhbWwKPiA+ID4gPiA+IGluZGV4IDZmNzRlYmZkMzhkZi4uNWJk
NTgyMmRiOGFmIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9jcHVzLnlhbWwKPiA+ID4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vY3B1cy55YW1sCj4gPiA+ID4gPiBAQCAtMzEzLDE5ICszMTMs
MTUgQEAgcHJvcGVydGllczoKPiA+ID4gPiA+ICAgICAgbWF4SXRlbXM6IDEKPiA+ID4gPiA+Cj4g
PiA+ID4gPiAgICBwb3dlci1kb21haW5zOgo+ID4gPiA+ID4gLSAgICBkZXNjcmlwdGlvbjoKPiA+
ID4gPiA+IC0gICAgICBMaXN0IG9mIHBoYW5kbGVzIGFuZCBQTSBkb21haW4gc3BlY2lmaWVycywg
YXMgZGVmaW5lZCBieSBiaW5kaW5ncyBvZiB0aGUKPiA+ID4gPiA+IC0gICAgICBQTSBkb21haW4g
cHJvdmlkZXIgKHNlZSBhbHNvIC4uL3Bvd2VyX2RvbWFpbi50eHQpLgo+ID4gPiA+ID4gKyAgICBt
YXhJdGVtczogMQo+ID4gPiA+Cj4gPiA+ID4gVGhlcmUgYXJlIG1vcmUgdGhhbiBvbmUgaW4gc29t
ZSBjYXNlcy4gVGhlIG1vc3QgaXMgcHJvYmFibHkgdGhyZWUsIEkgdGhpbmsuCj4gPiA+Cj4gPiA+
IFVubGVzcyBJIG1pc3NlZCBpdCwgdGVzdGluZyBzYXlzIG90aGVyd2lzZS4gV2hhdCB3b3VsZCB0
aGUgbmFtZXMgYmUgaWYKPiA+ID4gbW9yZSB0aGFuIDEgZW50cnk/Cj4gPgo+ID4gInBzY2kiLCAi
cGVyZiIsICJjcHIiLCBldGMKPiA+Cj4gPiBUaGUgInBzY2kiIGlzIGFsd2F5cyBmb3IgQ1BVIHBv
d2VyIG1hbmFnZW1lbnQsIHRoZSBvdGhlciBpcyBmb3IgQ1BVCj4gPiBwZXJmb3JtYW5jZSBzY2Fs
aW5nICh3aGljaCBtYXkgYmUgbW9yZSB0aGFuIG9uZSBwb3dlci1kb21haW4gaW4gc29tZQo+ID4g
Y2FzZXMpLgo+ID4KPiA+IEkgd291bGQgc3VnZ2VzdCBjaGFuZ2luZyB0aGlzIHRvICJtYXhJdGVt
czogMyIuIFRoYXQgc2hvdWxkIGJlCj4gPiBzdWZmaWNpZW50IEkgdGhpbmsuCj4KPiBBZ2Fpbiwg
bXkgdGVzdGluZyBzYXlzIDEgaXMgZW5vdWdoLiBTbyB3aGVyZSBpcyBhIC5kdHMgZmlsZSB3aXRo
IDMgb3IgMj8KClJpZ2h0ISBJIGFzc3VtZSB0aG9zZSB3aXRoIDMgb3IgMiBqdXN0IGhhdmVuJ3Qg
bWFkZSBpdCB1cHN0cmVhbSB5ZXQsCmJ1dCBzdXJlIHRoZXkgYXJlIGNhc2VzLiBJZiB5b3UgcHJl
ZmVyIHRvIHVwZGF0ZSB0aGUgYmluZGluZyBsYXRlciwKdGhhdCdzIGZpbmUgYnkgbWUsIGJ1dCBJ
IGp1c3Qgd2FudGVkIHRvIGF2b2lkIHVubmVjZXNzYXJ5IGNodXJucyBmb3IKeW91LgoKRm9yIGV4
YW1wbGUsIG1zbTg5MTYgc2VlbXMgdG8gYmUgb25lIGNhc2UgdGhhdCBhbHJlYWR5IHVzZXMgInBz
Y2kiLApidXQgcmVxdWlyZXMgYW4gYWRkaXRpb25hbCB0d28gcG93ZXItZG9tYWlucyBmb3IgcGVy
Zm9ybWFuY2Utc2NhbGluZy4KQXQgbGVhc3QgYWNjb3JkaW5nIHRvIGVhcmxpZXIgZGlzY3Vzc2lv
bnMgWzFdIHdpdGggU3RlcGhhbiBHZXJob2xkLgoKTW9yZW92ZXIsIGl0J3MgcGVyZmVjdGx5IGZp
bmUgdG8gYWxzbyBkZXNjcmliZSBDUFUncyBpZGxlLXN0YXRlcyBieQp1c2luZyB0aGUgcG93ZXIt
ZG9tYWlucy9kb21haW4taWRsZS1zdGF0ZXMgRFQgYmluZGluZ3MsIGFjY29yZGluZyB0bwp0aGUg
YmluZGluZ3MgZm9yIFBTQ0kgWzJdIChubyBtYXR0ZXIgb2YgUFNDSSBPU0kvUEMgbW9kZSkuIElu
IG90aGVyCndvcmRzLCBmb3IgYWxsIHRob3NlIHRoYXQgb25seSBoYXZlIGEgInBlcmYiIG9yICJj
cHIiIHBvd2VyLWRvbWFpbgp0b2RheSAob3Igd2hhdGV2ZXIgbmFtZSBpcyB1c2VkIGZvciB0aGUg
cGVyZm9ybWFuY2Utc2NhbGluZyBkb21haW4pLAp0aG9zZSBjb3VsZCBlYXNpbHkgYWRkIGEgInBz
Y2kiIHBvd2VyLWRvbWFpbiB0b28sIGRlcGVuZGluZyBvbiBob3cKdGhleSBjaG9vc2UgdG8gZGVz
Y3JpYmUgdGhpbmdzIGluIERULgoKS2luZCByZWdhcmRzClVmZmUKClsxXQpodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvWlJjQzJJUlJ2NmR0S1k2NUBnZXJob2xkLm5ldC8KWzJdCkRvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcHNjaS55YW1sCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
