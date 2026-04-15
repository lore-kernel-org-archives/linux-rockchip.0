Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42238F43824
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Apr 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGYP5I/ODAcPoCUQmBvrafz6UccOPOrcDY3ToiHsDdk=; b=kG0qlDJHgVNF37
	xJJBbRoSqetI6T1tTK2QOOSYXwvKNhBTK0T7n4vsjy0zMu6HZ0N0O7UxsOnohZA7g9BozAcB7f0s4
	qY3fXZyaD81FOZnSShLhA11fqypa2InV2IGl+qRmKbbzH0blOOMECRXjQWQZVaBsU1YkSELsTs7OI
	ZVdK1OpRUQ32NNcYo8RuGT6g0sYG0KuDTEJ+wuya3m8DrYSxVSq9I//nAtnMQyf9VAKWuyuhPc/vh
	Wr5X70WjxTq61YSJRjHvwsWLvLBmSCfrOHFJKJVu2L7JqDw5YONU8sOoGmeYoqK9EGILWllR/uCPv
	9h3TQLluiHHT5JdJj+Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD1L0-00000001FLZ-1EfF;
	Wed, 15 Apr 2026 14:35:30 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD1Kw-00000001FL3-3SID;
	Wed, 15 Apr 2026 14:35:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776263723;
	bh=WnKn70BAZ4sIf6ZszM++Jo6mlB40fmv2BMBcceSDkYQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CiU2a4LlRImsM5l+nSEb0eApmWCoCHT3iaWM5v++oJlHVdZJ14Yq0iKPj+AAo8Ec1
	 z/WUs1E2sUwGuwt5MFKd6Hp6Wl7qHRLckSAKG6mNx+8q+1z616CD+WIyOY5+YPybAv
	 YcHRl5SZ26CkGGotAlJE9rVWhVnf8dFirqvbzp+bTB/bViqqVLCvW5sENkkrP/17Ge
	 uJ4bMQmmgUot7sTh2Dh+a7Zuly4E+TCX6OKPCHTvZUBNn5ZA9IDDDxZHO/N45m72yK
	 z0UoigsfQj08VU3mrRJDtrseTZd0ZNn6vjwfEo8a3wH1VVWFUr1gDwnwjZoJ6RcxEZ
	 dJ/JnSbRe6NYA==
Received: from [100.64.1.43] (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4BEE517E0610;
	Wed, 15 Apr 2026 16:35:23 +0200 (CEST)
Message-ID: <fd663d6d-2380-41f9-8d03-8f7740cbd6ce@collabora.com>
Date: Wed, 15 Apr 2026 16:35:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] media: verisilicon: Simplification and clean up
To: nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, Frank.Li@nxp.com, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, heiko@sntech.de,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, wens@kernel.org,
 jernej.skrabec@gmail.com, samuel@sholland.org
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev,
 kernel@collabora.com
References: <20260415140420.282084-1-benjamin.gaignard@collabora.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20260415140420.282084-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_073527_069916_8CD816DF 
X-CRM114-Status: GOOD (  11.29  )
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

CkxlIDE1LzA0LzIwMjYgw6AgMTY6MDQsIEJlbmphbWluIEdhaWduYXJkIGEgw6ljcml0wqA6Cj4g
U2ltcGxpZnkgbW90aW9uIHZlY3RvcnMgYW5kIHJlZmVyZW5jZSBhbGxvY2F0aW9uIHdpdGggY29t
bW9uIGhlbHBlcnMuCj4gU2luY2UgaXQgcmVxdWlyZXMgdG8gbW92ZSBzb21lIG9mIGNvZGVjcyBz
cGVjaWZpYyBmdW5jdGlvbnMgYW5kCj4gc3RydWN0dXJlIGluIGNvZGVjcyBoZWFkZXIgZmlsZXMg
YWRkIGEgcGF0Y2ggdG8gZmluaXNoIHRoZSBjbGVhbiB1cC4KCkkgZm9yZ290IHRvIG1lbnRpb24g
dGhhdCB0aGlzIHNlcmllcyBkZXBlbmRzIG9uCmh0dHBzOi8vcGF0Y2h3b3JrLmxpbnV4dHYub3Jn
L3Byb2plY3QvbGludXgtbWVkaWEvcGF0Y2gvMjAyNjA0MTUwNzM4MDEuNTgzNjktMS1iZW5qYW1p
bi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tLwoKPgo+IEJlbmphbWluIEdhaWduYXJkICgyKToKPiAg
ICBtZWRpYTogdmVyaXNpbGljb246IFNpbXBsaWZ5IG1vdGlvbiB2ZWN0b3JzIGFuZCByZmMgYnVm
ZmVycyBhbGxvY2F0aW9uCj4gICAgbWVkaWE6IHZlcmlzaWxpY29uOiBDbGVhbiB1cCBtZXNzeSBp
bmNsdWRlCj4KPiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvLmgg
ICB8ICAzMSArLQo+ICAgLi4uL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19hdjEu
YyAgIHwgICA3IC0KPiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fYXYx
LmggICB8IDEwMCArKystCj4gICAuLi4vcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cxX2gy
NjRfZGVjLmMgfCAgIDEgKwo+ICAgLi4uL3ZlcmlzaWxpY29uL2hhbnRyb19nMV9tcGVnMl9kZWMu
YyAgICAgICAgIHwgICAyICstCj4gICAuLi4vcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cx
X3ZwOF9kZWMuYyAgfCAgIDIgKy0KPiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9o
YW50cm9fZzIuYyAgICB8ICAzNiAtLQo+ICAgLi4uL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRy
b19nMl9oZXZjX2RlYy5jIHwgIDI2ICstCj4gICAuLi4vcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX2cyX3ZwOV9kZWMuYyAgfCAgMTIgKy0KPiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9oYW50cm9faDI2NC5jICB8ICAgMiArLQo+ICAgLi4uL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyb19oMjY0LmggIHwgIDk4ICsrKysKPiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9oYW50cm9faGV2Yy5jICB8ICAzNyArLQo+ICAgLi4uL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19oZXZjLmggIHwgIDgyICsrKysKPiAgIC4uLi9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaCAgICB8IDQ0NiArLS0tLS0tLS0tLS0tLS0tLS0K
PiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fbXBlZzIuYyB8ICAgMSAr
Cj4gICAuLi4vbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX21wZWcyLmggfCAgMjcg
KysKPiAgIC4uLi9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYyAgICB8ICAy
OSArLQo+ICAgLi4uL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMgIHwg
MjYyICsrKysrKysrKy0KPiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
dnA4LmMgICB8ICAgMSArCj4gICAuLi4vbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X3ZwOC5oICAgfCAgMjkgKysKPiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50
cm9fdnA5LmggICB8IDEwNCArKysrCj4gICAuLi4vbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
aW14OG1fdnB1X2h3LmMgfCAgIDUgKwo+ICAgLi4uL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTJf
aHdfaDI2NF9kZWMuYyAgIHwgICAyICstCj4gICAuLi4vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1
Ml9od19tcGVnMl9kZWMuYyAgfCAgIDIgKy0KPiAgIC4uLi92ZXJpc2lsaWNvbi9yb2NrY2hpcF92
cHUyX2h3X3ZwOF9kZWMuYyAgICB8ICAgMiArLQo+ICAgLi4uL3ZlcmlzaWxpY29uL3JvY2tjaGlw
X3ZwdTk4MV9od19hdjFfZGVjLmMgIHwgIDE2ICstCj4gICAuLi4vcGxhdGZvcm0vdmVyaXNpbGlj
b24vcm9ja2NoaXBfdnB1X2h3LmMgICAgfCAgIDMgKwo+ICAgLi4uL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL3N0bTMybXAyNV92cHVfaHcuYyAgIHwgICAyICsKPiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9zdW54aV92cHVfaHcuYyB8ICAgMSArCj4gICAyOSBmaWxlcyBjaGFuZ2VkLCA3
OTYgaW5zZXJ0aW9ucygrKSwgNTcyIGRlbGV0aW9ucygtKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2gyNjQuaAo+ICAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X2hldmMuaAo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX21wZWcyLmgKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192cDguaAo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
