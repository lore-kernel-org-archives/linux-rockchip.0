Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61B48C47422
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 10:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acIsO1INXnzFl8zBWNflIWHKZcM6HTgiB47d12R81aw=; b=Ugjy2qQWH1EaaP
	gFolKp2ZfuTrCAFUobjXe1XDG/wpETWkelehBjjj+yVyOIxgpbx2lDuDsZB5Vs8uUZf4bgAAO/RQ8
	bHJbqHurLnWyEbCQWJjdzz3sm+1iGOmNV3W37yIZeqdB/VidIu3+TlGnjw2rAbVJS4OvmyqOTFNqs
	iWg7p85AmFQqh239fBBAavs+/itKwZNpKFHHbYttKo0Dp24HzcsgSOuHR0asN1LuIPmm1RIZKD8kq
	KSt+TgQDIu/+nSvN3+EbUpOk0htItlxrRzwPsouJWgmG+Si08NM2xr7FXkBSS6Acqb9Mds68mycfl
	PooLK4p0V/GF5BABE8kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ3K1-00FJE1-1q;
	Wed, 17 Jan 2024 10:39:01 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ3Jv-00FJCe-2N;
	Wed, 17 Jan 2024 10:38:59 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id A98EB5C00ED;
	Wed, 17 Jan 2024 05:38:50 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 17 Jan 2024 05:38:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1705487930; x=1705574330; bh=uolH2UdRL07ElTMV+uuSFDyj48n5KuNI
	MWZAR7W0Hxk=; b=faEJulbl67/3OnEjloNCbjp0YStn1XYqpVDgdnt28vyc9tiy
	wc9hQygC5k2CHFF7+LCLniCJ2fvX9nghb8VxDJPLtMJXi9m+j3tf7dlSCyNfuXgh
	+5Ke+fUR4dYaoYIGRoJo4cPP9Uj+eP3LTN1ocW/kAqVfOy4Wx2f6JzUClNWFcFci
	JbPFWa/ZY/B6bxPOg+jK11Z8e1NQisXLqFLUkQvMnMXVsNB0yQjrIpZRvFuyLjO7
	Tz5UyUo4082D8c0cO/fLFMYFCK3+QdoZ6LfhkHFe/u6KU+1HUCXTkJGjCKT7iFaJ
	cpx+07Do55AWgODtilqprPBPnGxDPD1KUD8oFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705487930; x=
	1705574330; bh=uolH2UdRL07ElTMV+uuSFDyj48n5KuNIMWZAR7W0Hxk=; b=t
	C9vERqN5XufAnBn9DxrHpwt0P8R+puxtcJvAwb5zab0AE+9YDvzG8T3TxYANVEmj
	aFmhKsKicdx0MBxkF/eQNh8tA1v669Btf7vzeUDUvGu21SUoswbD2isyELvoCK1E
	FBv3/Ln2bsipndxyWeLpQXhmk993TUJiex1/X9g8+/Rc91H3msLHj2WVNj1VPkPJ
	8H36WEK3cH0ua0RvOG8TjhBlqURbu8NgMJ3s4JwXwvStRu7WOzdygadt6PcvdzlE
	n/RPG/4GWcinMaYci4qd9+VgQ/xr+0OWShB6QW1LfCjx9W7JJhM/kLd7MfYDzXoz
	kiSaBecDa/kq+WfR6u6Tw==
X-ME-Sender: <xms:Oa6nZUVN9RYuSE9eAe7QwAaYajN9YdnS0K6jERQkU6ykVhzRXHxCiQ>
    <xme:Oa6nZYkAcINjSr7ETRsuZ8WXTUcKPw6mD8xWdLyTGeLH86QcrZGm0i6L-h_dsZo-w
    aKuwKaJxw>
X-ME-Received: <xmr:Oa6nZYao19oobgALfvy-OeLBIxFrvdxurqkFWlBxscFVmAJ-vMjhdcYSYe_CVuL_jG_nbp_U1E7yxskceLEjgIN0GcWv9E8GXVTtlw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejhedgudeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepueegfefgveeuiedtheffgfefveejkeetiefhhfdvjeevlefhueekudeuleeghfek
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:Oa6nZTWRpsOeVayEubkl0CX7sAiD8xTjYy3-4TZ0OWNXNNtT4evYpw>
    <xmx:Oa6nZek1gQNJUuaFbS5FxllSgTBt-6rmCJPAWTY8NiiSZRYNkzyklg>
    <xmx:Oa6nZYfmJdY4UJSn-lVMtv6mcEaJ6ktYL4_JpeAkeuQ3QxwvHMSSBw>
    <xmx:Oq6nZXcUNUQi3vp_xnMvJUYdhOLGtUG7RHl0tygElt_Rmrklvnth8w>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Jan 2024 05:38:45 -0500 (EST)
Message-ID: <6d828e2d-a25b-4784-9905-4a264b7d78fe@feathertop.org>
Date: Wed, 17 Jan 2024 21:38:42 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: rockchip: Add rk809 support for rk817
 audio codec
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Zhang Qing <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org
References: <20240116084618.3112410-1-tim@feathertop.org>
 <20240116084618.3112410-2-tim@feathertop.org>
 <20240116193701.GA286794-robh@kernel.org>
 <64bce36c-468a-43b6-9d8d-0c20fbd53939@feathertop.org>
 <71413ca3-1a14-4eda-ad29-dc5fcbe5afb3@linaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <71413ca3-1a14-4eda-ad29-dc5fcbe5afb3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_023856_261495_5087E143 
X-CRM114-Status: GOOD (  17.74  )
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

Ck9uIDEvMTcvMjQgMjE6MTIsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMTcvMDEv
MjAyNCAxMDozNywgVGltIEx1bm4gd3JvdGU6Cj4+PiBZb3UgY2FuIGRyb3AgdGhlIGRlc2NyaXB0
aW9uLgo+PiBZZXMganVzdCAxIGNsb2NrLCBpIHdpbGwgZml4IHRoaXMuCj4+Pj4gKwo+Pj4+ICsg
IGNsb2NrLW5hbWVzOgo+Pj4+ICsgICAgZGVzY3JpcHRpb246Cj4+Pj4gKyAgICAgIFRoZSBjbG9j
ayBuYW1lIGZvciB0aGUgY29kZWMgY2xvY2suCj4+PiBEcm9wLgo+PiBKdXN0IGRyb3AgdGhlIGRl
c2NyaXB0aW9uPyBJIGRvbnQgdGhpbmsgY2FuIGRyb3AgdGhlIGNsb2NrIG5hbWVzIGFzIHRoZQo+
PiBkcml2ZXIgdXNlIHRoZSBuYW1lIHRvIGxvb2t1cCBjbG9jazoKPiBEZXNjcmlwdGlvbi4gQnV0
IGFueXdheSB0aGUgcHJvYmxlbSBpcyB0aGF0IGFkZGluZyBjbG9ja3Mgc2hvdWxkIGJlCj4gc2Vw
YXJhdGUgcGF0Y2ggd2l0aCBpdHMgb3duIGV4cGxhbmF0aW9uLgo+ClJpZ2h0LCBidXQgSSBhbSBu
b3QgYWN0dWFsbHkgYWRkaW5nIGFueSBjbG9ja3MsIGp1c3QgZG9jdW1lbnRpbmcgd2hhdCBpcyAK
YWxyZWFkeSB0aGVyZS4KVGhlcmUgYXJlIGFscmVhZHkgYm9hcmRzIHVzaW5nIHRoaXMgY29kZWMg
d2l0aCByazgwOSBpbiBkdHMgZmlsZXMgYW5kIGlzIAp3b3JraW5nIGZpbmUgZnJvbSBkcml2ZXIg
c2lkZS4KPgo+Cj4+IGRldm1fY2xrX2dldChwZGV2LT5kZXYucGFyZW50LCAibWNsayIpOwo+Pj4+
ICsgICAgaXRlbXM6Cj4+Pj4gKyAgICAgIC0gY29uc3Q6IG1jbGsKPj4+PiArCj4+Pj4gKyAgJyNz
b3VuZC1kYWktY2VsbHMnOgo+Pj4+ICsgICAgZGVzY3JpcHRpb246Cj4+Pj4gKyAgICAgIE5lZWRl
ZCBmb3IgdGhlIGludGVycHJldGF0aW9uIG9mIHNvdW5kIGRhaXMuCj4+PiBDb21tb24gcHJvcGVy
dHksIGRvbid0IG5lZWQgdGhlIGRlc2NyaXB0aW9uLgo+PiBPawo+Pj4+ICsgICAgY29uc3Q6IDAK
Pj4+PiArCj4+Pj4gKyAgY29kZWM6Cj4+Pj4gKyAgICBkZXNjcmlwdGlvbjogfAo+Pj4+ICsgICAg
ICBUaGUgY2hpbGQgbm9kZSBmb3IgdGhlIGNvZGVjIHRvIGhvbGQgYWRkaXRpb25hbCBwcm9wZXJ0
aWVzLiBJZiBubwo+Pj4+ICsgICAgICBhZGRpdGlvbmFsIHByb3BlcnRpZXMgYXJlIHJlcXVpcmVk
IGZvciB0aGUgY29kZWMsIHRoaXMgbm9kZSBjYW4gYmUKPj4+PiArICAgICAgb21pdHRlZC4KPj4+
IFdoeSBkbyB5b3UgbmVlZCBhIGNoaWxkIG5vZGUgaGVyZT8gSnVzdCBwdXQgdGhlIDEgcHJvcGVy
dHkgaW4gdGhlIHBhcmVudAo+Pj4gbm9kZS4KPj4gVGhpcyBpcyBob3cgdGhlIGV4aXN0aW5nIHJr
ODE3IGNvZGVjIGRyaXZlciB3YXMgc2V0dXAuIEkgc3VwcG9zZSBpdCB3YXMKPj4gY29waWVkIGZy
b20gZG93bnN0cmVhbSwgd2hlcmUgdGhlcmUgYXJlIG1vcmUgcHJvcGVydGllcyB0aGFuIGp1c3Qg
dGhlCj4+IG9uZS4gSSBkb24ndCBrbm93IGlmIHRoZXJlIHdhcyBhbnkgaW50ZW50aW9uIChvciBu
ZWVkKSB0byBpbXBsZW1lbnQKPj4gdGhvc2Ugb3RoZXIgcHJvcGVydGllcy4KPiBZb3UgbmVlZCB0
byBjbGVhcmx5IGV4cHJlc3MgQUJJIHJlcXVpcmVtZW50cyBpbiB0aGUgY29tbWl0IG1zZy4KPiBP
dGhlcndpc2UgeW91IHdpbGwgZ2V0IGEgcmV2aWV3IGxpa2UgZm9yIG5ldyBiaW5kaW5ncy4KR290
IGl0LCBJIHdpbGwgY2xhcmlmeSB0aGlzIGFuZCBmdXR1cmUgY29tbWl0IG1lc3NhZ2VzCgpSZWdh
cmRzCiDCoMKgIFRpbQo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
