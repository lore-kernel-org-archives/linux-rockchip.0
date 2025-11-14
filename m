Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47CACCDE019
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 07:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wigjZxCsF09+7OymRLOMZKMXg+88nVLlQjJih46OROc=; b=M3fNnlt87pCcD3
	DnspTN9h+iLNR4oQ+LGPAmZ6dXjrPRlBeCmVkWFe295e3jx6AwnN7eIz98ic3T8kvUD+pY2xMOhxI
	+RSYGRDkoqbrPMq8BnWcOTrrm1mJeA6mX0X3byXZP27vSV2kuRkRwNRpc0wY8ENpGQr+V5fZLCe8X
	RqcpH+XpAVnRVyEec5mawh0T/FRNLOcqTTH2z1vCW7Poil+5jgoD54Y6hzIne6pWODKR2xVF6RRg5
	9zSzxE07x9c8Wy1QC+lestPKrccjylR3MwSUaXS+bVmKdz2GAZjJarnE8WTllHAsrMtYtWQJCFv2P
	REgXCbEXZOqe9M/b1HmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJo8b-0000000BkHx-1Yfr;
	Fri, 14 Nov 2025 07:22:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJo8Y-0000000BkGu-0U0e
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 07:22:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5EC2C43267;
	Fri, 14 Nov 2025 07:22:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B25DC4CEF1;
	Fri, 14 Nov 2025 07:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763104945;
	bh=kQYrQ75coz7fj0aQNGpM2QAaiLQCv9fYq/eSALuBuFA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LD+RVKqdn41pkHpR8sIvBGHoVDZ9JnjdpeHDa8mdODqmJFRmay3xyrDH6oCWqSrmD
	 LQBLVOLtJeT6HOj+w1yIzPnObGKJ9FZPo/t+I7FzZqEcaMkEANlysU4qwisneFDmPw
	 1QS5b/HziLPWDNog5Sil4oDLDOGoWAJdOmFoXCI/y3jxTL04JB++WtdXzLWVobNRjx
	 ZydOyQHoIejN+5zQl+IW6csP+vu/UEpc9EUMp0QvRBkoCslNsr3i9LkKEVOBugBBNt
	 S0YQhjXp2hEZpNMBddOmBm2o6BCKCpcdsQ12zGssS/86QXbSMf/FbcE43HMMPy/bBi
	 OvL814nUFAepg==
Message-ID: <7ed7d24a-5395-429f-b999-1374ac910441@kernel.org>
Date: Fri, 14 Nov 2025 08:22:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Dragan Simic <dsimic@manjaro.org>
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
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <49c39864-3e58-2e0e-7abc-50502f2afb02@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_232226_199663_9E9F180A 
X-CRM114-Status: GOOD (  21.61  )
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

T24gMTQvMTEvMjAyNSAwODoxNywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhlbGxvIEtyenlzenRv
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
bHkgb2Z0ZW4uCj4gCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEZVS0FVTUkgTmFva2kgPG5hb2tpQHJh
ZHhhLmNvbT4KPj4+Pj4gLS0tLQo+Pj4+Cj4+Pj4gVGhhdCBhcHByb2FjaCBpcyB0aGUgb25seSBJ
IHNlZSBhcHBsaWNhYmxlIGluIHRoaXMgY2FzZS4gIEhvd2V2ZXIsCj4+Pj4gbGV0J3MgaGVhciBv
cGluaW9ucyBmcm9tIG90aGVyIHBlb3BsZSBhcyB3ZWxsLgo+Pj4KPj4+IEkgc2VlLiBJIHdhbnQg
dG8gZG8gdGhpcyBhcHByb2FjaC4KPj4+Cj4+PiBKb3NlcGgsIGNvdWxkIHlvdSBnaXZlIG1lIGEg
c3RhdGVtZW50IHRvIGRvIHRoaXM/Cj4+Cj4+IFVzZSBzdGFuZGFyZCBhdXRob3JzaGlwIGFuZCBz
dGFuZGFyZCB0YWdzLCBzb21lIG9mIHdoaWNoIGFyZSBleHBsYWluZWQKPj4gaW4gU3VibWl0dGlu
ZyBwYXRjaGVzLgo+IAo+IEZyYW5rbHksIHlvdXIgc3VnZ2VzdGlvbiBpcyB1c2VsZXNzLCBiZWNh
dXNlIGl0IGRvZXNuJ3QgZXhwbGFpbiB3aGF0IAo+IHRvIGRvIGluIHRoaXMgcGFydGljdWxhciBj
YXNlLgoKTWF5YmUgYmVjYXVzZSB5b3UgZGlkIG5vdCByZWFkIHRoZSBkb2MuLi4KCgpCZXN0IHJl
Z2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
