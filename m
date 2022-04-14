Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50BE7C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 09:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6uFtqGID5LmeDBw5AKslRUpHBaT4fmXGaNPprqevx4=; b=DP2wJejye7qqQu
	ZYn6KAt627e8mzrI50Ux3nYeQyDMgxkpC0osBMv5tLHP6aID5ED7HidmuvNXCPZRs8xc92JOTdCzd
	YmlWONLIP9IRqMozpUnXlOwjxM3M8ffhVqh8VyMCsQo21uWhsVP4afC9Dydnkaarc3647QHpjcyvy
	u1aCcZUCEhCKAkTG7z2+umJwpuSxeKn1siaUODkzbAimHgxhiucIRYvunMMt6klm0Z03LXMXn5Wx3
	gdBjK/Mjr4Z4ENrQs2z5XbGB+Eez5I0jhq9FDYuWOUGMLeJnkg5LOVjLFT4MuTr+sQbL4GOOd6kp8
	K4GIC9n+bQJeOknXdgPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nevVH-004nCR-Dm; Thu, 14 Apr 2022 09:11:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nevR8-004lJd-7V; Thu, 14 Apr 2022 09:06:48 +0000
Received: from [IPV6:2a01:e0a:120:3210:aefc:13d9:b947:5c76] (unknown
 [IPv6:2a01:e0a:120:3210:aefc:13d9:b947:5c76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BB3791F401D3;
 Thu, 14 Apr 2022 10:06:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1649927202;
 bh=xSwiJdR9H1GkemybcSFzfO6oTRwZpO+ePP5cbEY0jU8=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=oI3izQUAkCdzA4+jKP3zVRxx8Ms2GpghQckdh3wBPjZePBIjooW2Axvd+6OMX/hxv
 PG2nQOjeNb1x5YnrqEcTe8K9Lj3w16evi5kqjloRixZydS7HTMVDRGl1qdKBSCSWkz
 FizamigRFsSabugHYebGV+/uU4rnzpxLP4I/Muf2kgx6NgOXhWTC2b87FeWtu7mC2n
 lKsSPF2EVF6nDE2Fu5ZIrhna4Pn3j/webgFXJoXTXXiAReSijghjgNSYRaEDShBMlQ
 GWcggqYZjmtSTUIwim6zCJuJnE9Kt/b0W+9UUjcmGHNmpUoUgG5sbXmrqGFvXMaZnK
 jXklgjCMndujg==
Message-ID: <8c13a489-323b-79cf-2bb0-920e5a4e99e0@collabora.com>
Date: Thu, 14 Apr 2022 11:06:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v5 09/17] media: uapi: HEVC: Define
 V4L2_CID_STATELESS_HEVC_SLICE_PARAMS as a dynamic array
Content-Language: en-US
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, mchehab@kernel.org,
 hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 sebastian.fricke@collabora.com
References: <20220407152940.738159-1-benjamin.gaignard@collabora.com>
 <20220407152940.738159-10-benjamin.gaignard@collabora.com>
 <3179e400d52704d11dd150bf4270dab4c1064cad.camel@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <3179e400d52704d11dd150bf4270dab4c1064cad.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_020646_543827_AE1DD8BA 
X-CRM114-Status: GOOD (  18.89  )
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

CkxlIDA4LzA0LzIwMjIgw6AgMjA6NTMsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBM
ZSBqZXVkaSAwNyBhdnJpbCAyMDIyIMOgIDE3OjI5ICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCBh
IMOpY3JpdMKgOgo+PiBNYWtlIGV4cGxpY2l0IHRoYXQgVjRMMl9DSURfU1RBVEVMRVNTX0hFVkNf
U0xJQ0VfUEFSQU1TIGNvbnRyb2wgaXMKPj4gYSBkeW5hbWljIGFycmF5IGNvbnRyb2wgdHlwZS4K
Pj4gU29tZSBkcml2ZXJzIG1heSBiZSBhYmxlIHRvIHJlY2VpdmUgbXVsdGlwbGUgc2xpY2VzIGlu
IG9uZSBjb250cm9sCj4+IHRvIGltcHJvdmUgZGVjb2RpbmcgcGVyZm9ybWFuY2UuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJv
cmEuY29tPgo+PiAtLS0KPj4gICBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRs
L2V4dC1jdHJscy1jb2RlYy5yc3QgfCAyICsrCj4+ICAgaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxz
LmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMyArKysKPj4gICAyIGZpbGVzIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91
c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0IGIvRG9jdW1lbnRhdGlv
bi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0Cj4+IGluZGV4IDdm
Y2M2YzJiYWM0Yy4uMWFhZjNiODRiNTg0IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL3Vz
ZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QKPj4gKysrIGIvRG9jdW1l
bnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0Cj4+IEBA
IC0yOTY0LDYgKzI5NjQsOCBAQCBlbnVtIHY0bDJfbXBlZ192aWRlb19oZXZjX3NpemVfb2ZfbGVu
Z3RoX2ZpZWxkIC0KPj4gICAgICAgVGhlc2UgYml0c3RyZWFtIHBhcmFtZXRlcnMgYXJlIGRlZmlu
ZWQgYWNjb3JkaW5nIHRvIDpyZWY6YGhldmNgLgo+PiAgICAgICBUaGV5IGFyZSBkZXNjcmliZWQg
aW4gc2VjdGlvbiA3LjQuNyAiR2VuZXJhbCBzbGljZSBzZWdtZW50IGhlYWRlcgo+PiAgICAgICBz
ZW1hbnRpY3MiIG9mIHRoZSBzcGVjaWZpY2F0aW9uLgo+PiArICAgIFRoaXMgY29udHJvbCBpcyBh
IGR5bmFtaWNhbGx5IHNpemVkIDEtZGltZW5zaW9uYWwgYXJyYXksCj4+ICsgICAgVjRMMl9DVFJM
X0ZMQUdfRFlOQU1JQ19BUlJBWSBmbGFnIG11c3QgYmUgc2V0IHdoZW4gdXNpbmcgaXQuCj4+ICAg
Cj4+ICAgLi4gYzp0eXBlOjogdjRsMl9jdHJsX2hldmNfc2xpY2VfcGFyYW1zCj4+ICAgCj4+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaCBiL2luY2x1ZGUvbWVkaWEvaGV2
Yy1jdHJscy5oCj4+IGluZGV4IDk2YTliNzFkMWRlZi4uMjgwNDllMWE4YTA3IDEwMDY0NAo+PiAt
LS0gYS9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+PiArKysgYi9pbmNsdWRlL21lZGlhL2hl
dmMtY3RybHMuaAo+PiBAQCAtMzE0LDYgKzMxNCw5IEBAIHN0cnVjdCB2NGwyX2hldmNfcHJlZF93
ZWlnaHRfdGFibGUgewo+PiAgIC8qKgo+PiAgICAqIHY0bDJfY3RybF9oZXZjX3NsaWNlX3BhcmFt
cyAtIEhFVkMgc2xpY2UgcGFyYW1ldGVycwo+PiAgICAqCj4+ICsgKiBUaGlzIGNvbnRyb2wgaXMg
YSBkeW5hbWljYWxseSBzaXplZCAxLWRpbWVuc2lvbmFsIGFycmF5LAo+PiArICogVjRMMl9DVFJM
X0ZMQUdfRFlOQU1JQ19BUlJBWSBmbGFnIG11c3QgYmUgc2V0IHdoZW4gdXNpbmcgaXQuCj4+ICsg
Kgo+IEknbSBub3Qgc3VyZSBhYm91dCB0aGlzIGNvbW1lbnQsIGJ1dCBJJ20gc3VyZSB5b3UgZm9y
Z290Ogo+Cj4KPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWN0cmxzLWRlZnMu
Ywo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY3RybHMtZGVmcy5jCj4gQEAg
LTE1MDUsNiArMTUwNSw3IEBAIHZvaWQgdjRsMl9jdHJsX2ZpbGwodTMyIGlkLCBjb25zdCBjaGFy
ICoqbmFtZSwgZW51bQo+IHY0bDJfY3RybF90eXBlICp0eXBlLAo+ICAgICAgICAgICAgICAgICAg
YnJlYWs7Cj4gICAgICAgICAgY2FzZSBWNEwyX0NJRF9TVEFURUxFU1NfSEVWQ19TTElDRV9QQVJB
TVM6Cj4gICAgICAgICAgICAgICAgICAqdHlwZSA9IFY0TDJfQ1RSTF9UWVBFX0hFVkNfU0xJQ0Vf
UEFSQU1TOwo+ICsgICAgICAgICAgICAgICAqZmxhZ3MgfD0gVjRMMl9DVFJMX0ZMQUdfRFlOQU1J
Q19BUlJBWTsKPiAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ICAgICAgICAgIGNhc2UgVjRMMl9D
SURfU1RBVEVMRVNTX0hFVkNfU0NBTElOR19NQVRSSVg6Cj4gICAgICAgICAgICAgICAgICAqdHlw
ZSA9IFY0TDJfQ1RSTF9UWVBFX0hFVkNfU0NBTElOR19NQVRSSVg7Cj4KPiBBbHNvLCBpbiBBVjEg
d2UgaGF2ZSBWNEwyX0FWMV9NQVhfVElMRV9DT1VOVCwgd2hpY2ggY2FuIGJlIHVzZWQgaW4gY2Zn
LmRpbXMsCj4gc29tZXRoaW5nIHRoZSBkcml2ZXIgd2lsbCBhY3R1YWxseSBzZXQuIFdlIGNvdWxk
IGhhdmUKPgo+ICNkZWZpbmUgVjRMMl9IRVZDX01BWF9USUxFX0NPVU5UIDYwMAo+Cj4gQW5kIGRy
aXZlcyBjYW4gc2V0Ogo+Cj4gICAgIC5kaW1zID0geyBWNEwyX0hFVkNfTUFYX1RJTEVfQ09VTlQg
fSwKPgo+IEluIHRoZSBjb250cm9sIGNvbmZpZy4KCk9rIHRoYXQgd2lsbCBiZSBpbiB2NgoKPgo+
PiAgICAqIEBiaXRfc2l6ZTogc2l6ZSAoaW4gYml0cykgb2YgdGhlIGN1cnJlbnQgc2xpY2UgZGF0
YQo+PiAgICAqIEBkYXRhX2JpdF9vZmZzZXQ6IG9mZnNldCAoaW4gYml0cykgdG8gdGhlIHZpZGVv
IGRhdGEgaW4gdGhlIGN1cnJlbnQgc2xpY2UgZGF0YQo+PiAgICAqIEBuYWxfdW5pdF90eXBlOiBz
cGVjaWZpZXMgdGhlIGNvZGluZyB0eXBlIG9mIHRoZSBzbGljZSAoQiwgUCBvciBJKQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
