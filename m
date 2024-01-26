Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF6B7C47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 20:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPYhVKvMV3tO9uuFZyyjSm1pe8fIYDW/6LM4J8aosts=; b=xCHqrqOKbB6gEu
	hxwiuxOuEImIekHdH/tD7qcE7B//uelvrpnCNPTT6eQowsO74ntKNnWZ3/3VdKNcXQI7vtfPSaCPZ
	VWHy5+NWMWSisO1QgIvUqqirRelWWRScXeO/G6QooRT9iYkoQmiPt+SFS2pitZpQYrzy5nj8hcNF6
	Rtfh0MjALN24gPNvJ6cqel/jWQQLjX1TO/xSzv/Q+kiEtol06XSTEFSDNj+l7b4u16OEdqSiGVNGB
	Qre9zs4OWLAYTZrbPUupoDPCNP/S7qL0cSRVs9AWHQt5lWNz1bYhZdnV9IBh+hRODOhRfo9pkM7al
	3+lysGmIj5JVeDTNme9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTSqK-00000005NLN-3YTC;
	Fri, 26 Jan 2024 20:30:28 +0000
Received: from [2a01:4f8:1c1c:934f::1] (helo=mecka.net)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTSqG-00000005NIZ-3Ra1;
	Fri, 26 Jan 2024 20:30:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1706301020; bh=bS0tHXldnDP7fP1hTCX/Dobr7gSKMxZIXrqw5AcghSc=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=cC5EMOIy3hGOaPaCp40VoGhD5wRmepADo9Sbans8FHbyxXIaD3Q5dVXYhZfj9eJl/
	 AIoAKjkp9uMqM78/RAeaUZsBJVFREknowDoPzrSCT7/1UB/WmIsOD/QXgxt8cWmWw2
	 Eji+gCm8xZ9MGRSItCu24/ELJUT1shgjLwMGC257hAEA88z2h/NK+DwykNNaPhw+YB
	 f/U5TY4llR8Q0kNJoTVmZ2x8aFzQJ6McVmc8R+BRyy3ppEKx4ESSQ1GZyg0zoTwh9l
	 ZOkeJ8i02kjKcxbBUs/WZMFjA1wADIp/3dmurR5t37ZzVmzeM9aa5ggKUsvSY6Sesf
	 fJnapb/MbfYGw==
Received: from mecka.net (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id B135B3B4E7E;
	Fri, 26 Jan 2024 21:30:19 +0100 (CET)
Date: Fri, 26 Jan 2024 21:30:18 +0100
From: Manuel Traut <manut@mecka.net>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Segfault <awarnecke002@hotmail.com>,
	Arnaud Ferraris <aferraris@debian.org>,
	Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add devicetree for Pine64
 PineTab2
Message-ID: <ZbQWWp3nmorbEVFl@mecka.net>
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
 <20240102-pinetab2-v3-4-cb1aa69f8c30@mecka.net>
 <vj3elmkt6czisvwqouv2hhvut2va5jw6bbj5kjyxawvrnrdfwm@tlpo3dp3qcyb>
 <ZZgqF5hLO8UThPep@mecka.net>
 <elumjkchw5m6rcb73l4ouemjgk7nsgkeu576ybbkc5nbvcpiyi@txkepy7wqops>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <elumjkchw5m6rcb73l4ouemjgk7nsgkeu576ybbkc5nbvcpiyi@txkepy7wqops>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_123025_485405_D1D9B17B 
X-CRM114-Status: GOOD (  23.78  )
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

SGVsbG8gT25kxZllaiwKCk9uIEZyaSwgSmFuIDA1LCAyMDI0IGF0IDA1OjQ4OjQ2UE0gKzAxMDAs
IE9uZMWZZWogSmlybWFuIHdyb3RlOgo+IE9uIEZyaSwgSmFuIDA1LCAyMDI0IGF0IDA1OjExOjAz
UE0gKzAxMDAsIE1hbnVlbCBUcmF1dCB3cm90ZToKPiA+IE9uIFdlZCwgSmFuIDAzLCAyMDI0IGF0
IDEwOjQyOjU0QU0gKzAxMDAsIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+ID4gPiBIZWxsbyBNYW51
ZWwsCj4gPiA+IAo+ID4gPiBhIGZldyBtb3JlIHRoaW5ncyBJIG5vdGljZWQ6Cj4gPiA+IAo+ID4g
PiBPbiBUdWUsIEphbiAwMiwgMjAyNCBhdCAwNToxNTo0N1BNICswMTAwLCBNYW51ZWwgVHJhdXQg
d3JvdGU6Cj4gPiA+ID4gRnJvbTogQWxleGFuZGVyIFdhcm5lY2tlIDxhd2FybmVja2UwMDJAaG90
bWFpbC5jb20+Cj4gPiA+ID4gCj4gPiA+ID4gKwlsZWRzIHsKPiA+ID4gPiArCQljb21wYXRpYmxl
ID0gImdwaW8tbGVkcyI7Cj4gPiA+ID4gKwo+ID4gPiA+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4gPiA+ID4gKwkJcGluY3RybC0wID0gPCZmbGFzaF9sZWRfZW5faD47Cj4gPiA+ID4g
Kwo+ID4gPiA+ICsJCWxlZC0wIHsKPiA+ID4gPiArCQkJZ3Bpb3MgPSA8JmdwaW80IFJLX1BBNSBH
UElPX0FDVElWRV9ISUdIPjsKPiA+ID4gPiArCQkJY29sb3IgPSA8TEVEX0NPTE9SX0lEX1dISVRF
PjsKPiA+ID4gPiArCQkJZnVuY3Rpb24gPSBMRURfRlVOQ1RJT05fRkxBU0g7Cj4gPiA+ID4gKwkJ
fTsKPiA+ID4gCj4gPiA+IFRoaXMgTEVEIGlzIHN1cHBsaWVkIGJ5IFZDQzVWX01JRFUsIHNvIG1h
eWJlIHRoaXMgc2hvdWxkIGJlIGEgcmVndWxhdG9yLWxlZAo+ID4gPiBzdXBwbGllZCBieSBncGlv
IChGTEFTSF9MRURfRU5fSCkgY29udHJvbGxlZCByZWd1bGF0b3ItZml4ZWQgbmFtZWQgZl9sZWQg
d2hpY2gKPiA+ID4gaXMgaW4gdHVybiBzdXBwbGllZCBieSBWQ0M1Vl9NSURVLgo+ID4gPiAKPiA+
ID4gaHR0cHM6Ly9tZWdvdXMuY29tL2RsL3RtcC85YmYwZDg1ZDc4OTQ2YjVlLnBuZwo+ID4gCj4g
PiByZWd1bGF0b3ItbGVkcyBhcmUgY29udHJvbGxlZCBieSB0dXJuaW5nIG9uIG9yIG9mZiB0aGUg
cmVndWxhdG9yLiBIb3dldmVyCj4gPiBWQ0M1Vl9NSURVIGlzIGFsc28gdXNlZCBieSBvdGhlciBk
ZXZpY2VzIChVU0IsIEhETUksIC4uKSBzbyBJIGd1ZXNzIHRoaXMgaXMKPiA+IG5vdCB3aGF0IHdl
IHdhbnQuIEkgd291bGQga2VlcCBpdCBhcyBpcy4KPiAKPiBJdCdzIHVzZWQgYnkgdGhlIExFRC4g
Z3Bpby1sZWRzIHdpbGwgbm90IGVuc3VyZSBpdCdzIG9uIHdoZW4geW91IGVuYWJsZSB0aGUgTEVE
Lgo+IAo+IEluIHByYWN0aWNlIHRoaXMgbWF5IG9ubHkgY29tZSB1cCBpZiBzb21lb25lIHRyaWVz
IHRvIHNhdmUgcG93ZXIgYnkgdW5sb2FkaW5nCj4gZHdjMyBVU0IgZHJpdmVyLCB3aGVuIHVzaW5n
IFBUMiBvdXRzaWRlIG9mIHRoZSBrZXlib2FyZCBjYXNlLiBPdGhlcndpc2UKPiBWQ0M1Vl9NSURV
IHdpbGwgYmUgZW5hYmxlZCBieSBEV0MzIGRyaXZlcidzIHVzZSBvZiBQSFkgQVBJLgo+IAo+IElu
IGFueSBjYXNlLCBJJ20gbm90IHNheWluZyB5b3Ugc2hvdWxkIHVzZSBWQ0M1Vl9NSURVIGRpcmVj
dGx5IGluIHJlZ3VsYXRvci1sZWQsCj4gYnV0IGFzIGEgdmluLXN1cHBseSB0byBhIG5ldyByZWd1
bGF0b3ItZml4ZWQgbm9kZSAod2hpY2ggd291bGQgYmUgZGVzY3JpYmluZwo+IHRoaXMgImZpeGVk
IHZvbHRhZ2UgcmVndWxhdG9yIiBodHRwczovL21lZ291cy5jb20vZGwvdG1wL2NjNjVlYzgxYWI5
YWYxNjMucG5nICkuCgpTb3JyeSBmb3IgdGhlIGxhdGUgcmVzcG9uc2UsIEkgd2FzIGJ1c3kgd2l0
aCBvdGhlciB0aGluZ3MgaW4gdGhlIGxhc3Qgd2Vla3MuCgpJIGNoYW5nZWQgaXQgdG8gYmUgYSBy
ZWd1bGF0b3IgbGVkIGFuZCB3aWxsIHBvc3QgYSB2NCBzb29uLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
