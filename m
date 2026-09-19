Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D007EC982D8
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 17:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSisGkq8rzQNRh8kDG3SuSXsaKLcGYyropNOYLonsqY=; b=p7YbfoORhw/T4O
	j0jYWneaTE6j+5VlE5AFJFbB0PaBapl+Z+Nr9yN71efBFsZQ93DsVe44Z5pomuWp7fR0dwJ19qgLc
	ZcWDnCmvn0dSJ6ONlmWUiRe9uesUImXYGQ9WOm8rRYYCVc9G1xnx6BRZQBwNhzSQUMtdG23tC53vS
	4XMGCSRJdLC2As3uPdch0WlhnCyrp4s5ZC9NjabtRbhJT4KVEF2ufu3dOeNaeZXAwzNPJkNpqN3i/
	8ll8GCrfObSCfnKdXTYPWqpnI09Qvq7WwYFBDJnmuwOQXnkCPhuqHDjSXAo0DqL0lPVNn1LyYZCXy
	6X3TxbOORFe0yozKrecg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7yTg-0000000GXVM-0uz1;
	Sat, 19 Sep 2026 17:03:52 +0000
Received: from out-52.mta0.migadu.com ([2001:41d0:1004:224b::34] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7yTc-0000000GXUu-1KXJ
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 17:03:50 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=KWSR8Bvpxfsi7RbIUntAdMkvFkSjbvbdEFF7rLLLzyA=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1789837423; v=1; x=1790442223;
 b=csj04AZ2bvi58tnLcxmIG9SmyQ4TTv44Lukhz1GNNUTqnxXi3wh6kIXOHXylyFw2s7pnL1+c
 Xa0ynPXjKXIxqrTxCNMGPQqJL04aFdR6HXww0OdyZQ0rCd5NLSAxXw977PZto+ywOJgxAigpij6
 TlvQA2t9q9m2iAvufaKPp0SMXbCPjXFS7wdYLlOP08BeNw3K9f8qC8o2hlvuKNaEVYTb+gOaO/r
 361iHmOVzRX9Q2r2WwhERr1fD1nHmBI5ir2+TwjCgQsvpshfsTM4Ygpb2V+EKGEorBv/rjj8AWi
 x1rB/Vk84uhCOiANcN3iXkTmLG+2GLbV2AU95lzm5TJ2Q==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id e9fc09ffbada4e66;
	Sat, 19 Sep 2026 17:03:33 +0000
X-Mizu-Trace-ID: e9fc09ffbada4e66
X-Migadu-Flow: FLOW_OUT
Mime-Version: 1.0
Date: Sat, 19 Sep 2026 19:03:22 +0200
Message-Id: <DLJGENL5TFXO.TT10VQFGVB8S@cknow-tech.com>
Cc: "Sebastian Reichel" <sebastian.reichel@collabora.com>,
 <linux-pm@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v2 2/4] pmdomain: rockchip: fix clock leak on domain
 probe failure
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Shawn Lin" <shawn.lin@rock-chips.com>, "Ulf Hansson" <ulfh@kernel.org>,
 "Heiko Stuebner" <heiko@sntech.de>
X-Mailer: aerc 0.22.0-24-g39041fd9f179
References: <1789778111-173149-1-git-send-email-shawn.lin@rock-chips.com>
 <1789778111-173149-3-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1789778111-173149-3-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_100348_780636_8B06FB88 
X-CRM114-Status: GOOD (  16.11  )
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

T24gU2F0IFNlcCAxOSwgMjAyNiBhdCAyOjM1IEFNIENFU1QsIFNoYXduIExpbiB3cm90ZToKPiBX
aGVuIG9mX2Nsa19nZXQoKSBmYWlsZWQgaW4gdGhlIG1pZGRsZSBvZiB0aGUgbG9vcCwgdGhlIHJl
ZmVyZW5jZXMgb2YKPiB0aGUgY2xvY2tzIGFjcXVpcmVkIHNvIGZhciB3ZXJlIGxlYWtlZCBpbnN0
ZWFkIG9mIGJlaW5nIHJlbGVhc2VkIGJ5Cj4gdGhlIGVycm9yIHBhdGguCj4KPiBBbHNvIHN3aXRj
aCB0aGUgY2xrcyBhcnJheSBhbGxvY2F0aW9uIGZyb20gZGV2bV9rY2FsbG9jKCkgdG8KPiBkZXZt
X2t6YWxsb2MoKSBzbyB0aGF0IGNsa19idWxrX3B1dCgpIGNhbm5vdCBydW4gb3ZlciB1bmluaXRp
YWxpemVkCj4gZW50cmllcy4KPgo+IEZpeGVzOiBkOTA5MDcyZDA1MjEgKCJzb2M6IHJvY2tjaGlw
OiBwb3dlci1kb21haW46IHVzZSBjbGtfYnVsayBBUElzIikKPiBTaWduZWQtb2ZmLWJ5OiBTaGF3
biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiBSZXZpZXdlZC1ieTogU2ViYXN0aWFu
IFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4KPiBDaGFu
Z2VzIGluIHYyOgo+IC0gc3dpdGNoIHRvIHVzZSBkZXZtX2t6YWxsb2MoKQo+IC0gYWRkIFNlYmFz
dGlhbidzIHRhZwo+Cj4gIGRyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jIHwg
NCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMg
Yi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+IGluZGV4IDA2OGRkNGIz
Li40M2ZkYjdmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9t
YWlucy5jCj4gKysrIGIvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiBA
QCAtODI1LDcgKzgyNSw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcG1fYWRkX29uZV9kb21haW4o
c3RydWN0IHJvY2tjaGlwX3BtdSAqcG11LAo+ICAKPiAgCXBkLT5udW1fY2xrcyA9IG9mX2Nsa19n
ZXRfcGFyZW50X2NvdW50KG5vZGUpOwo+ICAJaWYgKHBkLT5udW1fY2xrcyA+IDApIHsKPiAtCQlw
ZC0+Y2xrcyA9IGRldm1fa2NhbGxvYyhwbXUtPmRldiwgcGQtPm51bV9jbGtzLAo+ICsJCXBkLT5j
bGtzID0gZGV2bV9remFsbG9jKHBtdS0+ZGV2LCBwZC0+bnVtX2Nsa3MsCj4gIAkJCQkJc2l6ZW9m
KCpwZC0+Y2xrcyksIEdGUF9LRVJORUwpOwoKL21lZGlhL252bWUvZGV2L2RlYmlhbi9zYWxzYS9r
ZXJuZWwtdGVhbS9saW51eC9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYzog
SW4gZnVuY3Rpb24g4oCYcm9ja2NoaXBfcG1fYWRkX29uZV9kb21haW7igJk6Ci9tZWRpYS9udm1l
L2Rldi9kZWJpYW4vc2Fsc2Eva2VybmVsLXRlYW0vbGludXgvZHJpdmVycy9wbWRvbWFpbi9yb2Nr
Y2hpcC9wbS1kb21haW5zLmM6ODQwOjI4OiBlcnJvcjogdG9vIG1hbnkgYXJndW1lbnRzIHRvIGZ1
bmN0aW9uIOKAmGRldm1fa3phbGxvY+KAmTsgZXhwZWN0ZWQgMywgaGF2ZSA0CiAgODQwIHwgICAg
ICAgICAgICAgICAgIHBkLT5jbGtzID0gZGV2bV9remFsbG9jKHBtdS0+ZGV2LCBwZC0+bnVtX2Ns
a3MsCiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+CkluIGZp
bGUgaW5jbHVkZWQgZnJvbSAvbWVkaWEvbnZtZS9kZXYvZGViaWFuL3NhbHNhL2tlcm5lbC10ZWFt
L2xpbnV4L2luY2x1ZGUvbGludXgvZGV2aWNlLmg6MzEsCiAgICAgICAgICAgICAgICAgZnJvbSAv
bWVkaWEvbnZtZS9kZXYvZGViaWFuL3NhbHNhL2tlcm5lbC10ZWFtL2xpbnV4L2luY2x1ZGUvbGlu
dXgvcGxhdGZvcm1fZGV2aWNlLmg6MTMsCiAgICAgICAgICAgICAgICAgZnJvbSAvbWVkaWEvbnZt
ZS9kZXYvZGViaWFuL3NhbHNhL2tlcm5lbC10ZWFtL2xpbnV4L2RyaXZlcnMvcG1kb21haW4vcm9j
a2NoaXAvcG0tZG9tYWlucy5jOjEzOgovbWVkaWEvbnZtZS9kZXYvZGViaWFuL3NhbHNhL2tlcm5l
bC10ZWFtL2xpbnV4L2luY2x1ZGUvbGludXgvZGV2aWNlL2RldnJlcy5oOjQ4OjIxOiBub3RlOiBk
ZWNsYXJlZCBoZXJlCiAgIDQ4IHwgc3RhdGljIGlubGluZSB2b2lkICpkZXZtX2t6YWxsb2Moc3Ry
dWN0IGRldmljZSAqZGV2LCBzaXplX3Qgc2l6ZSwgZ2ZwX3QgZ2ZwKQogICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgXn5+fn5+fn5+fn5+CgpTZWVtcyBsZWdpdDoKaHR0cHM6Ly9lbGl4aXIuYm9v
dGxpbi5jb20vbGludXgvdjcuMy1yYzMvc291cmNlL2luY2x1ZGUvbGludXgvZGV2aWNlL2RldnJl
cy5oI0w0OAoKQ2hlZXJzLAogIERpZWRlcmlrCgo+ICAJCWlmICghcGQtPmNsa3MpCj4gIAkJCXJl
dHVybiAtRU5PTUVNOwo+IEBAIC04NDIsNyArODQyLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9w
bV9hZGRfb25lX2RvbWFpbihzdHJ1Y3Qgcm9ja2NoaXBfcG11ICpwbXUsCj4gIAkJCWRldl9lcnIo
cG11LT5kZXYsCj4gIAkJCQkiJXBPRm46IGZhaWxlZCB0byBnZXQgY2xrIGF0IGluZGV4ICVkOiAl
ZFxuIiwKPiAgCQkJCW5vZGUsIGksIGVycm9yKTsKPiAtCQkJcmV0dXJuIGVycm9yOwo+ICsJCQln
b3RvIGVycl9wdXRfY2xvY2tzOwo+ICAJCX0KPiAgCX0KPiAgCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
