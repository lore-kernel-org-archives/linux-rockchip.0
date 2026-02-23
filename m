Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B65CEC1112
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 17:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GK3NjEpI/3bmWoKEtJzLlGNaChxt8lRJ9MR+qQrjxyY=; b=wmX3G0xRtD+Cqf
	Wu0G4LsZ2bRFiM2P92iihCwcU2ctDNauw9tiSxxo3+wq9Nt67lDGDfJ2H1DFRHridUtvXmmOGm13x
	+lh2o8j4VCVcNvc+5kg5LA4AOwQBJS8wigJBUsaFqEocp0bB6hhvbWk3KhKrah150Si0Osks5UWlf
	4jPoI3dHohYKLuQ9r4iCzIDZV/huA2Q5Ub0gZGsub0yl1/K1Qk+IdRSLKwZUO0hnuhlIgkm+lheFd
	MCLklswlV3GkkE9Y9RYSIk8jcafdZykKcw/R7464ieSGcHH0sKnfBJjztyg/SOQ7DUTVebs4fGKfa
	aUdgenJFaMdGlqnOTNgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuZay-00000000l1e-0hSj;
	Mon, 23 Feb 2026 17:19:44 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuZav-00000000l0Q-1sqk;
	Mon, 23 Feb 2026 17:19:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771867178;
	bh=K21kjy9qzrF9ypXG7rQNvPH2O306QauFy/abdov4/ag=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BsXDftefiIPUo9wBEuCnGW+eH0sGWoHtFskViUB2WUIk7UeGUDEwdN37H2Dx8hAqw
	 VSt5oHBb94OLuZb7p+Kp30EalU9tKFKhrdxna+uT0/w7jhLR1j6ZJD6SPXB9JyT8b1
	 Lzdzp9m7Z1wbQrZ4P7PnCvsWLNI7U1njaKVNARQtslKNW5Z8JvhHnsdJMA5bMjkDu4
	 B3SSFhrUvj/UIFMdzhuwXHg0hXhgmQfJ6vMvhRXrOyaTSsNZEJoz00cNYHTLY270dL
	 iB48v4ED6+xIJElC1oS1M2km1gQaGOMGUdhMDLHdtyhAwBCe0O8qaXmeyoi6WB2wqN
	 wayFEyy6Uo1Lg==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 66D6B17E041C;
	Mon, 23 Feb 2026 18:19:38 +0100 (CET)
Message-ID: <39f493a6-fd98-4cf6-9991-334ab4ddbbf8@collabora.com>
Date: Mon, 23 Feb 2026 19:19:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdec register blocks order on
 RK3576
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260223-vdec-reg-order-rk3576-v1-1-560976566bd3@collabora.com>
 <edbf38b34e98ee039f45faab5aa5b00a585799ce.camel@collabora.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <edbf38b34e98ee039f45faab5aa5b00a585799ce.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_091941_631366_AAF6815C 
X-CRM114-Status: GOOD (  16.50  )
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

SGkgTmljb2xhcywKCk9uIDIvMjMvMjYgNDo1MSBQTSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToK
PiBIaSBDcmlzdGlhbiwKPiAKPiBMZSBsdW5kaSAyMyBmw6l2cmllciAyMDI2IMOgIDE0OjI1ICsw
MjAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEgYSDDqWNyaXQgOgo+PiBXaGVuIGJ1aWxkaW5nIGRldmlj
ZSB0cmVlcyBmb3IgdGhlIFJLMzU3NiBiYXNlZCBib2FyZHMsIERUQyBzaG93cyB0aGUKPj4gZm9s
bG93aW5nIGNvbXBsYWludDoKPj4KPj4gICByazM1NzYuZHRzaToxMjgyLjMwLTEzMDQuNTogV2Fy
bmluZyAoc2ltcGxlX2J1c19yZWcpOgo+PiAvc29jL3ZpZGVvLWNvZGVjQDI3YjAwMDAwOiBzaW1w
bGUtYnVzIHVuaXQgYWRkcmVzcyBmb3JtYXQgZXJyb3IsIGV4cGVjdGVkCj4+ICIyN2IwMDEwMCIK
Pj4KPj4gUHJvdmlkZSB0aGUgcmVnaXN0ZXIgYmxvY2tzIGluIHRoZSBleHBlY3RlZCBhZGRyZXNz
LWJhc2VkIG9yZGVyLgo+Pgo+PiBGaXhlczogZGEwZGU4MDZkOGI0ICgiYXJtNjQ6IGR0czogcm9j
a2NoaXA6IEFkZCB0aGUgdmRwdTM4MyBWaWRlbyBEZWNvZGVyIG9uCj4+IHJrMzU3NiIpCj4+IFNp
Z25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxh
Ym9yYS5jb20+Cj4+IC0tLQo+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYu
ZHRzaSB8IDYgKysrLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NzYuZHRzaQo+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LmR0
c2kKPj4gaW5kZXggNDljY2RmMTJlZjdlLi40NWViMGQwNTNhNmYgMTAwNjQ0Cj4+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LmR0c2kKPj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYuZHRzaQo+PiBAQCAtMTI4MSwxMCArMTI4MSwxMCBA
QCBncHU6IGdwdUAyNzgwMDAwMCB7Cj4+ICAKPj4gIAkJdmRlYzogdmlkZW8tY29kZWNAMjdiMDAw
MDAgewo+PiAgCQkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NzYtdmRlYyI7Cj4+IC0JCQly
ZWcgPSA8MHgwIDB4MjdiMDAxMDAgMHgwIDB4NTAwPiwKPj4gLQkJCSAgICAgIDwweDAgMHgyN2Iw
MDAwMCAweDAgMHgxMDA+LAo+PiArCQkJcmVnID0gPDB4MCAweDI3YjAwMDAwIDB4MCAweDEwMD4s
Cj4+ICsJCQkgICAgICA8MHgwIDB4MjdiMDAxMDAgMHgwIDB4NTAwPiwKPj4gIAkJCSAgICAgIDww
eDAgMHgyN2IwMDYwMCAweDAgMHgxMDA+Owo+PiAtCQkJcmVnLW5hbWVzID0gImZ1bmN0aW9uIiwg
ImxpbmsiLCAiY2FjaGUiOwo+PiArCQkJcmVnLW5hbWVzID0gImxpbmsiLCAiZnVuY3Rpb24iLCAi
Y2FjaGUiOwo+IAo+IEkgaGF2ZSBhIHZhZ3VlIG1lbW9yeSBpdCB3YXMgZG9uZSBvbiBwdXJwb3Nl
LCBkdWUgdG8gdGhlICJpdGVtcyIgaW4gdGhlIGJpbmRpbmdzCj4gcmVxdWlyaW5nIHRvIGZvbGxv
dyB0aGUgc2FtZSBvcmRlci4gSSB3YXMgbm90IGVuYWJsZSB0byBydW4gdGhlIERUIGNoZWNrcyB0
b2RheQo+IChzb21lIHB5dGhvbmljIHZlcnNpb24gbWlzcy1tYXRjaCBpc3N1ZSksIGJ1dCB3YW50
ZWQgdG8gcmFpc2UgdGhlIGZsYWcuCgpBcyBJIG1lbnRpb25lZCBpbiBteSBwcmV2aW91cyByZXBs
eSwgSSB0aGluayB3ZSBzaG91bGQgY2hhbmdlIHRoZSBiaW5kaW5nIHRvCmFsbG93IHVzaW5nIHRo
ZSBjb3JyZWN0IG9yZGVyLgoKVGhhbmtzLApjcmlzdGlhbgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
