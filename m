Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFC50C3064D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnBPEo2VjBIOrsenx/Obt9i1LIytR+u8bZy2Os/y9J8=; b=rxB28GNX6y8QF6
	q3ce7j4oWyTQvzXPP5Wm+qZspN8q3XGECpngKJYF/gE1spuYUUFLx046VwMnJuNIu+g+X/TrDKHMA
	WzNWhBvdIiMF8VGSNcuDjmkxi2Vt4BGuo4lxUcLSWj5hbqsnkMZ6KNYNq5iKyKvR16EbGoe+y6kc4
	/WKJjUC5hU2nnSqXwILzKNv+PFe8OklLm+Hmu7BxrqGi4xVNvBgFBIlUG4BTefZZhwX39yYQD2zn9
	dcsqA8qy6jPsD8JKkxDk5dIrWj3VilZms85FNo7b2jZJ3y8qRjJbDjYx6wWTVAy6vWpmDxelvqJJg
	yuhNPNKqhGAMNUdxAjpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMWim-00000007o5E-1AN4;
	Wed, 26 Jun 2024 17:46:16 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMWij-00000007o3s-28LR
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Jun 2024 17:46:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719423968;
	bh=v0Vh4kAkmKCJro2vJe6FJUdsNe+J9F0n0qvBZYaqEMY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=K7rO6ztXaBSACwy14eiHwe4hrwfzRq5yJy1iqhmvYCDKsiBoSHGcpTQfoZL32bfGs
	 AlaBzTi8sk2IF8OyyAL8Wd6xq24K6CzLDz+/ozJ4gSKYCAhgkAcHqQsrwShLb93nzT
	 /GgSMJnyEMBpAbpQ39/oULIfSMlGdNv3J+S/oqCZGaNfTgSLDIPIZhrXjnWjQKtDUx
	 5QWDM2KjxIus5KQEbw4+dUpDHXBHU65TSQvHg5cVpLOjNq41x9l2qoxQgPM3O85R2d
	 hTrPMYsJUXUNUoURTASSdK1rvxDARVMd/1VZLbCu5MiGMEwfEPmYwUA9qb0ambYCCc
	 7vwcdDloLSu+A==
Received: from nicolas-tpx395.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5CF0A37810CD;
	Wed, 26 Jun 2024 17:46:06 +0000 (UTC)
Message-ID: <f04e25bf3c09c55049775e8f012cb653cb4682ba.camel@collabora.com>
Subject: Re: [PATCH v7 6/6] arm64: dts: rockchip: Add VPU121 support for
 RK3588
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>, sebastian.reichel@collabora.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, 
 ezequiel@vanguardiasur.com.ar, frattaroli.nicolas@gmail.com,
 heiko@sntech.de,  kernel@collabora.com, krzk+dt@kernel.org,
 linkmauve@linkmauve.fr,  linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
 p.zabel@pengutronix.de, robh@kernel.org,  sigmaris@gmail.com,
 detlev.casanova@collabora.com
Date: Wed, 26 Jun 2024 13:46:03 -0400
In-Reply-To: <20240621092234.280171-1-liujianfeng1994@gmail.com>
References: <20240618183816.77597-7-sebastian.reichel@collabora.com>
	 <20240621092234.280171-1-liujianfeng1994@gmail.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_104613_886800_32F42BD7 
X-CRM114-Status: GOOD (  15.21  )
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

SGkgSmlhbmZlbmcsCgpMZSB2ZW5kcmVkaSAyMSBqdWluIDIwMjQgw6AgMTc6MjIgKzA4MDAsIEpp
YW5mZW5nIExpdSBhIMOpY3JpdMKgOgo+IEhpIFNlYmFzdGlhbiwKPiAKPiBEZXRsZXYgaXMgd29y
a2luZyBvbiBya3ZkZWMyIGFuZCBnc3RyZWFtZXIgY2FuJ3QgZGVhbCB3aXRoIHR3byBoMjY0CgpK
dXN0IHRvIGNsYXJpZnksIHNpbmNlIHlvdSBhcmUgcmlnaHQgdGhhdCBpdCB3b24ndCB3b3JrIHdl
bGwgd2l0aCBHU3RyZWFtZXIuIEl0CmRvZXMgd29yayB3aXRoIG11bHRpcGxlIGRlY29kZXJzIChp
dCBleHBvc2VzIHRoZW0gYWxsKSwgaXQgaXMgc2ltcGx5IHRoYXQgaXQKd2lsbCByYW5kb21seSBw
aWNrIG9uZSB3aGVuIGRlY29kaW5nLCBhbmQgaXQgbWF5IG5vdCBwaWNrIHRoZSBiZXN0IG9uZS4K
Cj4gc3RhdGVsZXNzIGRlY29kZXJzLiBTbyBpdCdzIGJldHRlciB0byBkaXNhYmxlIGgyNjQgZGVj
b2RpbmcgZmVhdHVyZSBvZgo+IHRoaXMgdnB1MTIxLCBqdXN0IGxpa2Ugd2hhdCB3ZSBoYXZlIGRv
bmUgZm9yIHJrMzM5OS4gSWYgeW91ciBtdWx0aWNvcmUKPiBwYXRjaCBjYW4gaGFuZGxlIHRoZSBq
cGVnIGVuYyBub2RlIGF0IGZkYjUwMDAwIHdpdGggb3RoZXIgVkVQVTEyMSBub2Rlcwo+IHByb3Bl
cmx5LCB3ZSBjYW4ganVzdCB1c2UgY29tcGF0aWJsZSBzdHJpbmcgInJvY2tjaGlwLHJrMzM5OS12
cHUiIGluc3RlYWQKPiBvZiAicm9ja2NoaXAscmszNTY4LXZwdSIuCgpJbiB0aGUgbG9uZyB0ZXJt
LCBJJ2QgbGlrZSB0byBzdG9wIGhhdmluZyB0byBkbyAibGlrZSBkb3duc3RyZWFtIiBhbmQgZXhw
b3NlCnRoZW0gYWxsLiBJIGJlbGlldmUgdGhlIGZpeCBpcyBmYWlybHkgc3RyYWlnaHRmb3J3YXJk
IGluIEdTdHJlYW1lci4gV2UgbmVlZCB0bwpleHBvc2UgaW4gdGhlIGdlbmVyYXRlZCBlbGVtZW50
IHRoZSB3aWR0aC9oZWlnaHQgcmFuZ2VzLCBhbmQgZm9yIEguMjY0IHRoZQpzdXBwb3J0ZWQgcHJv
ZmlsZXMgYW5kIGxldmVsLiBXaXRoIHRoYXQsIHdlIGF0IGxlYXN0IHdvbid0IHJhbmRvbWx5IGZh
aWwgYXQKZGVjb2RpbmcgNEssIGFuZCBpdCBzaG91bGQgYmUgZ29vZCBlbm91Z2guCgpGb3IgUksz
NTg4LCB3aGljaCBpcyBhIG5ldyBTb0MsIGl0cyBub3QgYSBwcm9ibGVtIHRvIHVwc3RyZWFtIHNv
bWV0aGluZyB0aGF0CmRvZXMgbm90IHdvcmsgd2l0aCBleGlzdGluZyB1c2Vyc3BhY2UuIEl0IHdv
dWxkIG9ubHkgYmUgYSByZWdyZXNzaW9uIGlmIHdlIHdoZXJlCnRvIGVuYWJsZSBWRFBVMTIxIG9u
IFJLMzM5OSwgYXMgbm93IHVwZGF0aW5nIGxpbnV4IHdvdWxkIGNhdXNlIGJ1Z3Mgd2l0aApleGlz
dGluZyB1c2Vyc3BhY2UuCgpGb3IgdXNlcnMsIGl0IHdvdWxkIGJlIGJlc3QgaWYgd2UgZ2V0IHRo
aXMgc29ydGVkIG91dCBpbiBHU3RyZWFtZXIgYnkgdGhlIHRpbWUKd2UgaGF2ZSBhIHNlY29uZCBk
ZWNvZGVyLiBOb3RlIHRoYXQgSSBoYXZlIHNvbWUgdmFjYXRpb24gY29taW5nIHVwIHRoaXMgbW9u
dGgsCnNvIHRoZXJlIG1pZ2h0IGJlIGV4dHJhIGRlbGF5cy4gWWV0LCBpdHMgbG9naWNhbCB0byBt
ZXJnZSB0aGlzICh0aGUgIndvcnN0IgpkZWNvZGVyKSBmaXJzdCwgc2luY2UgdGhlbiByYW5kb21s
eSBwaWNraW5nIGEgYmV0dGVyIG9uZSB3b24ndCBiZSBhIHJlZ3Jlc3Npb24uCgpOaWNvbGFzCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
