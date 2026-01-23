Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6138D778B0
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 20:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8WKlLU4GpFs3+wjpglagGNqPbzyNcVWBC72tq/TOLo=; b=J6um6q8jSfsWM7
	zMhQoN1Lj8pykjWNeVigeQiNE8H+mhdKahDd6qw9bHyUxZB1zAIY2d2duXpBJa4nF+j5gh2obzwKy
	R2ToTopAVAjtfQ3mC8S0P5yGzOTLpWAnlpkHR+rldzs73FmTmjmtf7Tblxvn/ODXZa2+wWU9AkPXE
	38mFzYbF6JSa45nyCi66s5bOGdUxsFdlRyEpIk8N3Q0+qfgiUHd/zN/enTns1CveTQ+3HWsiFhQxW
	z/W7dfO/mJUWgFPKcCLEQ+/+rQxyUd53YcVoM7tsd18ey3l+hXTKBQsjnHLuNaVYNz9TIQG1Dg1hl
	1y+71VMD/1dKEWlgl1LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjNMb-00000009Sal-4381;
	Fri, 23 Jan 2026 20:02:39 +0000
Received: from out-185.mta0.migadu.com ([91.218.175.185])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjNMZ-00000009SZT-2Xcw
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Jan 2026 20:02:37 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1769198542;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZZ1FOsHm/vGJer214zga1vzlRDmrTUC/1ttgjjuK9w4=;
	b=dlboqydsKNghsrFWuPNRagiwi1t7kf6ZpeRDUYxpBOt5Bgm7i7dDMVbYEEIX5+Qjbu4zCY
	Q3IcOju9We+KxQMeUxju3nidaGOXnZaCxjudffnb9viEsM4n5SMUxSpSmF9jhl/O7UzMrq
	iO0N5qPRjJ0CUov460DoNxN9VPe7gerLszUgtU9fQ7ZcbAiPggSE0p+ws73LzRm3/9UFWP
	vgpdRko+lhzXbFBi4D1At7e3AzWszyAjJ19GF+h90twaJh9MVqV3U6D1LmlNkinlPuFk+z
	S5XJWTt3pdUBIn1eRSlcI0sXiQX7MFhhKhS6/ad4C3w85Y0Udd67CxOpp4LhEQ==
Date: Fri, 23 Jan 2026 21:02:19 +0100
Message-Id: <DFW8JGOI41QK.2AFPP8SSK8TH1@cknow-tech.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Robin Murphy" <robin.murphy@arm.com>, "Bartosz Golaszewski"
 <brgl@kernel.org>, "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>, "Linus
 Walleij" <linusw@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>,
 <linux-gpio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <stable@vger.kernel.org>, "Marek Szyprowski" <m.szyprowski@samsung.com>
Subject: Re: [PATCH] gpio: rockchip: mark the GPIO controller as sleeping
References: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com>
 <aWGSQYCXP4R08koQ@venus>
 <CAMRc=Mf0tRxRrh7tn5OaDn3a47N_qvUcjO=zqbTi-GhY-Y9hOg@mail.gmail.com>
 <447e8d5a-916b-4d58-b39c-3467c152379c@arm.com>
In-Reply-To: <447e8d5a-916b-4d58-b39c-3467c152379c@arm.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_120235_932153_89AE1E0B 
X-CRM114-Status: GOOD (  21.28  )
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

T24gRnJpIEphbiAyMywgMjAyNiBhdCAyOjI3IFBNIENFVCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+
IE9uIDIwMjYtMDEtMTIgOTowOCBhbSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPj4gT24g
U2F0LCBKYW4gMTAsIDIwMjYgYXQgMTI6NTXigK9BTSBTZWJhc3RpYW4gUmVpY2hlbAo+PiA8c2Vi
YXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+PiBPbiBUdWUsIEphbiAwNiwg
MjAyNiBhdCAxMDowMDoxMUFNICswMTAwLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+Pj4+
IFRoZSBHUElPIGNvbnRyb2xsZXIgaXMgY29uZmlndXJlZCBhcyBub24tc2xlZXBpbmcgYnV0IGl0
IHVzZXMgZ2VuZXJpYwo+Pj4+IHBpbmN0cmwgaGVscGVycyB3aGljaCB1c2UgYSBtdXRleCBmb3Ig
c3luY2hyb25pemF0aW9uLgo+Pj4+Cj4+Pj4gVGhpcyBjYW4gY2F1c2UgdGhlIGZvbGxvd2luZyBs
b2NrZGVwIHNwbGF0IHdpdGggc2hhcmVkIEdQSU9zIGVuYWJsZWQgb24KPj4+PiBib2FyZHMgd2hp
Y2ggaGF2ZSBtdWx0aXBsZSBkZXZpY2VzIHVzaW5nIHRoZSBzYW1lIEdQSU86Cj4+Pj4KPj4gCj4+
IFtzbmlwXQo+PiAKPj4+Pgo+Pj4+IEZpeGVzOiA5MzZlZTI2NzVlZWUgKCJncGlvL3JvY2tjaGlw
OiBhZGQgZHJpdmVyIGZvciByb2NrY2hpcCBncGlvIikKPj4+PiBDYzogc3RhYmxlQHZnZXIua2Vy
bmVsLm9yZwo+Pj4+IFJlcG9ydGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lA
c2Ftc3VuZy5jb20+Cj4+Pj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvZDAz
NWZjMjktM2IwMy00Y2Q2LWI4ZWMtMDAxZjkzNTQwYmM2QHNhbXN1bmcuY29tLwo+Pj4+IFNpZ25l
ZC1vZmYtYnk6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJhcnRvc3ouZ29sYXN6ZXdza2lAb3NzLnF1
YWxjb21tLmNvbT4KPj4+PiAtLS0KPj4+PiAgIGRyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMg
fCAxICsKPj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pj4+Cj4+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwaW8vZ3Bp
by1yb2NrY2hpcC5jCj4+Pj4gaW5kZXggNDcxNzRlYjNiYTc2Li5iYWUyMDYxZjE1ZmMgMTAwNjQ0
Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+Pj4+ICsrKyBiL2RyaXZl
cnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPj4+PiBAQCAtNTkzLDYgKzU5Myw3IEBAIHN0YXRpYyBp
bnQgcm9ja2NoaXBfZ3Bpb2xpYl9yZWdpc3RlcihzdHJ1Y3Qgcm9ja2NoaXBfcGluX2JhbmsgKmJh
bmspCj4+Pj4gICAgICAgIGdjLT5uZ3BpbyA9IGJhbmstPm5yX3BpbnM7Cj4+Pj4gICAgICAgIGdj
LT5sYWJlbCA9IGJhbmstPm5hbWU7Cj4+Pj4gICAgICAgIGdjLT5wYXJlbnQgPSBiYW5rLT5kZXY7
Cj4+Pj4gKyAgICAgZ2MtPmNhbl9zbGVlcCA9IHRydWU7Cj4+Pgo+Pj4gVGhpcyBtZWFucyBhbGwg
b3BlcmF0aW9ucyBhcmUgbWFya2VkIGFzIGNhbl9zbGVlcCwgZXZlbiB0aG91Z2gKPj4+IHBpbmN0
cmwgb3BlcmF0aW9ucyBhcmUgb25seSB1c2VkIGZvciB0aGUgZGlyZWN0aW9uIHNldHRpbmcuCj4+
PiBJLmUuIHRoZSBjb21tb24gZ2V0L3NldCBvcGVyYXRpb25zIGFsd2F5cyB3b3JrZWQgaW4gYXRv
bWljIG1vZGUsCj4+PiBidXQgbm93IGNvbXBsYWluLiBTZWUgZm9yIGV4YW1wbGU6Cj4+Pgo+Pj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwMTA4LW1lZGlhLXN5bm9wc3lzLWhkbWly
eC1maXgtZ3Bpby1jYW5zbGVlcC12MS0xLTM1NzA1MThkOGJhYkBrZXJuZWwub3JnLwo+Pj4KPj4+
IEl0J3Mgbm90IGEgYmlnIGlzc3VlIGZvciB0aGUgaGRtaXJ4IGRyaXZlciBzcGVjaWZpY2FsbHks
IGJ1dCBJIHdvbmRlcgo+Pj4gaG93IG1hbnkgbW9yZSAobGVzcyBvZnRlbiB0ZXN0ZWQpIHJvY2tj
aGlwIGRyaXZlcnMgdXNlIEdQSU9zIGZyb20gdGhlaXIKPj4+IElSUSBoYW5kbGVyLgo+Cj4gWWVh
aCwgc2VlbXMgdGhpcyBmaW5hbGx5IHJlYWNoZWQgbXkgZGlzdHJvIGtlcm5lbCBhbmQgbm93IHRo
ZSBrZXJuZWwgbG9nIAo+IG9uIG9uZSBvZiBteSBib2FyZHMgaXMgdG90YWxseSBmbG9vZGVkIGZy
b20gZ3Bpb19pcl9yZWN2X2lycSgpIAo+IChsZWdpdGltYXRlbHkpIGNhbGxpbmcgZ3Bpb19nZXRf
dmFsdWUoKS4uLiB0aGF0J3Mgbm90IHJlYWxseSBPSyA6LwoKWWVhaCwgSSdtIGdldHRpbmcgaXQg
dG9vIG9uIHNldmVyYWwgb2YgbXkgYm9hcmRzLCBsaWtlIG9uIFJvY2s2NDoKaHR0cHM6Ly9wYXN0
ZS5zci5odC9+ZGllZGVyaWsvMTU0YzUwMjNhM2E1MGQ3N2YxZGEyMTk1ZTdiYjlhOTZmNmE4ODU1
NQoodGhhdCdzIGp1c3QgYSBmcmFjdGlvbiBhcyBkbWVzZyByYW4gb3V0IG9mIGl0cyBidWZmZXIg
Li4uKQpBbHNvIG1lbnRpb25lZCBoZXJlOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvREZP
RUdPVEkxQVE5LjE3NUdQN1YxVksxWFVAY2tub3ctdGVjaC5jb20vCgpEaWVkZXJpawoKPgo+IFRo
YW5rcywKPiBSb2Jpbi4KPgo+Pj4gQ29uc2lkZXJpbmcgc2V0dGluZyBvciBnZXR0aW5nIHRoZSBH
UElPIGZyb20gYXRvbWljIGNvbnRleHQgaXMgbXVjaAo+Pj4gbW9yZSBjb21tb24gdGhhbiBjaGFu
Z2luZyB0aGUgZGlyZWN0aW9uIC0gaXMgdGhlcmUgc29tZSB3YXkgdG8KPj4+IGRlc2NyaWJlIHRo
ZSBzbGVlcCBiZWhhdmlvciBpbiBhIG1vcmUgc3BlY2lmaWMgd2F5IGluIHRoZSBHUElPCj4+PiBj
b250cm9sbGVyPwo+Pj4KPj4gCj4+IE5vLCB0aGVyZSdzIG5vIHN1Y2ggc3dpdGNoIGF0IHRoZSBt
b21lbnQuIFRoaXMgaXMgYmVjYXVzZSB0aGVyZSBhcmUKPj4gcGF0aHMgdGhhdCB3ZSBjYW4gdGFr
ZSwgd2hlcmUgd2UgKmRvKiBlbmQgdXAgc2V0dGluZyBkaXJlY3Rpb24gZnJvbQo+PiBncGlvZF9z
ZXRfdmFsdWUoKS4gRm9yIGluc3RhbmNlOgo+PiAKPj4gZ3Bpb2Rfc2V0X3ZhbHVlKCkKPj4gICAg
Z3Bpb2Rfc2V0X3ZhbHVlX25vY2hlY2soKQo+PiAgICAgIGdwaW9fc2V0X29wZW5fZHJhaW5fdmFs
dWVfY29tbWl0KCkKPj4gICAgICAgIGdwaW9jaGlwX2RpcmVjdGlvbl9vdXRwdXQoKQo+PiAKPj4g
SSdtIGFmcmFpZCwgZm9yIGNvcnJlY3RuZXNzLCBpdCBoYXMgdG8gYmUgZWl0aGVyIHNsZWVwaW5n
LCBvciBub3QuIEkKPj4gd291bGQgbG92ZSAtIGF0IHNvbWUgcG9pbnQgLSB0byBtYWtlIHBpbmN0
cmwgbW9zdGx5IGxvY2tsZXNzIHdpdGgKPj4gU1JDVSwgbGlrZSB3ZSBkaWQgd2l0aCBHUElPLiBU
aGF0IHdvdWxkIHNvbHZlIHRoaXMgaXNzdWUgY29ycmVjdGx5Lgo+PiBCdXQgdW50aWwgdGhlbiwg
SSdtIGFmcmFpZCB3ZSBuZWVkIHRvIGtlZXAgYSBjaGlwLWdsb2JhbCBzd2l0Y2ggZm9yCj4+IHNs
ZWVwaW5nLgo+PiAKPj4gQmFydG9zego+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4+IExp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
