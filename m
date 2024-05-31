Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FDC4C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 12:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//CBFvyt2UzcUe3aZcrqVEpOOigzpFPie+c1SpPUz6E=; b=CM0+zwiQzKS5Eu
	xtmJGkJKe4JHrQk5i1fvDJYXyF9cmpP+poVNO61mwl2DR4cKOdWx35QzCRY2O1b9Ol3iQ31SUNJfD
	6JIyxW/tLnYmtI0b3vuNiUdwTxHEbwLFn9ehjAiCT5C1FqyS6zrGC7Td1tf/9XpQ+KnAu1SSjUFK4
	OoIHyPkG7RxUNqwsVrIuNacCfgKB+54ldD2rZ9lEAKfoID2DVUltuE5AcG5NLIc9RD7Z+4HLtXPjR
	f5pNoEFo8VPGwHeCJZYYF4W/WpJybKKgLzL++cSy4mpNjCcmLtSlkA0n/UrNFkOZUHkSeNPImAq28
	HhJOcPiDI/GmtDv9DnWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD1gt-0000000AFYN-15Wi;
	Fri, 31 May 2024 12:49:03 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD1go-0000000AFUR-2ufz;
	Fri, 31 May 2024 12:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717159731;
	bh=g/oNMocg76yWK2v8EuxnpMD3Hu9NyCAtBqT+lzQxQlA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=rGHlnRHINbWHvFCUvanARjCe5GzAiK3y7LSzS3ZnXZUq3C1mEv27RDBUUFTmTotxv
	 WUZNuT1bwk84c3l52Yf9R3waTkPV/7DcrRgPpphQ2ltY8MFcfoSNzKTpSpbHNX2x4j
	 CC0VuXglIiSJwBfj/Mp1EnY8LNg72VUXgZUsqKBqJ+6+On29KjWPPFi2Y1FfNeK6+w
	 Lg9c/T9/KXdGd4qV+3hD52hSRFzkXsSFI49NTiqD4rVd/WK+rR5m2qS013fOzq3Mc0
	 ERmdS4JE0JJyuA9sSR3MWtNFf8U0ak7JIBhlrQZJVMRYy+xWIlL2JjRmKz2HZI3Exy
	 Z4GvZQPqsMB7Q==
Received: from nicolas-tpx395.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1A800378148F;
	Fri, 31 May 2024 12:48:49 +0000 (UTC)
Message-ID: <d11d92e48321e8c1a429a878917e7c6a6211ea4b.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: AV1: Correct some registers fields
 size or position
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Date: Fri, 31 May 2024 08:48:44 -0400
In-Reply-To: <20240521152603.120723-1-benjamin.gaignard@collabora.com>
References: <20240521152603.120723-1-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.52.1 (3.52.1-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_054859_261241_3B6B129D 
X-CRM114-Status: GOOD (  11.04  )
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

TGUgbWFyZGkgMjEgbWFpIDIwMjQgw6AgMTc6MjYgKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIGEg
w6ljcml0wqA6Cj4gU29tZSBmaWVsZHMgYXJlbid0IHdlbGwgcG9zaXRpb25uZWQgb3Igd2l0aCBp
bmNvcnJlY3Qgc2l6ZSBpbnNpZGUgdGhlCj4gaGFyZHdhcmUgcmVnaXN0ZXJzLiBGaXggdGhlbS4K
PiAKPiBUaGF0IGRvZXNuJ3QgaW1wYWN0IEZsdXN0ZXIgc2NvcmUgdGVzdC4KCkRvZXMgaXQgaW1w
YWN0IGFueSBrbm93biBzdHJlYW1zIHRob3VnaCA/IChqdXN0IGZvciBhIHNha2Ugb2YgZG9jdW1l
bnRhdGlvbiwgbm90CnJlYWxseSBhIHByb2JsZW0gd2l0aCB5b3VyIGNoYW5nZSkuCgo+IAo+IEZp
eGVzOiA3MjdhNDAwNjg2YTIgKCJtZWRpYTogdmVyaXNpbGljb246IEFkZCBSb2NrY2hpcCBBVjEg
ZGVjb2RlciIpCj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdh
aWduYXJkQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmlj
b2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiAgLi4uL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9yZWdzLmggIHwgMTAgKysrKystLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4
MV9yZWdzLmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3Zw
dTk4MV9yZWdzLmgKPiBpbmRleCAxODJlNmM4MzBmZjYuLjk5MGY4ZTY5NTI0YSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9y
ZWdzLmgKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlw
X3ZwdTk4MV9yZWdzLmgKPiBAQCAtMzI3LDcgKzMyNyw3IEBACj4gIAo+ICAjZGVmaW5lIGF2MV9h
cGZfdGhyZXNob2xkCQlBVjFfREVDX1JFRyg1NSwgMCwgMHhmZmZmKQo+ICAjZGVmaW5lIGF2MV9h
cGZfc2luZ2xlX3B1X21vZGUJCUFWMV9ERUNfUkVHKDU1LCAzMCwgMHgxKQo+IC0jZGVmaW5lIGF2
MV9hcGZfZGlzYWJsZQkJCUFWMV9ERUNfUkVHKDU1LCAzMCwgMHgxKQo+ICsjZGVmaW5lIGF2MV9h
cGZfZGlzYWJsZQkJCUFWMV9ERUNfUkVHKDU1LCAzMSwgMHgxKQo+ICAKPiAgI2RlZmluZSBhdjFf
ZGVjX21heF9idXJzdAkJQVYxX0RFQ19SRUcoNTgsIDAsIDB4ZmYpCj4gICNkZWZpbmUgYXYxX2Rl
Y19idXN3aWR0aAkJQVYxX0RFQ19SRUcoNTgsIDgsIDB4NykKPiBAQCAtMzM3LDEwICszMzcsMTAg
QEAKPiAgI2RlZmluZSBhdjFfZGVjX21jX3BvbGx0aW1lCQlBVjFfREVDX1JFRyg1OCwgMTcsIDB4
M2ZmKQo+ICAjZGVmaW5lIGF2MV9kZWNfbWNfcG9sbG1vZGUJCUFWMV9ERUNfUkVHKDU4LAkyNywg
MHgzKQo+ICAKPiAtI2RlZmluZSBhdjFfZmlsdF9yZWZfYWRqXzMJCUFWMV9ERUNfUkVHKDU5LCAw
LCAweDNmKQo+IC0jZGVmaW5lIGF2MV9maWx0X3JlZl9hZGpfMgkJQVYxX0RFQ19SRUcoNTksIDcs
IDB4M2YpCj4gLSNkZWZpbmUgYXYxX2ZpbHRfcmVmX2Fkal8xCQlBVjFfREVDX1JFRyg1OSwgMTQs
IDB4M2YpCj4gLSNkZWZpbmUgYXYxX2ZpbHRfcmVmX2Fkal8wCQlBVjFfREVDX1JFRyg1OSwgMjEs
IDB4M2YpCj4gKyNkZWZpbmUgYXYxX2ZpbHRfcmVmX2Fkal8zCQlBVjFfREVDX1JFRyg1OSwgMCwg
MHg3ZikKPiArI2RlZmluZSBhdjFfZmlsdF9yZWZfYWRqXzIJCUFWMV9ERUNfUkVHKDU5LCA3LCAw
eDdmKQo+ICsjZGVmaW5lIGF2MV9maWx0X3JlZl9hZGpfMQkJQVYxX0RFQ19SRUcoNTksIDE0LCAw
eDdmKQo+ICsjZGVmaW5lIGF2MV9maWx0X3JlZl9hZGpfMAkJQVYxX0RFQ19SRUcoNTksIDIxLCAw
eDdmKQo+ICAjZGVmaW5lIGF2MV9yZWYwX3NpZ25fYmlhcwkJQVYxX0RFQ19SRUcoNTksIDI4LCAw
eDEpCj4gICNkZWZpbmUgYXYxX3JlZjFfc2lnbl9iaWFzCQlBVjFfREVDX1JFRyg1OSwgMjksIDB4
MSkKPiAgI2RlZmluZSBhdjFfcmVmMl9zaWduX2JpYXMJCUFWMV9ERUNfUkVHKDU5LCAzMCwgMHgx
KQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
