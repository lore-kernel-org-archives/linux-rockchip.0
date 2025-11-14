Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 545E0CDE019
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 07:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvqtBHsksbzHIdaOZI8daf4DdRShIkvhSoGR3Ykk4kM=; b=Y3eoPuTstE9tky
	LvDbyKkAkjgZ6vf9VAFqY7UvjcyzkE+JeH8Ko5hkI8+1LwDgjiZsh+QfXxpKkdglmwPXHpsCrveJU
	3Ah3hdfX0nsj45D45ioVnn3TXRxRCDUvF1KWnq9CD4yWZZM0N6GSRMeE7C20xfC86QArMzpOPXXLX
	D4o7eAqlZMKmSGEZ2Jx0RwI//O3xnrfHeUxJKXAeA71bpbCiy3OfCTRjsLh1bS7r0ecWuZlnmxokq
	KLtt3Pcx28WQ5OWJMmyfJQQHsi3Sy83jxj0kP17hW7ps7V6NeeMYIOkGfSCvRZKpHHo20/sT20k8q
	SWdrzPtzL9jZbH/EYLNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJo3s-0000000Bjov-03ug;
	Fri, 14 Nov 2025 07:17:36 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJo3o-0000000Bjnx-1gy7
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 07:17:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id DA99A40ECE;
	Fri, 14 Nov 2025 08:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763104648; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=wh/tfWGf9wj+hssXa1sWxqLcBid1XiEHEgOudSny0/s=;
	b=j3t1hXDFtzAr2kAFEuanonDiddDqRMOP/fe9ZwnolyM4oZFSuStEFfn2o//qelrvUER2l9
	vOrf5yQSgSzLZ0D6CBvo5GmyBCDz9T9FXjZ70WhqGltNZEA5iSgY3doymDdVcY/HAHLB3I
	c42wifTZ0qyPF5VaUQtPHqSadj4bRGIZHeGTV/z4K3mKTSeBuO43G/0H2IAyqgV8qO3tIb
	obWgGwcoj1gCjBoZDTtWjyrK8inDzlDV9HMcpU9ZmCNcsZWTo9rcMncHlPjobyLPNCcSgF
	uVbDYVxgV2ReIhOR9Mfcoh9Izlg4QtZfycKxYSrTYRedQvbjEuAFXwbsttMcUA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <f2bc30de-119b-4f4a-844a-8a908c9290b6@kernel.org>
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
 <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
 <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
 <F02BA2E6B1111826+2445b38d-b5e0-499c-83e7-4521c57b2210@radxa.com> <f2bc30de-119b-4f4a-844a-8a908c9290b6@kernel.org>
Date: Fri, 14 Nov 2025 08:17:23 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, "Joseph Kogut" <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Krzysztof Kozlowski" <krzk@kernel.org>
MIME-Version: 1.0
Message-ID: <49c39864-3e58-2e0e-7abc-50502f2afb02@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 0/3] Add Radxa CM5 and IO Board
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-Rspamd-Fuzzy: 6a02a4752b38c3d77040b1f4191339ebbc41b3df29ece2e367691666ca46428741e41a1b26bf12e3a424a3765f237d56a084dfa57b59252cf99689b6c76d9621
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_231732_860611_5B576E22 
X-CRM114-Status: GOOD (  29.28  )
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

SGVsbG8gS3J6eXN6dG9mLAoKT24gRnJpZGF5LCBOb3ZlbWJlciAxNCwgMjAyNSAwODoxMCBDRVQs
IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj4gT24gMTQvMTEv
MjAyNSAwNjowMywgRlVLQVVNSSBOYW9raSB3cm90ZToKPiA+IE9uIDExLzEyLzI1IDA5OjQ2LCBE
cmFnYW4gU2ltaWMgd3JvdGU6Cj4gPj4gT24gV2VkbmVzZGF5LCBOb3ZlbWJlciAxMiwgMjAyNSAw
MDoyNiBDRVQsIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4gd3JvdGU6Cj4gPj4+IE9u
IDExLzExLzI1IDIzOjMzLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gPj4+PiBPbiBUdWVzZGF5LCBO
b3ZlbWJlciAxMSwgMjAyNSAxMjo1MiBDRVQsIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNv
bT4gd3JvdGU6Cj4gPj4+Pj4gT24gMTEvNi8yNSAwMjo0OCwgSm9zZXBoIEtvZ3V0IHdyb3RlOgo+
ID4+Pj4+PiBPbiBXZWQsIE5vdiA1LCAyMDI1IGF0IDQ6MTXigK9BTSBGVUtBVU1JIE5hb2tpIDxu
YW9raUByYWR4YS5jb20+IHdyb3RlOgo+ID4+Pj4+Pj4gSSdkIGxpa2UgdG8gY2xhcmlmeSB0aGUg
c2l0dWF0aW9uIHJlZ2FyZGluZyB0aGUgdjYgcGF0Y2ggc2VyaWVzIEkgc3VibWl0dGVkLgo+ID4+
Pj4+Pj4KPiA+Pj4+Pj4+IFRoZSBvcmlnaW5hbCBkZXZpY2UgdHJlZSB3b3JrIGZvciB0aGUgUmFk
eGEgQ001IGFuZCBJTyBCb2FyZCB3YXMKPiA+Pj4+Pj4+IGF1dGhvcmVkIGJ5IEpvc2VwaCBLb2d1
dC4gSSB0b29rIG92ZXIgdGhlIHJlc3BvbnNpYmlsaXR5IG9mIGdldHRpbmcgaXQKPiA+Pj4+Pj4+
IHVwc3RyZWFtZWQgd2l0aCBoaXMgYWdyZWVtZW50Lgo+ID4+Pj4+Pgo+ID4+Pj4+PiBJJ2xsIGNv
bmZpcm0gdGhpcy4gSSd2ZSBiZWVuIGluIGNvbW11bmljYXRpb24gd2l0aCBOYW9raS4gVGhleSBt
YWRlIGEKPiA+Pj4+Pj4gbGFyZ2UgbnVtYmVyIG9mIHJldmlzaW9ucyB0byBteSBvcmlnaW5hbCBw
YXRjaCBzZXJpZXMsIHdoaWNoIEkgdGhpbmsKPiA+Pj4+Pj4gaGF2ZSB0ZWNobmljYWwgbWVyaXQu
IEkgc3VnZ2VzdGVkIHRoZXkgc3VibWl0IHRoZSBwYXRjaGVzIHRoZW1zZWx2ZXMsCj4gPj4+Pj4+
IGFuZCBnYXZlIHRoZW0gZXhwbGljaXQgcGVybWlzc2lvbiB0byBhZGQgbXkgU2lnbmVkLW9mZi1i
eSBhbmQgQ0MgbWUuCj4gPj4+Pj4+Cj4gPj4+Pj4+IEkgYXNzdW1lIHRoaXMgd2FzIHRoZSBjb3Jy
ZWN0IHdheSBmb3IgdGhlbSB0byBjb250aW51ZSB0aGUgd29yayBJCj4gPj4+Pj4+IHN0YXJ0ZWQs
IGJ1dCBpZiBub3QsIHBsZWFzZSBsZXQgdXMga25vdyB0aGUgYmVzdCB3YXkgdG8gcHJvY2VlZC4K
PiA+Pj4+Pgo+ID4+Pj4+IENhbiBhbnlvbmUgaGVscCB1cz8KPiA+Pj4+Cj4gPj4+PiBJJ20gbm90
IGV4YWN0bHkgc3VyZSBob3cgdG8gcmVzb2x2ZSB0aGUgY3VycmVudCBzaXR1YXRpb24sIGJ1dCBm
b3IKPiA+Pj4+IFNpZ25lZC1vZmYtYnkgdGFncyB0byBiZSBwcmVzZW50LCBpbiB0aGlzIGNhc2Ug
eW91J2QgbmVlZCB0byBoYXZlCj4gPj4+PiBDby1kZXZlbG9wZWQtYnkgdGFncyBhcyB3ZWxsLCBi
ZWNhdXNlIHRoZSBmaW5hbCBwYXRjaCB2ZXJzaW9ucywKPiA+Pj4+IHdoaWNoIHdvdWxkIGJlIHN1
Ym1pdHRlZCBieSBOYW9raSwgd291bGQgZGlmZmVyIHNpZ25pZmljYW50bHkgZnJvbQo+ID4+Pj4g
dGhlIHZlcnNpb25zIHRoYXQgSm9zZXBoIGFjdGl2ZWx5IHdvcmtlZCBvbiwgaWYgSSB1bmRlcnN0
b29kCj4gPj4+PiBldmVyeXRoaW5nIGNvcnJlY3RseS4gIFRob3VnaCwgZm9yIEpvc2VwaCdzIFNp
Z25lZC1vZmYtYnkgdGFncyB0bwo+ID4+Pj4gYmUgaW5jbHVkZWQgdGhlcmUsIGhlIHdvdWxkIGFs
c28gbmVlZCB0byBwYXJ0aWNpcGF0ZSBhY3RpdmVseSBpbgo+ID4+Pj4gdGhlIGRldmVsb3BtZW50
IG9mIHRoZSBmaW5hbCBwYXRjaCB2ZXJzaW9ucy4KPiA+Pj4KPiA+Pj4gaHR0cHM6Ly93d3cua2Vy
bmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMuaHRtbCN3
aGVuLXRvLXVzZS1hY2tlZC1ieS1jYy1hbmQtY28tZGV2ZWxvcGVkLWJ5Cj4gPj4+Cj4gPj4+IElm
Cj4gPj4+IC0tLS0KPiA+Pj4gRnJvbTogSm9zZXBoIEtvZ3V0IDxqb3NlcGgua29ndXRAZ21haWwu
Y29tPgo+ID4+Pgo+ID4+PiA8Y2hhbmdlbG9nPgo+ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBK
b3NlcGggS29ndXQgPGpvc2VwaC5rb2d1dEBnbWFpbC5jb20+Cj4gPj4+IENvLWRldmVsb3BlZC1i
eTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBG
VUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+Cj4gPj4+IC0tLS0KPiA+Pj4gdGhlbiBJIGNh
biBzdWJtaXQgbXkgcGF0Y2ggc2VyaWVzPwo+ID4+Cj4gPj4gQWN0dWFsbHksIHRoZSBDby1kZXZl
bG9wZWQtYnkgdGFncyB3b3VsZCBiZSBwb2ludGluZyB0byBKb3NlcGgKPiA+PiBpbiB0aGF0IGNh
c2UsIGJ1dCBhcyBJIGRlc2NyaWJlZCBpdCBhYm92ZSwgdGhpcyBhcHByb2FjaCBiYXNpY2FsbHkK
PiA+PiBjYW5ub3QgYmUgdXNlZCwgYmVjYXVzZSBKb3NlcGgncyBvcmlnaW5hbCB3b3JrIGRpZmZl
cnMgYSBsb3QgZnJvbQo+ID4+IHdoYXQgeW91J2QgYWN0dWFsbHkgc3VibWl0IHRvIHRoZSBtYWls
aW5nIGxpc3QocykuCj4gPj4KPiA+Pj4gT3IsCj4gPj4+Cj4gPj4+PiBBbm90aGVyIG9wdGlvbiwg
dGVjaG5pY2FsbHkgYSBiaXQgc2ltcGxlciwgd291bGQgYmUgdG8gaW5jbHVkZSBqdXN0Cj4gPj4+
PiBPcmlnaW5hbGx5LWJ5IHRhZ3MgZm9yIEpvc2VwaCwgd2hpY2ggd291bGQgaW5kaWNhdGUgdGhh
dCBKb3NlcGggZ2F2ZQo+ID4+Pj4gdXAgb24gdGhlIGRldmVsb3BtZW50IG9mIHRoZSBwYXRjaGVz
IGFuZCBoYW5kZWQgdGhlbSBvdmVyIHRvIE5hb2tpCj4gPj4+PiBmb3IgZnV0dXJlIGRldmVsb3Bt
ZW50IGFuZCBzdWJtaXNzaW9uIHRvIHRoZSBtYWlsaW5nIGxpc3RzLiBUaG91Z2gsCj4gPj4+PiB0
aGF0IHdvdWxkIHJlcXVpcmUgSm9zZXBoIHRvIHB1YmxpY2x5IHN0YXRlIGV4YWN0bHkgdGhhdC4K
PiA+Pj4KPiA+Pj4gSSBjYW5ub3QgZmluZCBhbnkgZG9jdW1lbnRhdGlvbiBhYm91dCAiT3JpZ2lu
YWxseS1ieSIuCj4gPj4+IElzIHRoaXMgY29ycmVjdD8KPiA+Pj4gLS0tLQo+ID4+PiA8Y2hhbmdl
bG9nPgo+ID4+Pgo+ID4+PiBPcmlnaW5hbGx5LWJ5OiBKb3NlcGggS29ndXQgPGpvc2VwaC5rb2d1
dEBnbWFpbC5jb20+Cj4gCj4gVGhlcmUgaXMgbm8gc3VjaCB0YWcuIERvbid0IGludmVudCB0YWdz
LgoKVHJ1ZSwgaXQgZG9lc24ndCBleGlzdCBvZmZpY2lhbGx5LCBidXQgaXQncyBiZWVuIHVzZWQg
ZmFpcmx5IG9mdGVuLgoKPiA+Pj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lA
cmFkeGEuY29tPgo+ID4+PiAtLS0tCj4gPj4KPiA+PiBUaGF0IGFwcHJvYWNoIGlzIHRoZSBvbmx5
IEkgc2VlIGFwcGxpY2FibGUgaW4gdGhpcyBjYXNlLiAgSG93ZXZlciwKPiA+PiBsZXQncyBoZWFy
IG9waW5pb25zIGZyb20gb3RoZXIgcGVvcGxlIGFzIHdlbGwuCj4gPiAKPiA+IEkgc2VlLiBJIHdh
bnQgdG8gZG8gdGhpcyBhcHByb2FjaC4KPiA+IAo+ID4gSm9zZXBoLCBjb3VsZCB5b3UgZ2l2ZSBt
ZSBhIHN0YXRlbWVudCB0byBkbyB0aGlzPwo+IAo+IFVzZSBzdGFuZGFyZCBhdXRob3JzaGlwIGFu
ZCBzdGFuZGFyZCB0YWdzLCBzb21lIG9mIHdoaWNoIGFyZSBleHBsYWluZWQKPiBpbiBTdWJtaXR0
aW5nIHBhdGNoZXMuCgpGcmFua2x5LCB5b3VyIHN1Z2dlc3Rpb24gaXMgdXNlbGVzcywgYmVjYXVz
ZSBpdCBkb2Vzbid0IGV4cGxhaW4gd2hhdCAKdG8gZG8gaW4gdGhpcyBwYXJ0aWN1bGFyIGNhc2Uu
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
