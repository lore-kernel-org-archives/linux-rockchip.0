Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 910B1C021B2
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 06:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OaPRp9JJIYIKqkzEPxIYcYM2vwN++SadBpIZDqdLMPA=; b=omkdn/fRvGTj3S
	K8bIwxXBEqi/tnCOW42i1p9xUQamkGbOMK7V9Tct5k4cmu8W4hyUFM7UMhrDf+g3j0v+FkJR6sL+/
	XhQfykcRSXXtHxZ67VD/s8eBYBsHfte7NPDg+MxzhUfH5gjVmz/ZvF+IUOauYGduqF4zsryTdCO9o
	WIvCG5lW0gWGVSF6YGNC34ierK2lKN7zhRTk2Nj/0E8MWwNO3Yt9VPnEsl01fKWwSo0UbAnh1OX7G
	RyXU3SeFfLd0XUWHAKfJ1sYRIW4yZz6y+anArYMSrwEvh/m8meIrK58HKkKYBPnN9s80fP8gRRkRl
	i7KHQgc58rI0Yzu4yAxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlikC-00000007VpC-2H1p;
	Sat, 22 Feb 2025 06:12:08 +0000
Received: from out.bound.email ([141.193.244.10])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tliii-00000007VYS-0J1B;
	Sat, 22 Feb 2025 06:10:37 +0000
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id 946298A0A03;
	Fri, 21 Feb 2025 22:05:33 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id 7AF37160036F; Fri, 21 Feb 2025 22:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740204333;
	bh=Yd5waWu6Z02b7lT2L3RgwjYEybluLidOKnWnRtbDL2Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XMr+mxnGFLr8vi+1LmKsgBNc4ydYXyV9PROuwVCoPciB/ZQwaaeFxmgklS+4/1T6L
	 KGatAo5ZdYNb31wh0xYSNmngvMN2Y3XzEozbhSjnBo9hoFAWjk69GKNO50xAys2hIO
	 CyVrqbznGhvSyM5a/zKNURg7cz1vcjCyONQSrNEk=
Date: Fri, 21 Feb 2025 22:05:33 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
Message-ID: <20250222060533.GV16911@sventech.com>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
 <20250221231340.GS16911@sventech.com>
 <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com>
 <20250222043632.GU16911@sventech.com>
 <CALWfF7JWiZnqJCAqCK4-TjVuUTqv96+=u2pC2iNvTbCBOCLuqw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALWfF7JWiZnqJCAqCK4-TjVuUTqv96+=u2pC2iNvTbCBOCLuqw@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_221036_232986_4B31110D 
X-CRM114-Status: GOOD (  18.11  )
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

T24gRnJpLCBGZWIgMjEsIDIwMjUsIEppbW15IEhvbiA8aG9ueXVlbmt3dW5AZ21haWwuY29tPiB3
cm90ZToKPiA+IE9uIEZyaSwgRmViIDIxLCAyMDI1LCBKaW1teSBIb24gPGhvbnl1ZW5rd3VuQGdt
YWlsLmNvbT4gd3JvdGU6Cj4gPiA+IE9uIEZyaSwgRmViIDIxLCAyMDI1IGF0IDU6MTPigK9QTSBK
b2hhbm5lcyBFcmRmZWx0IDxqb2hhbm5lc0BlcmRmZWx0LmNvbT4gd3JvdGU6Cj4gPiA+ID4gSSds
bCBhbHNvIHNlZSBpZiBJIGNhbiBnaXZlIEhETUkgYSB0ZXN0Lgo+ID4gPgo+ID4gPiBQbGVhc2Ug
cmVwb3J0IHlvdXIgcmVzdWx0cyB3aGVuIHlvdSBkby4gVGhpcyBpcyBvbmUgb2YgdGhlIGRpZmZl
cmVuY2VzCj4gPiA+IGZyb20gdGhlIE9yYW5nZSBQaSA1IE1heC4gVGhlIEhETUkxIHBpbmN0cmxz
IGRvZXMgbm90IHVzZSB0aGUgZGVmYXVsdAo+ID4gPiBwaW5jdHJscyBsaWtlIG90aGVyIFJLMzU4
OCBib2FyZHMgKGluY2x1ZGluZyB0aGUgT3JhbmdlIFBpIDUgUGx1cykuCj4gPgo+ID4gTm8gbHVj
ayB5ZXQuIEkgZG8gc2VlIHRoaXMgbWVzc2FnZSBpbiB0aGUga2VybmVsIGxvZ3MgOCB0aW1lcyBh
dCBib290Ogo+ID4KPiA+IFsgICA0MS41NTI3NTFdIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5
c3RlbTogW2RybV0gKkVSUk9SKiBmYWlsZWQgdG8KPiA+IGdldCBwbGxfaGRtaXBoeTAKPiBPaCwg
SSBiZWxpZXZlIHlvdSdyZSBoaXR0aW5nIHRoaXMuCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGludXgtcm9ja2NoaXAvMGRkNDg1OTktNDQ4Zi00NDcyLTlhOGEtNTRiN2YwMzc5YzEzQGNvbGxh
Ym9yYS5jb20vVC8jbWE0ZWI0MjdkZTc3YjVhNDgwNmEyYzJiNWJlZjJmYzhkNDAwM2Y4MDEKPiAK
PiBJIGluY2x1ZGVkIHRoYXQgcGF0Y2hzZXQgaW4gdGhlIGludGVncmF0ZS02LjE1IGJyYW5jaC4g
SSBkb24ndCBoYXZlCj4gdGhlIHByb2JsZW0gb24gdGhlIE1heCBiZWNhdXNlIGl0IGhhcyBib3Ro
IHRoZSBIRE1JMCBhbmQgSERNSTEKPiBlbmFibGVkLiBIb3dldmVyLCB3aXRoIG9ubHkgSERNSTEg
b24gdGhlIFVsdHJhLCBpdCdzIG5vdCBoYW5kbGluZyB0aGUKPiBkaXNhYmxlZCBoZHB0eHBoeTAu
IEEgcXVpY2sgaGFjayBpcyB0byBhbHNvIGVuYWJsZSBoZHB0eHBoeTAgYWxzbyBpbgo+IHRoZSBV
bHRyYSBkdHMuCgpUaGF0IHdhcyBpdC4gV2l0aCB0aGUgbGFzdCBwYXRjaCBpbiB0aGF0IHRocmVh
ZCBhcHBsaWVkLCBJIGdldCBIRE1JCm91dHB1dC4KCkknbGwgc2VlIGlmIEkgY2FuIGZpZ3VyZSBv
dXQgYSBzZXR1cCB0byB0ZXN0IHRoZSBIRE1JIFJYIHBvcnQgYXMgd2VsbC4KCkpFCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
