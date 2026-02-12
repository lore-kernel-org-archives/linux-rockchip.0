Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A066EE3683
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Feb 2026 13:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgA6xIO34LOkcmTXXb773eAx0jO9iYnCCptX9AWnEaY=; b=r9KdwxlVSVNbYW
	utZ8uUbgP9aAqVpXF/mDatm6jxqooDRrdPwUzSUentM04uKWYV3f7IWl4vxmzn8ArAHzvcuki93Lm
	tmGAKzJECHVUgdhhYGYdrmfJLVIlB+WX8u0CYtaGQ0+Ua7DBVRastM35lqudhUkmF1t7sgW/eUJeR
	odbSk5c0hyvohRoz80tQgHd59epBsi6FJt8bwtHZSpHN0JolawvhTSf6J3ylTIgQlJQIeWVlpSblC
	Le59sXzXYAvu80Hxo973fkRRb5q147RkxEx5Ef4ngoZu4yE43VLShLmW0xWvSN9muyeP/f7STT5HT
	vTIwPpj/700PHaD/572A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqWd7-000000028Hp-0BD9;
	Thu, 12 Feb 2026 13:21:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqWd2-000000028HQ-2PvV
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Feb 2026 13:21:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=L9JvsKQomzjfUx0Jrkru8FHwTawX1PjAiaEfoAKf5i4=; b=oyQKZGXRgftsClMgTTh5qHuBjA
	d516pi8rjloluMxioG0o95yJJRYbS3cXi+J0/1myKI0L8t1Q3aWeL0UYNNpRvNKnqHzgeSu8EStGH
	K++dBUk1fBXFPdHDqi9hmN7zjL25kyWLTE+gMZ9/XZXNkz57UUC5g4NTYCvE38a4CVBUCVaBAifdj
	soItB+RbpLdsEtdikkQ0AM3lfdyX+tP+oAiC/ODYQ6rOaphdd2RoYAhb7THnhjLpcag3CAmT7sYVe
	JGoOfltB8gJaUk0P6fxThiDTgr9VicJesbFh9A2OMysfiLioudWKkYQcIEmz8j4mlzAc/hn6O9Lhs
	BTJMBxRQ==;
Received: from i53875be4.versanet.de ([83.135.91.228] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vqWcu-008DfM-8r; Thu, 12 Feb 2026 14:21:00 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 "finley.xiao" <finley.xiao@rock-chips.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [REGRESSION] rk3588s-evb1-v10 board unable to boot based on linux-next
Date: Thu, 12 Feb 2026 14:20:59 +0100
Message-ID: <3639831.IFkqi6BYcA@diego>
In-Reply-To: <97daffa1-8767-5eaa-dc03-57e7d817c095@rock-chips.com>
References: <558b602a-1b30-2761-fff4-04d837656ea5@rock-chips.com>
 <13147970.MucGe3eQFb@diego>
 <97daffa1-8767-5eaa-dc03-57e7d817c095@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_052108_656326_FA3E3172 
X-CRM114-Status: GOOD (  23.53  )
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

SGkgU2hhd24sCgpBbSBEb25uZXJzdGFnLCAxMi4gRmVicnVhciAyMDI2LCAxNDowOToxMyBNaXR0
ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoKPiDlnKggMjAyNi8w
Mi8xMiDmmJ/mnJ/lm5sgMTg6NDgsIEhlaWtvIFN0w7xibmVyIOWGmemBkzoKPiA+IEFtIERvbm5l
cnN0YWcsIDEyLiBGZWJydWFyIDIwMjYsIDExOjM1OjE0IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3Jt
YWx6ZWl0IHNjaHJpZWIgU2hhd24gTGluOgo+ID4+ICsgU2ViYXN0aWFuIFJlaWNoZWwKPiA+Pgo+
ID4+IOWcqCAyMDI2LzAyLzEyIOaYn+acn+WbmyAxNTo1OSwgU2hhd24gTGluIOWGmemBkzoKPiA+
Pj4gSGkgRGV0bGV2LAo+ID4+Pgo+ID4+PiBjb21taXQgZjYxNzMxYmQ2MDYyICgiYXJtNjQ6IGR0
czogcm9ja2NoaXA6IEFkZCB0aGUgdmRwdTM4MSBWaWRlbwo+ID4+PiBEZWNvZGVycyBvbiBSSzM1
ODgiKSBsYW5kZWQgb24gbGludXgtbmV4dCBicmVha3MgcmszNTg4cy1ldmIxLXYxMC4KPiA+Pj4g
UmV2ZXJ0IGl0IGZpeGVzIHRoZSBwcm9ibGVtLiBUaGUgZnVsbCBsb2cgY291bGQgYmUgZm91bmQg
aGVyZVsxXS4KPiA+Pj4gQWxzbyBjb25maXJtIHRoYXQgaXQgZG9lc24ndCB3b3JrIGJhc2VkIG9u
IExpbnVzJyBsYXRlc3QgbWFpbmxpbmUKPiA+Pj4gYXMgdGhpcyBjb21taXQgbWVyZ2VkIGludG8g
aXQgdGhpcyBjeWNsZS4KPiA+Pj4KPiA+Pj4gSWYgYW55dGhpbmcgSSBjb3VsZCBkbyB0byBoZWxw
IGRlYnVnIGl0LCBwbGVhc2UgbGV0IG1lIGtub3cuCj4gPj4+Cj4gPj4KPiA+PiBJIGRpZCBzb21l
IHF1aWNrIGRlYnVnIGFuZCBmb3VuZCBpdCdzIHJlbGF0ZWQgdG8gYSBwbWRvbWFpbiBwYXRjaC4K
PiA+PiBDb21taXQgZjYxNzMxYmQ2MDYyIGhhcHBlbmVkIHRvIGVuYWJsZSBya3ZkZWMgd2hpY2gg
cmVseXMgb24gdGhlCj4gPj4gUERfVkRFQyosIHNvIEkgaGF2ZSBzZW50IGEgZml4IHBhdGNoIGZv
ciB5b3UgdG8gaGVscCByZXZpZXc6Cj4gPj4KPiA+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
aW51eC1yb2NrY2hpcC8xNzcwODkxMzY0LTUyMTQ3LTEtZ2l0LXNlbmQtZW1haWwtc2hhd24ubGlu
QHJvY2stY2hpcHMuY29tL1QvI3UKPiA+IAo+ID4gZG8geW91IHdhbnQgdG8gcHJvdmlkZSBhIHBh
dGNoIGZvciB0aGUgZXZiMSBib2FyZCB0byB0aGF0IGFkZHMgdGhlCj4gPiBkb21haW4tc3VwcGxp
ZXMsIHNvIHRoYXQgcGVvcGxlIGNhbiBzZWUgd2hhdCBpcyBuZWVkZWQgdG8gbWFrZQo+ID4gdGhl
IHZkZWMgd29yaz8KPiA+IAo+IAo+IEkgZG8gaGF2ZSBhIHBsYW4gdG8gYWRkIGl0IGZvciBldmIx
IGJvYXJkLiBCdHfvvIxJSVJDLCBwZXJpcGhlcmFsIElQCj4gc2hvdWxkIGJlIGtlcHQgYXMgZGlz
YWxiZWQgaW4gc29jIGxldmVsIGR0c2ksIGFuZCB0aGVuIHNldCBlbmFibGVkIGluCj4gaW5kaXZp
ZHVhbCBib2FyZCBkdHMuIEJ1dCBya3ZkZWMgc3R1ZmZzIGluIHJrMzU4OC1iYXNlLmR0c2kgc2Vl
bXMgdG8KPiBiZSBhbiBleGNlcHRpb24/CgpUaGVyZSBpcyBhIGRpZmZlcmVuY2UgYmV0d2VlbiBw
ZXJpcGhlcmFscyBfb25fIHRoZSBib2FyZCwgdnMuIHBlcmlwaGVyYWxzCnRoYXQgZXhpc3RzIF9v
bmx5XyBpbnNpZGUgdGhlIFNvQy4KCkxpa2Ugd2Uga2VlcCB0aGUgc2RtbWMgZGlzYWJsZWQgaWYg
dGhlcmUgaXMgbm8gY2FyZC1zbG90L2NhcmQgb24gdGhlIGJvYXJkLgpUaGUgdmlkZW8gZGVjb2Rl
cnMvZW5jb2RlcnMvZXRjIGFyZSBvbmx5IGV2ZXIgaW5zaWRlIHRoZSBTb0Mgd2l0aCBubwpyZWxh
dGlvbiB0byB0aGUgYm9hcmQgZGVzaWduIGl0c2VsZiwgc28gdGhleSBhcmUgX2Fsd2F5c18gYXZh
aWxhYmxlLgpCb2FyZHMganVzdCBuZWVkIHRvIGNvbmZpZ3VyZSB0aGUgc3VwcGx5IHJlbGF0aW9u
IHByb3Blcmx5LgoKV2l0aCB5b3VyIHBhdGNoIGZvciB0aGUgcG0tZG9tYWluLCB3ZSdsbCBtYWtl
IHN1cmUsIHRoZSB2ZGVjIHdpbGwgbm90IHByb2JlCmlmIHRoZSBib2FyZC1kZXZpY2V0cmVlIGlz
IHNldCB1cCB3cm9uZ2x5IGFuZCBtaXNzaW5nIHRoZSBzdXBwbHkgZGVjbGFyYXRpb24uCgoKSGVp
a28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
