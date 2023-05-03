Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98023C77B75
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 01:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYRcrftbxH6pdpLXpWwwDZJSuUpkd48sMUA4KVeAaIQ=; b=JcPzYaiB94edKd
	V5W2m0IlD271PAD8h4MmLUMw0C/nlkj4cBeJ90dYj9rlP0o2l18u5NRQ5NAEhlhIrZE/HHOfxgE4y
	5ukp84EbAQWl9qZOYgmFoOXkaFSVkkSyMdwqNliJxm0hkqifAqXb918A9Ml5k+sYck4GBysqO8C2A
	2fAfuxxBGKyGvAxzVBP4vm5c9WW6ZhR/M12vf7uUrla8fxzT9bFU0MwuQjq/JfMa8VIUn60hkqTQg
	LM+zysf0zVAMWmnXZK5Jo4F+cWziu3JzYGLI5PWDudL1JaCU0S8HRJCwaZa//50UAR3hkscOK2XjJ
	GlCNLKpdbLntfo+Yq34w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu0v9-0030ru-1K;
	Wed, 03 May 2023 01:04:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu0v4-0030qe-1D;
	Wed, 03 May 2023 01:04:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8B5A1629D1;
	Wed,  3 May 2023 01:04:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 702F1C433A1;
	Wed,  3 May 2023 01:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683075872;
	bh=3tzUPFXqJgNCRsublfj+ZgGaTs7KzeK4/lauS5NgXbw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=QoGLyyHrVl2A+YTplbrnYiMEIz6wk+jP9SV8dz5UCtY76MWzNfxcDGsWDt7XzaFbR
	 Xr4LoafVLAa94EjThKoFMtXLMkvCzIlI51WqQfPmq+42ZRGmwhqCuG73rtNFS7wUkc
	 +fEXrSTR/j+xouT44ufNnuT7bR771W/YBDuqC0FtyyPhTIzbPY4lJHmmC4JrKp+LqL
	 VUXrPWi4q/OV1Ezdi6st//MbXuMfXSMqmAVFzsUiMTdstEd3wZmJZlVLjAXQcv6nMA
	 7k3X1222URsa6zFwyiuGaddxH/mAzA1qAvda1W1zjhNGD1pbVwdRUepxFlVrtRcox8
	 yQNSGRSC9H6BA==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2a8b3ecf59fso46418071fa.0;
        Tue, 02 May 2023 18:04:32 -0700 (PDT)
X-Gm-Message-State: AC+VfDwpg9RYy75X3hFdzBRUpJUcI4c4SOA8Aw7KgqRKIHqgh6rVAVFX
	qsKfQtN/X+8nKLiiyhT0wPe7HPC9v2mZv1X/pg==
X-Google-Smtp-Source: ACHHUZ4mSLqb1ExsMkOjNsdZYIFyOMFO5WWfDnvfwZvuM9fv3TyrxmQhN6hT67g4AYdNW/MVo7uZ6IBv6mL14dd4tuc=
X-Received: by 2002:a2e:8402:0:b0:2a8:d103:dc8 with SMTP id
 z2-20020a2e8402000000b002a8d1030dc8mr4705375ljg.2.1683075870337; Tue, 02 May
 2023 18:04:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com> <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
 <d4b52074-d11c-4c7a-ad74-b2fce64c6d30@gmail.com>
In-Reply-To: <d4b52074-d11c-4c7a-ad74-b2fce64c6d30@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 2 May 2023 20:04:17 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKRcMSijAdiP_BpyBGRuMhscZ12QFcLBAeZ+TcaQg7r4g@mail.gmail.com>
Message-ID: <CAL_JsqKRcMSijAdiP_BpyBGRuMhscZ12QFcLBAeZ+TcaQg7r4g@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert@linux-m68k.org>, Olof Johansson <olof@lixom.net>, 
	Christian Marangi <ansuelsmth@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-actions@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Linux-OMAP <linux-omap@vger.kernel.org>, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@axis.com, linux-aspeed@lists.ozlabs.org, 
	linux-rpi-kernel@lists.infradead.org, chrome-platform@lists.linux.dev, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com, 
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org, 
	linux-tegra@vger.kernel.org, "linux-oxnas@groups.io" <linux-oxnas@groups.io>, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_180434_494211_B1992D38 
X-CRM114-Status: GOOD (  30.99  )
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

T24gVHVlLCBNYXkgMiwgMjAyMyBhdCA2OjAy4oCvUE0gRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWlu
ZWxsaUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gNS8yLzIzIDEyOjQwLCBSb2IgSGVycmluZyB3
cm90ZToKPiA+IE9uIFR1ZSwgTWF5IDIsIDIwMjMgYXQgMzoxNeKAr0FNIEFybmQgQmVyZ21hbm4g
PGFybmRAYXJuZGIuZGU+IHdyb3RlOgo+ID4+Cj4gPj4gT24gVHVlLCBBcHIgMjUsIDIwMjMsIGF0
IDE3OjU3LCBSb2IgSGVycmluZyB3cm90ZToKPiA+Pj4gT24gVHVlLCBBcHIgMjUsIDIwMjMgYXQg
MjoyOOKAr0FNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+IHdyb3Rl
Ogo+ID4+Pgo+ID4+Pj4gRG9lcyB5b3VyIHNjcmlwdCBhbHNvIGNhdGVyIGZvciAuZHRzIGZpbGVz
IG5vdCBtYXRjaGluZyBhbnkgcGF0dGVybiwKPiA+Pj4+IGJ1dCBpbmNsdWRpbmcgYSAuZHRzaSBm
aWxlIHRoYXQgZG9lcyBtYXRjaCBhIHBhdHRlcm4/Cj4gPj4+Cj4gPj4+IEkgYXNzdW1lIEkgYnVp
bHQgZXZlcnl0aGluZyBhZnRlciBtb3ZpbmcsIGJ1dCBtYXliZSBub3QuLi4KPiA+Pj4KPiA+Pj4g
VGhhdCdzIGFsbCBqdXN0ICJkZXRhaWxzIi4gRmlyc3QsIHdlIG5lZWQgYWdyZWVtZW50IG9uIGEp
IG1vdmluZwo+ID4+PiB0aGluZ3MgdG8gc3ViZGlycyBhbmQgYikgZG9pbmcgaXQgMS1ieS0xIG9y
IGFsbCBhdCBvbmNlLiBTbyBmYXIgd2UndmUKPiA+Pj4gYmVlbiBzdHVjayBvbiBhKSBmb3IgYmVp
bmcgJ3RvbyBtdWNoIGNodXJuJy4KPiA+Pgo+ID4+IFNvcnJ5IGZvciBtaXNzaW5nIG1vc3Qgb2Yg
dGhlIGRpc2N1c3Npb24gbGFzdCB3ZWVrLiBUaGUgc2NyaXB0IHNvdW5kcwo+ID4+IGZpbmUgdG8g
bWUsIHRoZSBvbmx5IHJlYXNvbiBJIGRpZG4ndCB3YW50IHRvIGRvIHRoaXMgaW4gdGhlIHBhc3Qg
aXMgdGhhdAo+ID4+IHdlIGhhZCB0aGUgcGxhbiB0byBtb3ZlIHBsYXRmb3JtcyBvdXQgb2YgdGhl
IGtlcm5lbCB0cmVlIHRvIGFuIGV4dGVybmFsCj4gPj4gcmVwb3NpdG9yeSBhbmQgSSB3YW50ZWQg
dG8gZG8gdGhpcyBwbGF0Zm9ybSBhdCBhIHRpbWUgYW5kIGFsc28gb25seSBtb3ZlCj4gPj4gZWFj
aCBvbmUgb25jZS4gSSBkb24ndCB0aGluayB0aGF0IGlzIGdvaW5nIHRvIGhhcHBlbiBhbnl0aW1l
IHNvb24gbm93LAo+ID4+IHNvIGxldCdzIGp1c3QgZG8geW91ciBzY3JpcHQuCj4gPj4KPiA+PiBD
YW4geW91IHNlbmQgbWUgdGhlIHNjcmlwdCBhbmQvb3IgYSBwdWxsIHJlcXVlc3Qgb2YgdGhlIHJl
c3VsdGluZwo+ID4+IHRyZWUgYmFzZWQgb24gbXkgc29jL2R0IGJyYW5jaD8gRXZlcnl0aGluZyBp
cyBtZXJnZWQgdXBzdHJlYW0sCj4gPj4gYW5kIEkgdGhpbmsgZ2l0LW1lcmdlIHdvdWxkIGhhbmRs
ZSB0aGUgcmVtYWluaW5nIG1lcmdlcyB3aXRoIGFueQo+ID4+IG90aGVyIGNoYW5nZXMgaW4gbWFp
bmxpbmUuCj4gPgo+ID4gSSd2ZSBkdXN0ZWQgb2ZmIG15IHNjcmlwdCBhbmQgbWFkZSBhIGJyYW5j
aFsxXSB3aXRoIHRoZSByZXN1bHQuCj4gPiBUaGVyZSdzIGp1c3QgYSBjb3VwbGUgb2YgZml4ZXMg
bmVlZGVkIGFmdGVyIHRoZSBzY3JpcHQgaXMgcnVuIChzZWUgdGhlCj4gPiB0b3AgY29tbWl0KS4g
VGhlIGNyb3NzIGFyY2ggaW5jbHVkZXMgYXJlIGFsbCBmaXhlZCB1cCBieSB0aGUgc2NyaXB0Lgo+
ID4gZHRic19pbnN0YWxsIG1haW50YWlucyBhIGZsYXQgaW5zdGFsbC4gSSBjb21wYXJlZCB0aGUg
bnVtYmVyIG9mIC5kdGJzCj4gPiBiZWZvcmUgYW5kIGFmdGVyIHRvIGNoZWNrIHRoZSBzY3JpcHQu
Cj4gPgo+ID4gSSB0aGluayB0aGUgb25seSBpc3N1ZSByZW1haW5pbmcgaXMgZmluYWxpemluZyB0
aGUgbWFwcGluZyBvZgo+ID4gcGxhdGZvcm1zIHRvIHN1YmRpcnMuIFdoYXQgSSBoYXZlIGN1cnJl
bnRseSBpcyBhIG1peHR1cmUgb2YgU29DCj4gPiBmYW1pbGllcyBhbmQgdmVuZG9ycy4gVGhlIG1v
c3Qgbm90YWJsZSBhcmUgYWxsIHRoZSBGcmVlc2NhbGUvTlhQCj4gPiBwbGF0Zm9ybXMsIHB4YSwg
c29jZnBnYSwgYW5kIHN0bTMyLiBJdCdzIG5vdCBjb25zaXN0ZW50IHdpdGggYXJtNjQKPiA+IGVp
dGhlci4gT25jZSB0aGF0J3MgZmluYWxpemVkLCBJIHN0aWxsIG5lZWQgdG8gZ28gdXBkYXRlIE1B
SU5UQUlORVJTLgo+ID4KPiA+IEhlcmUncyB0aGUgY3VycmVudCBtYXBwaW5nOgo+ID4KPiA+IHZl
bmRvcl9tYXAgPSB7Cj4gPiAgICAgICdhbHBoYXNjYWxlJyA6ICdhbHBoYXNjYWxlJywKPiA+ICAg
ICAgJ2FscGluZScgOiAnYWxwaW5lJywKPiA+ICAgICAgJ2FydHBlYycgOiAnYXhpcycsCj4gPiAg
ICAgICdheG0nIDogJ2xzaScsCj4gPiAgICAgICdjeDknIDogJ2NueHQnLAo+ID4gICAgICAnZWN4
JyA6ICdjYWx4ZWRhJywKPiA+ICAgICAgJ2hpZ2hiYW5rJyA6ICdjYWx4ZWRhJywKPiA+ICAgICAg
J2VwNycgOiAnY2lycnVzJywKPiA+ICAgICAgJ214cyc6ICdteHMnLAo+ID4gICAgICAnaW14MjMn
OiAnbXhzJywKPiA+ICAgICAgJ2lteDI4JzogJ214cycsCj4gPiAgICAgICdzdW4nIDogJ2FsbHdp
bm5lcicsCj4gPiAgICAgICdpbXgnOiAnaW14JywKPiA+ICAgICAgJ2U2JyA6ICdpbXgnLAo+ID4g
ICAgICAnZTcnIDogJ2lteCcsCj4gPiAgICAgICdtYmE2JyA6ICdpbXgnLAo+ID4gICAgICAnbHMn
OiAnZnNsJywKPiA+ICAgICAgJ3ZmJzogJ2ZzbCcsCj4gPiAgICAgICdxY29tJzogJ3Fjb20nLAo+
ID4gICAgICAnYW0zJyA6ICd0aScsCj4gPiAgICAgICdhbTQnIDogJ3RpJywKPiA+ICAgICAgJ2Ft
NScgOiAndGknLAo+ID4gICAgICAnZHJhJyA6ICd0aScsCj4gPiAgICAgICdrZXlzdG9uZScgOiAn
dGknLAo+ID4gICAgICAnb21hcCcgOiAndGknLAo+ID4gICAgICAnY29tcHVsYWInIDogJ3RpJywK
PiA+ICAgICAgJ2xvZ2ljcGQnIDogJ3RpJywKPiA+ICAgICAgJ2VscGlkYScgOiAndGknLAo+ID4g
ICAgICAnbW90b3JvbGEnIDogJ3RpJywKPiA+ICAgICAgJ3R3bCcgOiAndGknLAo+ID4gICAgICAn
ZGEnIDogJ3RpJywKPiA+ICAgICAgJ2RtJyA6ICd0aScsCj4gPiAgICAgICduc3BpcmUnIDogJ25z
cGlyZScsCj4gPiAgICAgICdhcm1hZGEnIDogJ21hcnZlbGwnLAo+ID4gICAgICAnZG92ZScgOiAn
bWFydmVsbCcsCj4gPiAgICAgICdraXJrd29vZCcgOiAnbWFydmVsbCcsCj4gPiAgICAgICdvcmlv
bicgOiAnbWFydmVsbCcsCj4gPiAgICAgICdtdmVidScgOiAnbWFydmVsbCcsCj4gPiAgICAgICdt
bXAnIDogJ21hcnZlbGwnLAo+ID4gICAgICAnYmVybGluJyA6ICdiZXJsaW4nLAo+ID4gICAgICAn
cHhhMicgOiAncHhhJywKPiA+ICAgICAgJ3B4YTMnIDogJ3B4YScsCj4gPiAgICAgICdweGEnIDog
J21hcnZlbGwnLAo+ID4gICAgICAnYXJtLScgOiAnYXJtJywKPiA+ICAgICAgJ2ludGVnJyA6ICdh
cm0nLAo+ID4gICAgICAnbXBzJyA6ICdhcm0nLAo+ID4gICAgICAndmUnIDogJ2FybScsCj4gPiAg
ICAgICdhc3BlZWQnIDogJ2FzcGVlZCcsCj4gPiAgICAgICdhc3QyJyA6ICdhc3BlZWQnLAo+ID4g
ICAgICAnZmFjZWJvb2snIDogJ2FzcGVlZCcsCj4gPiAgICAgICdpYm0nIDogJ2FzcGVlZCcsCj4g
PiAgICAgICdvcGVuYm1jJyA6ICdhc3BlZWQnLAo+ID4gICAgICAnZW43JyA6ICdhaXJvaGEnLAo+
ID4gICAgICAnYXQ5MScgOiAnbWljcm9jaGlwJywKPiA+ICAgICAgJ3NhbWEnIDogJ21pY3JvY2hp
cCcsCj4gPiAgICAgICdzYW05JyA6ICdtaWNyb2NoaXAnLAo+ID4gICAgICAndXNiXycgOiAnbWlj
cm9jaGlwJywKPiA+ICAgICAgJ3RueV8nIDogJ21pY3JvY2hpcCcsCj4gPiAgICAgICdtcGExNjAw
JyA6ICdtaWNyb2NoaXAnLAo+ID4gICAgICAnYW5pbWVvX2lwJyA6ICdtaWNyb2NoaXAnLAo+ID4g
ICAgICAnYWtzLWNkdScgOiAnbWljcm9jaGlwJywKPiA+ICAgICAgJ2V0aGVybnV0NScgOiAnbWlj
cm9jaGlwJywKPiA+ICAgICAgJ2V2ay1wcm8zJyA6ICdtaWNyb2NoaXAnLAo+ID4gICAgICAncG05
ZzQ1JyA6ICdtaWNyb2NoaXAnLAo+ID4gICAgICAnZ2U4NicgOiAnbWljcm9jaGlwJywKPiA+ICAg
ICAgJ2JjbScgOiAnYnJjbScsCj4KPiBIb3cgYWJvdXQgd2UgdXNlICdicm9hZGNvbScgaGVyZSwg
dG8gZm9sbG93IHdoYXQgYXJtNjQgZG9lcz8gSSBjb3VsZAo+IHJlbmFtZSBhcmNoL21pcHMvYm9v
dC9kdHMvYnJjbSB0byBhcmNoL21pcHMvYm9vdC9kdHMvYnJvYWRjb20gZm9yCj4gY29uc2lzdGVu
Y3ksIHRvbz8KCk9rYXksIHRob3VnaCBpZiBzdGFydGluZyBjbGVhbiBJJ2Qgc29tZXdoYXQgcHJl
ZmVyIHRvIHVzZSB0aGUgdmVuZG9yCnByZWZpeC4gSSBndWVzcyBzaW5jZSBhcm0gYW5kIGFybTY0
IHNoYXJlIGR0c2kgZmlsZXMsIHRoZXkgc2hvdWxkCm1hdGNoLgoKUm9iCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
