Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5017BCCA471
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Oct 2025 14:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7N/9owsZFhb1ywuvzX33DmTd05hkiMXDLS+/yClZ35A=; b=DF7gyl79sZNIiU
	DVfvZ0kSQuH5NnL99jhQYPJdo/6pzAD7CWyz0ir5GQGoinbJSgQZElTCIZ9xEDIqdbNVgEoHdPheu
	KOMgv3Nss50/Z5amBatvNvDKDTqfHdllUPv8pqg/NCFYKjx4K2CSvV407XGnOzzSA/yvECEVqM5IX
	PLuUTw4n0rEjgX4o9NZGkeLoankHLGDwU4z9FSWwxHtxdb1WcwHCSAgdUnuOP1oKNX0xcGjS5IDlm
	WwRFYLlyAyu/dG9+eH/LBKBFlKy9D4HUGoBWnXy1WBPyGVzQfQUw5OckK9tghczxUonqpJ6YB/yEt
	vn2mMpOmclT1JzPjvV2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4hC9-0000000CbK5-3U8K;
	Fri, 03 Oct 2025 14:55:41 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4hC7-0000000CbJO-0gLd
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Oct 2025 14:55:40 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-4e4f8122660so23776111cf.0
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Oct 2025 07:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759503338; x=1760108138; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WmtbPxqvbUMAwpaMikq93NqcsvnJIS2FgaxENlamB/w=;
        b=TG745JEUbtdwu+dKdhI6SVqbQ1YDC69jmKh32IayPqpXdMzzp5W7Y5YZLd2WNXFdSs
         bSAjSwQcJP4ezicgLd7sO5hKo4HOIUEZJA/YQ3nGVPsyTmmUXHJ6cM7MjzOElc/wb7w0
         3MM66+fVLKt+3BgVaYZthSEnrjHbS0U3cVGGLj//KjUsjUfN00cawHXERcAXgF5ET9tl
         311ojpiAMt+8Fp91LbIdRZ8fd3uIEoUtASOLwLyzEc6cajvPSH/E/gX+IIufqFgsnCCn
         pr5TKYAQn0KY81OymxEd+9phs5a7clvIJ4UYNI5oUFmGLS2YnE6JQbPFx6dU+s7p1vzh
         l0yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759503338; x=1760108138;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WmtbPxqvbUMAwpaMikq93NqcsvnJIS2FgaxENlamB/w=;
        b=OnqOMTFfcg5RcEnXYaXkjPMToDqoQRC4PTV1Bjp0QQM0UiZOH+QOk4RP9OwYq8Tnmj
         tklSX7iadFu6B2UwoEZG8ZrZgOXcUe4nuhb6p9QFHRvIWHYSW/9Gc8IJ18pmAtazcV6R
         JSvrNoys2kZb5/ZME7zA3ge5pecf6gjc3wquY/nP3M7VvC1O2Bf+BaohCDUoqRO/46mT
         kaAveoXGhmmVV4862BWQlURisa6OBT++X753Q7/1q8NUohEf3Sd9XFlxGH5AOVIuLwrs
         6nXLEtA2HMLcE7z3nHDfb4t7/95P+ixJVEbdrcuBhMLb5LKsQbO7cVKK1BLaOqky1CCT
         gVCA==
X-Forwarded-Encrypted: i=1; AJvYcCWn6XbYh4JRHHZoGKFXI+anGaxsHY0vOYsE52RunXeKcUu80s5+kt39MolRgztAKMFvvCXXuWAQd9dJmlpRaw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwMtAy7YwgaBkz/YIEy55E6V4o/481Z7v6sNkuuYtFYe9Nw00zf
	40hxJoz6A0gguSm3IYPyNnKJeZQtKqgHDcc/cTtP6qAgcSa9toz1WqxA8EO1KVw99ku7VlZ9UiE
	19xol4L38bnKBDzFAHQwwNZYLZPbq8Xg=
X-Gm-Gg: ASbGncssuDCWP2OMC+EvAeXS+ZTbWZTgKJkVQhIN5lkstRfwDtXlGv/i21p1YdWCQ0p
	UBrMyrjQL4QJdFwvhGFT2vC9fHP+WDtHLbFLo/viAS/KSMUK6O31+iLHzcZ8nIqG2RRA4dj47wx
	7ka+2B1a6rJJMv8ig1js4qI8k0N+uLdcQxa583iq55MXtQvLqKt+b3po3DTjuAwA2Jstihduzg1
	mDp6l762Mo4HUEPGSftR+BpZO5nZtWmysKCiO3Qt/iB0AXP1EnRbKi+/n3WqFbS
X-Google-Smtp-Source: AGHT+IEHvSFx6aJopaLDBwFD78bU4fYMz9BJ0/a1hly+2/OCzn4OzJ5AVyA758ZdUYVd33wzD/pBPUkH88IUn5weYpQ=
X-Received: by 2002:a05:622a:53cb:b0:4d9:c572:f9b6 with SMTP id
 d75a77b69052e-4e576b06d58mr45151801cf.55.1759503337482; Fri, 03 Oct 2025
 07:55:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
 <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com>
 <a76f315f023a3f8f5435e0681119b4eb@manjaro.org> <CABjd4Ywh_AkbXHonx-8vL-hNY5LMLJge5e4oqxvUG+qe6OF-Og@mail.gmail.com>
 <61b494b209d7360d0f36adbf6d5443a4@manjaro.org> <CABjd4Yx0p0B=e00MjCpDDq8Z=0FtM0s9EN86WdvRimt-_+kh2w@mail.gmail.com>
 <CABjd4Yy14bpjzvFyc8et-=pmds5uwzfxNqcs7L=+XRXBogZEsQ@mail.gmail.com>
 <20251003133304.GA21023@pendragon.ideasonboard.com> <CABjd4YxbyUWghd1ya8UayFkAE-VWQSd5-J2QD0sV7WmS8AXkCg@mail.gmail.com>
In-Reply-To: <CABjd4YxbyUWghd1ya8UayFkAE-VWQSd5-J2QD0sV7WmS8AXkCg@mail.gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 3 Oct 2025 18:55:26 +0400
X-Gm-Features: AS18NWAkfyiM21fDkrQMRVecEChPCYc2oBEI6uCtjM6V0760dRy7eaYuH27unlo
Message-ID: <CABjd4YwtwUYFX4bX5vy=AFi=Dn1r6nxWtMvmeKBSjkvriNJtsQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix broken tsadc pinctrl binding
 for rk3588
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Alexander Shiyan <eagle.alexander923@gmail.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	devicetree@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, stable@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251003_075539_222599_8066D72B 
X-CRM114-Status: GOOD (  53.76  )
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

T24gRnJpLCBPY3QgMywgMjAyNSBhdCA2OjEz4oCvUE0gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtA
Z21haWwuY29tPiB3cm90ZToKPgo+IEhpIExhdXJlbnQsCj4KPiBPbiBGcmksIE9jdCAzLCAyMDI1
IGF0IDU6MzPigK9QTSBMYXVyZW50IFBpbmNoYXJ0Cj4gPGxhdXJlbnQucGluY2hhcnRAaWRlYXNv
bmJvYXJkLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gRnJpLCBKYW4gMjQsIDIwMjUgYXQgMTE6NDQ6
MzRQTSArMDQwMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiA+IE9uIEZyaSwgSmFuIDI0LCAy
MDI1IGF0IDk6MjPigK9QTSBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+IHdyb3Rl
Ogo+ID4gPiA+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDI6MzfigK9QTSBEcmFnYW4gU2ltaWMg
PGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4gPiA+ID4gPiBPbiAyMDI1LTAxLTI0IDExOjI1
LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+ID4gPiA+ID4gT24gRnJpLCBKYW4gMjQsIDIwMjUg
YXQgMjowNuKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPgo+ID4gPiA+ID4g
PiB3cm90ZToKPiA+ID4gPiA+ID4+IE9uIDIwMjUtMDEtMjQgMDk6MzMsIEFsZXhleSBDaGFya292
IHdyb3RlOgo+ID4gPiA+ID4gPj4gPiBPbiBGcmksIEphbiAyNCwgMjAyNSBhdCA5OjI24oCvQU0g
QWxleGFuZGVyIFNoaXlhbgo+ID4gPiA+ID4gPj4gPiA8ZWFnbGUuYWxleGFuZGVyOTIzQGdtYWls
LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+PiA+Pgo+ID4gPiA+ID4gPj4gPj4gVGhlcmUgaXMgbm8g
cGluY3RybCAiZ3BpbyIgYW5kICJvdHBvdXQiIChwcm9iYWJseSBkZXNpZ25lZCBhcwo+ID4gPiA+
ID4gPj4gPj4gIm91dHB1dCIpCj4gPiA+ID4gPiA+PiA+PiBoYW5kbGluZyBpbiB0aGUgdHNhZGMg
ZHJpdmVyLgo+ID4gPiA+ID4gPj4gPj4gTGV0J3MgdXNlIHByb3BlciBiaW5kaW5nICJkZWZhdWx0
IiBhbmQgInNsZWVwIi4KPiA+ID4gPiA+ID4+ID4KPiA+ID4gPiA+ID4+ID4gVGhpcyBsb29rcyBy
ZWFzb25hYmxlLCBob3dldmVyIEkndmUgdHJpZWQgaXQgb24gbXkgUmFkeGEgUm9jayA1QyBhbmQK
PiA+ID4gPiA+ID4+ID4gdGhlIGRyaXZlciBzdGlsbCBkb2Vzbid0IGNsYWltIEdQSU8wIFJLX1BB
MSBldmVuIHdpdGggdGhpcyBjaGFuZ2UuIEFzCj4gPiA+ID4gPiA+PiA+IGEgcmVzdWx0LCBhIHNp
bXVsYXRlZCB0aGVybWFsIHJ1bmF3YXkgY29uZGl0aW9uIChJJ3ZlIGNoYW5nZWQgdGhlCj4gPiA+
ID4gPiA+PiA+IHRzaHV0IHRlbXBlcmF0dXJlIHRvIDY1MDAwIGFuZCB0c2h1dCBtb2RlIHRvIDEp
IGRvZXNuJ3QgdHJpZ2dlciBhIFBNSUMKPiA+ID4gPiA+ID4+ID4gcmVzZXQsIGV2ZW4gdGhvdWdo
IGEgZGlyZWN0IGBncGlvc2V0IDAgMT0wYCBkb2VzLgo+ID4gPiA+ID4gPj4gPgo+ID4gPiA+ID4g
Pj4gPiBBcmUgYW55IGFkZGl0aW9uYWwgY2hhbmdlcyBuZWVkZWQgdG8gdGhlIGRyaXZlciBpdHNl
bGY/Cj4gPiA+ID4gPiA+Pgo+ID4gPiA+ID4gPj4gSSd2ZSBiZWVuIGRpZ2dpbmcgdGhyb3VnaCB0
aGlzIHBhdGNoIHRoZSB3aG9sZSBUU0FEQy9PVFAgdGhpbmcgaW4gdGhlCj4gPiA+ID4gPiA+PiBs
YXN0IGNvdXBsZSBvZiBob3VycywgYW5kIEFGQUlLIHNvbWUgcGFydHMgb2YgdGhlIHVwc3RyZWFt
IGRyaXZlciBhcmUKPiA+ID4gPiA+ID4+IHN0aWxsIG1pc3NpbmcsIGluIGNvbXBhcmlzb24gd2l0
aCB0aGUgZG93bnN0cmVhbSBkcml2ZXIuCj4gPiA+ID4gPiA+Pgo+ID4gPiA+ID4gPj4gSSd2ZSBn
b3Qgc29tZSBzbWFsbCBzdWdnZXN0aW9ucyBmb3IgdGhlIHBhdGNoIGl0c2VsZiwgYnV0IHRoZSBp
c3N1ZQo+ID4gPiA+ID4gPj4geW91IG9ic2VydmVkIGlzIG9idmlvdXNseSBvZiBoaWdoZXIgcHJp
b3JpdHksIGFuZCBJJ3ZlIHNpbmdsZWQgaXQgb3V0Cj4gPiA+ID4gPiA+PiBhcyB3ZWxsIHdoaWxl
IGRpZ2dpbmcgdGhyb3VnaCB0aGUgY29kZS4KPiA+ID4gPiA+ID4+Cj4gPiA+ID4gPiA+PiBDb3Vs
ZCB5b3UsIHBsZWFzZSwgdHJ5IHRoZSBwYXRjaCBiZWxvdyBxdWlja2x5LCB0byBzZWUgaXMgaXQg
Z29pbmcgdG8KPiA+ID4gPiA+ID4+IGZpeCB0aGUgaXNzdWUgeW91IG9ic2VydmVkPyAgSSd2ZSBn
b3Qgc29tZSAiSVJMIHN0dWZmIiB0byB0YWtlIGNhcmUgb2YKPiA+ID4gPiA+ID4+IHRvZGF5LCBz
byBJIGNhbid0IHRlc3QgaXQgbXlzZWxmLCBhbmQgaXQgd291bGQgYmUgZ3JlYXQgdG8ga25vdyBp
cyBpdAo+ID4gPiA+ID4gPj4gdGhlIHJpZ2h0IHBhdGggdG8gdGhlIHByb3BlciBmaXguCj4gPiA+
ID4gPiA+Pgo+ID4gPiA+ID4gPj4gZGlmZiAtLWdpdCBpL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hp
cF90aGVybWFsLmMKPiA+ID4gPiA+ID4+IHcvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJt
YWwuYwo+ID4gPiA+ID4gPj4gaW5kZXggZjU1MWRmNDhlZWY5Li42MmYwZTE0YThkOTggMTAwNjQ0
Cj4gPiA+ID4gPiA+PiAtLS0gaS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4g
PiA+ID4gPiA+PiArKysgdy9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gPiA+
ID4gPiA+PiBAQCAtMTU2OCw2ICsxNTY4LDExIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdGhlcm1h
bF9wcm9iZShzdHJ1Y3QKPiA+ID4gPiA+ID4+IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4g
PiA+ID4+ICAgICAgICAgIHRoZXJtYWwtPmNoaXAtPmluaXRpYWxpemUodGhlcm1hbC0+Z3JmLCB0
aGVybWFsLT5yZWdzLAo+ID4gPiA+ID4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB0aGVybWFsLT50c2h1dF9wb2xhcml0eSk7Cj4gPiA+ID4gPiA+Pgo+ID4gPiA+ID4gPj4g
KyAgICAgICBpZiAodGhlcm1hbC0+dHNodXRfbW9kZSA9PSBUU0hVVF9NT0RFX0dQSU8pCj4gPiA+
ID4gPiA+PiArICAgICAgICAgICAgICAgcGluY3RybF9zZWxlY3RfZGVmYXVsdF9zdGF0ZShkZXYp
Owo+ID4gPiA+ID4gPj4gKyAgICAgICBlbHNlCj4gPiA+ID4gPiA+PiArICAgICAgICAgICAgICAg
cGluY3RybF9zZWxlY3Rfc2xlZXBfc3RhdGUoZGV2KTsKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
SSBiZWxpZXZlIG5vICdlbHNlJyBibG9jayBpcyBuZWVkZWQgaGVyZSwgYmVjYXVzZSBpZiB0c2h1
dF9tb2RlIGlzIG5vdAo+ID4gPiA+ID4gPiBUU0hVVF9NT0RFX0dQSU8gdGhlbiB0aGUgVFNBREMg
ZG9lc24ndCB1c2UgdGhpcyBwaW4gYXQgYWxsLCBzbyB0aGVyZSdzCj4gPiA+ID4gPiA+IG5vIHJl
YXNvbiBmb3IgdGhlIGRyaXZlciB0byBtZXNzIHdpdGggaXRzIHBpbmN0cmwgc3RhdGUuIEknZCBy
YXRoZXIKPiA+ID4gPiA+ID4gcHV0IGEgbWlycm9yaW5nIGJsb2NrIHRvIHB1dCB0aGUgcGluIGJh
Y2sgdG8gaXRzICdzbGVlcCcgc3RhdGUgaW4gdGhlCj4gPiA+ID4gPiA+IHJlbW92YWwgZnVuY3Rp
b24gZm9yIHRoZSBUU0hVVF9NT0RFX0dQSU8gY2FzZS4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBZb3Un
cmUgcmlnaHQsIGJ1dCB0aGUgImVsc2UgYmxvY2siIGlzIHdoYXQgdGhlIGRvd25zdHJlYW0gZHJp
dmVyIGRvZXMsCj4gPiA+ID4KPiA+ID4gPiBEb2VzIGl0IHRob3VnaD8gSXQgb25seSBoYW5kbGVz
IHRoZSBUU0hVVF9NT0RFX0dQSU8gY2FzZSBhcyBmYXIgYXMgSQo+ID4gPiA+IGNhbiB0ZWxsIChv
ciBUU0hVVF9NT0RFX09UUCBpbiBkb3duc3RyZWFtIGRyaXZlciBsaW5nbykgWzFdCj4gPiA+ID4K
PiA+ID4gPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3JhZHhhL2tlcm5lbC9ibG9iL2VkYjNlZWVh
YTQ2NDNlY2FjNmY0MTg1ZDZkMzkxYzU3NDczNWZjYTEvZHJpdmVycy90aGVybWFsL3JvY2tjaGlw
X3RoZXJtYWwuYyNMMjU2NAo+ID4gPiA+Cj4gPiA+ID4gPiBzbyBJIHRoaW5rIGl0J3MgYmV0dGVy
IHRvIHNpbXBseSBzdGF5IG9uIHRoZSBzYWZlIHNpZGUgYW5kIGZvbGxvdyB0aGF0Cj4gPiA+ID4g
PiBsb2dpYyBpbiB0aGUgdXBzdHJlYW0gZHJpdmVyLiAgSXMgaXQgcmVhbGx5IG5lZWRlZD8gIFBl
cmhhcHMgbm90LCBidXQKPiA+ID4gPiA+IGl0IGFsc28gc2hvdWxkbid0IGh1cnQuCj4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiBXaWxsIHRyeSBhbmQgcmV2ZXJ0Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IEF3
ZXNvbWUsIHRoYW5rcyEKPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFAuUy4gSnVzdCBsb29rZWQgYXQg
dGhlIGRvd25zdHJlYW0gZHJpdmVyLCBhbmQgaXQgYWN0dWFsbHkgY2FsbHMKPiA+ID4gPiA+ID4g
VFNIVVRfTU9ERV9HUElPIFRTSFVUX01PREVfT1RQIGluc3RlYWQsIHNvIGl0IHNlZW1zIHRoYXQg
Im90cG91dCIgd2FzCj4gPiA+ID4gPiA+IG5vdCBhIHR5cG8gaW4gdGhlIGZpcnN0IHBsYWNlLiBT
byBtYXliZSB0aGUgcmlnaHQgYXBwcm9hY2ggaGVyZSBpcyBub3QKPiA+ID4gPiA+ID4gdG8gY2hh
bmdlIHRoZSBkZXZpY2UgdHJlZSBidXQgcmF0aGVyIGZpeCB0aGUgImdwaW8iIC8gIm90cG91dCIg
cGluY3RybAo+ID4gPiA+ID4gPiBzdGF0ZSBoYW5kbGluZyBpbiB0aGUgZHJpdmVyLgo+ID4gPiA+
ID4KPiA+ID4gPiA+IEluZGVlZCwgIm90cG91dCIgd2Fzbid0IGEgdHlwbywgYW5kIEkndmUgYWxy
ZWFkeSBhZGRyZXNzZWQgdGhhdCBpbiBteQo+ID4gPiA+ID4gY29tbWVudHMgdG8gQWxleGFuZGVy
J3MgcGF0Y2guICBXaWxsIHNlbmQgdGhhdCByZXNwb25zZSBhIGJpdCBsYXRlci4KPiA+ID4gPiA+
Cj4gPiA+ID4gPiBJIHRoaW5rIGl0J3MgYWN0dWFsbHkgYmV0dGVyIHRvIGFjY2VwdCB0aGUgYXBw
cm9hY2ggaW4gQWxleGFuZGVyJ3MKPiA+ID4gPiA+IHBhdGNoLCBiZWNhdXNlIHRoZSB3aG9sZSB0
aGluZyBhcHBsaWVzIHRvIG90aGVyIFJvY2tjaGlwIFNvQ3MgYXMgd2VsbCwKPiA+ID4gPiA+IG5v
dCBqdXN0IHRvIHRoZSBSSzM1ODgoUykuCj4gPiA+ID4KPiA+ID4gPiBBbnl3YXksIEkndmUganVz
dCB0cmllZCBpdCBhZnRlciBpbmNsdWRpbmcgdGhlIGNoYW5nZXMgYmVsb3csIGFuZAo+ID4gPiA+
IHdoaWxlIC9zeXMva2VybmVsL2RlYnVnL3BpbmN0cmwvcGluY3RybC1oYW5kbGVzIHNob3dzIHRo
ZSBleHBlY3RlZAo+ID4gPiA+IHBpbmN0cmxzIHVuZGVyIHRzYWRjLCB0aGUgZHJpdmVyIHN0aWxs
IGRvZXNuJ3Qgc2VlbSB0byBiZSB0cmlnZ2VyaW5nIGEKPiA+ID4gPiBQTUlDIHJlc2V0LiBXZWly
ZC4gQW55IHRob3VnaHRzIHdlbGNvbWUuCj4gPiA+Cj4gPiA+IEkgZm91bmQgdGhlIGN1bHByaXQu
ICJvdHBvdXQiIChvciAiZGVmYXVsdCIgaWYgd2UgZm9sbG93IEFsZXhhbmRlcidzCj4gPiA+IHN1
Z2dlc3RlZCBhcHByb2FjaCkgcGluY3RybCBzdGF0ZSBzaG91bGQgcmVmZXIgdG8gdGhlICZ0c2Fk
Y19zaHV0X29yZwo+ID4gPiBjb25maWcgaW5zdGVhZCBvZiAmdHNhZGNfc2h1dCAtIHRoZW4gdGhl
IFBNSUMgcmVzZXQgd29ya3MuCj4gPgo+ID4gSSd2ZSByZWNlbnRseSBicm91Z2h0IHVwIGFuIFJL
MzU4OFMtYmFzZWQgT3JhbmdlIFBpIENNNSBCYXNlIGJvYXJkLCBtYWRlCj4gPiBvZiBhIGNvbXB1
dGUgbW9kdWxlIChDTTUsIHNlZSBbMV0pIGFuZCBhIGNhcnJpZXIgYm9hcmQgKEJhc2UsIHNlZSBb
Ml0pLgo+ID4gVGhlIGNhcnJpZXIgYm9hcmQgaGFzIGEgcmVzZXQgYnV0dG9uIHdoaWNoIHB1bGxz
IHRoZSBQTUlDX1JFU0VUX0wgc2lnbmFsCj4gPiBvZiB0aGUgQ001IHRvIEdORCAoc2VlIHBhZ2Ug
MyBvZiB0aGUgc2NoZW1hdGljcyBpbiBbM10pLgo+ID4KPiA+IFdpdGggJnRzYWRjX3NodXRfb3Jn
IHRoZSByZXNldCBidXR0b24gaGFzIGFic29sdXRlbHkgbm8gZWZmZWN0LiBXaXRoCj4gPiAmdHNh
ZGNfc2h1dCBpdCByZXNldHMgdGhlIGJvYXJkIGFzIGV4cGVjdGVkLgo+Cj4gSW50ZXJlc3Rpbmcu
IFRoZSBUU0FEQyBzaG91bGRuJ3QgYWZmZWN0IHRoZSBwaHlzaWNhbCBidXR0b24gb3BlcmF0aW9u
Cj4gYXQgYWxsLCBpZiBpdCdzIHJlYWxseSB3aXJlZCB0byB0aGUgUE1JQyBhcyB0aGUgc2lnbmFs
IG5hbWUgaW1wbGllcy4KPiBUaGVyZSBpc24ndCBldmVuIGFueSBkZWZhdWx0IHB1bGwgdmFsdWUg
YXNzb2NpYXRlZCB3aXRoIHRoZSBUU0hVVCBwaW4KPiBjb25maWcuCgpPbiBhIHNlY29uZCB0aG91
Z2h0LCBJJ3ZlIGdvdCBhbm90aGVyIGh5cG90aGVzaXMuIFlvdXIgYmFzZWJvYXJkIG9ubHkKcHVs
bHMgdGhlIHJlc2V0IGxpbmUgdGhyb3VnaCAgYSAxMDAgT2htIHJlc2lzdG9yIHdoZW4gdGhlIGJ1
dHRvbiBpcwpwcmVzc2VkLiBTbyBpZiB0aGUgVFNIVVQgcGluIGlzIGluIGl0cyBkZWZhdWx0IHB1
c2gtcHVsbCBtb2RlIGFuZApzdGF5cyBoaWdoIHdoZW4gbm8gdGhlcm1hbCBydW5hd2F5IHJlc2V0
IGlzIHJlcXVlc3RlZCwgdGhlIHJlc2V0CmJ1dHRvbiB3b24ndCBwdWxsIHRoZSBsaW5lIGZ1bGx5
IHRvIHplcm8sIGFzIHRoZSBUU0hVVCBsaW5lIHB1bGxzIGl0CmhpZ2ggYXQgdGhlIHNhbWUgdGlt
ZS4KCklmIHlvdSBzd2l0Y2ggaXQgZnJvbSAmdHNhZGNfc2h1dF9vcmcgdG8gJnRzYWRjX3NodXQs
IHRoZW4gaXQgc3RvcHMKd29ya2luZyBwcm9wZXJseSBhcyB0aGUgdGhlcm1hbCBwcm90ZWN0aW9u
IHJlc2V0LCBhbmQgR1BJTzBfQTEgcmVtYWlucwpoaWdoLWltcGVuZGFuY2UsIHRodXMgYWxsb3dp
bmcgdGhlIHJlc2V0IGJ1dHRvbiB0byBmdW5jdGlvbiBldmVuCnRob3VnaCBpdHMgcHVsbCBpcyB0
b28gd2Vhay4KClNvIG1heWJlIGNoYW5nZSB0aGUgcGluIGNvbmZpZ3VyYXRpb24gb2YgJnRzYWRj
X3NodXRfb3JnIGluCnJrMzU4OC1iYXNlLXBpbmN0cmwuZHRzaSB0byBvcGVuIGRyYWluIGFuZCBy
ZXRyeT8KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
