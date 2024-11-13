Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9C21D41C32
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 10:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H3lNAFvheP/561nm04oIaJvQlNH+gOkR9hGLAOpjXwI=; b=juOMr+QIDIxiP8W9JwhZ1MqkT5
	ucaXXGf8ljmx0wzZt6ev/qMDWCUrrNrV9h5KiK61M8/pYsdmQgLXaehZ+Po3tzSv1Bv9raCSk5z2h
	kI9zOeFu8N/Jy1cD4op4CGZcuWAaAScq0ULwrj0RhaVrl+3Ik75fQ5Q5pezEPXO2yJc01J91Xuxx4
	If1pVmKxMZGhMSiTpL3ORlZsQun43t+nU53jaBquojGE6NgVDeSgcmqo38zWe2YXX35ef2lwxp7AQ
	wPPMYc8qzh84WDyeVFkeK/qYcg4gNW2fBUnkX1tPvmfyeikygMUVPWVhPh+EqoCcLb8WO+vdct2OD
	6T3wuhYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBAnl-00000006Tnv-2ktQ;
	Wed, 13 Nov 2024 10:40:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBAly-00000006Te9-22Ic;
	Wed, 13 Nov 2024 10:38:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=IF/vepkYLlzPa+ADSxysQyPEUO3lIiqkFDR8yTHUMM4=; b=CBe5AvXfestGvhxJcrUgwi+oY8
	xlQe2jcw2KNDE3/hVp9rWxaH3GP9WGhODEAakhm42ENnxCYucOi5UvTqcx9Wa38a1x/2BJdXGruyS
	/maCEg3I4cSNYgNzbn08SV1c1mco+oB/9ETF0mZIDPZpQnQSaIwAv1DKnUqukRVo/Ws899AidjXzl
	jSaUF6gqd10wC/Ai3aIEm4U2iEMjsaORz5TBx4cM/K6uqH51m/aG0OmerXZfCROcxTG9swnLJcumI
	oDCXPoth8j5H7WsQgLnz3OkhaqGlpv14ZdfgSMsIg/nDh7065WS0O+bbECFpEkYpHDsYka4JKAy7a
	DjU1Pbcw==;
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBAlv-0000000DFbc-1cES;
	Wed, 13 Nov 2024 10:38:53 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1731494319;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IF/vepkYLlzPa+ADSxysQyPEUO3lIiqkFDR8yTHUMM4=;
	b=TP7jCWIzDHOvG6IaVPJw1zfuuw2FKJ1Bh0h2H/+0gswy1ADCLGYi2WQoTvzZ9ssMgdIryY
	vIu232el3rCYgagbcyYlswLfXcQ2pWLLb7rBWrC6C8tlENyR7M8FHIYXDZvRiG/di/llH4
	WMgmzq9Wwuq3+IorsKn6hlakinn3tNSpUOaxEAgo8Ow6HqCCo+i7KD/W4XpP2CdfDSQESe
	qJto4tSlZESB1jp7tTw7La4pvWBCmrwsuagTnmmlYJ7esUk8/7JMfhqJ0HfZvTZXs6r7Wu
	VKuw19CI5tcn5LNyZfxXC5ty+YjPXelReeTEARGVXGYe/ryfajlFwbt6MnqFNA==
Date: Wed, 13 Nov 2024 11:38:37 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@linux.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki
 <naoki@radxa.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Enable UART8 on rock-3b
In-Reply-To: <CA+Gksr+E-tZe4sKVNa8zpATwdTW_DiOQxOf_Jujf5SURzhSPSg@mail.gmail.com>
References: <20241111181807.13211-1-tszucs@linux.com>
 <20241111181807.13211-4-tszucs@linux.com>
 <4ba81dfa-f276-4e05-b46b-92f50dbcfcc4@kwiboo.se>
 <CA+GksrJLpeU8x-kjR1Ng3ySf+giiufCsJuBssng9qoX1PjAunA@mail.gmail.com>
 <9330ebb370780c001fd2aaee49aec9e8@manjaro.org>
 <CA+GksrJjDPve29Vh7ZFhM+JFp058xmXZAPeuLuFth7v=JeiH2w@mail.gmail.com>
 <0eb19e4daf2cdf3d4a04935876c3d3b0@manjaro.org>
 <CA+Gksr+E-tZe4sKVNa8zpATwdTW_DiOQxOf_Jujf5SURzhSPSg@mail.gmail.com>
Message-ID: <dc628e6e50239aac65a4424738000612@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_103851_646950_3DB3DFB6 
X-CRM114-Status: GOOD (  27.19  )
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

SGVsbG8gVGFtYXMsCgpPbiAyMDI0LTExLTEzIDExOjI0LCBUYW3DoXMgU3rFsWNzIHdyb3RlOgo+
IE9uIFdlZCwgTm92IDEzLCAyMDI0IGF0IDEyOjI14oCvQU0gRHJhZ2FuIFNpbWljIDxkc2ltaWNA
bWFuamFyby5vcmc+IAo+IHdyb3RlOgo+PiBPbiAyMDI0LTExLTEyIDIyOjA0LCBUYW3DoXMgU3rF
sWNzIHdyb3RlOgo+PiA+IE9uIFR1ZSwgTm92IDEyLCAyMDI0IGF0IDQ6MDfigK9QTSBEcmFnYW4g
U2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4KPj4gPiB3cm90ZToKPj4gPj4gUGxlYXNlIGNvcnJl
Y3QgbWUgaWYgSSdtIHdyb25nLCBidXQgaXNuJ3QgdGhpcyBVQVJUIHN1cHBvc2VkIHRvIGJlCj4+
ID4+IHVzZWQgZm9yIHRoZSBCbHVldG9vdGggcGFydCBvZiBhbiBTRElPIFdpRmkgKyBCbHVldG9v
dGggbW9kdWxlLCBpbgo+PiA+PiBmb3JtIG9mIGEgbm9uLXN0YW5kYXJkIE0uMiBtb2R1bGUgdGhh
dCBSYWR4YSBzZWxscz8KPj4gPgo+PiA+IFVBUlQ4IGlzIHN1cHBvc2VkIHRvIGJlIHVzZWQgZm9y
IGFueSByYWRpbyBtb2R1bGUgY29ubmVjdGVkIHRvIHRoZSBNMkUKPj4gPiBjb25uZWN0b3IuCj4+
ID4gSXQgd2lsbCB0eXBpY2FsbHkgYmUgcmVzcG9uc2libGUgZm9yIEJsdWV0b290aCBvciBCTEUg
YnV0IGl0IGNvdWxkIGJlCj4+ID4gODAyLjE1LjQgb3Igd2hhdGV2ZXIuIEluIGFueSBjYXNlLCBh
bGwgd2FudGluZyB0byB1c2UgaXQgd2lsbCBuZWVkIHRoZQo+PiA+IHVhcnQ4IG5vZGUgZW5hYmxl
ZC4KPj4gCj4+IEkgc2VlLCBidXQgSSdtIHN0aWxsIGd1ZXNzaW5nIHdoYXQncyB0aGUgYWN0dWFs
IHVzZSBvZiBlbmFibGluZyB0aGUKPj4gVUFSVDggd2hlbiBpdCB3aWxsIHJlbWFpbiBwcmV0dHkg
bXVjaCB1c2VsZXNzIHdpdGhvdXQgdGhlIGFkZGl0aW9uYWwKPj4gRFQgY29uZmlndXJhdGlvbiwg
c3VjaCBhcyBpbiB0aGUgV2lGaStCbHVldG9vdGggRFQgb3ZlcmxheSB0aGF0IEpvbmFzCj4+IHNl
bnQgYSBiaXQgZWFybGllcj8KPiAKPiBUaGUgYWN0dWFsIHVzZSBpcyBkZXZpY2UgZW5hYmxlbWVu
dC4KCkhtbSwgSSdsbCBuZWVkIHRvIHRoaW5rIG1vcmUgYWJvdXQgaG93IGl0IGZpdHMgdG9nZXRo
ZXIuCgo+PiBJIHRoaW5rIHRoYXQgdGhlIFVBUlQ4IHNob3VsZCBiZSBlbmFibGVkIHRvZ2V0aGVy
IHdpdGggc29tZXRoaW5nIHRoYXQKPj4gYWN0dWFsbHkgbWFrZXMgdXNlIG9mIGl0LCB3aGljaCBp
biB0aGlzIGNhc2UgdW5mb3J0dW5hdGVseSBjYW5ub3QgYmUKPj4gYXV0b21hdGljYWxseSBkZXRl
Y3RlZCBhbmQgY29uZmlndXJlZCwgc28gaXQgYmVsb25ncyB0byBhIERUIG92ZXJsYXkuCj4+IEkn
bGwgZ2V0IGJhY2sgdG8gdGhpcyBpbiBteSBuZXh0IHJlc3BvbnNlLgo+IAo+IEkgYWdyZWUsIGJs
dWV0b290aCBibG9ja3MgZGVkaWNhdGVkIHRvIHNwZWNpZmljIG1vZHVsZXMgc2hvdWxkIGJlbG9u
Zwo+IHRvIERUIG92ZXJsYXlzLgo+IAo+PiA+PiBXaXRoIHRoYXQgaW4gbWluZCwgSSBzZWUgdmVy
eSBsaXR0bGUgc2Vuc2UgaW4ganVzdCBlbmFibGluZyB0aGUgVUFSVCwKPj4gPj4gd2l0aG91dCBk
ZWZpbmluZyB0aGUgZW50aXJlIEJsdWV0b290aCBpbnRlcmZhY2UsIHdoaWNoIEFGQUlLIHByb2R1
Y2VzCj4+ID4KPj4gPiBEZWZpbmluZyBhIGJsdWV0b290aCBub2RlIHdvdWxkIGhhcmR3aXJlIGlk
aW9zeW5jcmFzaWVzIG9mIGEgZ2l2ZW4KPj4gPiByYWRpbyBtb2R1bGUncyBCbHVldG9vdGggY29y
ZS4gU3VyZSB5b3UgY291bGQgYWRkIGEgc2xlZXAgY2xvY2ssIGFsbAo+PiA+IGtpbmQgb2Ygc2lk
ZWJhbmQgc2lnbmFscyBmb3Igd2FrZXVwcywgcmVzZXQsIHBvd2VyIGRvd24sIGV0Yy4gQnV0IGhl
eSwKPj4gPiBzb21lIHdpbGwgdXNlIHRoZW0sIHNvbWUgd29uJ3QuIEkgdGhpbmsgaXQncyB1bmRl
c2lyYWJsZSBhbmQKPj4gPiB1bm5lY2Vzc2FyeS4gWW91IGNhbiBoY2lhdHRhY2ggZnJvbSBoZXJl
IGFuZCBtb3N0IHdpbGwgd29yayBqdXN0IGxpa2UKPj4gPiB0aGF0LiBUaWdodGVyIGludGVncmF0
aW9uIG9yIGFueXRoaW5nIHNwZWNpYWwsIG1vZHVsZSBzcGVjaWZpYyBvbiB0b3AKPj4gPiBzaG91
bGQgYmUgaGFuZGxlZCBpbmRpdmlkaWFsbHksIG9uIGEgY2FzZS1ieS1jYXNlIGJhc2lzLiBUaGlz
IGlzIGEgZGV2Cj4+ID4gYm9hcmQgYWZ0ZXIgYWxsLiBJIHNheSB0cmljayBvZiBhbGwgdHJhZGVz
Lgo+PiA+Cj4+ID4+IG5hc3R5IGxvb2tpbmcgZXJyb3IgbWVzc2FnZXMgaW4gdGhlIGtlcm5lbCBs
b2cgd2hlbiB0aGVyZSdzIGFjdHVhbGx5Cj4+ID4+IG5vdGhpbmcgY29ubmVjdGVkIHRvIHRoZSBV
QVJULgo+PiA+Cj4+ID4gTXkgZG1lc2cgaXMgY2xlYW4gYXMgYSB3aGlzdGxlCj4+ID4gcm9vdEBy
b2NrLTNiOn4jIGRtZXNnIHwgZ3JlcCAtRSAnZmU2YzAwMDB8dHR5UzAnCj4+ID4gWyAgICAwLjM0
NDgxOF0gZmU2YzAwMDAuc2VyaWFsOiB0dHlTMCBhdCBNTUlPIDB4ZmU2YzAwMDAgKGlycSA9IDI2
LAo+PiA+IGJhc2VfYmF1ZCA9IDE1MDAwMDApIGlzIGEgMTY1NTBBCj4+ID4gV2hhdCBraW5kIG9m
IG5hc3R5IGVycm9ycyBkbyB5b3UgcmVjYWxsPwo+PiAKPj4gVGhvc2Ugd291bGQgYmUgdGhlIGtl
cm5lbCBlcnJvciBtZXNzYWdlcyBwcm9kdWNlZCB3aXRoIHRoZSBCbHVldG9vdGgKPj4gRFQgY29u
ZmlndXJhdGlvbiBpbiBwbGFjZSwgYnV0IHdpdGggbm8gU0RJTyBtb2R1bGUgaW5zdGFsbGVkLgo+
IAo+IFRoZXNlIGFyZSB0aGUga2VybmVsIG1lc3NhZ2VzIHJlbGF0ZWQgdG8gVUFSVDggd2l0aCB0
aGUgdWFydDggRFQgbm9kZQo+IGVuYWJsZWQgYW5kIGFuIFNESU8gbW9kdWxlIGluc3RhbGxlZC4K
Ck91dCBvZiBjdXJpb3NpdHksIHdoYXQgTS4yIG1vZHVsZSBhcmUgeW91IHRlc3RpbmcgaXQgd2l0
aD8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
