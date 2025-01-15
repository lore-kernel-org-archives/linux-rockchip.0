Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11241C02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 12:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4tp0YQv3gok8wLPjREwa8J6M6qwN7Hzpni7qpu5h/q8=; b=Q3xl9Zv2Hir1k8
	/n5IkpOGBxOfGpSlgTUL+iABHEeO/zZEktMKWLFFajCXAKtseJ0U5Rew7fPwexTihMdJ4+PZHB1TN
	anhFir15u4qTDp1TQzdw2e/3OJBYNh85hga1eTg3KOlKKLQdYKu2gMXkEkrdeOCVj1hcYoLjO931i
	TVJfFtDtC/a0hNUMS3SfjirIJUfkE/7Svh01zMo+Vu2d0CSY36XrMsB6Zj9VWD9MgMeGyDLhJDvnE
	z7mjmwDQ6trsw9zaJBntB/Bvbs+twQOwPF7L+moqz5e9da+wsFSvYvHPOQwTm0NNTF9gkFdmPABoH
	uTrI9sEKOUn/vNXEWrKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY2TM-0000000BpHH-1Jmo;
	Wed, 15 Jan 2025 12:26:12 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY2TJ-0000000BpGc-2Z21;
	Wed, 15 Jan 2025 12:26:10 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5d3e6274015so11327556a12.0;
        Wed, 15 Jan 2025 04:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736943968; x=1737548768; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nMDth/XNkGKYagQ1DtWaoZiZXixgZHuQEB9UafKVxPs=;
        b=VwsjqGbHO976g1oA25HLgnEhEij5YRiCQIoBkf3LkZWxpsCL2pUaYzV1L6PW9UJ0OJ
         4Kuc88aU0/KEdWD4oLtBh8E7YqEqxMfzWAcTyWTLweZjfE1gEM6xlYtMFBxZ3dhSi5Kg
         Twx2mxZIv6SwOZzMqRR9mmMKqo21lZfbu0NAUgwbim0Afg5tA2o26rhR59VX8M2duOSW
         6tj/+P8qzsR//OczBXO0Z6GfldHenFDfbK+U/doSYkeg8mVjTJvhzBCKIP7mFZ2li+6v
         Db4EdhoQHtPrxQ5bI+aka2OzFwUt8y0U/yrSwEaQQYItbAKD24gGk4mBrCfvP2V2lJnR
         DW/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736943968; x=1737548768;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nMDth/XNkGKYagQ1DtWaoZiZXixgZHuQEB9UafKVxPs=;
        b=KQRX0kgA2mFcJjN+s+QB5SyxwlkpnGJOCoZJVga/eOtH/JU4XEzvaM0J+Lf7FwRu7Y
         vGPdk/qB5uLiiF5YlZX354suHEOAWS1aZ+E/6yqDdZY46CQmoVNvf1/w8csIy85NcxjV
         Y9ZGyaJ+UARm/Do5RkL844hOHD50H6Xllf02hzsDEzjcQJTn/+pCC1HF3W9NztItcYqG
         1WCefbcOTziyxf1n3I6MkXGCdcsxTGRG4qGqndUTe/Ds1hV/r53M3QWWk8QkVHqkaIcx
         rUrPSuzV6oKrvifrCZdlUhvEx/u/c7WQ34BRwER9z5Jesm9873seNWiSfWMHakrSpa00
         e0yw==
X-Forwarded-Encrypted: i=1; AJvYcCURKIQbhiFDBh4T8Y7TKRzNuTaoon4iqWVoCp/2NqigRV6KdE15Gc5UJKQWoajUynXsDCOHwKV+3MBn@lists.infradead.org, AJvYcCUlZaXLVwUe1cZYoVq9cxJjNvC3daBsCGHFzgeXT+JJKdNXPhhFB+sjOYti1y270UhEE0MdvvRPxJkN/hNcI5Y=@lists.infradead.org, AJvYcCX+x2sApIvXIY+bTaIgv8a4pdrTkSz6VBUqeHLTNADst7keRq4byTQ/JsXsXgHggrpZjYAr0Ymv5RQzwAvpIoj4@lists.infradead.org
X-Gm-Message-State: AOJu0YwW4G0wAiYltfi/AraNSWiw6xBaYcvGuFW55P650/9UbROoC8eb
	dSPX8wm1vr0r1GKwDkpU/SDC1MaB9UG4f78dfZ2PLo82iS/EdomWKaXZYSLwjdXxTJ7qcXFzF7c
	2Uf5Qc9AXvmP7EJHXZ3dEERF9bOIda1VLA0o=
X-Gm-Gg: ASbGnctUicoNS/pdT2BPvQy51/wN1iVMMDMcf1RU5Kb8qlUYGxVmobPmsz9rV5yFgNm
	l9pLbjCv1AsWCHdzdR1kYT3OMNN6a7EPZ6Vf5Apw=
X-Google-Smtp-Source: AGHT+IH+qvBvGoDx+jCJz+KZPOUstmywrTmIX10mbpjcqahNDzahOjIUSRJNMh25pq9DtMwv8pnkssopEovu8Dv+ZpM=
X-Received: by 2002:a05:6402:40c6:b0:5d0:b4ea:9743 with SMTP id
 4fb4d7f45d1cf-5d972e09f94mr25110291a12.8.1736943967555; Wed, 15 Jan 2025
 04:26:07 -0800 (PST)
MIME-Version: 1.0
References: <20250115012628.1035928-1-pgwipeout@gmail.com> <2EEA8028-8E4A-4588-A480-E5FF0F7BE82E@gmail.com>
In-Reply-To: <2EEA8028-8E4A-4588-A480-E5FF0F7BE82E@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 15 Jan 2025 07:25:53 -0500
X-Gm-Features: AbW1kvaJVj90ysXZJNFs0kxY37_GZ4QOK4IDTusf86cx6vh6a5LQgqqnUgTCLtk
Message-ID: <CAMdYzYo2W1hLgiH697AdRSUbhBU4rU2uB=N6EMWMD2-0R+VLBA@mail.gmail.com>
Subject: Re: [RFC PATCH v1 0/6] rockchip: add a functional usb3 phy driver for rk3328
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Michael Turquette <mturquette@baylibre.com>, kever.yang@rock-chips.com, 
	linux-phy@lists.infradead.org, wulf@rock-chips.com, zyw@rock-chips.com, 
	Dragan Simic <dsimic@manjaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, linux-clk@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Arnd Bergmann <arnd@arndb.de>, Jonas Karlman <jonas@kwiboo.se>, frank.wang@rock-chips.com, 
	Elaine Zhang <zhangqing@rock-chips.com>, Alex Bee <knaerzche@gmail.com>, 
	william.wu@rock-chips.com, Zhang Yubing <yubing.zhang@rock-chips.com>, 
	Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	Trevor Woerner <twoerner@gmail.com>, Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org, 
	Vinod Koul <vkoul@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_042609_653681_BDE8F79D 
X-CRM114-Status: GOOD (  30.46  )
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

T24gV2VkLCBKYW4gMTUsIDIwMjUgYXQgNjoyMuKAr0FNIFBpb3RyIE9uaXN6Y3p1awo8cGlvdHIu
b25pc3pjenVrQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gPiBXaWFkb21vxZvEhyBuYXBpc2Fu
YSBwcnpleiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPiB3IGRuaXUgMTUgc3R5IDIw
MjUsIG8gZ29kei4gMDI6MjY6Cj4gPgo+ID4KPiA+IFRoaXMgaXMgbXkgbmV3bHkgcmV3b3JrZWQg
cGh5IGRyaXZlciBmb3IgdGhlIHJrMzMyOCB1c2IzIHBoeS4gSXQgaXMKPiA+IGJhc2VkIGxvb3Nl
bHkgb24gbXkgb3JpZ2luYWwgdmVyc2lvbiwgYnV0IGFzIG9mIG5vdyBhbG1vc3Qgbm90aGluZyBv
Zgo+ID4gdGhlIG9yaWdpbmFsIGRyaXZlciByZW1haW5zLiBUaGUgbWFpbiBmaXggaGVyZSBpcyB0
aGUgZGlzY292ZXJ5IG9mCj4gPiBCSVQoNikgaW4gdGhlIGludGVycnVwdCBlbmFibGUgZ3JmIHJl
Z2lzdGVyIGZpeGVzIHRoZSB1c2IzIGRpc2Nvbm5lY3Rpb24KPiA+IGRldGVjdGlvbiAobW9zdGx5
KS4gT24gb2NjYXNpb24gYW4gdW5wb3B1bGF0ZWQgdXNiMyBodWIgd2lsbCB0YWtlCj4gPiBzZXZl
cmFsIHNlY29uZHMgdG8gZGlzY29ubmVjdC4gSG93ZXZlciB0aGlzIG1lYW5zIGFsbCBvZiB0aGUg
aGFjayBhcm91bmQKPiA+IHdvcmsgdG8gcmVzZXQgdGhlIHVzYiBjb3JlIG1hbnVhbGx5IGlzIG5v
IGxvbmdlciByZXF1aXJlZC4KPiA+Cj4gPiBJIGRpZCBteSBiZXN0IHRvIGRvY3VtZW50IGFsbCBy
ZWdpc3RlcnMgSSBjb3VsZCBmaW5kLiBBIGxvdCB3YXMgdGFrZW4KPiA+IGZyb20gZW1haWxzIGJl
dHdlZW4gbXlzZWxmIGFuZCBSb2NrY2hpcCdzIGVuZ2luZWVycywgbXVjaCB0aGFua3MgdG8KPiA+
IFdpbGxpYW0gV3UgPHd1bGZAcm9jay1jaGlwcy5jb20+IGZvciB0aGVpciBhc3Npc3RhbmNlIGhl
cmUuIFRoZSByZXN0IG9mCj4gPiB0aGUgY29uZmlnIGJpdHMgd2VyZSB0YWtlbiBmcm9tIHRoZSBy
azMzMjggYW5kIHJrMzIyOGggVFJNcyBhbmQgdGhlCj4gPiBkb3duc3RyZWFtIGRyaXZlci4gRXZl
cnl0aGluZyB0aGF0IEkgY291bGRuJ3QgZmluZCBhIGRlZmluaXRpb24gZm9yIGlzCj4gPiBwcmVm
aXhlZCBVTktfIG9yIFVOS05PV05fLiBUaGVyZSdzIGEgbG90IG9mIG9idmlvdXNseSB1c2VkIGNv
bmZpZ3VyYXRpb24KPiA+IHJlZ2lzdGVycyB3aXRoIHRoZSBwaXBlIGludGVyZmFjZSB0aGF0IGFy
ZSBhbHNvIHVuZG9jdW1lbnRlZC4KPiA+Cj4gPiBUaGUgb25seSBtYWpvciBidWcgSSBoYXZlIHNv
IGZhciBpcyBteSBBWDg4MTc5IHVzYjMgZ2lnYWJpdCBldGhlcm5ldAo+ID4gYWRhcHRlciAoUGx1
Z2dhYmxlIGJyYW5kKSBjcmFzaGVzIG91dCB3aGVuIGxhcmdlIGFtb3VudHMgb2YgZGF0YSBhcmUK
PiA+IHRyYW5zbWl0dGVkLiBJIHN1c3BlY3QgdGhpcyBpcyByZWxhdGVkIHRvIHRoZSBSWCBhbmQg
VFggdHVuaW5nLCBhcwo+ID4gbGVhdmluZyBpdCBhdCBkZWZhdWx0cyBtYWtlcyB0aGluZ3Mgd29y
c2UuIEFzIEkgYW0gbm90IGEgVVNCMyBlbmdpbmVlcgo+ID4gYW5kIEkgZG8gbm90IGhhdmUgdGhl
IHNwZWNpYWxpemVkIGtub3dsZWRnZSBhbmQgaGFyZHdhcmUgdG8gZGV0ZXJtaW5lCj4gPiB3aGF0
IGlzIGdvaW5nIHdyb25nLCBJIGFtIGhvcGluZyB0aGUgbWFpbGluZyBsaXN0IHdpbGwgaGF2ZSBh
biBhbnN3ZXIKPiA+IGhlcmUuCj4gPgo+ID4gUGxlYXNlIHRlc3QgYW5kIHJldmlldy4KPiA+Cj4g
PiBWZXJ5IFJlc3BlY3RmdWxseSwKPiA+IFBldGVyIEdlaXMKPiA+Cj4gPgo+ID4KPiA+IFBldGVy
IEdlaXMgKDYpOgo+ID4gIGNsazogcm9ja2NoaXA6IGZpeCB3cm9uZyBjbGtfcmVmX3VzYjNvdGcg
cGFyZW50IGZvciByazMzMjgKPiA+ICBkdC1iaW5kaW5nczogcGh5OiByb2NrY2hpcDogYWRkIHJr
MzMyOCB1c2IzIHBoeQo+ID4gIHBoeTogcm9ja2NoaXA6IGFkZCBkcml2ZXIgZm9yIHJrMzMyOCB1
c2IzIHBoeQo+ID4gIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgcmszMzI4IHVzYjMgcGh5IG5v
ZGUKPiA+ICBhcm02NDogZHRzOiByb2NrY2hpcDogZW5hYmxlIHRoZSB1c2IzIHBoeSBvbiByazMz
Mjgtcm9jIGJvYXJkcwo+ID4gIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBlbmFibGUgdGhlIHVzYjMg
cGh5IG9uIHJlbWFpbmluZyByazMzMjggYm9hcmRzCj4gPgo+ID4gLi4uL2JpbmRpbmdzL3BoeS9y
b2NrY2hpcCxpbm5vLXVzYjNwaHkueWFtbCAgIHwgMTY2ICsrKysKPiA+IC4uLi9ib290L2R0cy9y
b2NrY2hpcC9yazMzMjgtbmFub3BpLXIyLmR0c2kgICB8ICAxMiArCj4gPiAuLi4vZHRzL3JvY2tj
aGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0c2kgfCAgMTIgKwo+ID4gYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jLmR0c2kgIHwgIDEyICsKPiA+IC4uLi9ib290L2R0
cy9yb2NrY2hpcC9yazMzMjgtcm9jay1waS1lLmR0cyAgICB8ICAxMiArCj4gPiAuLi4vYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvY2s2NC5kdHMgfCAgMTIgKwo+ID4gYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjguZHRzaSAgICAgIHwgIDM5ICsKPiA+IGRyaXZlcnMv
Y2xrL3JvY2tjaGlwL2Nsay1yazMzMjguYyAgICAgICAgICAgICB8ICAgMiArLQo+ID4gZHJpdmVy
cy9waHkvcm9ja2NoaXAvS2NvbmZpZyAgICAgICAgICAgICAgICAgIHwgIDEwICsKPiA+IGRyaXZl
cnMvcGh5L3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArCj4gPiBkcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IzLmMgfCA4NjkgKysrKysrKysr
KysrKysrKysrCj4gPiAxMSBmaWxlcyBjaGFuZ2VkLCAxMTQ2IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPiA+IGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3JvY2tjaGlwLGlubm8tdXNiM3BoeS55YW1sCj4gPiBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMy5jCj4gPgo+
ID4gLS0KPiA+IDIuMzkuNQo+ID4KPiA+Cj4KPiBQZXRlciwKPiBJIGFwcGxpZWQgdGhpcyBhcyB0
ZXN0IHJ1biBvbiA2LjEyLjkgYW5kIGRtZXNnIHNheXM6Cj4KPiBbICAgMTYuMzY4NTE0XSByb2Nr
Y2hpcC11c2IzLXBoeSBmZjQ2MDAwMC51c2IzLXBoeTogY291bGQgbm90IGdldCB1c2IzcGh5IHJl
ZiBjbG9jawo+IFsgICAxNi4zNjg1MzRdIHJvY2tjaGlwLXVzYjMtcGh5IGZmNDYwMDAwLnVzYjMt
cGh5OiBwYXJzZSBkdCBmYWlsZWQgLTIKPiBbICAgMTYuMzY4NTQzXSByb2NrY2hpcC11c2IzLXBo
eSBmZjQ2MDAwMC51c2IzLXBoeTogcHJvYmUgd2l0aCBkcml2ZXIgcm9ja2NoaXAtdXNiMy1waHkg
ZmFpbGVkIHdpdGggZXJyb3IgLTIKPgo+IFRoaXMgaXMgb24gYmVlbGluayBhMSB0dmJveC4KPgo+
IERvIEkgbWlzcyBzb21ldGhpbmc/Cj4KCkdvb2QgTW9ybmluZywKClRoYXQgaXMgYW4gaW50ZXJl
c3RpbmcgZmFpbHVyZS4gVGhlIHNpbXBsZXN0IGFuc3dlciBpcyB0aGUKYGNsb2NrLW5hbWVzID0g
InJlZmNsay11c2Izb3RnIiwgInVzYjNwaHktb3RnIiwgInVzYjNwaHktcGlwZSI7YCBsaW5lCndh
cyBjb3JydXB0ZWQuIFBsZWFzZSBjaGVjayB0aGF0IHdoZW4gYXBwbGllZCBpdCBtYXRjaGVzIHRo
ZSBwYXRjaApleGFjdGx5LiBJZiB5b3UgYXJlIHN0aWxsIGhhdmluZyBwcm9ibGVtcywgeW91IGNh
biBzZW5kIG1lIHRoZQpjb21waWxlZCBEVEIgYW5kIEknbGwgdGFrZSBhIGxvb2suCgpWZXJ5IFJl
c3BlY3RmdWxseSwKUGV0ZXIgR2VpcwoKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
