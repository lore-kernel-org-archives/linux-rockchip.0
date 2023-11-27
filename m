Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5756DC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 10:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qHT7Q38qrWzeUcewTGhuYlakEJ/u2iFKXllm1I8mKh8=; b=vsTvXIRBhsk2+dhJojUPjBEkB0
	8vDLxyRxoV2Y1LJBet58qfPZP2pGB9NaQrHvzPnYIg12PRMrR7ksIkI+O6kmx00bIzbPV/V2Tn/kH
	owBPZqQLSZQnqIMfJZYyiIcUtbW3IqgzfDfMyQ5CgARYEN+Hkvi91USohvBzlMCfK/j4wtBnpT0Do
	+fO9xfLT5ilhP3dVhjlSVP70A1oF0aOYKGVcXjL3lIiVT7WfW75WcD0f7XmQpJOyGz7RnNHZm1yuV
	S/pZExOpfLod2E5Rh3BzVGITcs8tH2OYaWoqp1Imu1H4IadynBpXlB9+eWpuz0dvPo0HiENIKPTn8
	S1hyoz8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7ZGx-00297Q-1X;
	Mon, 27 Nov 2023 10:55:27 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7ZGt-00296B-2H;
	Mon, 27 Nov 2023 10:55:25 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701082522;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=x0l+XWGrBi7HnpgDtS7cSIiOoIMorkwg7MufRLDhI8c=;
	b=HMsGbxvmsDtyOu914y3XvjC0cH8nMegz0dQc6UbkGy9mUlT+4Y9P2ftGoB8WHGP/2qRxkE
	XOnZY8ktKYNON+XbDMgmVbTLSiQiFHFCd86skFYSSkotzimRIR4O04TAE6KbueCjLhv0Ut
	81SDWL+QuATYxbKjGFFUzZF/YUMMmE6Aj1mubnsB4Hf4yVMH55gkxbJ53rstZYw+/r7SDn
	0BevYo3PQ/fc95CfQYf1S8YC9lVHQrRoi2Vn5gN/6VK04LJ71bpWDcDDtVRkiHifc41OrL
	81ZUQp5VOA7JKFl5xNiTYZo/PbEL4s+vEvPi7KjP4i1VJX1WOVCtNaGyvM0MCg==
Date: Mon, 27 Nov 2023 11:55:21 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Tim Lunn
 <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring
 <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
In-Reply-To: <4234862.3Lj2Plt8kZ@diego>
References: <20231122122232.952696-1-tim@feathertop.org>
 <4065853.CrzyxZ31qj@diego> <4bd0ce0f496646209eb8b220dfdd80bd@manjaro.org>
 <4234862.3Lj2Plt8kZ@diego>
Message-ID: <8fec049c0b72727086c707dfd9de6dda@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_025523_900852_FB196FB5 
X-CRM114-Status: GOOD (  15.20  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMy0xMS0yNyAxMTo1MCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCAy
Ny4gTm92ZW1iZXIgMjAyMywgMTE6NDM6MDUgQ0VUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+PiBP
biAyMDIzLTExLTI3IDExOjI5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4gPiBBbSBNb250YWcs
IDI3LiBOb3ZlbWJlciAyMDIzLCAxMDo1ODo0MyBDRVQgc2NocmllYiBUaW0gTHVubjoKPj4gPj4g
T24gMTEvMjcvMjMgMjA6NDUsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiA+Pj4gSXQncyBkaWZm
ZXJlbnQgZm9yIG1tYywgd2hlcmUgdGhpcyBuYW1pbmcgc2NoZW1lIGlzbid0IG5vcm1hbGx5IHVz
ZWQsCj4+ID4+PiBzbyB3ZSAobW9zdGx5PykgbWlncmF0ZWQgdG8gdGhlbSBiZWluZyBpbiB0aGUg
Ym9hcmQtc3BlY2lmaWMgYWxpYXMKPj4gPj4+IHNlY3Rpb24uCj4+ID4+Cj4+ID4+IFdoYXQgYWJv
dXQgdGhlIGV0aGVybmV0IGFsaWFzLCB0aGUgTUFDIGlzIHBhcnQgb2YgdGhlIFNvQywgc2hvdWxk
IHRoaXMKPj4gPj4gc3RheSBhcyBpdCBpcyBpbiBwYXRjaCA2IGZyb20gdGhpcyBzZXJpZXMsIG9y
IG1vdmUgdG8gYm9hcmQgZHRzaT8KPj4gPgo+PiA+IEkgdGhpbmsganVkZ2luZyBmcm9tIGV2ZXJ5
dGhpbmcgYWJvdmUgKGFuZCB0aGUgb3RoZXIgbW9kZXJuIGJvYXJkcwo+PiA+IGxpa2UgYWxsIHJr
MzU4OCBvbmVzKSB0aGUgZXRoZXJuZXQwIGFsaWFzIHNob3VsZCBtb3ZlIHRvIHRoZSBib2FyZAo+
PiA+IGR0cyhpKS4KPj4gPgo+PiA+IFRoZSBnbWFjIGdlbmVyYWxseSBkb2VzIG5vdCBoYXZlIHRo
aXMgbnVtYmVyaW5nIHNjaGVtZSBsaWtlIGkyYyBvcgo+PiA+IHVhcnRzLgo+PiAKPj4gUGxlYXNl
IG5vdGUgdGhlcmUncyBhbHJlYWR5IGFuIEV0aGVybmV0IGFsaWFzIGRlZmluZWQgaW4gcmszMzk5
LmR0c2ksCj4+IGV2ZW4gZGVzcGl0ZSBub3QgYWxsIFJLMzM5OS1iYXNlZCBkZXZpY2VzIHVzaW5n
IHRoZSBHTUFDLCBmb3IgZXhhbXBsZQo+PiB0aGUgUGluZWJvb2sgUHJvLiAgUGVyaGFwcyB0aGF0
J3Mgc29tZXRoaW5nIHRvIGJlIGZpeGVkIGFzIHdlbGwuCj4gCj4gcG9zc2libHkgOi0pCj4gCj4g
SSBndWVzcyBmb3Igc3RhcnRlcnMgd2Ugc2hvdWxkbid0IGludHJvZHVjZSBuZXcgaW5zdGFuY2Vz
IGZvciBpdC4KClRvdGFsbHkgYWdyZWVkLgoKPiBBbGwgdGhlIG5ld2VyIFNvQ3MgYWxyZWFkeSBo
YXZlIHRoZWlyIGV0aGVybmV0IGFsaWFzIGluIHRoZSBib2FyZCBkdHMKPiAocmszNTZ4LCByazM1
NjgpIHdoaWNoIGNhbWUgYWZ0ZXIgd2UgYWxzbyBtb3ZlZCB0aGUgbW1jIGFsaWFzZXMuCgpUaGUg
YmFzZSByazMzOTkuZHRzaSBmaWxlIGFuZCB0aGUgUkszMzk5LWJhc2VkIGJvYXJkL2RldmljZSBk
dHMoaSkgZmlsZXMgCmFyZSBmaW5lIHdoZW4gaXQgY29tZXMgdG8gdGhlIG1tYyBhbGlhc2VzLiAg
SSBjYW4gbW92ZSBmb3J3YXJkIGFuZCBjbGVhbiAKdXAgdGhlIEV0aGVybmV0IGFsaWFzIGFzIHdl
bGwsIGlmIHlvdSBhZ3JlZT8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
