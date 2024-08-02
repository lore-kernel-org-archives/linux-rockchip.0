Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67A0DC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 21:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCfi2mTwwxQf4OVncfMMsFVsWEFZslhRJXdrxYDCklQ=; b=Pv8+ebq3O1VCbd
	FmWTN06fAIguh1hdORTPW/siSngibQUkgB8jD3tFtw7TsJRlsTfyPowRlTxFjyN402lgaFvbDVnVe
	QaNNx7BShxnwUlMGxw9Xqb8MBFq8Fug1tgm10CGcTXoRvrUceQ8JDansbyPBNPV0GWmCqu4t0cOxf
	oZCF2hNXvDtwgTGo5QxClmoxOcFqqzQYpqYMALkYfzovXQy/T3c815FQn6eiAlc3oxB3xK8eN9G9E
	TwiZzlCr+1coU9VXlgotldQqBa7XSMP71XWbFfld40d/zMzCtD/LxiHkR23EddJgzqpTS/vxQwvha
	ZQ49aLMFu1Zt6e3zHcrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZzY2-0000000A5Bp-1xGq;
	Fri, 02 Aug 2024 21:10:50 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZzXJ-0000000A4y6-17SN;
	Fri, 02 Aug 2024 21:10:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722633003;
	bh=9dKMte5AFbMCPQcb5CrWmFpJYPJ6uvTEhFLt0GaO98w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MdBNH8K2NbSu7puBPIhq9BT+s8UodLsfqUuytnQE9ngLkHKqWrndo8AqdgDEALFJ1
	 F21lcjmTHZDtFFj8aK9vG6578iFD3r4Q/3sWIekd7/KIU8N72B/EdVr8DGP+3Qb0FY
	 d32IhXbsBWzWsrO8WM1pCPIpia5CkIbb1zaKZ+1crv1KPgmGIJ+wYeszRNrbKfvIYt
	 XArxZtNaijg4BGgPklQKOXa3JPycs32d9xTjH4wdHSg54rg6TnlKJAqugsEFnsNq/L
	 +Nql8GU376VHotpO8BGbvC8acb8gACRzncNRUxHWGV3xdJzz898D2VRMGBvWYD2sUF
	 Kv5YAgQuJCusw==
Received: from trenzalore.localnet (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 909C53782218;
	Fri,  2 Aug 2024 21:10:01 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Sugar Zhang <sugar.zhang@rock-chips.com>,
 kernel@collabora.com
Subject: Re: [PATCH 2/3] clk: rockchip: Add dt-binding header for rk3576
Date: Fri, 02 Aug 2024 17:11:09 -0400
Message-ID: <3308850.44csPzL39Z@trenzalore>
In-Reply-To: <4084310.iTQEcLzFEP@diego>
References: <20240802141816.288337-1-detlev.casanova@collabora.com>
 <20240802141816.288337-3-detlev.casanova@collabora.com>
 <4084310.iTQEcLzFEP@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_141005_464449_6B487691 
X-CRM114-Status: GOOD (  25.15  )
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

SGkgSGVpa28sCgpPbiBGcmlkYXksIDIgQXVndXN0IDIwMjQgMTA6MzQ6MDcgRURUIEhlaWtvIFN0
w7xibmVyIHdyb3RlOgo+IEhpIERldGxldiwKPiAKPiBBbSBGcmVpdGFnLCAyLiBBdWd1c3QgMjAy
NCwgMTY6MTI6NDkgQ0VTVCBzY2hyaWViIERldGxldiBDYXNhbm92YToKPiA+IEZyb206IEVsYWlu
ZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+ID4gCj4gPiBBZGQgdGhlIGR0LWJp
bmRpbmdzIGhlYWRlciBmb3IgdGhlIHJrMzU3NiwgdGhhdCBnZXRzIHNoYXJlZCBiZXR3ZWVuCj4g
PiB0aGUgY2xvY2sgY29udHJvbGxlciBhbmQgdGhlIGNsb2NrIHJlZmVyZW5jZXMgaW4gdGhlIGR0
cy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1j
aGlwcy5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTdWdhciBaaGFuZyA8c3VnYXIuemhhbmdAcm9j
ay1jaGlwcy5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEZXRsZXYgQ2FzYW5vdmEgPGRldGxldi5j
YXNhbm92YUBjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiAKPiA+ICAuLi4vZHQtYmluZGluZ3Mv
Y2xvY2svcm9ja2NoaXAscmszNTc2LWNydS5oICAgfCAxMTQ5ICsrKysrKysrKysrKysrKysrCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDExNDkgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU3Ni1jcnUuaAo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1
NzYtY3J1LmgKPiA+IGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1NzYt
Y3J1LmggbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjE5ZDI1
ZjA4MmRjNTcKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3Mv
Y2xvY2svcm9ja2NoaXAscmszNTc2LWNydS5oCj4gPiBAQCAtMCwwICsxLDExNDkgQEAKPiA+IAo+
ID4gKyNkZWZpbmUgQ0xLX05SX0NMS1MJCQkoQUNMS19LTEFEICsgMSkKPiAKPiB0aGlzIG5lZWRz
IHRvIGdvIHBsZWFzZS4gVGFrZSBhIGxvb2sgYXQgaG93IFNlYmFzdGlhbiBnb3QgcmlkIG9mIG5l
ZWRlZAo+IHRoYXQgbWF4LWNvbnN0YW50IGZvciByazM1ODguCgpPaCBpbmRlZWQsIHRoYXQgbG9v
a3MgYmV0dGVyLCBJJ2xsIHBvcnQgaXQgdG8gdXNpbmcgdGhlIHNhbWUgZnVuY3Rpb25zIGFzIGlu
IApyazM1ODguCgpJJ2xsIGFsc28gc2VwYXJhdGUgY2xvY2tzIGFuZCByZXNldHMgYXMgZG9uZSBp
biByazM1ODggYW5kIGltcHJvdmUgdGhlIGxpc3RpbmcgCm9mIHRob3NlIHJlc2V0cyBhcyBpbiBy
c3QtcmszNTg4LmMKCj4gWy4uLl0KPiAKPiA+ICsjZGVmaW5lIFNSU1RfSF9WRVBVMQkJCTEyNjcK
PiA+ICsjZGVmaW5lIFNSU1RfQV9WRVBVMQkJCTEyNjgKPiA+ICsjZGVmaW5lIFNSU1RfVkVQVTFf
Q09SRQkJCTEyNjkKPiA+ICsKPiA+ICsvKioqKioqKipOYW1lPVBIUFBIWVNPRlRSU1RfQ09OMDAs
T2Zmc2V0PTB4OEEwMCoqKioqKioqLwo+ID4gKyNkZWZpbmUgU1JTVF9QX1BIUFBIWV9DUlUJCTEz
MTA3Mwo+ID4gKyNkZWZpbmUgU1JTVF9QX0FQQjJBU0JfU0xWX0NISVBfVE9QCTEzMTA3NQo+ID4g
KyNkZWZpbmUgU1JTVF9QX1BDSUUyX0NPTUJPUEhZMAkJMTMxMDc3Cj4gPiArI2RlZmluZSBTUlNU
X1BfUENJRTJfQ09NQk9QSFkwX0dSRgkxMzEwNzgKPiA+ICsjZGVmaW5lIFNSU1RfUF9QQ0lFMl9D
T01CT1BIWTEJCTEzMTA3OQo+ID4gKyNkZWZpbmUgU1JTVF9QX1BDSUUyX0NPTUJPUEhZMV9HUkYJ
MTMxMDgwCj4gCj4gdGhpcyBzZWVtcyB0byBsdW1wIHRvZ2V0aGVyIGRpZmZlcmVudCBjb21wb25l
bnRzIGFuZCB3aXRoIHRoYXQgY3JlYXRlcwo+IHRoZXNlIGdhcHMuIEkuZS4gSSByZWFsbHkgZG9u
J3QgdGhpbmsgdGhlIHBocHBoeSBpbiB0aGVzZSByZWdpc3RlcnMgaXMgcGFydAo+IG9mIHRoZSBj
b3JlIENSVS4KPiAKPiBUaGF0IGh1Z2UgbWVtb3J5IGxlbmd0aCBvZiAweDVjMDAwIGluIHlvdXIg
ZHQtYmluZGluZyBpcyBhbHNvIGEgZ29vZAo+IGluZGljYXRvciB0aGF0IHRoaXMgbmVlZHMgdG8g
aGF2ZSBtb3JlIHNlcGFyYXRpb24gYW5kIG5vdCBzcGFuIG11bHRpcGxlCj4gZGV2aWNlcy4KCkl0
IGlzIG5vdCByZWFsbHkgY2xlYXIgaWYgdGhvc2UgYXJlIGRpZmZlcmVudCBkZXZpY2VzLCBidXQg
dGhleSBjYW4gcG9zc2libHkgYmUgCnNlZW4gYXMgZGlmZmVyZW50IGluc3RhbmNlcyBvZiB0aGUg
c2FtZSBkZXZpY2UuIEknbGwganVzdCByZW1vdmUgdGhvc2UgZXh0cmEgCnJlc2V0cyBmb3Igbm93
IGFuZCBhZGQgdGhlbSB3aXRoIHRoZSBjb3JyZWN0IGRldmljZSB3aGVuIHN1cHBvcnQgaXMgCmlt
cGxlbWVudGVkLgoKPiA+ICsvKioqKioqKipOYW1lPVBIUFBIWVNPRlRSU1RfQ09OMDEsT2Zmc2V0
PTB4OEEwNCoqKioqKioqLwo+ID4gKyNkZWZpbmUgU1JTVF9QQ0lFMF9QSVBFX1BIWQkJMTMxMDkz
Cj4gPiArI2RlZmluZSBTUlNUX1BDSUUxX1BJUEVfUEhZCQkxMzEwOTYKPiA+ICsKPiA+ICsvKioq
KioqKipOYW1lPVNFQ1VSRU5TU09GVFJTVF9DT04wMCxPZmZzZXQ9MHgxMEEwMCoqKioqKioqLwo+
ID4gKyNkZWZpbmUgU1JTVF9IX0NSWVBUT19OUwkJMjYyMTQ3Cj4gPiArI2RlZmluZSBTUlNUX0hf
VFJOR19OUwkJCTI2MjE0OAo+ID4gKyNkZWZpbmUgU1JTVF9QX09UUENfTlMJCQkyNjIxNTIKPiA+
ICsjZGVmaW5lIFNSU1RfT1RQQ19OUwkJCTI2MjE1Mwo+ID4gKwo+ID4gKy8qKioqKioqKk5hbWU9
UE1VMVNPRlRSU1RfQ09OMDAsT2Zmc2V0PTB4MjBBMDAqKioqKioqKi8KPiA+ICsjZGVmaW5lIFNS
U1RfUF9IRFBUWF9HUkYJCTUyNDI4OAo+IAo+IHNhbWUgaGVyZSwgdGhhdCBpcyBhbHNvIG1vc3Qg
bGlrZWx5IG5vdCBwYXJ0IG9mIHRoZSBDUlUgYnV0IGEgZGlmZmVyZW50Cj4gYmxvY2suIE90aGVy
IHNvY3MgYWxyZWFkeSBpbXBsZW1lbnQgc2VwYXJhdGUgY2xvY2sgY29udHJvbGxlcnMgZm9yCj4g
ZGlmZmVyZW50IHBhcnRzLCBzbyBwbGVhc2UgdGFrZSBhIGxvb2sgdGhlcmUuCgpMZXQncyBhZGQg
dGhvc2UgcmVzZXRzIHdoZW4gdGhlIGRldmljZSB0aGV5IGFyZSBsaW5rZWQgdG8gaXMgYWN0dWFs
bHkgCnN1cHBvcnRlZCB0aGVuLgoKPiBUaGFua3MKPiBIZWlrbwoKUmVnYXJkcywKRGV0bGV2LgoK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
