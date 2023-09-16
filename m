Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F2A8CD37B2
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Sep 2023 05:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZG9TdivDZJWNEM950/XqAVq/7L4OnNGEUGicoDlC94Q=; b=r93oGz7Ivq9lkG
	V2FN0QuK0elIVXlOTZgjCzd7b5NS8q6gsBV+p8VED4sg22cSIRCwsEc0dUGHPF1GT+rMl7ae/ZPd/
	eIuEDYKS/RQKEx95INezHiNMUFYdt5xkAUMW6YlGThtqbQaEbRS1qeLXg3N4YjvMgv2bVKDjJtHsQ
	izGbEO7bbYYeheJxE0YrAHH8fOWwSwaHZwRZHrfnthsCpZIgjLq1qQwvnihpXgArKsa43TOqUbMHc
	2HtfF9qo1zVdyJ671KhRSZRqVpOrPtnLPz1V0oZ750HBi5ny6rNrr29w3RDnwW5+tMq1orF/qeuSZ
	RpM/S1C1Xf26NuWyRoCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qhNPm-00Bw0w-1o;
	Sat, 16 Sep 2023 05:00:18 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qhNPf-00Bvzc-0j;
	Sat, 16 Sep 2023 05:00:13 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id D3C5B5C01EC;
	Sat, 16 Sep 2023 01:00:01 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Sat, 16 Sep 2023 01:00:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1694840401; x=1694926801; bh=AiiRLsWmSd5omTSsVWE7/nPP8xSFayX8bsX
	WXu59V40=; b=Kqw/d/2w3S28QiXRFwkxvePDrM8dFhz74RMTQQJakHkL8DctgJ8
	MbJivKPiMXpIntW2cRIZmdLHwIHzrwyU7pBbxsUOzZmNZCp3gMUOS/SlvXHVgq1d
	po6bsMlGMANNr6c5OOTivp2hQCOJK1NZlVHyUyXzkpgonPH87kvxHeCkEDpOK2Cp
	qWaDbCUojHmtbQQeexcMlMHmA/YhrbWhyvGc+o00OpEzzH5hTrRMeG8HrAqebiXT
	3xXxvB1lp9/1x/xxInYe/DfRdsxVmCpHkY/xAaGhPSTmT2M45lor8uEx92QzAZb9
	kMnC3bo/CkNvKeHUJ/E1rkplLGHx6IS5Miw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1694840401; x=1694926801; bh=AiiRLsWmSd5omTSsVWE7/nPP8xSFayX8bsX
	WXu59V40=; b=oQNWFgitw5weXS+KA0QECq8DgO+ECRW0F//RIDseWzy3uqP/PEv
	gLmIyQ/T/0y371VAET/dY3LjoJmRaFiAK8lJhzYyeCIKCdTGpJmBOf0Xf0HGZTFx
	fYM0h/lzhi9ZbH3E1yrVDm/ZxxpAGAcKdWxewpmr3G7bz759oWhj1BdmeRvWfdCV
	iy/zwKMpfc8XwIw1AlPv7tZyUcKoqCHtuTcKlJfvooiJiPzML5Dy6ae5sos6igDd
	MzxwViTTBew0hv18+PxHTJkGxkuZLT3pXDLqKOlSke881D3dbewfrkNw2iHlGvVJ
	NDpNAwaTDz8Az0X0ZONzwSpfiH/jz+pjCeA==
X-ME-Sender: <xms:UTYFZczVCVNsIIaRQZ7gYqFsCbmY4MI4bddOIPcgUeAdPABqSm_yMQ>
    <xme:UTYFZQRsS3n6ALnljNFzyQGDQQP8wo8DswbXMcFjWQXId6BhceQxhhVvaVqjQbjOT
    VR1TCxTsH7HPCXl5w>
X-ME-Received: <xmr:UTYFZeXtOGuiCwzI3B8nHWyR8f3E6_qRobN0VSQ4we5uiMFVvqyxHPX-Zd544Rnfr1EOTerSTygT499P_pQPAkSnzN8NLq2plOSaOh2cxvU2Bwpls-H3TODGPg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudejfedgkeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtfeejnecuhfhrohhmpefurghm
    uhgvlhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenuc
    ggtffrrghtthgvrhhnpefgtdfgleffkeevledvueetteefgfellefhjeetieeuhfehteeu
    feefgfehfeevfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:UTYFZah0-PaqvA4nj4ZY_O8HMUeG1W7ePMRBi4K3cZF_uFXWtszXgw>
    <xmx:UTYFZeBfvNdBgb9TfUIUiBVKpOnla51SXXfp63mDEpQe26BG0epXcQ>
    <xmx:UTYFZbKuvjzgZBANrb4FC7uXKki538ESCh5PH_LMc9bS2R7beDmIhQ>
    <xmx:UTYFZUSz3iE_RY_bA7j4H0TUn4gupbpOGnduN4TX_TTs_zrl3SIIDA>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 16 Sep 2023 01:00:00 -0400 (EDT)
Message-ID: <367a8ee4-2047-879d-22ae-a0082a04f92f@sholland.org>
Date: Fri, 15 Sep 2023 23:59:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux ppc64le; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/3] pinctrl: rockchip: add support for io-domain
 dependency
Content-Language: en-US
To: Saravana Kannan <saravanak@google.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Chen-Yu Tsai <wens@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 kernel@pengutronix.de, Quentin Schulz
 <quentin.schulz@theobroma-systems.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-2-s.hauer@pengutronix.de>
 <CACRpkdYxRdToUM3JcEeNK_K87D5WDzzSLvVEbtqqdQEhz3k_Ow@mail.gmail.com>
 <CAGb2v65G-8EECNjqnpKCxqAD5nATAb0S7AA_WMiGXYOR1avrvg@mail.gmail.com>
 <20230913065843.GF637806@pengutronix.de>
 <CAGETcx8rO=aykjb6=5k0wpOyscqokNwSL6w-AHnodY7pNXyzGQ@mail.gmail.com>
From: Samuel Holland <samuel@sholland.org>
In-Reply-To: <CAGETcx8rO=aykjb6=5k0wpOyscqokNwSL6w-AHnodY7pNXyzGQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230915_220011_739431_AF438CD4 
X-CRM114-Status: GOOD (  31.53  )
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

T24gOS8xMy8yMyAxNTo0OCwgU2FyYXZhbmEgS2FubmFuIHdyb3RlOgo+IE9uIFR1ZSwgU2VwIDEy
LCAyMDIzIGF0IDExOjU44oCvUE0gU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRl
PiB3cm90ZToKPj4gT24gV2VkLCBTZXAgMTMsIDIwMjMgYXQgMTI6Mzc6NTRQTSArMDgwMCwgQ2hl
bi1ZdSBUc2FpIHdyb3RlOgo+Pj4gT24gVHVlLCBTZXAgMTIsIDIwMjMgYXQgNDowN+KAr1BNIExp
bnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4gd3JvdGU6Cj4+Pj4KPj4+PiBU
b3AgcG9zdGluZyB0byBicmluZyBTYXJhdmFuYSBLYW5uYW4gaW50byB0aGlzIGRpc2N1c3Npb24u
Cj4+Pj4KPj4+PiBUaGlzIGxvb2tzIGxpa2UgYSBiaWcgaGFjayB0byBtZSwgU2FyYXZhbmEgaGFz
IGJlZW4gd29ya2luZwo+Pj4+IHRpcmVsZXNzbHkgdG8gbWFrZSB0aGUgZGV2aWNlIHRyZWUgcHJv
YmUgb3JkZXIgInNvcnQgaXRzZWxmIG91dCIKPj4+PiBhbmQgSSBhbSBwcmV0dHkgc3VyZSB0aGlz
IGlzc3VlIG5lZWRzIHRvIGJlIGZpeGVkIGF0IHRoZSBEVAo+Pj4+IGNvcmUgbGV2ZWwgYW5kIG5v
dCBpbiBhIGRyaXZlci4KPj4+Cj4+PiBXZSBjb3VsZCBtZXJnZSBhbGwgdGhlIElPIGRvbWFpbiBz
dHVmZiBpbnRvIHRoZSBwaW5jdHJsIG5vZGUvZHJpdmVyLAo+Pj4gbGlrZSBpcyBkb25lIGZvciBB
bGx3aW5uZXI/IE1heWJlIHRoYXQgd291bGQgc2ltcGxpZnkgdGhpbmdzIGEgYml0Pwo+Pgo+PiBJ
IHRob3VnaHQgYWJvdXQgdGhpcyBhcyB3ZWxsLiBPbiBSb2NrY2hpcCB0aGUgcGluY3RybCBkcml2
ZXIgYW5kIHRoZSBJTwo+PiBkb21haW4gZHJpdmVyIGV2ZW4gd29yayBvbiB0aGUgc2FtZSByZWdp
c3RlciBzcGFjZSwgc28gcHV0dGluZyB0aGVzZQo+PiBpbnRvIGEgc2luZ2xlIG5vZGUvZHJpdmVy
IHdvdWxkIGV2ZW4gZmVlbCBtb3JlIG5hdHVyYWwgdGhhbiB3aGF0IHdlIGhhdmUKPj4gbm93Lgo+
IAo+IFRoZW4gd2Ugc2hvdWxkIHRyeSB0byBkbyB0aGlzIGFuZCBmaXggYW55IGlzc3VlcyBibG9j
a2luZyB1cy4KPiAKPj4gSG93ZXZlciwgd2l0aCB0aGF0IHRoZSBwaW5jdHJsIG5vZGUgd291bGQg
Z2V0IHRoZSBzdXBwbGllcyB0aGF0IHRoZSBJTwo+PiBkb21haW4gbm9kZSBub3cgaGFzIGFuZCB3
ZSB3b3VsZCBuZXZlciBnZXQgaW50byB0aGUgcHJvYmUgb2YgdGhlIHBpbmN0cmwKPj4gZHJpdmVy
IGR1ZSB0byB0aGUgY2lyY3VsYXIgZGVwZW5kZW5jaWVzLgo+IAo+IEZyb20gYSBmd19kZXZsaW5r
IHBlcnNwZWN0aXZlLCB0aGUgY2lyY3VsYXIgZGVwZW5kZW5jeSBzaG91bGRuJ3QgYmUgYQo+IHBy
b2JsZW0uIEl0J3Mgc21hcnQgZW5vdWdoIHRvIHJlY29nbml6ZSBhbGwgY3ljbGUgcG9zc2liaWxp
dGllcyAoc2luY2UKPiA2LjMpIGFuZCBub3QgZW5mb3JjZSBvcmRlcmluZyBiZXR3ZWVuIG5vZGVz
IGluIGEgY3ljbGUuCj4gCj4gU28sIHRoaXMgaXMgcmVhbGx5IG9ubHkgYSBtYXR0ZXIgb2YgcGlu
Y3RybCBub3QgdHJ5aW5nIHRvIGRvCj4gcmVndWxhdG9yX2dldCgpIGluIGl0cyBwcm9iZSBmdW5j
dGlvbi4gWW91IG5lZWQgdG8gZG8gdGhlCj4gcmVndWxhdG9yX2dldCgpIHdoZW4gdGhlIHBpbnMg
dGhhdCBkZXBlbmQgb24gdGhlIGlvLWRvbWFpbiBhcmUKPiByZXF1ZXN0ZWQuIEFuZCBpZiB0aGUg
cmVndWxhdG9yIGlzbid0IHJlYWR5IHlldCwgcmV0dXJuIC1FUFJPQkVfREVGRVI/Cj4gCj4gSXMg
dGhlcmUgc29tZXRoaW5nIHRoYXQgcHJldmVudHMgdXMgZnJvbSBkb2luZyB0aGF0PwoKQ2FsbGlu
ZyByZWd1bGF0b3JfZ2V0KCkgZnJvbSB0aGUgcGluIHJlcXVlc3QgZnVuY3Rpb24gZG9lcyBub3Qg
c29sdmUgdGhlCnByb2JsZW0gb24gaXRzIG93bi4gV2UgYWxyZWFkeSBkbyB0aGF0IGluIHRoZSBB
bGx3aW5uZXIgZHJpdmVyIChpbgpzdW54aV9wbXhfcmVxdWVzdCgpKSwgYW5kIHdlIHN0aWxsIGhh
dmUgdGhlIGNpcmN1bGFyIGRlcGVuZGVuY3k6CgogIF9fZHJpdmVyX3Byb2JlX2RldmljZShJMkMv
UlNCIGNvbnRyb2xsZXIpCiAgICBwaW5jdHJsX2JpbmRfcGlucyhJMkMvUlNCIGNvbnRyb2xsZXIp
CiAgICAgIHBpbmN0cmxfc2VsZWN0X3N0YXRlKEkyQy9SU0IgY29udHJvbGxlciBkZWZhdWx0IHBp
bnMpCiAgICAgICAgcGlubXV4X2VuYWJsZV9zZXR0aW5nKCkKICAgICAgICAgIHBpbl9yZXF1ZXN0
KCkKICAgICAgICAgICAgc3VueGlfcG14X3JlcXVlc3QoKQogICAgICAgICAgICAgIHJlZ3VsYXRv
cl9nZXQodmNjLXBsKQogICAgICAgICAgICAgICAgW2RlcGVuZHMgb24gdGhlIFBNSUMvcmVndWxh
dG9yIGRyaXZlcl0KICAgICAgICAgICAgICAgICAgW2RlcGVuZHMgb24gdGhlIEkyQy9SU0IgY29u
dHJvbGxlciBkcml2ZXJdCgpUbyBicmVhayB0aGUgY3ljbGUsIHlvdSBuZWVkIHRvIGRlZmVyIHRo
ZSByZWd1bGF0b3JfZ2V0KCkgY2FsbCBkdXJpbmcKdGhpcyBzcGVjaWZpYyBjYWxsIHRvIHRoZSBw
aW4gcmVxdWVzdCBmdW5jdGlvbiwgdGhlbiBjb21lIGJhY2sgbGF0ZXIgYW5kCmNhbGwgcmVndWxh
dG9yX2dldCgpIG9uY2UgdGhlIHJlZ3VsYXRvciBpcyBhY3R1YWxseSByZWdpc3RlcmVkLgoKSWYg
d2UgaGF2ZSBhIERUIHByb3BlcnR5IHNvbWV3aGVyZSB0aGF0IHByb3ZpZGVzIGFuIGluaXRpYWwg
dm9sdGFnZSBmb3IKdGhlIEkvTyBkb21haW4sIHRoZW4gcmVndWxhdG9yX2dldCgpIHJldHVybmlu
ZyAtRVBST0JFX0RFRkVSIHdvdWxkIG5vdApiZSBhbiBlcnJvci4gSW5zdGVhZCwgd2Ugd291bGQg
Y29uZmlndXJlIHRoZSBJL08gZG9tYWluIGJhc2VkIG9uIHRoZSBEVApwcm9wZXJ0eSwgYW5kIGFk
ZCB0aGUgcGFpciAoSU8gZG9tYWluLCByZWd1bGF0b3IgT0Ygbm9kZSkgdG8gYSBsaXN0LgpUaGVu
IHJlZ2lzdGVyIGEgbm90aWZpZXIgZm9yIG5ldyByZWd1bGF0b3IgY2xhc3MgZGV2aWNlcy4gQ2hl
Y2sgZWFjaCBuZXcKIGRldmljZSdzIE9GIG5vZGUgYWdhaW5zdCB0aGUgbGlzdDsgaWYgaXQgaXMg
Zm91bmQsIGhvb2sgdXAgdGhlIHZvbHRhZ2UKbm90aWZpZXIgYW5kIHJlbW92ZSB0aGUgbGlzdCBl
bnRyeS4gV2hlbiB0aGUgbGlzdCBpcyBlbXB0eSwgcmVtb3ZlIHRoZQpyZWd1bGF0b3IgY2xhc3Mg
bm90aWZpZXIuCgpJIHRob3VnaHQgYWJvdXQgKGFiKXVzaW5nIHRoZSBwaW5jdHJsICJpbml0IiBz
dGF0ZSBzbyBwaW5fcmVxdWVzdCgpIGdldHMKY2FsbGVkIGEgc2Vjb25kIHRpbWUgaW5zaWRlIHBp
bmN0cmxfaW5pdF9kb25lKCkgYWZ0ZXIgdGhlIFBNSUMncyBidXMKY29udHJvbGxlciBnZXRzIHBy
b2JlZCwgYnV0IHRoYXQgd291bGQgcmVseSBvbiB0aGUgcmVndWxhdG9yIGdldHRpbmcKcmVnaXN0
ZXJlZCBzeW5jaHJvbm91c2x5IGJ5IHNvbWUgcmVjdXJzaXZlIGNhbGwgaW5zaWRlIHRoZSBidXMK
Y29udHJvbGxlciBwcm9iZSBmdW5jdGlvbi4gU28gaXQgd291bGQgYnJlYWsgaWYgcHJvYmluZyB0
aGUKUE1JQy9yZWd1bGF0b3IgZHJpdmVyIGdvdCBkZWZlcnJlZCBmb3IgYW55IHJlYXNvbi4KClNv
IHRoZSBzdWdnZXN0aW9uIGZyb20gbXkgcGVyc3BlY3RpdmUgZW5kcyB1cCBiZWluZyB0aGUgc2Ft
ZSBhcyB3aGF0ClJvYmluIGp1c3Qgc3VnZ2VzdGVkIGVsc2V3aGVyZSBpbiB0aGUgdGhyZWFkLiA6
KQoKUmVnYXJkcywKU2FtdWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
