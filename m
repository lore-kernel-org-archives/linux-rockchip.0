Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7C31E7D0AA
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Sep 2023 20:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGOKZq9cvUksMkyVdAnx/Mub7933ZRLpymjp4txYrSQ=; b=N5a7BsOtXesTbd
	RW18RAfAixCtAwxn3zbGvpNW3h7Ml1LWTEpRYnIASyOQCRJluXo8bNWQ6F9rAyUePEKytc0tJ5DBU
	z3YDg+2J2UbrwM/scYDq+K0hLWvE7G7O1JaWId6OaPCZdtPNhSlPYukOtJqd/3k9wk8xv+QrH4wzu
	P6PHDQzjKr4f2jGMj0a3Sb7Yg0m0vJ8spbF0egIXIVNcG6sRf1KmjQ/yNAtC+UH7+os1LzTG3uAQG
	9yXZorsgmko4RFKo7ZjbxkGVgnusj7xb6hhOik/f4hluGg/h9XC9L8uYVRAQKm5ncuwQz1Y5A0KM5
	dSVghwF7xo+fxWfdKqqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjQcd-0077oI-2f;
	Thu, 21 Sep 2023 20:50:03 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjQca-0077mH-1B
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Sep 2023 20:50:02 +0000
Received: by mail-qt1-x829.google.com with SMTP id d75a77b69052e-41761e9181eso23861cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Sep 2023 13:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695329398; x=1695934198; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qh6IU7l+47WVk29lRNIwzcthY2OavZyY10j7V0QRROQ=;
        b=P81K6a4YAaGoKpB+a7taVTZSaotCP0dcvxuHXPbr/vMs31kYU2y60xRK7SJvrKwGUM
         1biN8GtL3v0KBkT1H3krL78l6/Tc30+P5iErLk37yz6O+tBI9IZ0IvtUSKd2BBomFDTZ
         QenoBGJ242RA/7NnchxEdIZMnFHoU/XEEs/4jnsj/D53PRJ8LuAIB952ypLxsMrXPz9j
         j+Xmj+q8mebFwu0oA15WPaH9PRWZQ5YGiQKObtp9uHkCHfzE5WqJ1lh/Ksv1QKgl4ESY
         w/UjqFpr38JrFibipKxEMGjbAE0DWhFVdeH0/5rIEmXNmVnAA2t/MAPDjhmR23LsLrkA
         P41A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695329398; x=1695934198;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qh6IU7l+47WVk29lRNIwzcthY2OavZyY10j7V0QRROQ=;
        b=t2ULqC9ZZ4kAyJIikzVq8HcG3DdkzOB+LaTsw3rsGuj9kuepfp5WIH5j8p6diWiqFv
         ye4XIOor3gxORY1qr2vS9MFA9HDhHM4WO4Vc8GMyAy13MDW5e0vPJ4sP3PVFlBGyCBWN
         wT11RSG4Y0H1ieUSxx6c5NubMgLyD9mhtF1uXskpzVqY7tBq8xX2erp5ER3A4rxPXLWX
         A+LQO0YnnseuWY1px8jFb/zprkcgBsY4Hekx2THcz31x/SOTMb9Otk0gRS1Y2r5uXIEB
         Ajv5yEcuS3OHKr9JqmtHQVjt3clMFF/4Gx0yoI8iQd6gatanJwQmmhGcokBF1i/t4MGV
         /Oog==
X-Gm-Message-State: AOJu0YwAdRFknDY+diIpRxIFjUFah5OWCMofFvOh9DmWHg0vv1iKbMal
	JyO1Lb9G7m+tgnxAh2DUHSMYeyKF1Y0sBREZDIacaw==
X-Google-Smtp-Source: AGHT+IFGwQ1FeVPJ97J3G1IlVsExp5/EPDgKPo6q2mVerDf97KxTlSJlpjszXhIfW9sENf2e372EC5OpENIRboN35R0=
X-Received: by 2002:a05:622a:1490:b0:417:ccca:25a3 with SMTP id
 t16-20020a05622a149000b00417ccca25a3mr24132qtx.12.1695329398122; Thu, 21 Sep
 2023 13:49:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-2-s.hauer@pengutronix.de> <CACRpkdYxRdToUM3JcEeNK_K87D5WDzzSLvVEbtqqdQEhz3k_Ow@mail.gmail.com>
 <CAGb2v65G-8EECNjqnpKCxqAD5nATAb0S7AA_WMiGXYOR1avrvg@mail.gmail.com>
 <20230913065843.GF637806@pengutronix.de> <CAGETcx8rO=aykjb6=5k0wpOyscqokNwSL6w-AHnodY7pNXyzGQ@mail.gmail.com>
 <20230915065120.GQ637806@pengutronix.de> <CAGETcx-stUfkVmkwGhj7iBWfCRsY5uZ=CxJdX9pPY6OO6oGUhg@mail.gmail.com>
 <20230921135756.GT637806@pengutronix.de>
In-Reply-To: <20230921135756.GT637806@pengutronix.de>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 21 Sep 2023 13:49:21 -0700
Message-ID: <CAGETcx8Ora87tbjVek-2WZW1QqHp+uB63r4w73ekBByPUDdTpw@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: rockchip: add support for io-domain dependency
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Chen-Yu Tsai <wens@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, kernel@pengutronix.de, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_135000_404110_3EE66912 
X-CRM114-Status: GOOD (  52.85  )
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

T24gVGh1LCBTZXAgMjEsIDIwMjMgYXQgNjo1N+KAr0FNIFNhc2NoYSBIYXVlciA8cy5oYXVlckBw
ZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBXZWQsIFNlcCAyMCwgMjAyMyBhdCAwMzowMDoy
OFBNIC0wNzAwLCBTYXJhdmFuYSBLYW5uYW4gd3JvdGU6Cj4gPiBPbiBUaHUsIFNlcCAxNCwgMjAy
MyBhdCAxMTo1MeKAr1BNIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4gd3Jv
dGU6Cj4gPiA+Cj4gPiA+IE9uIFdlZCwgU2VwIDEzLCAyMDIzIGF0IDAxOjQ4OjEyUE0gLTA3MDAs
IFNhcmF2YW5hIEthbm5hbiB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIFNlcCAxMiwgMjAyMyBhdCAx
MTo1OOKAr1BNIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4g
PiA+ID4gPgo+ID4gPiA+ID4gT24gV2VkLCBTZXAgMTMsIDIwMjMgYXQgMTI6Mzc6NTRQTSArMDgw
MCwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBUdWUsIFNlcCAxMiwgMjAyMyBh
dCA0OjA34oCvUE0gTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPiB3cm90
ZToKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IFRvcCBwb3N0aW5nIHRvIGJyaW5nIFNhcmF2
YW5hIEthbm5hbiBpbnRvIHRoaXMgZGlzY3Vzc2lvbi4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4g
PiA+IFRoaXMgbG9va3MgbGlrZSBhIGJpZyBoYWNrIHRvIG1lLCBTYXJhdmFuYSBoYXMgYmVlbiB3
b3JraW5nCj4gPiA+ID4gPiA+ID4gdGlyZWxlc3NseSB0byBtYWtlIHRoZSBkZXZpY2UgdHJlZSBw
cm9iZSBvcmRlciAic29ydCBpdHNlbGYgb3V0Igo+ID4gPiA+ID4gPiA+IGFuZCBJIGFtIHByZXR0
eSBzdXJlIHRoaXMgaXNzdWUgbmVlZHMgdG8gYmUgZml4ZWQgYXQgdGhlIERUCj4gPiA+ID4gPiA+
ID4gY29yZSBsZXZlbCBhbmQgbm90IGluIGEgZHJpdmVyLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4g
PiBXZSBjb3VsZCBtZXJnZSBhbGwgdGhlIElPIGRvbWFpbiBzdHVmZiBpbnRvIHRoZSBwaW5jdHJs
IG5vZGUvZHJpdmVyLAo+ID4gPiA+ID4gPiBsaWtlIGlzIGRvbmUgZm9yIEFsbHdpbm5lcj8gTWF5
YmUgdGhhdCB3b3VsZCBzaW1wbGlmeSB0aGluZ3MgYSBiaXQ/Cj4gPiA+ID4gPgo+ID4gPiA+ID4g
SSB0aG91Z2h0IGFib3V0IHRoaXMgYXMgd2VsbC4gT24gUm9ja2NoaXAgdGhlIHBpbmN0cmwgZHJp
dmVyIGFuZCB0aGUgSU8KPiA+ID4gPiA+IGRvbWFpbiBkcml2ZXIgZXZlbiB3b3JrIG9uIHRoZSBz
YW1lIHJlZ2lzdGVyIHNwYWNlLCBzbyBwdXR0aW5nIHRoZXNlCj4gPiA+ID4gPiBpbnRvIGEgc2lu
Z2xlIG5vZGUvZHJpdmVyIHdvdWxkIGV2ZW4gZmVlbCBtb3JlIG5hdHVyYWwgdGhhbiB3aGF0IHdl
IGhhdmUKPiA+ID4gPiA+IG5vdy4KPiA+ID4gPgo+ID4gPiA+IFRoZW4gd2Ugc2hvdWxkIHRyeSB0
byBkbyB0aGlzIGFuZCBmaXggYW55IGlzc3VlcyBibG9ja2luZyB1cy4KPiA+ID4gPgo+ID4gPiA+
ID4gSG93ZXZlciwgd2l0aCB0aGF0IHRoZSBwaW5jdHJsIG5vZGUgd291bGQgZ2V0IHRoZSBzdXBw
bGllcyB0aGF0IHRoZSBJTwo+ID4gPiA+ID4gZG9tYWluIG5vZGUgbm93IGhhcyBhbmQgd2Ugd291
bGQgbmV2ZXIgZ2V0IGludG8gdGhlIHByb2JlIG9mIHRoZSBwaW5jdHJsCj4gPiA+ID4gPiBkcml2
ZXIgZHVlIHRvIHRoZSBjaXJjdWxhciBkZXBlbmRlbmNpZXMuCj4gPiA+ID4KPiA+ID4gPiBGcm9t
IGEgZndfZGV2bGluayBwZXJzcGVjdGl2ZSwgdGhlIGNpcmN1bGFyIGRlcGVuZGVuY3kgc2hvdWxk
bid0IGJlIGEKPiA+ID4gPiBwcm9ibGVtLiBJdCdzIHNtYXJ0IGVub3VnaCB0byByZWNvZ25pemUg
YWxsIGN5Y2xlIHBvc3NpYmlsaXRpZXMgKHNpbmNlCj4gPiA+ID4gNi4zKSBhbmQgbm90IGVuZm9y
Y2Ugb3JkZXJpbmcgYmV0d2VlbiBub2RlcyBpbiBhIGN5Y2xlLgo+ID4gPiA+Cj4gPiA+ID4gU28s
IHRoaXMgaXMgcmVhbGx5IG9ubHkgYSBtYXR0ZXIgb2YgcGluY3RybCBub3QgdHJ5aW5nIHRvIGRv
Cj4gPiA+ID4gcmVndWxhdG9yX2dldCgpIGluIGl0cyBwcm9iZSBmdW5jdGlvbi4gWW91IG5lZWQg
dG8gZG8gdGhlCj4gPiA+ID4gcmVndWxhdG9yX2dldCgpIHdoZW4gdGhlIHBpbnMgdGhhdCBkZXBl
bmQgb24gdGhlIGlvLWRvbWFpbiBhcmUKPiA+ID4gPiByZXF1ZXN0ZWQuIEFuZCBpZiB0aGUgcmVn
dWxhdG9yIGlzbid0IHJlYWR5IHlldCwgcmV0dXJuIC1FUFJPQkVfREVGRVI/Cj4gPiA+Cj4gPiA+
IFRoYXQncyBiYXNpY2FsbHkgd2hhdCBteSBzZXJpZXMgZG9lcyBhbHJlYWR5LCBJIHJldHVybiAt
RVBST0JFX0RFRkVSCj4gPiA+IGZyb20gdGhlIHBpbmN0cmwgZHJpdmVyIHdoZW4gYSBwaW4gaXMg
cmVxdWVzdGVkIGFuZCB0aGUgSU8gZG9tYWluIGlzIG5vdAo+ID4gPiB5ZXQgcmVhZHkuCj4gPiA+
Cj4gPiA+ID4KPiA+ID4gPiBJcyB0aGVyZSBzb21ldGhpbmcgdGhhdCBwcmV2ZW50cyB1cyBmcm9t
IGRvaW5nIHRoYXQ/Cj4gPiA+Cj4gPiA+IE5vLiBXZSBjb3VsZCBkbyB0aGF0LCBidXQgaXQgd291
bGRuJ3QgYnV5IHVzIGFudGhpbmcuIEkgYW0gZ2xhZCB0byBoZWFyCj4gPiA+IHRoYXQgZndfZGV2
bGluayBjYW4gYnJlYWsgdGhlIGNpcmN1bGFyIGRlcGVuZGVuY2llcy4gV2l0aCB0aGlzIHdlIGNv
dWxkCj4gPiA+IGFkZCB0aGUgc3VwcGxpZXMgdG8gdGhlIHBpbmN0cmwgbm9kZSBhbmQgdGhlIHBp
bmN0cmwgZHJpdmVyIHdvdWxkIHN0aWxsCj4gPiA+IGJlIHByb2JlZC4KPiA+ID4KPiA+ID4gV2l0
aCB0aGUgSU8gZG9tYWluIHN1cHBsaWVzIGFkZGVkIHRvIHRoZSBwaW5jdHJsIG5vZGUgb3VyIGJp
bmRpbmcgd291bGQKPiA+ID4gYmUgY2xlYW5lciwgYnV0IHN0aWxsIHdlIHdvdWxkIGhhdmUgdG8g
ZGVmZXIgcHJvYmUgb2YgbWFueSByZXF1ZXN0ZWQKPiA+ID4gcGlucyB1bnRpbCBmaW5hbGx5IHRo
ZSBJMkMgZHJpdmVyIHByb3ZpZGluZyBhY2Nlc3MgdG8gdGhlIFBNSUMgY29tZXMKPiA+ID4gYWxv
bmcuIFdlIGFsc28gc3RpbGwgbmVlZCBhICJEbyBub3QgZGVmZXIgcHJvYmUgZm9yIHRoZXNlIHBp
bnMiIHByb3BlcnR5Cj4gPiA+IGluIHRoZSBwaW5ncnAgbmVlZGVkIGZvciB0aGUgSTJDIGRyaXZl
ci4KPiA+Cj4gPiBTb3JyeSBhYm91dCB0aGUgc2xvdyByZXBseS4gQmVlbiBhIGJpdCBidXN5Lgo+
ID4KPiA+IE9oLCB0aGlzIGlzIG5vdCB0cnVlIHRob3VnaC4gV2l0aCB0aGUgZXhhbXBsZSBiaW5k
aW5nIEkgZ2F2ZSwKPiA+IGZ3X2Rldmxpbmsgd2lsbCBhdXRvbWF0aWNhbGx5IGRlZmVyIHRoZSBw
cm9iZSBvZiBkZXZpY2VzIHRoYXQgZGVwZW5kCj4gPiBvbiBwaW5zIHRoYXQgbmVlZCBhbiBpb2Rv
bWFpbi9yZWd1bGF0b3IuCj4gPgo+ID4gcGluY3RybCB7Cj4gPiAgICAgY29tcGF0aWJsZSA9ICJy
b2NrY2hpcCxyazM1NjgtcGluY3RybCI7Cj4gPiAgICAgaTJjMCB7Cj4gPiAgICAgICAgICAgICAg
ICAgL29taXQtaWYtbm8tcmVmLwo+ID4gICAgICAgICAgICAgICAgIGkyYzBfeGZlcjogaTJjMC14
ZmVyIHsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLHBpbnMgPQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvKiBpMmMwX3NjbCAqLwo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICA8MCBSS19QQjEgMSAmcGNmZ19wdWxsX25vbmVfc210PiwK
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogaTJjMF9zZGEgKi8KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDAgUktfUEIyIDEgJnBjZmdfcHVsbF9ub25l
X3NtdD47Cj4gPiAgICAgICAgICAgICAgICAgfTsKPiA+ICAgICB9Cj4gPiAgICAgLi4uCj4gPiAg
ICAgLi4uCj4gPiAgICAgcGluY3RybC1pbyB7Cj4gPiAgICAgICAgIGNvbXBhdGlibGUgPSAicm9j
a2NoaXAscmszNTY4LXBpbmN0cmwtaW8iOwo+ID4gICAgICAgICBwbXVpbzEtc3VwcGx5ID0gPCZ2
Y2MzdjNfcG11PjsKPiA+ICAgICAgICAgY2FtIHsKPiA+ICAgICAgICAgICAgIC4uLi4KPiA+ICAg
ICAgICAgfQo+ID4gICAgICAgICAuLi4uCj4gPiAgICAgICAgIC4uLi4KPiA+IH0KPiA+Cj4gPiBj
b25zdW1lckEgewo+ID4gICAgcGluY3RybC0wID0gPCZjYW0+Owo+ID4gfQo+ID4KPiA+IFdpdGgg
dGhpcyBtb2RlbCBhYm92ZSwgdGhlcmUgYXJlIG5vIGN5Y2xlcyBhbnltb3JlLgo+Cj4gVGhlIGN5
Y2xlcyBhcmUgZ29uZSBiZWNhdXNlIHlvdSBza2lwcGVkIHRoZSBwcm9ibGVtYXRpYyBjYXNlIGlu
IHlvdXIKPiBleGFtcGxlLgo+Cj4gUmVwbGFjZSBjb25zdW1lckEgaW4geW91ciBleGFtcGxlIHdp
dGggdGhlIEkyQyBub2RlIHByb3ZpZGluZyBhY2Nlc3MgdG8KPiB0aGUgUE1JQyB3aGljaCBwcm92
aWRlcyAmdmNjM3YzX3BtdSBhbmQgdGhlbiB5b3UgaGF2ZSB0aGUgY3ljbGVzIGJhY2suCgpXaGVu
IHlvdSBhcmUgdGFsa2luZyBhYm91dCB0aGUgSTJDIG5vZGUgdGhhdCdzIHRoZSBidXMgbWFzdGVy
IGZvciB0aGUKUE1JQyBwcm92aWRpbmcgdGhlIHN1cHBseSwgd291bGRuJ3QgaXQgYmUgZGVwZW5k
ZW50IG9uICJpMmMwX3hmZXIiPwpBbmQgbm90ICJjYW0iPwoKT3RoZXJ3aXNlIHRoZXJlJ3MgYSBj
eWNsaWMgZnVuY3Rpb25hbCBkZXBlbmRlbmN5IGluIGhhcmR3YXJlIHRoYXQgY2FuCm5ldmVyIGJl
IG1ldD8gQmVjYXVzZSBpbiB0aGF0IGNhc2UsIHlvdXIgY2hhbmdlcyB3b3VsZCBlbmQgdXAKZGVm
ZXJyaW5nIHRoZSBJMkMgZGV2aWNlIHByb2JlIHRvby4KCkknbSBiYXNpY2FsbHkgYXNraW5nIHRv
IHNwbGl0IG91dCB0aGUgcGlucyB0aGF0IG5lZWQgSU8gZG9tYWluIHRvIHdvcmsKaW50byBhIG5l
dyBzdWJub2RlICJwaW5jdHJsLWlvIiBvZiB0aGUgbWFpbiAicGluY3RybCIgZGV2aWNlIG5vZGUu
Cgo+IFRoZSBJMkMgbWFzdGVyIGRldmljZSBuZWVkcyB0aGUgSU8gZG9tYWluIHdoaWNoIG5lZWRz
IGEgcmVndWxhdG9yCj4gcHJvdmlkZWQgYnkgYSBjbGllbnQgb24gdGhlIHZlcnkgc2FtZSBJMkMg
bWFzdGVyLiBUaGUgY3ljbGVzIGFyZQo+IGFjdHVhbGx5IHRoZXJlIGluIGhhcmR3YXJlLCB5b3Ug
Y2FuJ3QgZGVmaW5lIHRoZW0gYXdheSA7KQoKUmlnaHQsIHRoZXJlIGNhbiBiZSBhIGN5Y2xpYyBj
b25uZWN0aW9uIGRlcGVuZGVuY3kgaW4gaGFyZHdhcmUgYW5kIHlvdQpjYW4ndCBkZWZpbmUgdGhl
bSBhd2F5LiBCdXQgY2xlYXJseSB0aGUgSTJDIG1hc3RlciBkb2Vzbid0IG5lZWQgdGhlIElPCmRv
bWFpbiB0byB3b3JrIGZvciB0aGUgSTJDIHRvIGJlIGluaXRpYWxpemVkLCByaWdodD8gT3RoZXJ3
aXNlLCBob3cKY2FuIHRoZSBJMkMgaGFyZHdhcmUgYmUgaW5pdGlhbGl6ZWQ/IEl0IGRvZXNuJ3Qg
bWF0dGVyIHdoYXQgT1Mgd2UKaGF2ZSwgdGhhdCBoYXJkd2FyZSBjYW4ndCB3b3JrLiBTbywgd2hh
dCBhbSBJIG1pc3Npbmc/IFdlIGFyZSBjbGVhcmx5Cm5vdCBvbiB0aGUgc2FtZSBwYWdlIG9uIHNv
bWUgZGV0YWlscy4KClRoYW5rcywKU2FyYXZhbmEKCj4KPiBTYXNjaGEKPgo+Cj4gLS0KPiBQZW5n
dXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfAo+IFN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAg
ICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8Cj4gMzExMzcgSGlsZGVzaGVpbSwgR2Vy
bWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKPiBB
bXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUx
MjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
