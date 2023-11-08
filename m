Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46F91C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 01:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJpl4Gb/PcxNLo6JKAD03wnHcyf3C5T+OtPFGIvYAAo=; b=Gv/pVwOsNIH9CI
	dSNFpHwEkvYBesESFy4qJga2ETxm+yavlNii+dbxTcqUepCN/mIiyceZa48B3OkOhe+d76i2Mx1Y3
	45ySGEKTIKeapNH2AxpAUMFBYFo1Sgf6XKQ8kYvTwtEh5L2OKM47CYNP9hBKDM8lm3035mHKkoT2l
	rgKYL8Dwijm+jqFC0kVi3jAE7xN9vNDVvyX9lfJD/HT6KAUcYg1YbUJUKfpFUSe0OWl4wPHBI/i/6
	e80Fbh+JJP1O+A4iedf5+6OuMYX/jGGQmvHO6WAR5gMYPAUAScPcjM0XOqy8kfZ/mMMRt3TVHfxBe
	RIiu8MnuPF3BwKnbIyBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Xi4-002mbi-0X;
	Wed, 08 Nov 2023 01:50:24 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Xi1-002mb0-28
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Nov 2023 01:50:23 +0000
Received: from [100.84.166.245] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 51E9F66074D9;
	Wed,  8 Nov 2023 01:50:17 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699408219;
	bh=djBTnvej1NJw96WFQnceU1jAj+Exjgi1104R6Pyel94=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=bBdiMTE/C99/f9E1FZvUIA59EToJnZqUOmxE9LZqiwzxgHkMv3MZoe0vGH+UAndwF
	 05vSa7q/quGzJWBJ3wvzHXJMmkuoqUEeW5do03JAcSaojhP14ZG2WMtyhVIW2iQqeD
	 JC6Ntv2bojyaIDiRgs6rvd/A4fRE/IjXceXfLZ09WUaDYGlZYUiAQigF+SVc0m72nE
	 4jaeX6tgybebdBPytTsxlIhlxinawyN8a56SWRa6+fuljxkwh3bBaWMRt1TOI0JGWq
	 yRyr+Fn+oR6v/81UgDV8HH+Gufryj+HVonXIkzY3/QrD6MaSBDG1QXkeX2oS3hx+cw
	 zcmfttqxUQrDQ==
Message-ID: <4e6767958d1f0d82db8a9a7c7807648519f5e7ee.camel@collabora.com>
Subject: Re: [PATCH v4 08/11] media: rkvdec: Extract decoded format
 enumeration into helper
From: Nicolas  Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Hans Verkuil <hverkuil-cisco@xs4all.nl>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>, Sebastian Fricke
	 <sebastian.fricke@collabora.com>, Christopher Obbard
	 <chris.obbard@collabora.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Tue, 07 Nov 2023 20:50:07 -0500
In-Reply-To: <20231105165521.3592037-9-jonas@kwiboo.se>
References: <20231105165521.3592037-1-jonas@kwiboo.se>
	 <20231105165521.3592037-9-jonas@kwiboo.se>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_175021_968907_80C3A334 
X-CRM114-Status: GOOD (  20.95  )
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

TGUgZGltYW5jaGUgMDUgbm92ZW1icmUgMjAyMyDDoCAxNjo1NSArMDAwMCwgSm9uYXMgS2FybG1h
biBhIMOpY3JpdMKgOgo+IEFkZCBhIHJrdmRlY19pc192YWxpZF9mbXQoKSBoZWxwZXIgdGhhdCBj
aGVjayBpZiBhIGZvdXJjYyBpcyBhIHN1cHBvcnRlZAo+IENBUFRVUkUgZm9ybWF0LCBhbmQgYSBy
a3ZkZWNfZW51bV9kZWNvZGVkX2ZtdCgpIGhlbHBlciB0aGF0IGVudW1lcmF0ZQogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVudW1l
cmF0ZXMKPiB2YWxpZCBmb3JtYXRzLgo+IAo+IFRoaXMgbW92ZSBjdXJyZW50IGNvZGUgaW50byBo
ZWxwZXIgZnVuY3Rpb25zIGluIHByZXBhcmF0aW9uIGZvciBhZGRpbmcKICAgICAgIG1vdmVzCj4g
Q0FQVFVSRSBmb3JtYXQgZmlsdGVyaW5nIGFuZCB2YWxpZGF0aW9uIGluIG5leHQgcGF0Y2guCj4g
Cj4gU2lnbmVkLW9mZi1ieTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgoKV2l0aCB0
aGUgZml4ZWQsClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25l
QGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+IHY0Ogo+IC0gUmVuYW1lIHJrdmRlY19kZWNvZGVkX2Zt
dHMoKSB0byBya3ZkZWNfZW51bV9kZWNvZGVkX2ZtdCgpCj4gLSBSZW5hbWUgcmt2ZGVjX3ZhbGlk
X2ZtdCgpIHRvIHJrdmRlY19pc192YWxpZF9mbXQoKQo+IAo+IHYzOgo+IC0gTmV3IHBhdGNoCj4g
Cj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgfCA0OSArKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDE0
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2
ZGVjL3JrdmRlYy5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYwo+IGlu
ZGV4IDdhNzk4NDA0NzBlMS4uYzNhZWRlOTRjODcyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
cmt2ZGVjL3JrdmRlYy5jCj4gQEAgLTI3LDYgKzI3LDMyIEBACj4gICNpbmNsdWRlICJya3ZkZWMu
aCIKPiAgI2luY2x1ZGUgInJrdmRlYy1yZWdzLmgiCj4gIAo+ICtzdGF0aWMgdTMyIHJrdmRlY19l
bnVtX2RlY29kZWRfZm10KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsIGludCBpbmRleCkKPiArewo+
ICsJY29uc3Qgc3RydWN0IHJrdmRlY19jb2RlZF9mbXRfZGVzYyAqZGVzYyA9IGN0eC0+Y29kZWRf
Zm10X2Rlc2M7Cj4gKwo+ICsJaWYgKFdBUk5fT04oIWRlc2MpKQo+ICsJCXJldHVybiAwOwo+ICsK
PiArCWlmIChpbmRleCA+PSBkZXNjLT5udW1fZGVjb2RlZF9mbXRzKQo+ICsJCXJldHVybiAwOwo+
ICsKPiArCXJldHVybiBkZXNjLT5kZWNvZGVkX2ZtdHNbaW5kZXhdOwo+ICt9Cj4gKwo+ICtzdGF0
aWMgYm9vbCBya3ZkZWNfaXNfdmFsaWRfZm10KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsIHUzMiBm
b3VyY2MpCj4gK3sKPiArCWNvbnN0IHN0cnVjdCBya3ZkZWNfY29kZWRfZm10X2Rlc2MgKmRlc2Mg
PSBjdHgtPmNvZGVkX2ZtdF9kZXNjOwo+ICsJdW5zaWduZWQgaW50IGk7Cj4gKwo+ICsJZm9yIChp
ID0gMDsgaSA8IGRlc2MtPm51bV9kZWNvZGVkX2ZtdHM7IGkrKykgewo+ICsJCWlmIChkZXNjLT5k
ZWNvZGVkX2ZtdHNbaV0gPT0gZm91cmNjKQo+ICsJCQlyZXR1cm4gdHJ1ZTsKPiArCX0KPiArCj4g
KwlyZXR1cm4gZmFsc2U7Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lkIHJrdmRlY19maWxsX2RlY29k
ZWRfcGl4Zm10KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsCj4gIAkJCQkgICAgICAgc3RydWN0IHY0
bDJfcGl4X2Zvcm1hdF9tcGxhbmUgKnBpeF9tcCkKPiAgewo+IEBAIC01Miw4ICs3OCwxMCBAQCBz
dGF0aWMgdm9pZCBya3ZkZWNfcmVzZXRfZm10KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsIHN0cnVj
dCB2NGwyX2Zvcm1hdCAqZiwKPiAgc3RhdGljIHZvaWQgcmt2ZGVjX3Jlc2V0X2RlY29kZWRfZm10
KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgpCj4gIHsKPiAgCXN0cnVjdCB2NGwyX2Zvcm1hdCAqZiA9
ICZjdHgtPmRlY29kZWRfZm10Owo+ICsJdTMyIGZvdXJjYzsKPiAgCj4gLQlya3ZkZWNfcmVzZXRf
Zm10KGN0eCwgZiwgY3R4LT5jb2RlZF9mbXRfZGVzYy0+ZGVjb2RlZF9mbXRzWzBdKTsKPiArCWZv
dXJjYyA9IHJrdmRlY19lbnVtX2RlY29kZWRfZm10KGN0eCwgMCk7Cj4gKwlya3ZkZWNfcmVzZXRf
Zm10KGN0eCwgZiwgZm91cmNjKTsKPiAgCWYtPnR5cGUgPSBWNEwyX0JVRl9UWVBFX1ZJREVPX0NB
UFRVUkVfTVBMQU5FOwo+ICAJZi0+Zm10LnBpeF9tcC53aWR0aCA9IGN0eC0+Y29kZWRfZm10LmZt
dC5waXhfbXAud2lkdGg7Cj4gIAlmLT5mbXQucGl4X21wLmhlaWdodCA9IGN0eC0+Y29kZWRfZm10
LmZtdC5waXhfbXAuaGVpZ2h0Owo+IEBAIC0yNDQsNyArMjcyLDYgQEAgc3RhdGljIGludCBya3Zk
ZWNfdHJ5X2NhcHR1cmVfZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LAo+ICAJc3Ry
dWN0IHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmUgKnBpeF9tcCA9ICZmLT5mbXQucGl4X21wOwo+ICAJ
c3RydWN0IHJrdmRlY19jdHggKmN0eCA9IGZoX3RvX3JrdmRlY19jdHgocHJpdik7Cj4gIAljb25z
dCBzdHJ1Y3Qgcmt2ZGVjX2NvZGVkX2ZtdF9kZXNjICpjb2RlZF9kZXNjOwo+IC0JdW5zaWduZWQg
aW50IGk7Cj4gIAo+ICAJLyoKPiAgCSAqIFRoZSBjb2RlYyBjb250ZXh0IHNob3VsZCBwb2ludCB0
byBhIGNvZGVkIGZvcm1hdCBkZXNjLCBpZiB0aGUgZm9ybWF0Cj4gQEAgLTI1NSwxMyArMjgyLDgg
QEAgc3RhdGljIGludCBya3ZkZWNfdHJ5X2NhcHR1cmVfZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2
b2lkICpwcml2LAo+ICAJaWYgKFdBUk5fT04oIWNvZGVkX2Rlc2MpKQo+ICAJCXJldHVybiAtRUlO
VkFMOwo+ICAKPiAtCWZvciAoaSA9IDA7IGkgPCBjb2RlZF9kZXNjLT5udW1fZGVjb2RlZF9mbXRz
OyBpKyspIHsKPiAtCQlpZiAoY29kZWRfZGVzYy0+ZGVjb2RlZF9mbXRzW2ldID09IHBpeF9tcC0+
cGl4ZWxmb3JtYXQpCj4gLQkJCWJyZWFrOwo+IC0JfQo+IC0KPiAtCWlmIChpID09IGNvZGVkX2Rl
c2MtPm51bV9kZWNvZGVkX2ZtdHMpCj4gLQkJcGl4X21wLT5waXhlbGZvcm1hdCA9IGNvZGVkX2Rl
c2MtPmRlY29kZWRfZm10c1swXTsKPiArCWlmICghcmt2ZGVjX2lzX3ZhbGlkX2ZtdChjdHgsIHBp
eF9tcC0+cGl4ZWxmb3JtYXQpKQo+ICsJCXBpeF9tcC0+cGl4ZWxmb3JtYXQgPSBya3ZkZWNfZW51
bV9kZWNvZGVkX2ZtdChjdHgsIDApOwo+ICAKPiAgCS8qIEFsd2F5cyBhcHBseSB0aGUgZnJtc2l6
ZSBjb25zdHJhaW50IG9mIHRoZSBjb2RlZCBlbmQuICovCj4gIAlwaXhfbXAtPndpZHRoID0gbWF4
KHBpeF9tcC0+d2lkdGgsIGN0eC0+Y29kZWRfZm10LmZtdC5waXhfbXAud2lkdGgpOwo+IEBAIC00
MjUsMTQgKzQ0NywxMyBAQCBzdGF0aWMgaW50IHJrdmRlY19lbnVtX2NhcHR1cmVfZm10KHN0cnVj
dCBmaWxlICpmaWxlLCB2b2lkICpwcml2LAo+ICAJCQkJICAgc3RydWN0IHY0bDJfZm10ZGVzYyAq
ZikKPiAgewo+ICAJc3RydWN0IHJrdmRlY19jdHggKmN0eCA9IGZoX3RvX3JrdmRlY19jdHgocHJp
dik7Cj4gKwl1MzIgZm91cmNjOwo+ICAKPiAtCWlmIChXQVJOX09OKCFjdHgtPmNvZGVkX2ZtdF9k
ZXNjKSkKPiAtCQlyZXR1cm4gLUVJTlZBTDsKPiAtCj4gLQlpZiAoZi0+aW5kZXggPj0gY3R4LT5j
b2RlZF9mbXRfZGVzYy0+bnVtX2RlY29kZWRfZm10cykKPiArCWZvdXJjYyA9IHJrdmRlY19lbnVt
X2RlY29kZWRfZm10KGN0eCwgZi0+aW5kZXgpOwo+ICsJaWYgKCFmb3VyY2MpCj4gIAkJcmV0dXJu
IC1FSU5WQUw7Cj4gIAo+IC0JZi0+cGl4ZWxmb3JtYXQgPSBjdHgtPmNvZGVkX2ZtdF9kZXNjLT5k
ZWNvZGVkX2ZtdHNbZi0+aW5kZXhdOwo+ICsJZi0+cGl4ZWxmb3JtYXQgPSBmb3VyY2M7Cj4gIAly
ZXR1cm4gMDsKPiAgfQo+ICAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
