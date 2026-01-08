Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8C7ACF6BE5
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 08:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSvsRi14y9rCfgcZVSYvedhMWWn+HvITq4W25vGxxNo=; b=LxJ2kBxTihWHGN
	lG+WfHtmC++TGxOGw+LsuAnQIPmNBHUkh54DiaCRE3CHdGujJiXATQUq3MRvlCaBy4xVLI/G+w+qq
	o2hbBIqjEV7lZAk+i/d+48YveqxVtilr5/gb0CqTO7BZKDvi4wPRs7g7mu+7EidVk+D47rNkg06Gm
	JLIvYY8g1i3fAXa2hygVcmmiyfh+d85SLVlnw1H4f4xubFz9reaPjzkV5lTdv+wxThRNZxQe2yPt/
	QApiomjg4shi8GpOUDIC3qCNSsoLsUTsOzcxBAfbKIfMsJbfWAdWqaCb8wuwZcKAi8iqN0i87ziOA
	tk3lrWIc2zMqSdlxqKZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdl6x-0000000GEHu-0W7P;
	Thu, 08 Jan 2026 08:11:15 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdl6v-0000000GEGr-01iF
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jan 2026 08:11:14 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-8b220ddc189so383477185a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Jan 2026 00:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767859871; x=1768464671; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f+Glvnfd6LAUkE51MfIE7FcPhOQSX7v4Jbr+9HBdyoY=;
        b=DOvsz1mnk8MHhZDl9YcIse4zxSeuLKaiO4w4Yj8vAPY9HLMBxOG18MF5eFwG8W9MvC
         EL3gNNWjUCk57c9Uzx9LtjZLxsVxfx4ADKjjoVsqPKn8XHCJEzEyhfAeHKCa2nfFPDfI
         Vo7eAbeZrEb3+d8Tx2zohp0jRFyrauxnJr1aRpD7PO7CTedGLEA1/0+zb5uK6BvEdPWm
         tpLpV0cIwC+Rj8yuhGPU3j/aqf4dCsY0vLSaomJzuKvUASzoivDxUw7k0ItDTb9LdD/H
         8IFQvHggxgvQTE9cGOP4IXGUTBg0hAXHeIc/MiflfYH1dijQoIrtBm4tkemviI2zaDya
         ZIZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767859871; x=1768464671;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=f+Glvnfd6LAUkE51MfIE7FcPhOQSX7v4Jbr+9HBdyoY=;
        b=OCea+5cmcV98QOAGUBgfTKlhSAgP5iR2xqbbV5UpBnfkqRq6ib5+2SBgl4T0rvOWle
         OPyoF4rtGX99jdnAv45joZGY1ewMQKSP87H2m3VaImU3O0BhiDuVW5m2KqZ/K5EwMGsA
         GOPfzg6U+r2Lwp0XqNMgvQL+jCReYOBRBhIiMNN/+aPC9KARtgTdEThB1rwzjepwV2Hr
         T635Z1HTxZHQJztpoDE5HTQb4WNK3LgzEErVR/yvzF+BSeDFFIy08ZmX3WpIF1k6ShZL
         vwhsdU4QwCEsWinLw2Xipcfn6ADJPyY+kuMOFxld7n0lzDdClMc+IFnzIaPe2wzBDVHj
         fgcw==
X-Forwarded-Encrypted: i=1; AJvYcCU4s5aqavCvuHxJR+71iNFVZA8eTSMy57Nz1jQ7LF51wdh49PJmqTPJQQU1CUddXneKo58A6VXORaRgkSuQhg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1R6sOaYoaWnHpY33NTTowBLHHPIb+BfhRBoLggG7TSE+HeUVt
	bKJ8/Y9i2Wrlk2mJaO+PJRt4FkX6/2vL5gGeT/XAlY2djRglfWKtRByLkHLOUDehlg0lgd6PJxp
	elQrGmSut4f7RI7m6tYh1ch8Flkp01mw=
X-Gm-Gg: AY/fxX7NP3a0gFAW452zcI35at7GXuR59URsJrCv5c+Yn3iH0LVDov2WeYKrlIrVG4h
	kjI5dPdu7k3BtToNRytdc8uw0ZJarJNNhEqe70zAtqzpstdaTbSxl49Rq4I/FUoRfL3OyKbSezB
	Zq71vvFe/+wCkzflMk7FS8gSGNVHTU8BLGckBkbAgnHkx5wYD2PtTrt61ksKj7717eFV1bhcRUB
	KNHKZxei/JXZQsDPDkObQX7sPc96/2isQSpFiLXBlsSp2IRpjJNvJDyEhoGyhB38q40flmC+JjW
	2SMM4oSnmUcGn1aPt5dSapcVwEguYWxktESPjDE=
X-Google-Smtp-Source: AGHT+IEdAUONxF+e/EKeQFSKSnMmXdXqTd3nqcmKjl1wsNzyIlWHOka5hlCEOh+2jDUpz0UQJe/gsSFaF+VGtSBhkSM=
X-Received: by 2002:a05:622a:351:b0:4f1:def3:cc00 with SMTP id
 d75a77b69052e-4ffb4a2b7c0mr65492071cf.82.1767859870974; Thu, 08 Jan 2026
 00:11:10 -0800 (PST)
MIME-Version: 1.0
References: <20260107070322.323-1-kernel@airkyi.com> <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch> <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
 <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com> <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
In-Reply-To: <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 8 Jan 2026 12:11:02 +0400
X-Gm-Features: AQt7F2rIL0j1pGTpV955PkaH5TbgcjPMfDl1RCgaVeY4cqitQ7C4U5-dQqanFs4
Message-ID: <CABjd4YxwD_q_FrEuPw_GY+vG6700Vd_weWqdcFn2C3V0fqpO-Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>, Andrew Lunn <andrew@lunn.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>, 
	John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Dragan Simic <dsimic@manjaro.org>, Michael Riesch <michael.riesch@collabora.com>, 
	Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andy Yan <andy.yan@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_001113_043249_6B09D29B 
X-CRM114-Status: GOOD (  26.33  )
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

T24gVGh1LCBKYW4gOCwgMjAyNiBhdCAxMjowMuKAr1BNIENoYW95aSBDaGVuIDxrZXJuZWxAYWly
a3lpLmNvbT4gd3JvdGU6Cj4KPiBPbiAxLzgvMjAyNiAzOjQyIFBNLCBDaGFveWkgQ2hlbiB3cm90
ZToKPiA+IEhlbGxvIEFsZXhleSwgQW5kcmV3LAo+ID4KPiA+IE9uIDEvOC8yMDI2IDI6NTMgUE0s
IEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4+IE9uIFdlZCwgSmFuIDcsIDIwMjYgYXQgMTA6MTji
gK9QTSBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+IHdyb3RlOgo+ID4+Pgo+ID4+Pj4gKyZn
bWFjMCB7Cj4gPj4+PiArICAgICBjbG9ja19pbl9vdXQgPSAib3V0cHV0IjsKPiA+Pj4+ICsgICAg
IHBoeS1tb2RlID0gInJnbWlpLXJ4aWQiOwo+ID4+Pgo+ID4+PiByZ21paS1yeGlkIGlzIG9kZC4g
RG9lcyB0aGUgUENCIHJlYWxseSBoYXZlIGFuIGV4dHJhIGxvbmcgVFggY2xvY2sKPiA+Pj4gbGlu
ZSwgYnV0IGEgc2hvcnQgUlggY2xvY2sgbGluZT8KPiA+Pj4KPiA+Pj4gVHJ5IGNoYW5naW5nIHRo
aXMgdG8gcmdtaWktaWQsIGFuZCBkcm9wIHRoZSB0eF9kZWxheSBwcm9wZXJ0eS4KPiA+Pgo+ID4+
IEFjdHVhbGx5IGl0IHdvdWxkIGJlIGdyZWF0IGlmIFJvY2tjaGlwIGNvdWxkIGNsYXJpZnkgdGhl
IGRlbGF5Cj4gPj4gZHVyYXRpb24gaW50cm9kdWNlZCBieSBhIHNpbmdsZSBkZWxheSBlbGVtZW50
IGluIEdNQUMtSU9NVVggZGVsYXkKPiA+PiBsaW5lcywgd2hpY2ggYXJlIGNvbnRyb2xsZWQgaW4g
dGhlIEdNQUMgZHJpdmVyIGJ5IHRoZSB7dHgscnh9X2RlbGF5Cj4gPj4gcHJvcGVydGllcy4gTWF5
YmUgd2UgY291bGQgdGhlbiBzd2l0Y2ggdG8gdXNpbmcKPiA+PiB7dHgscnh9X2ludGVybmFsX2Rl
bGF5X3BzIGZvciBmaW5lLXR1bmluZyB0aGUgZGVsYXlzIG9uIHRoZSBHTUFDIHNpZGUKPiA+PiBh
cyBlbnZpc2FnZWQgaW4gRFQgYmluZGluZ3MgWzFdLCBhbmQgdXNlIHBoeS1tb2RlID0gInJnbWlp
LWlkIgo+ID4+IHRocm91Z2hvdXQuIENoYW95aSwgYW55IGNoYW5jZSB5b3UgY291bGQgYXNrIGFy
b3VuZCBpbiB5b3VyIGhhcmR3YXJlCj4gPj4gdGVhbT8KPiA+Pgo+ID4+IEN1cnJlbnRseSB0aG91
Z2ggcmVtb3ZpbmcgdGhlIGRlbGF5cyBhdCBHTUFDIHNpZGUgYWx0b2dldGhlciBjYXVzZXMKPiA+
PiB1bnN0YWJsZSBsaW5rIG9wZXJhdGlvbiAtIHNlZSBbMl0gZm9yIGV4YW1wbGUuCj4gPj4KPiA+
PiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZXRoZXJuZXQtY29udHJvbGxlci55YW1s
I0wzNDItTDM0Nwo+ID4+IFsyXSBodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2hhcmR3YXJl
LWVuYWJsZW1lbnQvcm9ja2NoaXAtMzU4OC9saW51eC8tL2NvbW1pdC8zNzJmM2U5YWU2MmNjNjJj
ZGYyNTQzMzkxZWE1N2JlNmJiNTQ4YTBjCj4gPgo+ID4gU29ycnksIHRoaXMgcHJvYmxlbSBoYXMg
YmVlbiBkaXNjdXNzZWQgbWFueSB0aW1lcyBiZWZvcmUuIEl0J3MgYmVjYXVzZQo+ID4gdGhlIGdt
YWMgb24gdGhlIFJvY2tjaGlwIHBsYXRmb3JtIGN1cnJlbnRseSByZWxpZXMgb24gc2V0dGluZyB0
aGUKPiA+IGNvcnJlc3BvbmRpbmcgZGVsYXkgdmlhIHBoeS1tb2RlIFszXS4KPiA+Cj4gPiBbM10g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL21xb3lqbjdtbnE2dG10Nm42b2V2NHdhM2hlcmph
eGx1cG1sMmZtY2FtcHdpYWp2ajRhQHI1enM0ZDNqZG01cC8KPiA+Cj4gPiBUaGUgZGVsYXkgaW50
cm9kdWNlZCBieSB0aGUgZGVsYXkgbGluZSBpcyBub3QgYWJzb2x1dGUuIEluIHJlYWxpdHksCj4g
PiBpdCBkZXBlbmRzIG9uIGZhY3RvcnMgc3VjaCBhcyB0aGUgY2hpcCdzIGRlc2lnbiBhbmQgcHJv
Y2VzcyB0ZWNobm9sb2d5Lgo+ID4KPiA+IEFuZCBmb3IgUkszNTc2LCB5b3UgY2FuIGFzc3VtZSB0
aGF0Ogo+ID4KPiA+ICAgICAgIHRpbWUobnMpID0gMC4wNTc5ICogZGVsYXlfbGluZV9jb3VudCAr
IDAuMTA1Cj4gPgo+ID4gRm9yIGV4YW1wbGUsIHR4X2RlbGF5ID0gPDB4MjA+IG1lYW5zOgo+ID4K
PiA+ICAgICAgIHRpbWUgPSAwLjA1NzkgKiAweDIwICsgMC4xMDUgbnMgPSAxLjk1NzggbnMKPiA+
Cj4gPiBBbmQgSSBiZWxpZXZlIHt0eCxyeH1faW50ZXJuYWxfZGVsYXlfcHMgaXMgaW5kZWVkIGEg
Z29vZCBpZGVhLgo+ID4gSSdsbCB0cnkgdG8gYWRkIHRoZW0gaW4gdjMuIFRoYW5rcy4KPiA+Cj4K
PiBJJ3ZlIGFsc28gc2VlIHNvbWUgZHQgdGhhdCB1c2Uge3R4LHJ4fV9pbnRlcm5hbF9kZWxheV9w
cyBpbnNpZGUgdGhlIFBIWSwKPiBhbmQgY29tcGFyZWQgdG8gZG9pbmcgaXQgaW4gdGhlIE1BQywg
d2hpY2ggb25lIGlzIHRoZSBiZXR0ZXIgY2hvaWNlPwoKWW91ciBQSFkgZGVmYXVsdHMgdG8gMTk1
MHBzIGluIHJnbWlpLWlkIFsxXSwgc28gYWRkaW5nIGFueXRoaW5nIG9uIHRvcApvZiB0aGF0IG9u
IEdNQUMgc2lkZSB3b3VsZCBsYW5kIHlvdSB3aXRoIGEgbG9uZ2VyIHRvdGFsIFRYIGRlbGF5IHRo
YW4KeW91IGN1cnJlbnRseSBnZXQgYWNjb3JkaW5nIHRvIHRoZSBjb2VmZmljaWVudHMgeW91J3Zl
IGp1c3QgcG9zdGVkCigxNzg0LjFwcykuIEkgd291bGQgc2F5IGdvIGZvciAidHgtaW50ZXJuYWwt
ZGVsYXktcHMgPSA8MTgwMD4iIG9uIHRoZQpQSFkgc2lkZSBmb3IgdGhlIGNsb3Nlc3QgbWF0Y2gu
CgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvbW90b3Jjb21tJTJDeXQ4eHh4LnlhbWwj
TDM2CgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
