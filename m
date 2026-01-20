Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB5DBD2ECF7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 15:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YndICF4K7SGQp8ovBa9KkgFvdzHlfPRIYo4THVQlviw=; b=tmYTHgjz71hzpN
	evZLyfI0cz5sNwflU0xClByM2maWHDGMZD291rABNVTl3GYfJBkcGtn8hTRfZ/4xoLQ1YrP3JF1zV
	WtIn5DJFifcLRt1wqh5sDyagC44jSPFE/Ohahy9OZ/lemWmoRu1a1iidQlN+rnt4DTorfcvnbiWaX
	iv9+8TSyl+UMUMWv7Tz4Ibhw+insiSP0JnAAPXPQegY1BU8Z+CdrOivT8r+lx4P/x80RKGRlt7B6V
	F8Als+RevW6c5tLeJUaLM0B4LCXzAnw8WsNV2KPB7XI3QJsU0g8ATL8b9snKuHvLtdcsTYN/MBJny
	qn9nOgKBPol2dAVs5zvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viDEX-000000042Yv-1VxY;
	Tue, 20 Jan 2026 15:01:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viDET-000000042Xi-3e7p;
	Tue, 20 Jan 2026 15:01:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0FA55409A9;
	Tue, 20 Jan 2026 15:01:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB1C6C16AAE;
	Tue, 20 Jan 2026 15:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768921284;
	bh=MUgQ3sNT7KzrFdWSi0ndT2SjkT6Egmpv2leIk7amRZs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fc+DFmIePyPT2n439mESB/oPRZB+EkK74yybwlMoDoJpkgWTESDQDCmZFDl/okVDM
	 aQM/Ua9/JjMM1zeegWbHcqPTNnBEt+7oB+0HwOXYnE6ivzUmBfjS0KuejlQ03CKitC
	 JE2635mEhy3o+CXYEMSZIgr03Vj0V9cikFkCJxKuAY775TJfHOdMHISrl3KfCtnK96
	 17ZwnUe3eVgAzhXVT8f+FbRV9jebjbuAhTBilp5j5WIq55965Nlhgsv50yDwhs4SIH
	 znc7W3xHT201qJ3VG7wLxfkRYYnxPi8meyyp13r/yEOv1zXNEXdb4XTyvIpwrrLHIt
	 87ryY0kdxafBA==
Date: Tue, 20 Jan 2026 15:01:19 +0000
From: Lee Jones <lee@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Joseph Chen <chenjh@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/3] Add RK801 PMIC support
Message-ID: <20260120150119.GD1354723@google.com>
References: <20260112124351.17707-1-chenjh@rock-chips.com>
 <176892124246.2259507.3674990175192687595.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <176892124246.2259507.3674990175192687595.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_070125_923721_0DA74577 
X-CRM114-Status: GOOD (  14.63  )
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

T24gVHVlLCAyMCBKYW4gMjAyNiwgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBNb24sIDEyIEphbiAy
MDI2IDIwOjQzOjQ4ICswODAwLCBKb3NlcGggQ2hlbiB3cm90ZToKPiA+IFRoaXMgcGF0Y2ggc2Vy
aWVzIGFkZHMgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwIFJLODAxIFBvd2VyIE1hbmFnZW1lbnQK
PiA+IEludGVncmF0ZWQgQ2lyY3VpdCAoUE1JQykgdG8gdGhlIExpbnV4IGtlcm5lbC4KPiA+IAo+
ID4gVGhlIFJLODAxIGlzIGEgUE1JQyBkZXNpZ25lZCBmb3IgbXVsdGltZWRpYSBhbmQgaGFuZGhl
bGQgZGV2aWNlcy4gSXQKPiA+IGluY2x1ZGVzOgo+ID4gLSA0IEJVQ0sgcmVndWxhdG9ycyAoRENE
QykKPiA+IC0gMiBMRE8gcmVndWxhdG9ycwo+ID4gLSAxIFNXSVRDSCByZWd1bGF0b3IKPiA+IC0g
SW50ZXJydXB0IHN1cHBvcnQgZm9yIHBvd2VyIGtleSBldmVudHMKPiA+IAo+ID4gWy4uLl0KPiAK
PiBBcHBsaWVkLCB0aGFua3MhCj4gCj4gWzEvM10gZHQtYmluZGluZ3M6IG1mZDogQWRkIHJrODAx
IGJpbmRpbmcKPiAgICAgICBjb21taXQ6IGE4YTJhZGQ3YjE4ODlmMDBiYzVkMmIxZjI1ZmFkMzRl
ODllZjg1ZmIKPiBbMi8zXSBtZmQ6IHJrOHh4OiBBZGQgUks4MDEgc3VwcG9ydAo+ICAgICAgIGNv
bW1pdDogMTU2NDQyZWI2ZTQ0ZDU0NWYwOTU1OWJkNzBjNWIzMWZiYTM5ZWIwMQo+IFszLzNdIHJl
Z3VsYXRvcjogcms4MDg6IEFkZCBSSzgwMSBzdXBwb3J0Cj4gICAgICAgY29tbWl0OiAzZTEwYmJk
OWM4YTZkNWQwMTZiOGU1MmM1ZDRjZWJhOTNhMjMwNGEwCgpOb3RlIHRvIHNlbGY6IGliLW1mZC1y
ZWd1bGF0b3ItNi4yMAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
