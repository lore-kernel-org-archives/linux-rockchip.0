Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65522C79FB6
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 16:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhYJMgB+NbBlUTFaUUghtkcERSVg2XbedH15pDttQO8=; b=qvRUIHAKWa5GTj
	4P2J/ZdkkV7/6p7iPNP4PEHWkHUnGtAXRtE+eS2W1IWExuWNCoaeFP1QF8BQEIZnQwAG2jtKpg3mc
	zWXTsXCze0F8l9uIuupzFTjl/yx7r0qPDIZ5s6oATKjEgSuAM0i+0mCjYTX+gs2SGK+58SmDH3Y+q
	XgLSWD4PKt7WqjXDrnbtDuyj5hS0b1bMLMbZ5GbzXfYhODsdTC7fyMjPzsYx/9kd3QWXkXrtffIjZ
	U7JOKH/ewT6CpTdG2QXREMpkzR5WRFjjqyWVTv0/fAhJyQ3QYv57iNSiAvcEkO0TWOaxr+CS1YPmF
	44+qujuYanyKDg0B1A1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4LUb-0000000CO3u-0XRX;
	Wed, 09 Sep 2026 16:49:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4LUV-0000000CO2s-15CB;
	Wed, 09 Sep 2026 16:49:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A12B6600CB;
	Wed,  9 Sep 2026 16:49:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5152E1F000FF;
	Wed,  9 Sep 2026 16:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788972582;
	bh=CtmdG6WXQsfL+iqlX99cR+kUk06H7B+pqUNW8uqAW5c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BDdimfjC4kJnh2nelU1CQ87s2cKn5KwuSGaFlUT8TuCSMQzYokvf+LtOMEvQUEJWP
	 sJlkaFF2WM8ocTVMTycl/89Ej7MkFfAgRO3h1+jhPeAXMVy3E2kPACtmZsDulf8HrF
	 R6l+0vE+M3sfXKNSGZtXxMb97JoFsiqtknCNNxOWxYmsKI1rNK2W8UD869cAQ4N7Ds
	 jy9GvYpnUsqi0jKPlNrNqTN9/LOaEbFnmXKa8eoP5UY7jXCey7kyZrfa7vc5NLdnAJ
	 WH9dWyjEEaeNOQTmaF9JVMqCTPDVPtTncEbha3YfI4w2a/sZsdJoKXa/VCX9cgW304
	 IG1iAcKx5xwIQ==
Date: Wed, 9 Sep 2026 18:49:31 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Andreas Zdziarstek <andreas.zdziarstek@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jonas Karlman <jonas@kwiboo.se>, Frank Wang <frank.wang@rock-chips.com>, 
	Louis Chauvet <louis.chauvet@bootlin.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v1 0/2] phy: rockchip: inno-usb2: fix USB gadget
 hot-plug on peripheral-only OTG ports
Message-ID: <6ly7ywoptz5ipixy65mh4bibf6cqj237nxa6ujuy23o3rvql3l@zxceopmephl3>
References: <20260706223627.113814-1-andreas.zdziarstek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260706223627.113814-1-andreas.zdziarstek@gmail.com>
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

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMTI6MzY6MjVBTSArMDIwMCwgQW5kcmVhcyBaZHppYXJz
dGVrIHdyb3RlOgo+IEhpIEFsbCwKPiAKPiBJIGhhZCBhbiBpbnRlcmVzdGluZyB0aW1lIHRyeWlu
ZyBvdXQgdGhlIFVTQiBPVEcgbWljcm8tVVNCIHBvcnQgb24gdGhlCj4gT2Ryb2lkLU0xUyAoUm9j
a2NoaXAgUkszNTY2KSBvbiB0aGUgbWFpbmxpbmUgS2VybmVsLiBNeSBpbnRlbnRpb24gd2FzIHRv
Cj4gc2V0IHVwIGEgY2RjX25jbStjZGNfYWNtIHBlcmlwaGVyYWwgZ2FkZ2V0IGFzIGEgaG90LXBs
dWdnYWJsZSBkZWJ1Zwo+IHBvcnQuCj4gCj4gRm9yIHRoZSBtb3N0IHBhcnQgdGhhdCB3ZW50IHN3
aW1taW5nbHkuIEp1c3Qgbm90IHF1aXRlIHdpdGggdGhlCj4gaG90LXBsdWdnaW5nLiBUaGUgYXBw
YXJlbnQgZmlyc3QgcHJvYmxlbSB3YXMgdGhhdCBwZXJpcGhlcmFsIG1vZGUgb25seQo+IHdvcmtz
IGlmIHRoZSBob3N0IGlzIGNvbm5lY3RlZCBhdCBib290IHRpbWUgb2YgdGhlIFJLMzU2NiBLZXJu
ZWwsCj4gcmVnYXJkbGVzcyBpZiB0aGUgZHJfbW9kZSBzZXR0aW5ncyBpcyAib3RnIiBvciAicGVy
aXBoZXJhbCIuIFdoZW4gbm8KPiBjb25uZWN0aW9uIGlzIHByZXNlbnQgYXQgYm9vdCwgZ2FkZ2V0
IHNldHVwIGZhaWxzIHdpdGggYQo+ICJmYWlsZWQgdG8gZW5hYmxlIGVwMG91dCIgZXJyb3IgYW5k
IHRoZSBwb3J0IHNlZW1zIHRvIGVuZCB1cCBpbiBhbgo+IHVucmVjb3ZlcmFibGUgc3RhdGUgYWZ0
ZXJ3YXJkcy4KPiAKPiBJIGludmVzdGlnYXRlZCBhIGxpdHRsZSBhcyB0byB3aHkuIFdpdGggbXkg
dmVyeSBsaW1pdGVkIHVuZGVyc3RhbmRpbmcKPiBvZiB0aGUgc3Vic3lzdGVtcyBpbnZvbHZlZCwg
SSB0aGluayBJIGhhdmUgaWRlbnRpZmllZCBzb21lIHByb2JsZW1zLgo+IEFsbCBzZWVtIGxhcmdl
bHkgcmVsYXRlZCB0byBlYWNoIG90aGVyLgo+IAo+ICogVGhlIE0xUyByZWZlcmVuY2VzIGl0cyA1
ViBPVEcgVkJVUyBzd2l0Y2ggYXMgcGh5LXN1cHBseSBvZiB0aGUgT1RHCj4gICBwb3J0IGluIGl0
cyBEVC4gVGhlIHBoeSBjb3JlIHVuY29uZGl0aW9uYWxseSBlbmFibGVzIHRoYXQgb24gcGh5Cj4g
ICBwb3dlcl9vbi4gRnJvbSB0aGVuIG9uIGl0IHBvd2VycyBpdHMgb3duIFZCVVNERVQgaW5wdXQs
IG1ha2luZyBmdXJ0aGVyCj4gICBjYWJsZSBWQlVTIGRldGVjdGlvbiBpbXBvc3NpYmxlLiBBbHNv
LCBhcHBhcmVudGx5LCBhZnRlciByZWFkaW5nIHRoZQo+ICAgc2NoZW1hdGljLCB0aGF0IG1lYW5z
IGV2ZW4gd2l0aCBhIGNhYmxlIGNvbm5lY3RlZCBhdCBib290IChhbmQKPiAgIHBlcmlwaGVyYWwg
bW9kZSB0aGVyZWZvcmUgd29ya2luZyksIHRoZSBib2FyZCB3aWxsIHRyeSB0byBiYWNrLXBvd2Vy
Cj4gICB0aGUgaG9zdC4gU2VlbXMgbXkgaG9zdCBwb3J0IGlzIHByZXR0eSByb2J1c3QsIGx1Y2tp
bHkuCj4gKiBUaGUgaW5uby11c2IyIGRyaXZlciBzZWVtcyB0byBnZW5lcmFsbHkgbGFjayBEUlAg
cG93ZXIgc3VwcGx5IFZCVVMKPiAgIHN3aXRjaGluZyBzdXBwb3J0PyBBdCBsZWFzdCBQSFkgYW5k
IFZCVVMgc3VwcGx5IGFyZSBzZW1hbnRpY2FsbHkKPiAgIHRyZWF0ZWQgdGhlIHNhbWUuCj4gKiBU
aGUgaW5uby11c2IyIGRyaXZlcidzIHN0YXRlIG1hY2hpbmUgcG93ZXJzIG9mZiB0aGUgUGh5IGlu
IHNldmVyYWwKPiAgIHBsYWNlczogb24gYW4gaW5pdGlhbCBuby1WQlVTIHNhbXBsZSwgb24gRENQ
IGRldGVjdGlvbiBhbmQgb24KPiAgIGRpc2Nvbm5lY3QuIFRoYXQgc2VlbXMgdG8gaGFwcGVuIHVu
cmVsYXRlZCB0byBjb250cm9sbGVyLWluaXRpYXRlZAo+ICAgcGh5X3Bvd2VyX29uL29mZiBjYWxs
cyBhbmQgbG9va3MgbGlrZSB0aGUgbWFpbiBjYXVzZSB0aGUgZ2FkZ2V0IHNldHVwCj4gICBmYWls
cyBhbmQgdGhlbiBib3JrcyB0aGUgY29udHJvbGxlciBzdGF0ZS4KPiAKPiBNeSBwcm9wb3NlZCBm
aXhlcyBhcmUgaW4gdHdvIHBsYWNlczoKPiAKPiAqIHNldCB0aGUgbWljcm8tVVNCIE0xUyBwb3J0
IHRvICJwZXJpcGhlcmFsIiBpbiBEVFMgYW5kIHJlbW92ZSB0aGUKPiAgIHN1cHBseSBub2RlLiBU
aGUgYm9hcmQgaGFzIHR3byBVU0ItQSBob3N0IHBvcnRzLCBzbyBkZXZpY2UgbW9kZSBpcyB0aGUK
PiAgIG1vc3QgbGlrZWx5IHVzYWdlIHNjZW5hcmlvIGZvciB0aGUgbWljcm9VU0IgYW5kIHJlYWwg
Y29tcGxpYW50IERSUAo+ICAgZG9lcyBub3Qgc2VlbSB0byBiZSBpbiB0aGUgY2FyZHMgaW4gdGhl
IGN1cnJlbnQgc3RhdGUuIEFsc28sIHRoaXMKPiAgIGZpeGVzIHRoZSBwb3RlbnRpYWxseSBoYXJt
ZnVsIGJhY2stcG93ZXJpbmcgaXNzdWUuICgybmQgcGF0Y2gpCj4gKiBrZWVwIHRoZSBpbm5vLXVz
YjIgcGh5IGRyaXZlciBmcm9tIGF1dG9ub21vdXNseSBwb3dlcmluZyBvZmYgd2hlbiBpbgo+ICAg
cGVyaXBoZXJhbCBtb2RlLiBUaGlzIG1ha2VzIGhvdC1wbHVnZ2luZyBhbmQgZ2FkZ2V0LXNldHVw
IHdpdGhvdXQgYQo+ICAgY29ubmVjdGVkIGNhYmxlIHdvcmsuICgxc3QgcGF0Y2gpCj4gCgpJJ20g
bm90IGFuIFVTQiBleHBlcnQsIGJ1dCB5b3VyIHByb3Bvc2VkIGZpeCBkb2VzIGNhdXNlIGhpZ2gg
cG93ZXIgY29uc3VtcHRpb24KYnkga2VlcGluZyBQSFkgYWx3YXlzIE9OIGV2ZW4gd2hlbiB0aGUg
Y2FibGUgaXMgbm90IGNvbm5lY3RlZC4KClRvIGZpeCB0aGlzIGlzc3VlIHByb3Blcmx5LCBmaXJz
dCBJIHdvdWxkIGludmVzdGlnYXRlIHdoZXRoZXIKcm9ja2NoaXBfdXNiMnBoeV9wb3dlcl9vbigp
IGlzIGNhbGxlZCBkdXJpbmcgY2FibGUgY29ubmVjdCBvciBub3QgYW5kIGFsc28gYXQKdGhlIHJp
Z2h0IHRpbWUgaS5lLiwgYmVmb3JlIHRoZSBEV0MzIGdhZGdldCBkcml2ZXIgc3RhcnRzIHRvIGRy
aXZlIHRoZQppbnRlcmZhY2UuIElmIHRoZXJlIGlzIGEgcmFjZSBoZXJlLCBpdCB3b3VsZCBzdGls
bCBjYXVzZSB0aGUgaW50ZXJmYWNlIHRvIGJlIG5vdAp1cC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
