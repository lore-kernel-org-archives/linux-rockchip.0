Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAD31C61D97
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 14:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEIVBBT9oOjb1G/+oi9r5oAFp9xbUczQLO6h941r4OE=; b=o2ccHrzzAU21E7
	NlNBtGWKS/HVXE15u5isTklZMWLrjY0M6MWIEutPDZsQL2fCrw3OaeWHLzRXAp30EuK49v7LFD9It
	DriZDc23UYBbbOPw/1YMjgpueReeiGUTZ5qEgCu1U0Dlbzc7vglWX+hRKMd4TDLC0o5M2Oc4NUphP
	sOIDy78qZrhsEw+qpDra/NbBuQWicVpF5QYI2Ucgz4kjqs36mHwvzrRVGJEtgJbVkx6i91PaZUjPV
	5/XZoY+KhMFs+NXcmqjaAOu0lo6hpdKuQ8jMF50B8rFWyxAYjvfLDHlV34KQQHrSxnhnBgRGbMtqF
	a6TfYoZHB3tS68nTmjcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5oJz-0027IE-2X;
	Wed, 22 Nov 2023 14:35:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5oJv-0027H7-1T;
	Wed, 22 Nov 2023 14:35:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 32D2C61D1A;
	Wed, 22 Nov 2023 14:35:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95AE4C43391;
	Wed, 22 Nov 2023 14:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700663713;
	bh=RtXHVojQdii9cypheSJBX00LBuWCbe8gFyZ642oQe6A=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=dBFU2Dem3EzGCXV3Q3tedWG2zrS20A/bGvbdoBmedPEANbbwkpNzyl/M4HioweVGb
	 BZ3fnadm47uAvJY3apn3f989uSWYz5ONRfJ1zS+0gls0LHlGnFiJSqXSkPoPBYtg+F
	 lWoW4L18wsGteiHC0Wr/scISvN7KVWVMMxPT/v1vjBH7G3Knl2QSRkRYbyiN3zVi+p
	 fApO8YOj9xhU5chPpIASR5ijXN/I55LBw+v6S0lJ3o2wcnXinboeFMs+SkErTCpNri
	 NglxMF0ZEATv4ho4vVWQTGGOToZKxW2gEZn+y/bvi6tY+VPWnPcKdl0sAZVpxKjRyP
	 Lyz/wtrvTtYYQ==
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-507973f3b65so9645775e87.3;
        Wed, 22 Nov 2023 06:35:13 -0800 (PST)
X-Gm-Message-State: AOJu0YzS1NiQo39d7wcRlp57FaFqZRH33G00aoT/pdzLKXhcHt0CaFcl
	TZ3R/PVakQRgRGL3wI9b25j+n41zZhgA//7EQw==
X-Google-Smtp-Source: AGHT+IEQBg+DK/D3DTxQm+IxmEnOEyd8FYRneZs7dFyJFZUQ30Vu7QNpAPavUGMN4n7otiuBSo5YrTBJtBD/XnkZObs=
X-Received: by 2002:a05:6512:3c8f:b0:509:2b81:fc40 with SMTP id
 h15-20020a0565123c8f00b005092b81fc40mr2616195lfv.9.1700663711762; Wed, 22 Nov
 2023 06:35:11 -0800 (PST)
MIME-Version: 1.0
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com> <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
 <CAGb2v64Vf5dDwq=KTrxwc=+w+0KUD2KVPMjmHg68Y_yukES5dQ@mail.gmail.com>
 <7232a48b-b9ad-44b5-ae6a-d12dad70b3c4@linaro.org> <58a9caacc1226c7c3a2bdfe73ef1791f@manjaro.org>
 <cc4c789c-b595-41eb-b543-9e03549c6e61@amd.com> <CAMuHMdWm-gRPHeHyuX3_eR+9chJEw3iiZwCNBnoiRPHzoMAs6w@mail.gmail.com>
 <808270d3-2274-4fb7-a397-38538503b67c@amd.com>
In-Reply-To: <808270d3-2274-4fb7-a397-38538503b67c@amd.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 22 Nov 2023 07:34:59 -0700
X-Gmail-Original-Message-ID: <CAL_JsqKkOjBHrJ0WELq3JnJDqgtA=mdF+EtAxHSCGqZMQ9tuSQ@mail.gmail.com>
Message-ID: <CAL_JsqKkOjBHrJ0WELq3JnJDqgtA=mdF+EtAxHSCGqZMQ9tuSQ@mail.gmail.com>
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
To: Michal Simek <michal.simek@amd.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Dragan Simic <dsimic@manjaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, wens@kernel.org, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>, 
	Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_063515_601596_89E0B843 
X-CRM114-Status: GOOD (  33.27  )
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

T24gV2VkLCBOb3YgMjIsIDIwMjMgYXQgMTo1N+KAr0FNIE1pY2hhbCBTaW1layA8bWljaGFsLnNp
bWVrQGFtZC5jb20+IHdyb3RlOgo+Cj4gSGkgR2VlcnQsCj4KPiBPbiAxMS8yMi8yMyAwOTo1Mywg
R2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4gSGkgTWljaGFsLAo+ID4KPiA+IE9uIFdlZCwg
Tm92IDIyLCAyMDIzIGF0IDk6NTDigK9BTSBNaWNoYWwgU2ltZWsgPG1pY2hhbC5zaW1la0BhbWQu
Y29tPiB3cm90ZToKPiA+PiBPbiAxMS8yMi8yMyAwOToyOSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+
ID4+PiBPbiAyMDIzLTExLTIyIDA5OjIxLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4+
Pj4gT24gMjIvMTEvMjAyMyAwOTowOSwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4+Pj4+IE9uIFdl
ZCwgTm92IDIyLCAyMDIzIGF0IDQ6MDXigK9QTSBLcnp5c3p0b2YgS296bG93c2tpCj4gPj4+Pj4g
PGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPj4+Pj4+Cj4gPj4+Pj4+
IE9uIDIxLzExLzIwMjMgMTQ6NTAsIFJhZmHFgiBNacWCZWNraSB3cm90ZToKPiA+Pj4+Pj4+PiAr
T3JkZXIgb2YgUHJvcGVydGllcyBpbiBEZXZpY2UgTm9kZQo+ID4+Pj4+Pj4+ICstLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPj4+Pj4+Pj4gKwo+ID4+Pj4+Pj4+ICtGb2xsb3dp
bmcgb3JkZXIgb2YgcHJvcGVydGllcyBpbiBkZXZpY2Ugbm9kZXMgaXMgcHJlZmVycmVkOgo+ID4+
Pj4+Pj4+ICsKPiA+Pj4+Pj4+PiArMS4gY29tcGF0aWJsZQo+ID4+Pj4+Pj4+ICsyLiByZWcKPiA+
Pj4+Pj4+PiArMy4gcmFuZ2VzCj4gPj4+Pj4+Pj4gKzQuIFN0YW5kYXJkL2NvbW1vbiBwcm9wZXJ0
aWVzIChkZWZpbmVkIGJ5IGNvbW1vbiBiaW5kaW5ncywgZS5nLiB3aXRob3V0Cj4gPj4+Pj4+Pj4g
KyAgIHZlbmRvci1wcmVmaXhlcykKPiA+Pj4+Pj4+PiArNS4gVmVuZG9yLXNwZWNpZmljIHByb3Bl
cnRpZXMKPiA+Pj4+Pj4+PiArNi4gc3RhdHVzIChpZiBhcHBsaWNhYmxlKQo+ID4+Pj4+Pj4+ICs3
LiBDaGlsZCBub2Rlcywgd2hlcmUgZWFjaCBub2RlIGlzIHByZWNlZGVkIHdpdGggYSBibGFuayBs
aW5lCj4gPj4+Pj4+Pj4gKwo+ID4+Pj4+Pj4+ICtUaGUgInN0YXR1cyIgcHJvcGVydHkgaXMgYnkg
ZGVmYXVsdCAib2theSIsIHRodXMgaXQgY2FuIGJlIG9taXR0ZWQuCj4gPj4+Pj4+Pgo+ID4+Pj4+
Pj4gSSB0aGluayBpdCB3b3VsZCByZWFsbHkgaGVscCB0byBpbmNsdWRlIHBvc2l0aW9uIG9mICNh
ZGRyZXNzLWNlbGxzIGFuZAo+ID4+Pj4+Pj4gI3NpemUtY2VsbHMgaGVyZS4gSW4gc29tZSBmaWxl
cyBJIHNhdyB0aGVtIGFib3ZlICJjb21wYXRpYmxlIiB0aGF0IHNlZW1zCj4gPj4+Pj4+PiB1bmlu
dHVpdGl2ZS4gU29tZSBwcmVmZXIgcHV0dGluZyB0aGVtIGF0IGVuZCB3aGljaCBJIHRoaW5rIG1h
a2VzIHNlbnNlCj4gPj4+Pj4+PiBhcyB0aGV5IGFmZmVjdCBjaGlsZHJlbiBub2Rlcy4KPiA+Pj4+
Pj4+Cj4gPj4+Pj4+PiBXaGF0ZXZlciB5b3UgY2hvb3NlIGl0J2QgYmUganVzdCBuaWNlIHRvIGhh
dmUgdGhpbmdzIGNvbnNpc3RlbnQuCj4gPj4+Pj4+Cj4gPj4+Pj4+IFRoaXMgaXMgYSBzdGFuZGFy
ZC9jb21tb24gcHJvcGVydHksIHRodXMgaXQgZ29lcyB0byAoNCkgYWJvdmUuCj4gPj4+Pj4KPiA+
Pj4+PiBJdCdzIHByb2JhYmx5IGEgbWl4LCBidXQgQUZBSUsgYSBsb3Qgb2YgdGhlIGRldmljZSB0
cmVlcyBpbiB0cmVlIGhhdmUKPiA+Pj4+PiAjKi1jZWxscyBhZnRlciAic3RhdHVzIi4gSW4gc29t
ZSBjYXNlcyB0aGV5IGFyZSBhZGRlZCBpbiB0aGUgYm9hcmQKPiA+Pj4+PiAuZHRzIGZpbGVzLCBu
b3QgdGhlIGNoaXAvbW9kdWxlIC5kdHNpIGZpbGVzLgo+ID4+Pj4KPiA+Pj4+IEV4aXN0aW5nIERU
UyBpcyBub3QgYSBnb29kIGV4YW1wbGUgOikKPiA+Pj4+Cj4gPj4+Pj4KPiA+Pj4+PiArMSB0aGF0
IGl0IG1ha2VzIHNlbnNlIGF0IHRoZSBlbmQgYXMgdGhleSBhZmZlY3QgY2hpbGQgbm9kZXMuCj4g
Pj4+Pgo+ID4+Pj4gSSBzdGlsbCBpbnNpc3QgdGhhdCBzdGF0dXMgbXVzdCBiZSB0aGUgbGFzdCwg
YmVjYXVzZToKPiA+Pj4+IDEuIE1hbnkgU29DIG5vZGVzIGhhdmUgYWRkcmVzcy9zaXplIGNlbGxz
IGJ1dCBkbyBub3QgaGF2ZSBhbnkgY2hpbGRyZW4KPiA+Pj4+IChJMkMsIFNQSSksIHNvIHdlIHB1
dCB1c2VsZXNzIGluZm9ybWF0aW9uIGF0IHRoZSBlbmQuCj4gPj4+PiAyLiBTdGF0dXMgc2hvdWxk
IGJlIHRoZSBmaW5hbCBpbmZvcm1hdGlvbiB0byBzYXkgd2hldGhlciB0aGUgbm9kZSBpcwo+ID4+
Pj4gcmVhZHkgb3IgaXMgbm90LiBJIHJlYWQgdGhlIG5vZGUsIGNoZWNrIHByb3BlcnRpZXMgYW5k
IHRoZW4gbG9vayBhdCB0aGUgZW5kOgo+ID4+Pj4gYS4gTGFjayBvZiBzdGF0dXMgbWVhbnMgaXQg
aXMgcmVhZHkuCj4gPj4+PiBiLiBzdGF0dXM9ZGlzYWJsZWQgbWVhbnMgZGV2aWNlIHN0aWxsIG5l
ZWRzIGJvYXJkIHJlc291cmNlcy9jdXN0b21pemF0aW9uCj4gPj4+Cj4gPj4+IEkgYWdyZWUgd2l0
aCB0aGUgInN0YXR1cyIgYmVsb25naW5nIHRvIHRoZSB2ZXJ5IGVuZCwgYmVjYXVzZSBpdCdzIGJv
dGggbG9naWNhbAo+ID4+PiBhbmQgbXVjaCBtb3JlIHJlYWRhYmxlLiAgQWxzbywgInN0YXR1cyIg
aXMgZXhwZWN0ZWQgdG8gYmUgbW9kaWZpZWQgaW4gdGhlCj4gPj4+IGRlcGVuZGVudCBEVCBmaWxl
cywgd2hpY2ggbWFrZXMgaXQga2luZCBvZiB2b2xhdGlsZSBhbmQgZXZlbiBtb3JlIGRlc2Vydmlu
ZyB0bwo+ID4+PiBiZSBwbGFjZWQgbGFzdC4KPiA+Pgo+ID4+IEkgYW0ganVzdCBjdXJpb3VzIGlm
IGhhdmluZyBzdGF0dXMgcHJvcGVydHkgYXQgdGhlIGVuZCB3b24ndCBhZmZlY3QKPiA+PiBleGVj
dXRpb24vYm9vdCB1cCB0aW1lLiBOb3Qgc3VyZSBob3cgaXQgaXMgZG9uZSBpbiBMaW51eCBidXQg
aW4gVS1Cb290IGF0IGxlYXN0Cj4gPj4gKHdlIHdhbnQgdG8gaGF2ZSBEVHMgaW4gc3luYyBiZXR3
ZWVuIExpbnV4IGFuZCBVLUJvb3QpIG9mX2ZpbmRfcHJvcGVydHkgaXMKPiA+PiBwcmV0dHkgbXVj
aCBiaWcgbG9vcCBvdmVyIGFsbCBwcm9wZXJ0aWVzLiBBbmQgc3RhdHVzIHByb3BlcnR5IGRlZmlu
ZWQgYXQgdGhlIGVuZAo+ID4+IG1lYW5zIGdvaW5nIG92ZXIgYWxsIG9mIHRoZW0gdG8gZmluZCBp
dCBvdXQgdG8gaWYgZGV2aWNlIGlzIHByZXNlbnQuCj4gPj4gTm90IHN1cmUgaWYgTGludXggd29y
a3MgaW4gdGhlIHNhbWUgd2F5IGJ1dCBhdCBsZWFzdCBvZl9nZXRfcHJvcGVydHkgaXMgZG9uZSBp
bgo+ID4+IHRoZSBzYW1lIHdheS4KPiA+Cj4gPiBBcyB0aGUgZGVmYXVsdCBpcyAib2theSIsIHlv
dSBoYXZlIHRvIGxvb3Agb3ZlciBhbGwgcHJvcGVydGllcyBhbnl3YXkuCj4KPiBObyBkb3VidCBp
ZiB5b3UgZG9uJ3QgZGVmaW5lIHN0YXR1cyBwcm9wZXJ0eSB0aGF0IHlvdSBuZWVkIHRvIGxvb3Ag
b3ZlciBhbGwgb2YKPiB0aGVtLiBXZSBub3JtYWxseSBkZXNjcmliZSB0aGUgd2hvbGUgU09DIHdp
dGggcHJldHR5IG11Y2ggYWxsIElQcyBzdGF0dXMgPQo+IGRpc2FibGVkIGFuZCB0aGVuIGluIGJv
YXJkIGZpbGUgd2UgYXJlIGNoYW5naW5nIGl0IHRvIG9rYXkgYmFzZWQgb24gd2hhdCBpdCBpcwo+
IGFjdHVhbGx5IHdpcmVkIG91dC4KPiBJdCBtZWFucyBvbiBvdXIgc3lzdGVtcyBhbGwgbm9kZXMg
aGF2ZSBzdGF0dXMgcHJvcGVydGllcy4gSWYgeW91IGhhdmUgaXQgYXQKPiBmaXJzdCB5b3UgZG9u
J3QgbmVlZCB0byBnbyBvdmVyIGFsbC4KCk9yZGVyIGluIHRoZSBzb3VyY2UgYW5kIG9yZGVyIGlu
IHRoZSBPUyBhcmUgaW5kZXBlbmRlbnQuIElmIGNoZWNraW5nCnN0YXR1cyBuZWVkcyB0byBiZSBv
cHRpbWl6ZWQsIHRoZW4gd2UgY291bGQganVzdCBwdXQgaXQgZmlyc3QgaW4gdGhlCnByb3BlcnR5
IGxpc3Qgb3IgbWFrZSB0aGUgc3RhdGUgYSBmaWVsZCBpbiBzdHJ1Y3QgZGV2aWNlX25vZGUuIEJ1
dApwcm92aWRlIHNvbWUgZGF0YSB0aGF0IGl0IG1hdHRlcnMgZmlyc3QuCgpJJ3ZlIGhhZCB0aGlz
IGlkZWEgdG8gcmFuZG9taXplIHRoZSBvcmRlciBub2RlcyBhcmUgcHJvY2Vzc2VkIHNvCnRoZXJl
J3Mgbm8gcmVsaWFuY2Ugb24gdGhlIERUIG9yZGVyLiBNYXliZSBJIG5lZWQgdGhlIHNhbWUgb24K
cHJvcGVydGllcy4uLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
