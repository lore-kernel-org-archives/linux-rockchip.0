Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD320CE7A8B
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 08:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSa195SQv1oSJ8CHfsCXMXCu9CfhvUX7ty/Kv6lV8fY=; b=MWRjMGCOQnzG7N
	HpMu6vilnRYYHGmUuyCqC9rTaH553pyb2FdfshR7Y/HkOBQwmJCrbaHYfSu6T03/unYeDxX14o1ot
	ea1uQVnu4KQEpURTHCMFf1K4JAlUGXTG/0+RNcqL73J4zAINkHfHPcksM1zK7kJo3U5CtVCW5RfP0
	gQVDk8zJCBNbLaEWCLrdjz/DtrpgfpMvHCXSddGci2/BdRuh9bPZJddxDsmt0iTYXPZqPuJ2pv3t1
	sVOG23DScQzfzFra9MjkXLuJA4H0DGR2ibEPyk+VrcbsIzJGgD6TxfWUyAEdzhME91C6awbM8xdBK
	FtUhES3BLH0FRoDegaLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJpX8-0000000BpuL-0lDb;
	Fri, 14 Nov 2025 08:51:54 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJpX5-0000000BpsJ-1iUx
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 08:51:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763110307;
	bh=2cIaTZmwBhyo30iA8poaViORtmijEWrAhSREERF2GME=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=g0Bf0ERyBGBBEb7XJendqVYVeTdYklCIUn77Ujw+oGlcC6/otJSSYsA82WfL3Hkzw
	 TO3CO6g6S5sxDs+V5quxKNC+H02gLrq3K2y+ZBTIjJim+q1cThLveLp3RUefFoZ7pw
	 qNoqLrTBbKuornUVrcafT8iiVBr82zZ9kcCVqfKlpl6hoDa0/Pb1yNAkBlKIxjdTy7
	 ImBsfi1YnAU1Piyjj+lkQsbiJxWKOOrlaq41v8eQzv0bzaImVSmsXEO1kuy9V1Dks6
	 ncdzf1l4BXEjzzoKVJcvttT8S4d+gGX185GjL5FK4c7b7mRV5DPcksqZ9BRIxceJma
	 uOFPh38526fYw==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C002D17E0B46;
	Fri, 14 Nov 2025 09:51:46 +0100 (CET)
Message-ID: <f156cd48-d764-43c8-99ed-24ab212d8eee@collabora.com>
Date: Fri, 14 Nov 2025 10:51:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Dragan Simic <dsimic@manjaro.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, Joseph Kogut <joseph.kogut@gmail.com>,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com,
 quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
 <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
 <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
 <F02BA2E6B1111826+2445b38d-b5e0-499c-83e7-4521c57b2210@radxa.com>
 <f2bc30de-119b-4f4a-844a-8a908c9290b6@kernel.org>
 <49c39864-3e58-2e0e-7abc-50502f2afb02@manjaro.org>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <49c39864-3e58-2e0e-7abc-50502f2afb02@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_005151_610705_1984D1CB 
X-CRM114-Status: GOOD (  17.91  )
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

T24gMTEvMTQvMjUgOToxNyBBTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhlbGxvIEtyenlzenRv
ZiwKPiAKPiBPbiBGcmlkYXksIE5vdmVtYmVyIDE0LCAyMDI1IDA4OjEwIENFVCwgS3J6eXN6dG9m
IEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPiB3cm90ZToKPj4gT24gMTQvMTEvMjAyNSAwNjow
MywgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4+IE9uIDExLzEyLzI1IDA5OjQ2LCBEcmFnYW4gU2lt
aWMgd3JvdGU6Cj4+Pj4gT24gV2VkbmVzZGF5LCBOb3ZlbWJlciAxMiwgMjAyNSAwMDoyNiBDRVQs
IEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4gd3JvdGU6Cj4+Pj4+IE9uIDExLzExLzI1
IDIzOjMzLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+Pj4+PiBPbiBUdWVzZGF5LCBOb3ZlbWJlciAx
MSwgMjAyNSAxMjo1MiBDRVQsIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4gd3JvdGU6
Cj4+Pj4+Pj4gT24gMTEvNi8yNSAwMjo0OCwgSm9zZXBoIEtvZ3V0IHdyb3RlOgo+Pj4+Pj4+PiBP
biBXZWQsIE5vdiA1LCAyMDI1IGF0IDQ6MTXigK9BTSBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4
YS5jb20+IHdyb3RlOgo+Pj4+Pj4+Pj4gSSdkIGxpa2UgdG8gY2xhcmlmeSB0aGUgc2l0dWF0aW9u
IHJlZ2FyZGluZyB0aGUgdjYgcGF0Y2ggc2VyaWVzIEkgc3VibWl0dGVkLgo+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+IFRoZSBvcmlnaW5hbCBkZXZpY2UgdHJlZSB3b3JrIGZvciB0aGUgUmFkeGEgQ001IGFu
ZCBJTyBCb2FyZCB3YXMKPj4+Pj4+Pj4+IGF1dGhvcmVkIGJ5IEpvc2VwaCBLb2d1dC4gSSB0b29r
IG92ZXIgdGhlIHJlc3BvbnNpYmlsaXR5IG9mIGdldHRpbmcgaXQKPj4+Pj4+Pj4+IHVwc3RyZWFt
ZWQgd2l0aCBoaXMgYWdyZWVtZW50Lgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBJJ2xsIGNvbmZpcm0gdGhp
cy4gSSd2ZSBiZWVuIGluIGNvbW11bmljYXRpb24gd2l0aCBOYW9raS4gVGhleSBtYWRlIGEKPj4+
Pj4+Pj4gbGFyZ2UgbnVtYmVyIG9mIHJldmlzaW9ucyB0byBteSBvcmlnaW5hbCBwYXRjaCBzZXJp
ZXMsIHdoaWNoIEkgdGhpbmsKPj4+Pj4+Pj4gaGF2ZSB0ZWNobmljYWwgbWVyaXQuIEkgc3VnZ2Vz
dGVkIHRoZXkgc3VibWl0IHRoZSBwYXRjaGVzIHRoZW1zZWx2ZXMsCj4+Pj4+Pj4+IGFuZCBnYXZl
IHRoZW0gZXhwbGljaXQgcGVybWlzc2lvbiB0byBhZGQgbXkgU2lnbmVkLW9mZi1ieSBhbmQgQ0Mg
bWUuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEkgYXNzdW1lIHRoaXMgd2FzIHRoZSBjb3JyZWN0IHdheSBm
b3IgdGhlbSB0byBjb250aW51ZSB0aGUgd29yayBJCj4+Pj4+Pj4+IHN0YXJ0ZWQsIGJ1dCBpZiBu
b3QsIHBsZWFzZSBsZXQgdXMga25vdyB0aGUgYmVzdCB3YXkgdG8gcHJvY2VlZC4KPj4+Pj4+Pgo+
Pj4+Pj4+IENhbiBhbnlvbmUgaGVscCB1cz8KPj4+Pj4+Cj4+Pj4+PiBJJ20gbm90IGV4YWN0bHkg
c3VyZSBob3cgdG8gcmVzb2x2ZSB0aGUgY3VycmVudCBzaXR1YXRpb24sIGJ1dCBmb3IKPj4+Pj4+
IFNpZ25lZC1vZmYtYnkgdGFncyB0byBiZSBwcmVzZW50LCBpbiB0aGlzIGNhc2UgeW91J2QgbmVl
ZCB0byBoYXZlCj4+Pj4+PiBDby1kZXZlbG9wZWQtYnkgdGFncyBhcyB3ZWxsLCBiZWNhdXNlIHRo
ZSBmaW5hbCBwYXRjaCB2ZXJzaW9ucywKPj4+Pj4+IHdoaWNoIHdvdWxkIGJlIHN1Ym1pdHRlZCBi
eSBOYW9raSwgd291bGQgZGlmZmVyIHNpZ25pZmljYW50bHkgZnJvbQo+Pj4+Pj4gdGhlIHZlcnNp
b25zIHRoYXQgSm9zZXBoIGFjdGl2ZWx5IHdvcmtlZCBvbiwgaWYgSSB1bmRlcnN0b29kCj4+Pj4+
PiBldmVyeXRoaW5nIGNvcnJlY3RseS4gIFRob3VnaCwgZm9yIEpvc2VwaCdzIFNpZ25lZC1vZmYt
YnkgdGFncyB0bwo+Pj4+Pj4gYmUgaW5jbHVkZWQgdGhlcmUsIGhlIHdvdWxkIGFsc28gbmVlZCB0
byBwYXJ0aWNpcGF0ZSBhY3RpdmVseSBpbgo+Pj4+Pj4gdGhlIGRldmVsb3BtZW50IG9mIHRoZSBm
aW5hbCBwYXRjaCB2ZXJzaW9ucy4KPj4+Pj4KPj4+Pj4gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9k
b2MvaHRtbC9sYXRlc3QvcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMuaHRtbCN3aGVuLXRvLXVz
ZS1hY2tlZC1ieS1jYy1hbmQtY28tZGV2ZWxvcGVkLWJ5Cj4+Pj4+Cj4+Pj4+IElmCj4+Pj4+IC0t
LS0KPj4+Pj4gRnJvbTogSm9zZXBoIEtvZ3V0IDxqb3NlcGgua29ndXRAZ21haWwuY29tPgo+Pj4+
Pgo+Pj4+PiA8Y2hhbmdlbG9nPgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBKb3NlcGggS29n
dXQgPGpvc2VwaC5rb2d1dEBnbWFpbC5jb20+Cj4+Pj4+IENvLWRldmVsb3BlZC1ieTogRlVLQVVN
SSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBGVUtBVU1JIE5h
b2tpIDxuYW9raUByYWR4YS5jb20+Cj4+Pj4+IC0tLS0KPj4+Pj4gdGhlbiBJIGNhbiBzdWJtaXQg
bXkgcGF0Y2ggc2VyaWVzPwo+Pj4+Cj4+Pj4gQWN0dWFsbHksIHRoZSBDby1kZXZlbG9wZWQtYnkg
dGFncyB3b3VsZCBiZSBwb2ludGluZyB0byBKb3NlcGgKPj4+PiBpbiB0aGF0IGNhc2UsIGJ1dCBh
cyBJIGRlc2NyaWJlZCBpdCBhYm92ZSwgdGhpcyBhcHByb2FjaCBiYXNpY2FsbHkKPj4+PiBjYW5u
b3QgYmUgdXNlZCwgYmVjYXVzZSBKb3NlcGgncyBvcmlnaW5hbCB3b3JrIGRpZmZlcnMgYSBsb3Qg
ZnJvbQo+Pj4+IHdoYXQgeW91J2QgYWN0dWFsbHkgc3VibWl0IHRvIHRoZSBtYWlsaW5nIGxpc3Qo
cykuCj4+Pj4KPj4+Pj4gT3IsCj4+Pj4+Cj4+Pj4+PiBBbm90aGVyIG9wdGlvbiwgdGVjaG5pY2Fs
bHkgYSBiaXQgc2ltcGxlciwgd291bGQgYmUgdG8gaW5jbHVkZSBqdXN0Cj4+Pj4+PiBPcmlnaW5h
bGx5LWJ5IHRhZ3MgZm9yIEpvc2VwaCwgd2hpY2ggd291bGQgaW5kaWNhdGUgdGhhdCBKb3NlcGgg
Z2F2ZQo+Pj4+Pj4gdXAgb24gdGhlIGRldmVsb3BtZW50IG9mIHRoZSBwYXRjaGVzIGFuZCBoYW5k
ZWQgdGhlbSBvdmVyIHRvIE5hb2tpCj4+Pj4+PiBmb3IgZnV0dXJlIGRldmVsb3BtZW50IGFuZCBz
dWJtaXNzaW9uIHRvIHRoZSBtYWlsaW5nIGxpc3RzLiBUaG91Z2gsCj4+Pj4+PiB0aGF0IHdvdWxk
IHJlcXVpcmUgSm9zZXBoIHRvIHB1YmxpY2x5IHN0YXRlIGV4YWN0bHkgdGhhdC4KPj4+Pj4KPj4+
Pj4gSSBjYW5ub3QgZmluZCBhbnkgZG9jdW1lbnRhdGlvbiBhYm91dCAiT3JpZ2luYWxseS1ieSIu
Cj4+Pj4+IElzIHRoaXMgY29ycmVjdD8KPj4+Pj4gLS0tLQo+Pj4+PiA8Y2hhbmdlbG9nPgo+Pj4+
Pgo+Pj4+PiBPcmlnaW5hbGx5LWJ5OiBKb3NlcGggS29ndXQgPGpvc2VwaC5rb2d1dEBnbWFpbC5j
b20+Cj4+Cj4+IFRoZXJlIGlzIG5vIHN1Y2ggdGFnLiBEb24ndCBpbnZlbnQgdGFncy4KPiAKPiBU
cnVlLCBpdCBkb2Vzbid0IGV4aXN0IG9mZmljaWFsbHksIGJ1dCBpdCdzIGJlZW4gdXNlZCBmYWly
bHkgb2Z0ZW4uCgpIbW0sIGFjdHVhbGx5IHRoaXMgdGFnIHNlZW1zIHRvIGJlIGRvY3VtZW50ZWQs
IG9yIGF0IGxlYXN0IGdpdmVuIGFzIGFuIGV4YW1wbGU6CgpodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9Eb2N1bWVu
dGF0aW9uL3Byb2Nlc3MvbWFpbnRhaW5lci10aXAucnN0P2g9djYuMTgtcmM1I24zMDkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
