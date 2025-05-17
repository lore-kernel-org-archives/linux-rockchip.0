Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 373B1C3ABDD
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 May 2025 18:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWF4Q6VACyCJ4t+HzyoLxPhXPUSQc8tmj3wOlW3tF5s=; b=VTfxyoyOlyVKsm
	YRyIIOXZ+O1ojrOk4EgF4/nhrAB/a06XcMDTMkgeqiANdRKRHNDh97+ClzZUj90ddRAWl8s0lKdVa
	4UHA17nyPSmew5tfgHkPknBgYMSfx3iM8nzllaHdR+rv1DBdLRNqLvLy/Bw4fINBYt0f8fFMol3l3
	biEJWVUl5sASqojBxq/ABecNIlOe03FB1oEEUyIpKHSJ10YRMbWszjzhvaRuDQEaRAc9qjaPp1arz
	3l2vFOypQ4Cs5zh4v8JGr5UPTseeV8wINVrqt1Ct462vN680MHK7nTLJ/XePV7kGM+FpKk1dO6jsb
	v2LQxaic8WjIHF/bzT4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGLxr-000000065tj-0TxB;
	Sat, 17 May 2025 18:08:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGLxo-000000065t0-0jUH;
	Sat, 17 May 2025 18:08:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=clQokNJtmi74kyyjM0dDcY90JFkHQrZucHRG0JnAxzI=; b=ydTmVKUtw8kYkYaMbX+uCYBZ6T
	SvkkdROW4nKHAKcCUJZqacEIl8v+7eQECZnb6Spy5ii850evHw0GCBedGooeMmivLb0/EhMvxG7k/
	1jdfyGv5SOnD3g7pJq7hy0M74NfOQO0INnn/tCTNGq2iGQC4s5qeOHCdGxSLcdNJg9dgg7lxcafCj
	NcW/AAx9hSX/8xvq4H5xkhBxsb7xzMqvZrMN1eZwmhnZQ63kpOK6YeQpa2nD9XcpoNn9FCiVWZVol
	lura3vySsznWjJtg+Y4FiGAtZ6CpRQgefeX3wM5wh26MVXxMPgCYOtQbglDNRh/s6vCoq7xzRvIyo
	Rmk14AzA==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uGLxO-0003Jn-Bd; Sat, 17 May 2025 20:08:22 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Hsun Lai <i@chainsx.cn>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: sfr@canb.auug.org.au, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/2] Add support for Firefly Station-M3/ROC-RK3588S-PC
Date: Sat, 17 May 2025 20:08:21 +0200
Message-ID: <2030161.CrzyxZ31qj@diego>
In-Reply-To: <174748776864.930436.6066844378633879191.robh@kernel.org>
References: <20250516012402.580468-1-i@chainsx.cn>
 <174748776864.930436.6066844378633879191.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250517_110848_231907_6CBEDFF7 
X-CRM114-Status: GOOD (  25.41  )
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

QW0gU2Ftc3RhZywgMTcuIE1haSAyMDI1LCAxNToxODoyNSBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFJvYiBIZXJyaW5nIChBcm0pOgo+IAo+IE9uIEZyaSwgMTYgTWF5IDIw
MjUgMDk6MjQ6MDAgKzA4MDAsIEhzdW4gTGFpIHdyb3RlOgo+ID4gVGhpcyBzZXJpZXMgYWRkIHN1
cHBvcnQgZm9yIEZpcmVmbHkgU3RhdGlvbi1NMy9ST0MtUkszNTg4Uy1QQy4KPiA+IAo+ID4gSW5m
byBvZiBkZXZpY2UgY2FuIGJlIGZvdW5kIGF0Ogo+ID4gaHR0cHM6Ly93aWtpLnQtZmlyZWZseS5j
b20vZW4vU3RhdGlvbi1NMy9pbmRleC5odG1sCj4gPiAKPiA+IENoYW5nZXMgaW4gdjM6Cj4gPiAt
IFVwZGF0ZSB0aGUgbmFtZSBvZiBsZWRzCj4gPiAtIEFkZCBtb3JlIGNwdSBub2Rlcwo+ID4gLSBV
cGRhdGUgbWRpbyBjb21wYXRpYmxlCj4gPiAtIEZpeCB0aGUgb3JkZXIgaW4gdGhlIG5vZGUKPiA+
IC0gQWRkIHRoZSBkZWZhdWx0IHNlcmlhbCBwb3J0KHVhcnQyKQo+ID4gCj4gPiBDaGFuZ2VzIGlu
IHYyOgo+ID4gLSBGaXggcmdtaWkgZGVsYXlzCj4gPiAKPiA+IENoYW5nZXMgaW4gdjE6Cj4gPiAt
IEFkZCBzdXBwb3J0IGZvciBGaXJlZmx5IFJPQy1SSzM1ODhTLVBDCj4gPiAKPiA+IEhzdW4gTGFp
ICgyKToKPiA+ICAgZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFkZCBGaXJlZmx5IFJPQy1S
SzM1ODhTLVBDCj4gPiAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgRFRzIGZvciBGaXJlZmx5
IFJPQy1SSzM1ODhTLVBDCj4gPiAKPiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbCAgICAgfCAgIDUgKwo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
TWFrZWZpbGUgICAgICAgICB8ICAgMSArCj4gPiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OHMtcm9jLXBjLmR0cyAgICAgIHwgOTI2ICsrKysrKysrKysrKysrKysrKwo+ID4gIDMgZmlsZXMg
Y2hhbmdlZCwgOTMyIGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvYy1wYy5kdHMKPiA+IAo+ID4gLS0KPiA+
IDIuMzQuMQo+ID4gCj4gPiAKPiA+IAo+IAo+IAo+IE15IGJvdCBmb3VuZCBuZXcgRFRCIHdhcm5p
bmdzIG9uIHRoZSAuZHRzIGZpbGVzIGFkZGVkIG9yIGNoYW5nZWQgaW4gdGhpcwo+IHNlcmllcy4K
PiAKPiBTb21lIHdhcm5pbmdzIG1heSBiZSBmcm9tIGFuIGV4aXN0aW5nIFNvQyAuZHRzaS4gT3Ig
cGVyaGFwcyB0aGUgd2FybmluZ3MKPiBhcmUgZml4ZWQgYnkgYW5vdGhlciBzZXJpZXMuIFVsdGlt
YXRlbHksIGl0IGlzIHVwIHRvIHRoZSBwbGF0Zm9ybQo+IG1haW50YWluZXIgd2hldGhlciB0aGVz
ZSB3YXJuaW5ncyBhcmUgYWNjZXB0YWJsZSBvciBub3QuIE5vIG5lZWQgdG8gcmVwbHkKPiB1bmxl
c3MgdGhlIHBsYXRmb3JtIG1haW50YWluZXIgaGFzIGNvbW1lbnRzLgo+IAo+IElmIHlvdSBhbHJl
YWR5IHJhbiBEVCBjaGVja3MgYW5kIGRpZG4ndCBzZWUgdGhlc2UgZXJyb3IocyksIHRoZW4KPiBt
YWtlIHN1cmUgZHQtc2NoZW1hIGlzIHVwIHRvIGRhdGU6Cj4gCj4gICBwaXAzIGluc3RhbGwgZHRz
Y2hlbWEgLS11cGdyYWRlCj4gCj4gCj4gVGhpcyBwYXRjaCBzZXJpZXMgd2FzIGFwcGxpZWQgKHVz
aW5nIGI0KSB0byBiYXNlOgo+ICBCYXNlOiBhdHRlbXB0aW5nIHRvIGd1ZXNzIGJhc2UtY29tbWl0
Li4uCj4gIEJhc2U6IHJlbW90ZXMvYXJtLXNvYy9yb2NrY2hpcC9kdDY0LTMxLWdlNDYzNjI1YWY3
ZjkgKGV4YWN0IG1hdGNoKQo+IAo+IElmIHRoaXMgaXMgbm90IHRoZSBjb3JyZWN0IGJhc2UsIHBs
ZWFzZSBhZGQgJ2Jhc2UtY29tbWl0JyB0YWcKPiAob3IgdXNlIGI0IHdoaWNoIGRvZXMgdGhpcyBh
dXRvbWF0aWNhbGx5KQo+IAo+IE5ldyB3YXJuaW5ncyBydW5uaW5nICdtYWtlIENIRUNLX0RUQlM9
eSBmb3IgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC8nIGZvciAyMDI1MDUxNjAxMjQwMi41
ODA0NjgtMS1pQGNoYWluc3guY246Cj4gCj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODhzLXJvYy1wYy5kdGI6IC9lZHBAZmRlYzAwMDA6IGZhaWxlZCB0byBtYXRjaCBhbnkgc2No
ZW1hIHdpdGggY29tcGF0aWJsZTogWydyb2NrY2hpcCxyazM1ODgtZWRwJ10KCmhtbSwgdGhlIGJp
bmRpbmcgZm9yIHJvY2tjaGlwLHJrMzU4OC1lZHAgaXMgaW4gbGludXgtbmV4dCB0aG91Z2ggWzBd
CgoKClswXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9u
ZXh0L2xpbnV4LW5leHQuZ2l0L2NvbW1pdC8/aWQ9Zjg1NTE0NjI2M2IxNGFiYWRkOGQ1YmQwZTI4
MGU1NGZiYWIzYmQxOAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
