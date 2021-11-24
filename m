Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9585AC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 12:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0sZs9SC6Fv40oIk6jJXGv3m6VLnwlVpeo8s+3oPAemU=; b=QB7DzIgoCEJGhDeMXGj5SAeoQP
	U93QF8UTo9yza5idL+VriXHOIvTpewMGNu2HEEUtqHFaiLhoDWCkrhRxCJge/aUQbpm69ATASZeCa
	4LkLLK0D6+N+n5hJDrvU2TV2dtTM/Nc4s2jyuISEhnfxS9huMIvCUrc35pts+e9C/oVzXRBe/VCPt
	kJ2LREUDxSLchb2aBEIwio/DvFoDfzeZ5MM9hg+s+ZF5cBpWva2hVQD5R8hR7MxvV9qTReiKrx76T
	H7mZHF7TkTZ53Y5Qhv3aBGIK1JMOBfVzjyx/y8XPf89+6ql4K4WYJeT76o8xRFRR53h85hr8UgJ1c
	NFRQFuDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mprhW-004l7x-Er; Wed, 24 Nov 2021 12:48:38 +0000
Received: from mail.manjaro.org ([116.203.91.91])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mprhS-004l5C-S2
 for linux-rockchip@lists.infradead.org; Wed, 24 Nov 2021 12:48:37 +0000
Message-ID: <cb97b986-7bff-6e68-9d1e-710472074cbc@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
 t=1637758110;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XCHtF5WpJTc96ezyQEaKuwEvH1h4lgRjiDsFfpB8+W4=;
 b=kBCkQjKY5P5mQoukqibE5CtU6U06vSpqAVHl0Eveehfu+EQZQB1L/O3fRvmZxhv5kRiUKR
 py3EqWK1zpSm9gtIoGFuBmSX9UE8XSOWv4odyV7jDzOtwp4o+Burjoiqzzuq6iFXD2LMPq
 ry1u2F09MOOdbGbKNmB8aLYWt3rHG7IlES7af7d9mUwUWIxzTWYZwS4wd9znEsVYXJN90f
 zAiXoYlGVdMDLkPzkhQw5kPKbdRbIqvcdYGs0OoCaIArrzWJOkTYNsF/J/RryMFmSR2ScD
 zdXT3pqBBKGbjFZks9HkFe6K6PUoySboeg9uFB/CFBD8xPpDAy8iMoBjI5cjHA==
Date: Wed, 24 Nov 2021 13:48:28 +0100
MIME-Version: 1.0
Subject: Re: [PATCH] iommu/rockchip: Fix PAGE_DESC_HI_MASKs for RK3568
Content-Language: da-DK
To: linux-rockchip@lists.infradead.org
References: <20211124021325.858139-1-knaerzche@gmail.com>
 <2895944.ZOkXcVNkQQ@diego>
 <CAMdYzYo=6H3NaBDZ2rQnDUr89rnA0rvxWGfEbRP6sQGt7+vB3w@mail.gmail.com>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <CAMdYzYo=6H3NaBDZ2rQnDUr89rnA0rvxWGfEbRP6sQGt7+vB3w@mail.gmail.com>
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_044835_407052_F6888665 
X-CRM114-Status: GOOD (  17.12  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

CkRlbiAyNC4xMS4yMDIxIGtsLiAxMy40NCBza3JldiBQZXRlciBHZWlzOgo+IE9uIFdlZCwgTm92
IDI0LCAyMDIxIGF0IDU6MzYgQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3Jv
dGU6Cj4+IEFtIE1pdHR3b2NoLCAyNC4gTm92ZW1iZXIgMjAyMSwgMDM6MTM6MjUgQ0VUIHNjaHJp
ZWIgQWxleCBCZWU6Cj4+PiBXaXRoIHRoZSBzdWJtaXNzaW9uIG9mIGlvbW11IGRyaXZlciBmb3Ig
UkszNTY4IGEgc3VidGxlIGJ1ZyB3YXMKPj4+IGludHJvZHVjZWQ6IFBBR0VfREVTQ19ISV9NQVNL
MSBhbmQgUEFHRV9ERVNDX0hJX01BU0syIGhhdmUgdG8gYmUKPj4+IHRoZSBvdGhlciB3YXkgYXJy
b3VuZCAtIHRoYXQgbGVhZHMgdG8gcmFuZG9tIGVycm9ycywgZXNwZWNpYWxseSB3aGVuCj4+PiBh
ZGRyZXNzZXMgYmV5b25kIDMyIGJpdCBhcmUgdXNlZC4KPj4+Cj4+PiBGaXggaXQuCj4+Pgo+Pj4g
Rml4ZXM6IGM1NTM1NmM1MzRhYSAoImlvbW11OiByb2NrY2hpcDogQWRkIHN1cHBvcnQgZm9yIGlv
bW11IHYyIikKPj4+IFNpZ25lZC1vZmYtYnk6IEFsZXggQmVlIDxrbmFlcnpjaGVAZ21haWwuY29t
Pgo+Pj4gLS0tCj4+Pgo+Pj4gSSd2ZSBmb3VuZCB0aGlzIGJ1Zywgd2hlbiB0ZXN0aW5nIHRoZSBy
ZWNlbnQgVk9QMiBzdWJtaXNzaW9uLCB3aGljaCBpcwo+Pj4gdGhlIGZpcnN0IHBlcnBoZXJpYWwg
d2hpY2ggdXNlcyBpb21tdSBmb3IgUkszNTZ4LiBJIGNvdWxkIHVzZSBpdCBvbiBteQo+Pj4gcXVh
cnR6NjQgOEdCIGJvYXJkIG9ubHksIHdoZW4gbGltaXRpbmcgdGhlIGF2YWlsYWJsZSBtZW1vcnkg
dG8gbGVzcyA0R0IuCj4+Pgo+Pj4gVGhpcyBwYXRjaCBmaXhlcyBpdC4KPj4+Cj4+PiAgIGRyaXZl
cnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYyB8IDQgKystLQo+Pj4gICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMgYi9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11
LmMKPj4+IGluZGV4IDVjYjI2MDgyMGVkYS4uN2YyM2FkNjFjMDk0IDEwMDY0NAo+Pj4gLS0tIGEv
ZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jCj4+PiArKysgYi9kcml2ZXJzL2lvbW11L3Jv
Y2tjaGlwLWlvbW11LmMKPj4+IEBAIC0yMDAsOCArMjAwLDggQEAgc3RhdGljIGlubGluZSBwaHlz
X2FkZHJfdCBya19kdGVfcHRfYWRkcmVzcyh1MzIgZHRlKQo+Pj4gICAjZGVmaW5lIERURV9ISV9N
QVNLMiBHRU5NQVNLKDcsIDQpCj4+PiAgICNkZWZpbmUgRFRFX0hJX1NISUZUMSAgICAgICAgMjQg
Lyogc2hpZnQgYml0IDggdG8gYml0IDMyICovCj4+PiAgICNkZWZpbmUgRFRFX0hJX1NISUZUMiAg
ICAgICAgMzIgLyogc2hpZnQgYml0IDQgdG8gYml0IDM2ICovCj4+PiAtI2RlZmluZSBQQUdFX0RF
U0NfSElfTUFTSzEgICBHRU5NQVNLX1VMTCgzOSwgMzYpCj4+PiAtI2RlZmluZSBQQUdFX0RFU0Nf
SElfTUFTSzIgICBHRU5NQVNLX1VMTCgzNSwgMzIpCj4+PiArI2RlZmluZSBQQUdFX0RFU0NfSElf
TUFTSzEgICBHRU5NQVNLX1VMTCgzNSwgMzIpCj4+PiArI2RlZmluZSBQQUdFX0RFU0NfSElfTUFT
SzIgICBHRU5NQVNLX1VMTCgzOSwgMzYpCj4+IFdpdGggdGhpcyBjaGFuZ2UgdGhlIFBBR0VfREVT
Q19ISV9NQVNLKiBub3cgbWF0Y2ggdGhlIG90aGVyCj4+IGNvbnN0YW50cyBhYm92ZSB0aGVtIGlu
IHdoYXQgYml0cyB0aGV5IGFjY2Vzcywgc28KPj4KPj4gUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+Cj4+Cj4gVGVzdGVkIG9uIHRoZSBxdWFydHo2NC1hIGJv
YXJkIHdpdGggdGhlIGV4cGVyaW1lbnRhbCB2b3AyIGRyaXZlciwKPiBjb25maXJtZWQgaXQgZml4
ZWQgdGhlIGlzc3VlLgoKVGVzdGVkIG9uIG15IFF1YXJ0ejY0IE1vZGVsIEEgd2l0aCA4IEdCIHdp
dGggdGhlIGV4cGVyaW1lbnRhbCB2b3AyIApkcml2ZXIgb24gMTQ0MHAgbW9uaXRvci4KCkNvbmZp
cm1lZCB0byBmaXggdGhlIGlzc3VlLCBhcyBJIGtub3cgaG93IGRpc3BsYXkgb3V0IHRoYXQgd29y
a3MuCgoKVGVzdGVkLWJ5OiBEYW4gSm9oYW5zZW4gPHN0cml0QG1hbmphcm8ub3JnPgoKPgo+IFRl
c3RlZC1ieTogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPgo+Pgo+Pgo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKPj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+
PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAotLSAKS2luZCByZWdhcmRzCkRhbiBKb2hhbnNlbgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
