Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60767C61D92
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iZzXfJdU+f9ZC9XNXg+Saav+lb5AC0rEjEoFkNRDAQ=; b=Ct6tnZmePvf8JN
	x4D12rhrENqoOr0Fi1skS8/Iiq8sqZO6DpbTpvLf0BP8iV0HOtAcpsnfRT8SW9BHL9AlLPvj4XqNY
	o4YSSHjo2gUUkntiHzyV2i2AUI2wHt/Dxr/nhiQRndFjl40jXsnAkBDLaQ6hHN1QUzkGTwv/C+vCd
	3GwoaXiSiz9NHYx4y36VtReMPcPwLSGVILMAvKPMt09sXhShWXorHMFwPe9XEM18VJ2rwVMH+Nk40
	maynNEwHCkZZCClO6Vtkt5uXkXYeNUlTQDLX/0DWNgwtYSAVpVu6DTD/3ZXDYwYL8F4Ik+zki5NV7
	sirpLGddrYXDN6KqDyrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5izM-001793-2Y;
	Wed, 22 Nov 2023 08:53:40 +0000
Received: from mail-yw1-f175.google.com ([209.85.128.175])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5izI-001777-2O;
	Wed, 22 Nov 2023 08:53:38 +0000
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5cc589c0b90so5132707b3.2;
        Wed, 22 Nov 2023 00:53:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700643213; x=1701248013;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fKNq1+43WKmgnPE7SgZwNlFfmw6va9njWwTwjft8dSg=;
        b=Fr4cNg/5jM6EWKOXtzdEJWojpyDUlJKj8MsjYKp/T5qemUVR7rfpkOErVmDbQ0nWUs
         JLGngdLPy5GHGhBiU0yA7qPa5RgF+a8GUwTNOi5gcoq3v0aZLjiw5hPIg40xFDwJ1TN9
         iQBekFedapoCeh+OmeiMAss5A5NOS+8yGyFFSyCq3HY92G1N4Bh+JJ6It4EL0B3mp/Iv
         sRrnRHiPNp+/9g1MsuNLYJ+4uzeIvTmb6F4icxIIOytAjNaE2oeQJr5T6NvVsCOC7LQe
         m4P70D+hWpNkto6IJfvFWlZdzvSdn6fhcYGPGLfmeLoywGf2wKY+AyhgSN8fPXNa3pAu
         jd6g==
X-Gm-Message-State: AOJu0YxKuQzUehirGRsawzpJS2h4KBmMqDr8fQhqeQFRGetXR5EiWoBG
	xLCX2gHPwlk/MIL2BbmkEFpHKGtG+6ZqZw==
X-Google-Smtp-Source: AGHT+IG7DBXL8FSlzYPZwjDdLbyRmnkkIxPN6a+o+GVPmosZFCSSZ4nveHPxT2w4Rsb94hswZ00BWg==
X-Received: by 2002:a0d:d343:0:b0:5c8:d5d5:3e51 with SMTP id v64-20020a0dd343000000b005c8d5d53e51mr1197428ywd.44.1700643213501;
        Wed, 22 Nov 2023 00:53:33 -0800 (PST)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id j127-20020a819285000000b005cc9cc5c722sm118828ywg.25.2023.11.22.00.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 00:53:32 -0800 (PST)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-da077db5145so5984770276.0;
        Wed, 22 Nov 2023 00:53:32 -0800 (PST)
X-Received: by 2002:a25:218a:0:b0:da0:48df:cafa with SMTP id
 h132-20020a25218a000000b00da048dfcafamr1276867ybh.16.1700643211907; Wed, 22
 Nov 2023 00:53:31 -0800 (PST)
MIME-Version: 1.0
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com> <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
 <CAGb2v64Vf5dDwq=KTrxwc=+w+0KUD2KVPMjmHg68Y_yukES5dQ@mail.gmail.com>
 <7232a48b-b9ad-44b5-ae6a-d12dad70b3c4@linaro.org> <58a9caacc1226c7c3a2bdfe73ef1791f@manjaro.org>
 <cc4c789c-b595-41eb-b543-9e03549c6e61@amd.com>
In-Reply-To: <cc4c789c-b595-41eb-b543-9e03549c6e61@amd.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 22 Nov 2023 09:53:15 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWm-gRPHeHyuX3_eR+9chJEw3iiZwCNBnoiRPHzoMAs6w@mail.gmail.com>
Message-ID: <CAMuHMdWm-gRPHeHyuX3_eR+9chJEw3iiZwCNBnoiRPHzoMAs6w@mail.gmail.com>
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
To: Michal Simek <michal.simek@amd.com>
Cc: Dragan Simic <dsimic@manjaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, wens@kernel.org, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, 
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
X-CRM114-CacheID: sfid-20231122_005336_783528_C4205262 
X-CRM114-Status: GOOD (  32.29  )
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

SGkgTWljaGFsLAoKT24gV2VkLCBOb3YgMjIsIDIwMjMgYXQgOTo1MOKAr0FNIE1pY2hhbCBTaW1l
ayA8bWljaGFsLnNpbWVrQGFtZC5jb20+IHdyb3RlOgo+IE9uIDExLzIyLzIzIDA5OjI5LCBEcmFn
YW4gU2ltaWMgd3JvdGU6Cj4gPiBPbiAyMDIzLTExLTIyIDA5OjIxLCBLcnp5c3p0b2YgS296bG93
c2tpIHdyb3RlOgo+ID4+IE9uIDIyLzExLzIwMjMgMDk6MDksIENoZW4tWXUgVHNhaSB3cm90ZToK
PiA+Pj4gT24gV2VkLCBOb3YgMjIsIDIwMjMgYXQgNDowNeKAr1BNIEtyenlzenRvZiBLb3psb3dz
a2kKPiA+Pj4gPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPj4+Pgo+
ID4+Pj4gT24gMjEvMTEvMjAyMyAxNDo1MCwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+ID4+Pj4+
PiArT3JkZXIgb2YgUHJvcGVydGllcyBpbiBEZXZpY2UgTm9kZQo+ID4+Pj4+PiArLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4+Pj4+PiArCj4gPj4+Pj4+ICtGb2xsb3dpbmcg
b3JkZXIgb2YgcHJvcGVydGllcyBpbiBkZXZpY2Ugbm9kZXMgaXMgcHJlZmVycmVkOgo+ID4+Pj4+
PiArCj4gPj4+Pj4+ICsxLiBjb21wYXRpYmxlCj4gPj4+Pj4+ICsyLiByZWcKPiA+Pj4+Pj4gKzMu
IHJhbmdlcwo+ID4+Pj4+PiArNC4gU3RhbmRhcmQvY29tbW9uIHByb3BlcnRpZXMgKGRlZmluZWQg
YnkgY29tbW9uIGJpbmRpbmdzLCBlLmcuIHdpdGhvdXQKPiA+Pj4+Pj4gKyAgIHZlbmRvci1wcmVm
aXhlcykKPiA+Pj4+Pj4gKzUuIFZlbmRvci1zcGVjaWZpYyBwcm9wZXJ0aWVzCj4gPj4+Pj4+ICs2
LiBzdGF0dXMgKGlmIGFwcGxpY2FibGUpCj4gPj4+Pj4+ICs3LiBDaGlsZCBub2Rlcywgd2hlcmUg
ZWFjaCBub2RlIGlzIHByZWNlZGVkIHdpdGggYSBibGFuayBsaW5lCj4gPj4+Pj4+ICsKPiA+Pj4+
Pj4gK1RoZSAic3RhdHVzIiBwcm9wZXJ0eSBpcyBieSBkZWZhdWx0ICJva2F5IiwgdGh1cyBpdCBj
YW4gYmUgb21pdHRlZC4KPiA+Pj4+Pgo+ID4+Pj4+IEkgdGhpbmsgaXQgd291bGQgcmVhbGx5IGhl
bHAgdG8gaW5jbHVkZSBwb3NpdGlvbiBvZiAjYWRkcmVzcy1jZWxscyBhbmQKPiA+Pj4+PiAjc2l6
ZS1jZWxscyBoZXJlLiBJbiBzb21lIGZpbGVzIEkgc2F3IHRoZW0gYWJvdmUgImNvbXBhdGlibGUi
IHRoYXQgc2VlbXMKPiA+Pj4+PiB1bmludHVpdGl2ZS4gU29tZSBwcmVmZXIgcHV0dGluZyB0aGVt
IGF0IGVuZCB3aGljaCBJIHRoaW5rIG1ha2VzIHNlbnNlCj4gPj4+Pj4gYXMgdGhleSBhZmZlY3Qg
Y2hpbGRyZW4gbm9kZXMuCj4gPj4+Pj4KPiA+Pj4+PiBXaGF0ZXZlciB5b3UgY2hvb3NlIGl0J2Qg
YmUganVzdCBuaWNlIHRvIGhhdmUgdGhpbmdzIGNvbnNpc3RlbnQuCj4gPj4+Pgo+ID4+Pj4gVGhp
cyBpcyBhIHN0YW5kYXJkL2NvbW1vbiBwcm9wZXJ0eSwgdGh1cyBpdCBnb2VzIHRvICg0KSBhYm92
ZS4KPiA+Pj4KPiA+Pj4gSXQncyBwcm9iYWJseSBhIG1peCwgYnV0IEFGQUlLIGEgbG90IG9mIHRo
ZSBkZXZpY2UgdHJlZXMgaW4gdHJlZSBoYXZlCj4gPj4+ICMqLWNlbGxzIGFmdGVyICJzdGF0dXMi
LiBJbiBzb21lIGNhc2VzIHRoZXkgYXJlIGFkZGVkIGluIHRoZSBib2FyZAo+ID4+PiAuZHRzIGZp
bGVzLCBub3QgdGhlIGNoaXAvbW9kdWxlIC5kdHNpIGZpbGVzLgo+ID4+Cj4gPj4gRXhpc3Rpbmcg
RFRTIGlzIG5vdCBhIGdvb2QgZXhhbXBsZSA6KQo+ID4+Cj4gPj4+Cj4gPj4+ICsxIHRoYXQgaXQg
bWFrZXMgc2Vuc2UgYXQgdGhlIGVuZCBhcyB0aGV5IGFmZmVjdCBjaGlsZCBub2Rlcy4KPiA+Pgo+
ID4+IEkgc3RpbGwgaW5zaXN0IHRoYXQgc3RhdHVzIG11c3QgYmUgdGhlIGxhc3QsIGJlY2F1c2U6
Cj4gPj4gMS4gTWFueSBTb0Mgbm9kZXMgaGF2ZSBhZGRyZXNzL3NpemUgY2VsbHMgYnV0IGRvIG5v
dCBoYXZlIGFueSBjaGlsZHJlbgo+ID4+IChJMkMsIFNQSSksIHNvIHdlIHB1dCB1c2VsZXNzIGlu
Zm9ybWF0aW9uIGF0IHRoZSBlbmQuCj4gPj4gMi4gU3RhdHVzIHNob3VsZCBiZSB0aGUgZmluYWwg
aW5mb3JtYXRpb24gdG8gc2F5IHdoZXRoZXIgdGhlIG5vZGUgaXMKPiA+PiByZWFkeSBvciBpcyBu
b3QuIEkgcmVhZCB0aGUgbm9kZSwgY2hlY2sgcHJvcGVydGllcyBhbmQgdGhlbiBsb29rIGF0IHRo
ZSBlbmQ6Cj4gPj4gYS4gTGFjayBvZiBzdGF0dXMgbWVhbnMgaXQgaXMgcmVhZHkuCj4gPj4gYi4g
c3RhdHVzPWRpc2FibGVkIG1lYW5zIGRldmljZSBzdGlsbCBuZWVkcyBib2FyZCByZXNvdXJjZXMv
Y3VzdG9taXphdGlvbgo+ID4KPiA+IEkgYWdyZWUgd2l0aCB0aGUgInN0YXR1cyIgYmVsb25naW5n
IHRvIHRoZSB2ZXJ5IGVuZCwgYmVjYXVzZSBpdCdzIGJvdGggbG9naWNhbAo+ID4gYW5kIG11Y2gg
bW9yZSByZWFkYWJsZS4gIEFsc28sICJzdGF0dXMiIGlzIGV4cGVjdGVkIHRvIGJlIG1vZGlmaWVk
IGluIHRoZQo+ID4gZGVwZW5kZW50IERUIGZpbGVzLCB3aGljaCBtYWtlcyBpdCBraW5kIG9mIHZv
bGF0aWxlIGFuZCBldmVuIG1vcmUgZGVzZXJ2aW5nIHRvCj4gPiBiZSBwbGFjZWQgbGFzdC4KPgo+
IEkgYW0ganVzdCBjdXJpb3VzIGlmIGhhdmluZyBzdGF0dXMgcHJvcGVydHkgYXQgdGhlIGVuZCB3
b24ndCBhZmZlY3QKPiBleGVjdXRpb24vYm9vdCB1cCB0aW1lLiBOb3Qgc3VyZSBob3cgaXQgaXMg
ZG9uZSBpbiBMaW51eCBidXQgaW4gVS1Cb290IGF0IGxlYXN0Cj4gKHdlIHdhbnQgdG8gaGF2ZSBE
VHMgaW4gc3luYyBiZXR3ZWVuIExpbnV4IGFuZCBVLUJvb3QpIG9mX2ZpbmRfcHJvcGVydHkgaXMK
PiBwcmV0dHkgbXVjaCBiaWcgbG9vcCBvdmVyIGFsbCBwcm9wZXJ0aWVzLiBBbmQgc3RhdHVzIHBy
b3BlcnR5IGRlZmluZWQgYXQgdGhlIGVuZAo+IG1lYW5zIGdvaW5nIG92ZXIgYWxsIG9mIHRoZW0g
dG8gZmluZCBpdCBvdXQgdG8gaWYgZGV2aWNlIGlzIHByZXNlbnQuCj4gTm90IHN1cmUgaWYgTGlu
dXggd29ya3MgaW4gdGhlIHNhbWUgd2F5IGJ1dCBhdCBsZWFzdCBvZl9nZXRfcHJvcGVydHkgaXMg
ZG9uZSBpbgo+IHRoZSBzYW1lIHdheS4KCkFzIHRoZSBkZWZhdWx0IGlzICJva2F5IiwgeW91IGhh
dmUgdG8gbG9vcCBvdmVyIGFsbCBwcm9wZXJ0aWVzIGFueXdheS4KCkdye29ldGplLGVldGluZ31z
LAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4g
LS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsu
b3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBj
YWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMg
SSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
