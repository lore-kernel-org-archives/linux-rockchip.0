Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E8F1CA1012
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMhC/8RSeaNhwXFqej2oQEOXWcnnRY0qU5Bd9KFvvgs=; b=Lay/2kPVFBme0K
	L53yWoWWXWD4g4y1Zbl1zohUDbwVg62+zUcd88ajsN84rSnRO++fiWgz1UvOE7YSV2ytd9QvKeMOB
	0+dQ8vX7Ls6cnJbimeWDG/VnQewjkwHizv9fbbAzxnOMI0ggCT6a/+HLTCjmmvktnBdBjQiSX3JG9
	jarOnmGnpYW0aJtN9dBSIN8LcBVD11bHygv9Va3vgJbIFwvRUInmxboumYTJ8H/jxdy50uzjhgOM0
	khwSthCl/+mutu1tvoaFsrB5CKZL+6RRp8nlM0nz2mF2VXAJmynSFdurANYaeIALbQEbY/5rRPIDz
	44vqZb6Z+jphGYfomJqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuyBP-00000008KPi-1zSH;
	Sat, 06 Sep 2025 19:02:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuxn1-00000008Ghn-0xsR;
	Sat, 06 Sep 2025 18:37:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ixgp0grp21H2AsoUs2fpv0iJHrH7SDIdhzu9KNRECUs=; b=zUfL4s8U0K9Q2MHNMM7l5z2A3k
	HSGFJ9vEoXv7ibDwXsOiPVKUCFvVWIbJ9iF4P0Ekkwdc8o879WQskezT8MWsqZGbwYcVVXuPnYiho
	WVciJJuqRAwj9WK/qdKky1pIzSfAkWqbWVySteyWQVBR1ni9v8Q4mkct4H6a5zuJ0Im+9Qb+Ormlv
	OglT+cTJHqa5SwMH+c3tdAIIpP6cgRhg+9+sdveb42AuA0fla1kJy6JesNwCJGdlcogGnzeWg4nnt
	j5wWodQiCGrnYN/fWLF6w+sIq5XxS+yk8IP7iZDQj6XyvSVdfig2z/fe/s71nI6A266E3w521EAsn
	jot+Zmdg==;
Received: from i53875a53.versanet.de ([83.135.90.83] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uuxms-0006t1-Id; Sat, 06 Sep 2025 20:37:22 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH 2/2] PM / devfreq: rockchip-dfi: add support for LPDDR5
Date: Sat, 06 Sep 2025 20:37:21 +0200
Message-ID: <14289002.RDIVbhacDa@diego>
In-Reply-To: <20250530-rk3588-dfi-improvements-v1-2-6e077c243a95@collabora.com>
References: <20250530-rk3588-dfi-improvements-v1-0-6e077c243a95@collabora.com>
 <20250530-rk3588-dfi-improvements-v1-2-6e077c243a95@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_113731_300422_3C650782 
X-CRM114-Status: GOOD (  25.89  )
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgMzAuIE1haSAyMDI1LCAxNTozODowOSBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIE5pY29sYXMgRnJhdHRhcm9saToKPiBUaGUgUm9ja2NoaXAgUkszNTg4
IFNvQyBjYW4gYWxzbyBzdXBwb3J0IExQRERSNSBtZW1vcnkuIFRoaXMgdHlwZSBvZgo+IG1lbW9y
eSBuZWVkcyBzb21lIHNwZWNpYWwgY2FzZSBoYW5kbGluZyBpbiB0aGUgcm9ja2NoaXAtZGZpIGRy
aXZlci4KPiAKPiBBZGQgc3VwcG9ydCBmb3IgaXQgaW4gcm9ja2NoaXAtZGZpLCBhcyB3ZWxsIGFz
IHRoZSBuZWVkZWQgR1JGIHJlZ2lzdGVyCj4gZGVmaW5pdGlvbnMuCj4gCj4gVGhpcyBoYXMgYmVl
biB0ZXN0ZWQgYXMgcmV0dXJuaW5nIGJvdGggdGhlIHJpZ2h0IGN5Y2xlIGNvdW50IGFuZAo+IGJh
bmR3aWR0aCBvbiBhIExQRERSNSBib2FyZCB3aGVyZSB0aGUgQ0tSIGJpdCBpcyAxLiBJIGNvdWxk
bid0IHRlc3QKPiB3aGV0aGVyIHRoZSB2YWx1ZXMgYXJlIGNvcnJlY3Qgb24gYSBzeXN0ZW0gd2hl
cmUgQ0tSIGlzIDAsIGFzIEknbSBub3QKPiBzYXZ2eSBlbm91Z2ggd2l0aCB0aGUgUm9ja2NoaXAg
dG9vbGluZyB0byBrbm93IHdoZXRoZXIgdGhpcyBjYW4gYmUgc2V0Cj4gaW4gdGhlIEREUiBpbml0
IGJsb2IuCj4gCj4gRG93bnN0cmVhbSBoYXMgc29tZSBzcGVjaWFsIGNhc2UgaGFuZGxpbmcgZm9y
IGEgaGFyZHdhcmUgdmVyc2lvbiB3aGVyZQo+IG5vdCBqdXN0IHRoZSBjb250cm9sIGJpdHMgZGlm
ZmVyLCBidXQgYWxzbyB0aGUgcmVnaXN0ZXIuIFNpbmNlIEkgZG9uJ3QKPiBrbm93IHdoZXRoZXIg
dGhhdCBoYXJkd2FyZSB2ZXJzaW9uIGlzIGluIGFueSBwcm9kdWN0aW9uIHNpbGljb24sIGl0J3MK
PiBsZWZ0IHVuaW1wbGVtZW50ZWQgZm9yIG5vdywgd2l0aCBhbiBlcnJvciBtZXNzYWdlIHVyZ2lu
ZyB1c2VycyB0byByZXBvcnQKPiBpZiB0aGV5IGhhdmUgc3VjaCBhIHN5c3RlbS4KPiAKPiBUaGVy
ZSBpcyBhIHNsaWdodCBjaGFuZ2Ugb2YgYmVoYXZpb3VyIGZvciBub24tTFBERFI1IHN5c3RlbXM6
IGluc3RlYWQgb2YKPiB3cml0aW5nIDAgYXMgdGhlIGNvbnRyb2wgZmxhZ3MgdG8gdGhlIGNvbnRy
b2wgcmVnaXN0ZXIgYW5kIHByZXRlbmRpbmcKPiBldmVyeXRoaW5nIGlzIGFscmlnaHQgaWYgdGhl
IG1lbW9yeSB0eXBlIGlzIHVua25vd24sIHdlIG5vdyBleHBsaWNpdGx5Cj4gcmV0dXJuIGFuIGVy
cm9yLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0
dGFyb2xpQGNvbGxhYm9yYS5jb20+CgpoZWFkZXIgYWRkaXRpb25zCkFja2VkLWJ5OiBIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9zb2Mvcm9j
a2NoaXAvcmszNTg4X2dyZi5oIGIvaW5jbHVkZS9zb2Mvcm9ja2NoaXAvcmszNTg4X2dyZi5oCj4g
aW5kZXggNjMwYjM1YTU1MDY0MGU1N2YxYjVhNTBkZmJlMzYyNjUzYTdjYmNjMS4uMDJhN2IyNDMy
ZDk5NDJlMTVhNzc0MjRjNDRmZWZlYzE4OWZhYWEzMyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL3Nv
Yy9yb2NrY2hpcC9yazM1ODhfZ3JmLmgKPiArKysgYi9pbmNsdWRlL3NvYy9yb2NrY2hpcC9yazM1
ODhfZ3JmLmgKPiBAQCAtMTIsNyArMTIsMTEgQEAKPiAgI2RlZmluZSBSSzM1ODhfUE1VR1JGX09T
X1JFRzNfRFJBTVRZUEVfSU5GT19WMwkJR0VOTUFTSygxMywgMTIpCj4gICNkZWZpbmUgUkszNTg4
X1BNVUdSRl9PU19SRUczX1NZU1JFR19WRVJTSU9OCQlHRU5NQVNLKDMxLCAyOCkKPiAgCj4gLSNk
ZWZpbmUgUkszNTg4X1BNVUdSRl9PU19SRUc0ICAgICAgICAgICAweDIxMAo+IC0jZGVmaW5lIFJL
MzU4OF9QTVVHUkZfT1NfUkVHNSAgICAgICAgICAgMHgyMTQKPiArI2RlZmluZSBSSzM1ODhfUE1V
R1JGX09TX1JFRzQJCQkJMHgyMTAKPiArI2RlZmluZSBSSzM1ODhfUE1VR1JGX09TX1JFRzUJCQkJ
MHgyMTQKPiArI2RlZmluZSBSSzM1ODhfUE1VR1JGX09TX1JFRzYJCQkJMHgyMTgKPiArI2RlZmlu
ZSBSSzM1ODhfUE1VR1JGX09TX1JFRzZfTFA1X0JBTktfTU9ERQkJR0VOTUFTSygyLCAxKQo+ICsv
KiBXaGV0aGVyIHRoZSBMUEREUjUgaXMgaW4gMjoxICg9IDApIG9yIDQ6MSAoPSAxKSBDS1IgYS5r
LmEuIERRUyBtb2RlICovCj4gKyNkZWZpbmUgUkszNTg4X1BNVUdSRl9PU19SRUc2X0xQNV9DS1IJ
CQlCSVQoMCkKPiAgCj4gICNlbmRpZiAvKiBfX1NPQ19SSzM1ODhfR1JGX0ggKi8KPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfZ3JmLmggYi9pbmNsdWRlL3NvYy9y
b2NrY2hpcC9yb2NrY2hpcF9ncmYuaAo+IGluZGV4IGU0NmZkNzJhZWE4ZDFmNjQ5NzY4YTMyNjli
ODUxNzZkYWNjZWVmMGUuLjQxYzdiYjI2ZmQ1Mzg3ZGY4NWU1YjU4MTg2YjY3YmY3NDcwNmYzNjAg
MTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfZ3JmLmgKPiArKysg
Yi9pbmNsdWRlL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9ncmYuaAo+IEBAIC0xMyw2ICsxMyw3IEBA
IGVudW0gewo+ICAJUk9DS0NISVBfRERSVFlQRV9MUEREUjMJPSA2LAo+ICAJUk9DS0NISVBfRERS
VFlQRV9MUEREUjQJPSA3LAo+ICAJUk9DS0NISVBfRERSVFlQRV9MUEREUjRYID0gOCwKPiArCVJP
Q0tDSElQX0REUlRZUEVfTFBERFI1CT0gOSwKPiAgfTsKPiAgCj4gICNlbmRpZiAvKiBfX1NPQ19S
T0NLQ0hJUF9HUkZfSCAqLwo+IAo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
