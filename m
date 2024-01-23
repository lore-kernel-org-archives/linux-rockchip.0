Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A5DFC47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 08:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvG4teby09GWgt1q5OF7L2Tma4nODfuMITuGKv69S44=; b=jKGcZiFJTU8rKt
	T8c6xX8vghsiH/TZDrpjZseeWM5/JY3pH/YMYHQxVgb0ZVYyokDrY01WGIoUs5x03CPR4Tq8bkDk+
	xyghd9XZDgJ3xW4lV3q1y53rgGTK+hRRJIlLrkRfcVRLo9kPEi0Eihp1ItKeeWYfMvGIbsX0RFnoT
	sba3dtOPfkwKKgpunfcA+vEkPdIotj89J/g/KpVM7lw67k8E2EImv/zrG/ZOT5eimKj7tnKbSTVRd
	LWxB/o3tM0KYhAFs0KY/4NLcruK+5RUaRs1sW0vHEFYRdDjFKyaMAFjCLgbL4tBO+kk666dmGRd9S
	mC6yT76cVj5tiCWAl0Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSCDq-00FYtq-2Y;
	Tue, 23 Jan 2024 08:33:30 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSCDa-00FYgF-0V;
	Tue, 23 Jan 2024 08:33:17 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 08B923200AC2;
	Tue, 23 Jan 2024 03:33:11 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Tue, 23 Jan 2024 03:33:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1705998791; x=1706085191; bh=3W4oCTdv0FXEFahQwcsqyn/FRaGXMhdp
	GJXywPb64hs=; b=C2jQQpBZjiTlZxWq/nsAQj9sYzK41RT2t7QgkgSFBK4et80H
	cWUSkh3GUxz8Yc4v2Ta6ftvzxdhXQvJgzJQsvame6l1FQDBpFa0/inRr9Er0C4tr
	xgJ+zIXKSLbq0yT3MZB+00qwAaH+7BgvcWffyo1gCwLRUG7gjgsZ7AsUOV2U04JI
	2oZQJve/0aC+KIiaQB8XhVjbLsbsyaV003up94jneDia7d+f7rt/AE0Y+HEZ9nQa
	/CLyHQeVSmxz1iI59QWA3QjTCChkUXaDQRI+vBp0mhPDhwXyl5fNsczOEvs/9o/j
	FA2+TeCv9/UBeO64N5k665gj75NOOcMpWfhSSw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705998791; x=
	1706085191; bh=3W4oCTdv0FXEFahQwcsqyn/FRaGXMhdpGJXywPb64hs=; b=V
	4Pn7sZ34NQuv4MvbyKMEzfMWGVvQvHt+AP4RDfQZSC2Jl9cix8jQXRWHCzbtui86
	HQu2zbSIZbznekkJqZYteWG845W9sT9l3XTkC8HFPrwATMCTkCrOR5lCs6lVlyW9
	uI4+dEBochgxzIRBeA7mW/A2qajKecew1AGwo9Lg0a9RPxxvlGMVDH3me/zFTHJ5
	f1AEq+Z0OPnDoA4tn1vt+wJLp11c92Ab6gCjkDre1/r8YTP9heze+25pqLcrTV4Z
	yPYHeQq8g9RdUjojFnrs/K1dq5ygmS/9uhRnYb1wH6XNT0xU+a1dtfSTHOSKVmSo
	uscZQ2OA8w2t6pP+OmU+w==
X-ME-Sender: <xms:xnmvZcMl1U8ryt4MaF4-8iy-uaNV4ypxh02D1mCwyW4gNBB1C9OPpw>
    <xme:xnmvZS9iaK-FcP9UkD2fnAM6SJPTA2vIdNbCoQyHJU8_0Q6Yjg1wspIBzS6K5XjEV
    4qJW5mHow>
X-ME-Received: <xmr:xnmvZTRgXLT7LfaB0o6w7GZf4M_rEPxoaOxDp0HkFSJ4ENw2Gr6MPvWLMA6KE1kVpPWxsmaquwRr4Hnd5ClvdtVylRq1W0qQnVS6EQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdekjedguddujecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefkffggfgfuvfevfhfhjggtgfesthekredttddvjeenucfhrhhomhepvfhi
    mhcunfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtth
    gvrhhnpeeugeefgfevueeitdehfffgfeevjeekteeihffhvdejveelhfeukeduueelgefh
    keenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtih
    hmsehfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:xnmvZUsal9bpM_dW-cDt-Bp_pG7XDWNL2hLqf5OedLxVnlRHKFQNUg>
    <xmx:xnmvZUdYXaMHXAXwfqjClkA9d1JIU2_oCm_Yky1m43itPAOMvMMz4A>
    <xmx:xnmvZY38aOA0TCd6K94oCp5QkkZOcT_3aEiHiS1_33qy0ZrWeMyUUQ>
    <xmx:x3mvZY1MG1s_IJhE35Inxb_9OYgFMbEtSzCkW_kLz7T-auOOAcgfHg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 23 Jan 2024 03:33:05 -0500 (EST)
Message-ID: <9cb6ae6b-15df-4467-b1b4-e0efd61c0d8f@feathertop.org>
Date: Tue, 23 Jan 2024 19:33:02 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: rockchip: rk809: Document audio codec
 properties
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-rockchip@lists.infradead.org, conor.dooley@microchip.com,
 robh+dt@kernel.org, devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Zhang Qing <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org
References: <20240120135529.899403-1-tim@feathertop.org>
 <20240120135529.899403-3-tim@feathertop.org>
 <04ccf5f5-1f02-42f9-b1fc-b781c54d7ae9@linaro.org>
 <93d775df-af84-44ff-870e-f720a33ddf34@feathertop.org>
 <0b0a4c9f-0549-4566-a900-b1d7de5838d5@linaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <0b0a4c9f-0549-4566-a900-b1d7de5838d5@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_003315_948874_3A7B3B07 
X-CRM114-Status: GOOD (  18.74  )
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

Ck9uIDEvMjMvMjQgMTg6MzcsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMjMvMDEv
MjAyNCAwNToxMCwgVGltIEx1bm4gd3JvdGU6Cj4+IE9uIDEvMjIvMjQgMTk6MTQsIEtyenlzenRv
ZiBLb3psb3dza2kgd3JvdGU6Cj4+PiBPbiAyMC8wMS8yMDI0IDE0OjU1LCBUaW0gTHVubiB3cm90
ZToKPj4+PiBSb2NrY2hpcCBSSzgwOSBzaGFyZXMgdGhlIHNhbWUgYXVkaW8gY29kZWMgYmxvY2sg
YXMgdGhlIHJrODE3IG1mZCwgYW5kCj4+Pj4gaXMgY29tcGF0aWJsZSB3aXRoIHRoZSBleGlzdGlu
ZyByazgxN19jb2RlYyBkcml2ZXIuCj4+PiBQbGVhc2UgdXNlIHN1YmplY3QgcHJlZml4ZXMgbWF0
Y2hpbmcgdGhlIHN1YnN5c3RlbS4gWW91IGNhbiBnZXQgdGhlbSBmb3IKPj4+IGV4YW1wbGUgd2l0
aCBgZ2l0IGxvZyAtLW9uZWxpbmUgLS0gRElSRUNUT1JZX09SX0ZJTEVgIG9uIHRoZSBkaXJlY3Rv
cnkKPj4+IHlvdXIgcGF0Y2ggaXMgdG91Y2hpbmcuCj4+IE9rIEkgd2lsbCBjaGVjayB0aGlzLgo+
Pj4+IFRoaXMgcGF0Y2ggaW50cm9kdWNlcyB0byB0aGUgYmluZGluZyB0aGUgc3RhbmRhcmQgcHJv
cGVydHkgI3NvdW5kLWRhaS1jZWxscwo+Pj4+IGFuZCBhbHNvIGFuIG9wdGlvbmFsIGNvZGVjIGNo
aWxkIG5vZGUgdG8gaG9sZCBjb2RlYyBzcGVjaWZpYyBwcm9wZXJ0aWVzLgo+Pj4+IEN1cnJlbnRs
eSB0aGVyZSBpcyBvbmx5IG9uZSBwcm9wZXJ0eSBpbiB0aGlzIG5vZGUgaG93ZXZlciB0aGUgZG93
bnN0cmVhbQo+Pj4+IGRyaXZlciBzaG93cyBhIG51bWJlciBvZiBvdGhlciBwcm9wZXJ0aWVzIHRo
YXQgYXJlIHN1cHBvcnRlZCBieSB0aGUgY29kZWMKPj4+PiBoYXJkd2FyZSwgdGhhdCBjb3VsZCBi
ZSBpbXBsZW1lbnRlZCBpbiB0aGUgZnV0dXJlLiBUaGlzIG1haW50YWlucyB0aGUKPj4+PiBleGlz
dGluZyBkcml2ZXIgQUJJIGFuZCBrZWVwcyBjb25zaXN0ZW5jeSB3aXRoIHRoZSByazgxNyBiaW5k
aW5ncy4KPj4+IFNvIHlvdSBhcmUgYWRkaW5nIGEgbmV3IG5vZGU/IEp1c3QgZm9yIG9uZSBwcm9w
ZXJ0eT8gTm8sIGp1c3QgcHV0IGl0Cj4+PiBpbnRvIHBhcmVudCBub2RlLgo+PiBUaGUgZXhpc3Rp
bmcgdXBzdHJlYW0gY29kZWMgZHJpdmVyIHBhcnNlcyB0aGUgcHJvcGVydHkgZnJvbSB0aGUgImNv
ZGVjIgo+PiBzdWItbm9kZSwgaWYgSQo+PiBtb3ZlIGl0IHRvIHRoZSBwYXJlbnQgbm9kZSBoZXJl
LCBJIHdpbGwgbmVlZCB0byBwYXRjaCB0aGUgY29kZWMgZHJpdmVyCj4+IHRvIHNlYXJjaCBpbiBi
b3RoIGxvY2F0aW9ucywKPj4gc28gYXMgdG8gbm90IGJyZWFrIHRoZSByazgxNyBiaW5kaW5ncy7C
oCBJZiB0aGF0IGlzIHByZWZlcnJlZCwgSSBjYW4gZG8KPj4gaXQgdGhhdCB3YXkuCj4gWW91ciBs
b25nIGNvbW1pdCBtc2cgaGFzIGp1c3QgdmVyeSBzaG9ydCBtZW50aW9uIGFib3V0IGV4aXN0aW5n
IGRyaXZlcgo+IGFuZCB0aGUgcmVzdCBpcyBub3QgaGVscGZ1bC4gUGxlYXNlIHJlcGhyYXNlIHRv
IGV4cGxhaW4gd2h5IGFuZCB3aGF0IHlvdQo+IGFyZSBkb2luZyBpdC4KPgpPSyBJIHdpbGwgcmVw
aHJhc2UgYm90aCBjb21taXQgbWVzc2FnZXMgZm9yIHRoZSBuZXh0IHZlcnNpb24uCj4+PiBEb3du
c3RyZWFtIGRyaXZlciBkb2VzIG5vdCBtYXR0ZXIgYXQgYWxsIGluIHRoYXQgYXNwZWN0Lgo+Pj4K
Pj4gVGhlIGNvZGVjIGhhcmR3YXJlIHN1cHBvcnRzIGFkZGl0aW9uYWwgcHJvcGVydGllcyBidXQg
dGhleSBhcmUgbm90Cj4+IGltcGxlbWVudGVkIGN1cnJlbnRseSBpbgo+PiB1cHN0cmVhbSBkcml2
ZXIuCj4KPiBBZ2FpbjogaXQgZG9lcyBub3QgbWF0dGVyLiBCaW5kaW5ncyBhcmUgbm90IGFib3V0
IGRyaXZlcnMuCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
