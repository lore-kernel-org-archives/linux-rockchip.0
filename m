Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C09AC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Nov 2022 19:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Imq2V2CT8rhZLmZPOdZK254QDhb1VvxVLTgHBUw9OmU=; b=EwkpbAzYLApc06
	aVx8LJqllV0NAFaxRKTS5kQQI0z/h8Mdqezln1eObLZ5pbFPj83fhhsGgaEx0uqj2cyetu1XrxSdP
	zGsqpDCRH+nZPPI+brqcj6egz9MgG9fu/NoCEYCEUrWvo6/OBUMR6Qv+Ug5F2nBxyNUqgAZIFXGbl
	l1hAM8rRbnGi4H8qut5yBV746FH4GuoCGhi3IK0E7Q6upCkNwcn7JkHMfPFBG8h6b7oINFojHMiNN
	YKjuuu3CvRpkW8yZXB9NPlY0XdTucMvB1G6EorrFTjSn91vph2pahQnms6gIayqtF0Fx/zqBhdL5j
	/VZJ2CM7jFFXP8Xlc0iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oufND-004EDH-MO; Mon, 14 Nov 2022 19:44:03 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oufNA-004EBu-Le; Mon, 14 Nov 2022 19:44:02 +0000
Received: by mail-ej1-x62c.google.com with SMTP id bj12so30819062ejb.13;
        Mon, 14 Nov 2022 11:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lU8I1P144GvSOhwHiZF6qw5ZelJMRGo16i0gCB6ZbAM=;
        b=bR1L+UlHr3QKkLGgGZ2pyKctJem3JL1fPGYnXMJd8TLY8QIU4LdJegcDenb7M/LT93
         9MemmtH1mJ03iXCS7+x7Ze4MPBTMIcL+B5SLEtYpaGHLXf/GHUa+dT83fz76Xb3461tI
         dDV2q2JbIzWomlu5oPoYitlLZB9X6Jc82PG3FBP3Si8hk8ndMXCcwz30ItzzkFUi/AvZ
         ZVizNIkQpZwjjdhfy3aISr2kuOHh9qv6vsG6u/UFnwi3rMdTW+LgrczklVtTHJ1GusWK
         4s2uDxm9Tr4NuUZQToxYjfJWbNTaCSm0VXILqEzN3OSEwJfXKhfNUtMkL5Fs5c8xVWEI
         oNyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lU8I1P144GvSOhwHiZF6qw5ZelJMRGo16i0gCB6ZbAM=;
        b=mpeF/YkxSI0wQmJzPeAnIwESrsDDF8E36UMsrg26f/vhRos+IS/rsC9q3pjPzjD8eB
         deGWg/VXaQW6ZBN7sMLQjiXLoWsNaiz6VSEORMJaXirdL760QONHleQ4w8+AMER3cGl6
         XgNkEp1GAgNU+e13S4zqB829n9fWwGrmi9JsHhtE6khdZFBzn26ezH2S4HC0ujXzgFgm
         GbF/IouB21Z3RcWJWrjin6AqSqlKfhh69+n3i6Au3lj+15OgIdM62yw41nbMhFyENknO
         /z4dDS0fS7tkPoTLb+3XRAyg7T/TExWqhCsjA5NbEZSzFf0p37nh0vMO2oqRtbEGHKDv
         u5xw==
X-Gm-Message-State: ANoB5pmyDpS4dCWBAzWBAGSFVQgH+fOy1kRwZA9sJ+juyyky4NkKnP0A
	tFrGGRrkZatY1VppiDwesq01TP3UrW3iEpSOPyI=
X-Google-Smtp-Source: AA0mqf5KSDFDdVvVaUgXYBZ51jpGMS7kYfrL+SL1hM7TaQUcSLcFWlzUSChWh34nplA1/Z0b4woIhLCjvUux5OMl4rI=
X-Received: by 2002:a17:907:9d03:b0:7ae:87ef:d9a6 with SMTP id
 kt3-20020a1709079d0300b007ae87efd9a6mr11402944ejc.397.1668455037871; Mon, 14
 Nov 2022 11:43:57 -0800 (PST)
MIME-Version: 1.0
References: <20221112143411.517906-1-maccraft123mc@gmail.com>
 <20221112143411.517906-6-maccraft123mc@gmail.com> <63724f51.9d0a0220.bdb2c.ea2e@mx.google.com>
In-Reply-To: <63724f51.9d0a0220.bdb2c.ea2e@mx.google.com>
From: Maya Matuszczyk <maccraft123mc@gmail.com>
Date: Mon, 14 Nov 2022 20:43:21 +0100
Message-ID: <CAO_MupKPXJhmK5+eCf5dotCHBEesHFRtQuPt=3h1+SrqR+dygA@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] arm64: dts: rockchip: Add Anbernic RG351M
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	=?UTF-8?B?Sm/Do28gSCAuIFNwaWVz?= <jhlspies@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_114400_734361_4BBB2088 
X-CRM114-Status: GOOD (  31.97  )
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

cG9uLiwgMTQgbGlzIDIwMjIgbyAxNToyMyBDaHJpcyBNb3JnYW4gPG1hY3JvYWxwaGE4MkBnbWFp
bC5jb20+IG5hcGlzYcWCKGEpOgo+Cj4gT24gU2F0LCBOb3YgMTIsIDIwMjIgYXQgMDM6MzQ6MTFQ
TSArMDEwMCwgTWF5YSBNYXR1c3pjenlrIHdyb3RlOgo+ID4gVGhpcyBkZXZpY2UgaXMgYSBjbG9u
ZSBvZiBPZHJvaWQgR28gQWR2YW5jZSwgd2l0aCBhZGRlZCBQV00gbW90b3IsIGludGVybmFsCj4g
PiBnYW1lcGFkIGNvbm5lY3RlZCBvbiBVU0IgaW5zdGVhZCBvZiBqdXN0IGhhdmluZyBpdCBiZSBv
biBHUElPICsgQURDLCBhbmQKPiA+IG1pc3NpbmcgYmF0dGVyeSBzaHVudCByZXNpc3Rvci4KPgo+
IEkgaGF2ZSBjb25jZXJucyBhYm91dCB1c2luZyB0aGUgcms4MTcgYmF0dGVyeSBkcml2ZXIgd2l0
aCBubyBzaHVudAo+IHJlc2lzdG9yLiBGb3IgdGhlIG1vbWVudCwgdGhhdCB3b3VsZCByZXN1bHQg
aW4gd3JvbmcgdmFsdWVzIGJlaW5nCj4gZ2l2ZW4gZm9yIGJhdHRlcnkgY2FwYWNpdHkgYW5kIGN1
cnJlbnQuIFdoYXQgY291bGQgYmUgZG9uZSBpcyB0bwo+IHVwZGF0ZSB0aGUgZHJpdmVyIHRvIG9u
bHkgY2hlY2sgdm9sdGFnZSB2YWx1ZXMgd2hlbiB0aGUgc2h1bnQKPiByZXNpc3RvciBpcyBtaXNz
aW5nIChzaW5jZSBpdCdzIHRoZSBjdXJyZW50IHZhbHVlcyBhbmQgY29sdW1iIGNvdW50ZXIKPiB0
aGF0IGdldHMgYWZmZWN0ZWQgd2l0aCBubyByZXNpc3RvciBpbiBwbGFjZSkuIEZvciBub3cgdGhv
dWdoLCBJJ2QKPiBqdXN0IHJlbW92ZSB0aGUgYmF0dGVyeSBhbmQgY2hhcmdlciBzaW5jZSBpdCdz
IGdvaW5nIHRvIHJlcG9ydCB0aGUKPiB3cm9uZyBkYXRhIHRvIHVzZXJzLgpJIGd1ZXNzIHRoYXQn
cyBmYWlyLi4uIHRoZSBkZXZpY2UgbGl0ZXJhbGx5IGhhcyBubyBzaHVudCByZXNpc3RvciBhbmQg
RFQKc2hvdWxkIHJlZmxlY3QgaGFyZHdhcmUuCgo+Cj4gPgo+ID4gVGhlcmUncyBhbHNvIGFuIExF
RCBvbiBHUElPIDc3KEkgKmd1ZXNzKiBQQjUgb24gJmdwaW8yKSwgdGhhdCBpcyBjb250cm9sbGVk
IGluIGEgd2VpcmQgd2F5Ogo+ID4KPiA+IC0gSXQgaXMgc2V0IHRvIHJlZCBieSBzZXR0aW5nIG91
dHB1dCB2YWx1ZSB0byAxCj4gPiAtIFNldCB0byBncmVlbiBieSBzZXR0aW5nIG91dHB1dCB2YWx1
ZSB0byAwCj4gPiAtIFNldCB0byB5ZWxsb3cgYnkgc2V0dGluZyBncGlvIGRpcmVjdGlvbiB0byBp
bnB1dAo+ID4KPiA+IEkgaGF2ZSBubyBpZGVhIGhvdyB0byBkZXNjcmliZSB0aGF0IGluIERUUywg
d2l0aG91dCBhZGRpbmcgYSBjdXN0b20KPiA+IGRyaXZlciwgZm9yIG5vdyBpdCdzIGp1c3QgbGVm
dCBvdXQuCj4KPiBDaGVjayBvdXQgdGhpcyBkb2N1bWVudCwgaXQgc2F5cyB5b3UnZCBncm91cCB0
aGVtIHRvZ2V0aGVyIHVuZGVyIGEKPiBtdWx0aWNvbG9yIGxlZCBub2RlOgo+IGh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90
cmVlL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9sZWRzL2xlZHMtY2xhc3MtbXVs
dGljb2xvci55YW1sCkFzIGZhciBhcyBJIGtub3cgdGhlcmUgaXMgbm8gc3VwcG9ydCB0byBjb250
cm9sbGluZyBMRUQgaW4gYSB3YXkgdGhhdCB0aGlzCmRldmljZSByZXF1aXJlcyB0aGUgTEVEIHRv
IGJlIGNvbnRyb2xsZWQuCkl0J3MganVzdCBvbmUgR1BJTywgYW5kIHNldHRpbmcgaXQgdG8gb3V0
cHV0dGluZyAwLCBvdXRwdXR0aW5nIDEgb3IgdG8gaW5wdXQKY2hhbmdlcyB0aGUgY29sb3IgYW5k
IHRoZXJlJ3Mgbm8gd2F5IHRvIHR1cm4gaXQgb2ZmLgoKQmVzdCBSZWdhcmRzLApNYXlhIE1hdHVz
emN6eWsKPgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE1heWEgTWF0dXN6Y3p5ayA8bWFjY3JhZnQx
MjNtY0BnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L01ha2VmaWxlICAgICAgICAgfCAgMSArCj4gPiAgLi4uL2R0cy9yb2NrY2hpcC9yazMzMjYtYW5i
ZXJuaWMtcmczNTFtLmR0cyAgIHwgNTQgKysrKysrKysrKysrKysrKysrKwo+ID4gIDIgZmlsZXMg
Y2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyNi1hbmJlcm5pYy1yZzM1MW0uZHRzCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gPiBpbmRleCAxNDJjODNkMmU1YWEu
LmIzNzk1MTZjMTVlYiAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvTWFrZWZpbGUKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZp
bGUKPiA+IEBAIC03LDYgKzcsNyBAQCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmsz
MzA4LWV2Yi5kdGIKPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzA4LXJv
Yy1jYy5kdGIKPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzA4LXJvY2st
cGktcy5kdGIKPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzE4LWE5NXgt
ejIuZHRiCj4gPiArZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzMyNi1hbmJlcm5p
Yy1yZzM1MW0uZHRiCj4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzMyNi1v
ZHJvaWQtZ28yLmR0Ygo+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzMjYt
b2Ryb2lkLWdvMi12MTEuZHRiCj4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJr
MzMyNi1vZHJvaWQtZ28zLmR0Ygo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzI2LWFuYmVybmljLXJnMzUxbS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzMyNi1hbmJlcm5pYy1yZzM1MW0uZHRzCj4gPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi43ZjQ3MjZkNDEzMGUKPiA+IC0tLSAvZGV2L251
bGwKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI2LWFuYmVybmlj
LXJnMzUxbS5kdHMKPiA+IEBAIC0wLDAgKzEsNTQgQEAKPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPiA+ICsvKgo+ID4gKyAqIENvcHlyaWdodCAoYykg
MjAxOSBIYXJka2VybmVsIENvLiwgTHRkCj4gPiArICogQ29weXJpZ2h0IChjKSAyMDIwIFRoZW9i
cm9tYSBTeXN0ZW1zIERlc2lnbiB1bmQgQ29uc3VsdGluZyBHbWJICj4gPiArICogQ29weXJpZ2h0
IChjKSAyMDIyIE1heWEgTWF0dXN6Y3p5ayA8bWFjY3JhZnQxMjNtY0BnbWFpbC5jb20+Cj4gPiAr
ICovCj4gPiArCj4gPiArL2R0cy12MS87Cj4gPiArI2luY2x1ZGUgInJrMzMyNi1vZHJvaWQtZ28u
ZHRzaSIKPiA+ICsKPiA+ICsvIHsKPiA+ICsgICAgIG1vZGVsID0gIkFuYmVybmljIFJHMzUxTSI7
Cj4gPiArICAgICBjb21wYXRpYmxlID0gImFuYmVybmljLHJnMzUxbSIsICJyb2NrY2hpcCxyazMz
MjYiOwo+ID4gKwo+ID4gKyAgICAgYmF0dGVyeTogYmF0dGVyeSB7Cj4gPiArICAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAic2ltcGxlLWJhdHRlcnkiOwo+ID4gKyAgICAgICAgICAgICBjaGFyZ2Ut
ZnVsbC1kZXNpZ24tbWljcm9hbXAtaG91cnMgPSA8MzQ1MDAwMD47Cj4gPiArICAgICAgICAgICAg
IGNoYXJnZS10ZXJtLWN1cnJlbnQtbWljcm9hbXAgPSA8MzAwMDAwPjsKPiA+ICsgICAgICAgICAg
ICAgY29uc3RhbnQtY2hhcmdlLWN1cnJlbnQtbWF4LW1pY3JvYW1wID0gPDIwMDAwMDA+Owo+ID4g
KyAgICAgICAgICAgICBjb25zdGFudC1jaGFyZ2Utdm9sdGFnZS1tYXgtbWljcm92b2x0ID0gPDQy
MDAwMDA+Owo+ID4gKyAgICAgICAgICAgICBmYWN0b3J5LWludGVybmFsLXJlc2lzdGFuY2UtbWlj
cm8tb2htcyA9IDwxMDAwMDA+Owo+ID4gKyAgICAgICAgICAgICB2b2x0YWdlLW1heC1kZXNpZ24t
bWljcm92b2x0ID0gPDQxMDAwMDA+Owo+ID4gKyAgICAgICAgICAgICB2b2x0YWdlLW1pbi1kZXNp
Z24tbWljcm92b2x0ID0gPDM1MDAwMDA+Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICBvY3YtY2Fw
YWNpdHktY2Vsc2l1cyA9IDwyMD47Cj4gPiArICAgICAgICAgICAgIG9jdi1jYXBhY2l0eS10YWJs
ZS0wID0gIDw0MDQ2OTUwIDEwMD4sIDw0MDAxOTIwIDk1PiwgPDM5Njc5MDAgOTA+LCA8MzkxOTk1
MCA4NT4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwzODg4NDUw
IDgwPiwgPDM4NjE4NTAgNzU+LCA8MzgzMTU0MCA3MD4sIDwzNzk5MTMwIDY1PiwKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDM3NjgxOTAgNjA+LCA8Mzc0NTY1MCA1
NT4sIDwzNzI2NjEwIDUwPiwgPDM3MTE2MzAgNDU+LAo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICA8MzY5NjcyMCA0MD4sIDwzNjg1NjYwIDM1PiwgPDM2NzQ5NTAgMzA+
LCA8MzY2MzA1MCAyNT4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDwzNjQ5NDcwIDIwPiwgPDM2MzUyNjAgMTU+LCA8MzYxNjkyMCAxMD4sIDwzNTkyNDQwIDU+LAo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MzU3NDE3MCAwPjsKPiA+
ICsgICAgIH07Cj4gPiArCj4gPiArICAgICB2aWJyYXRvciB7Cj4gPiArICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAicHdtLXZpYnJhdG9yIjsKPiA+ICsgICAgICAgICAgICAgcHdtcyA9IDwmcHdt
MCAwIDEwMDAwMDAgMD47Cj4gPiArICAgICAgICAgICAgIHB3bS1uYW1lcyA9ICJlbmFibGUiOwo+
ID4gKyAgICAgfTsKPiA+ICt9Owo+ID4gKwo+ID4gKy9kZWxldGUtbm9kZS8gJmJ1aWx0aW5fZ2Ft
ZXBhZDsKPiA+ICsvZGVsZXRlLW5vZGUvICZ2Y2NfaG9zdDsgLyogY29uZmxpY3RzIHdpdGggcHdt
IHZpYnJhdGlvbiBtb3RvciAqLwo+ID4gKwo+ID4gKyZpbnRlcm5hbF9kaXNwbGF5IHsKPiA+ICsg
ICAgIGNvbXBhdGlibGUgPSAiZWxpZGEsa2QzNXQxMzMiOwo+ID4gK307Cj4gPiArCj4gPiArJnB3
bTAgewo+ID4gKyAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiArCj4gPiArJnJrODE3
X2NoYXJnZXIgewo+ID4gKyAgICAgbW9uaXRvcmVkLWJhdHRlcnkgPSA8JmJhdHRlcnk+Owo+ID4g
K307Cj4gPiAtLQo+ID4gMi4zOC4xCj4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
