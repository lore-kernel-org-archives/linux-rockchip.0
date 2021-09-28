Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30FB2C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 15:22:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D882F6108F
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 15:22:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D882F6108F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UoNjfc5vw5CjGEgQILCGnK+62Q6oYkP1RMlCmTEPH1Y=; b=sR6IcgVdojtb1/NXc9r15YpZJq
	xkb6tRkQ394UJwZ62Sm18wSH+GImiHXfBoUeKBP8wFn3DNBYxyL4dM7bCKI/+tQnGEkVOewV/jYLx
	xwmDDzfrXx7ykTYccBkAsZK1YbN1QCiGF/gWDIVNzWrb8SyK+HIf3sHc0pLKsC/W8QgMZB3TVQ2ms
	mrKjymwFxlYcsWXGbjvCAENdC5sbwho9tCpL00WcC4FeJLWRh9wvWQceB/HSVLj0uEdkOrXpIFZzm
	OaMehJkA6U889fJ6UFvlHsraxOtN/UWJgyhexo3YJEEU1HkYCJBLDmfEYNp+7DzqP+ejgNUT2JPaz
	/3bYZNGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVEw3-007kuI-6F; Tue, 28 Sep 2021 15:22:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVEvl-007kn9-DB; Tue, 28 Sep 2021 15:22:07 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id E8D241F439C0
Subject: Re: [PATCH v6 04/10] hantro: Add quirk for NV12/NV12_4L4 capture
 format
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
References: <20210927151958.24426-1-andrzej.p@collabora.com>
 <20210927151958.24426-5-andrzej.p@collabora.com>
 <bdd74e895f30d77ea798b886e34c16af2684dc99.camel@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <a50423e3-9963-c37d-ec6a-cd5a004af0e5@collabora.com>
Date: Tue, 28 Sep 2021 17:21:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <bdd74e895f30d77ea798b886e34c16af2684dc99.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_082205_620623_1F07AB02 
X-CRM114-Status: GOOD (  29.10  )
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

VyBkbml1IDI4LjA5LjIwMjEgb8KgMTc6MDgsIE5pY29sYXMgRHVmcmVzbmUgcGlzemU6Cj4gTGUg
bHVuZGkgMjcgc2VwdGVtYnJlIDIwMjEgw6AgMTc6MTkgKzAyMDAsIEFuZHJ6ZWogUGlldHJhc2ll
d2ljeiBhIMOpY3JpdMKgOgo+PiBGcm9tOiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxh
Ym9yYS5jb20+Cj4+Cj4+IFRoZSBHMiBjb3JlIGRlY29kZXIgZW5naW5lIHByb2R1Y2VzIE5WMTJf
NEw0IGZvcm1hdCwKPj4gd2hpY2ggaXMgYSBzaW1wbGUgTlYxMiA0eDQgdGlsZWQgZm9ybWF0LiBU
aGUgZHJpdmVyIGN1cnJlbnRseQo+PiBoaWRlcyB0aGlzIGZvcm1hdCBieSBhbHdheXMgZW5hYmxp
bmcgdGhlIHBvc3QtcHJvY2Vzc29yIGVuZ2luZSwKPj4gYW5kIHRoZXJlZm9yZSBvZmZlcmluZyBO
VjEyIGRpcmVjdGx5Lgo+Pgo+PiBUaGlzIGlzIGRvbmUgd2l0aG91dCB1c2luZyB0aGUgbG9naWMg
aW4gaGFudHJvX3Bvc3Rwcm9jLmMKPj4gYW5kIHRoZXJlZm9yZSBtYWtlcyBpdCBkaWZmaWN1bHQg
dG8gYWRkIFZQOSBjbGVhbmx5Lgo+Pgo+PiBTaW5jZSBmaXhpbmcgdGhpcyBpcyBub3QgZWFzeSwg
YWRkIGEgc21hbGwgcXVpcmsgdG8gZm9yY2UKPj4gTlYxMiBpZiBIRVZDIHdhcyBjb25maWd1cmVk
LCBidXQgb3RoZXJ3aXNlIGRlY2xhcmUgTlYxMl80TDQKPj4gYXMgdGhlIHBpeGVsIGZvcm1hdCBp
biBpbXg4bXFfdnB1X2cyX3ZhcmlhbnQuZGVjX2ZtdHMuCj4+Cj4+IFRoaXMgd2lsbCBiZSB1c2Vk
IGJ5IHRoZSBWUDkgZGVjb2RlciB3aGljaCB3aWxsIGJlIGFkZGVkIHNvb24uCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPj4gU2ln
bmVkLW9mZi1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNv
bT4KPj4gLS0tCj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5j
ICB8IDE0ICsrKysrKysrKysrKysrCj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9p
bXg4bV92cHVfaHcuYyB8ICAyICstCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvaGFudHJvL2hhbnRyb192NGwyLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb192NGwyLmMKPj4gaW5kZXggYmNiMGJkZmY0YTlhLi5kMWYwNjBjNTVmZWQgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Y0bDIuYwo+PiArKysg
Yi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPj4gQEAgLTE1MCw2
ICsxNTAsMjAgQEAgc3RhdGljIGludCB2aWRpb2NfZW51bV9mbXQoc3RydWN0IGZpbGUgKmZpbGUs
IHZvaWQgKnByaXYsCj4+ICAgCXVuc2lnbmVkIGludCBudW1fZm10cywgaSwgaiA9IDA7Cj4+ICAg
CWJvb2wgc2tpcF9tb2RlX25vbmU7Cj4+ICAgCj4+ICsJLyoKPj4gKwkgKiBUaGUgSEVWQyBkZWNv
ZGVyIG9uIHRoZSBHMiBjb3JlIG5lZWRzIGEgbGl0dGxlIHF1aXJrIHRvIG9mZmVyIE5WMTIKPj4g
KwkgKiBvbmx5IG9uIHRoZSBjYXB0dXJlIHNpZGUuIE9uY2UgdGhlIHBvc3QtcHJvY2Vzc29yIGxv
Z2ljIGlzIHVzZWQsCj4+ICsJICogd2Ugd2lsbCBiZSBhYmxlIHRvIGV4cG9zZSBOVjEyXzRMNCBh
bmQgTlYxMiBhcyB0aGUgb3RoZXIgY2FzZXMsCj4+ICsJICogYW5kIHRoZXJlZm9yZSByZW1vdmUg
dGhpcyBxdWlyay4KPj4gKwkgKi8KPj4gKwlpZiAoY2FwdHVyZSAmJiBjdHgtPnZwdV9zcmNfZm10
LT5mb3VyY2MgPT0gVjRMMl9QSVhfRk1UX0hFVkNfU0xJQ0UpIHsKPj4gKwkJaWYgKGYtPmluZGV4
ID09IDApIHsKPj4gKwkJCWYtPnBpeGVsZm9ybWF0ID0gVjRMMl9QSVhfRk1UX05WMTI7Cj4+ICsJ
CQlyZXR1cm4gMDsKPj4gKwkJfQo+PiArCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwl9Cj4+ICsKPj4g
ICAJLyoKPj4gICAJICogV2hlbiBkZWFsaW5nIHdpdGggYW4gZW5jb2RlcjoKPj4gICAJICogIC0g
b24gdGhlIGNhcHR1cmUgc2lkZSB3ZSB3YW50IHRvIGZpbHRlciBvdXQgYWxsIE1PREVfTk9ORSBm
b3JtYXRzLgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4
bV92cHVfaHcuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3LmMK
Pj4gaW5kZXggMDJlNjE0MzgyMjBhLi5hNDBiMTYxZTU5NTYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3LmMKPj4gKysrIGIvZHJpdmVycy9z
dGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92cHVfaHcuYwo+PiBAQCAtMTM0LDcgKzEzNCw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2ZtdCBpbXg4bV92cHVfZGVjX2ZtdHNbXSA9IHsK
Pj4gICAKPj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgaW14OG1fdnB1X2cyX2Rl
Y19mbXRzW10gPSB7Cj4+ICAgCXsKPj4gLQkJLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9OVjEyLAo+
PiArCQkuZm91cmNjID0gVjRMMl9QSVhfRk1UX05WMTJfNEw0LAo+IAo+IFRoaXMgZGVwZW5kcyBv
biBzb21lIGFjY2VwdGVkIHBhdGNoZXMgZnJvbSBFemVxdWllbC4gSSBkb24ndCByZWNhbGwgc2Vl
aW5nIGEKPiBtZW50aW9uIG9mIHRoaXMgaW4gdGhlIGNvdmVyLCB0aGlzIGlzIG5vdCBhIHByb2Js
ZW0gcGVyIHNlZSwgYnV0IHBlcmhhcHMgbmljZQo+IGZvciB0aGUgdGVzdGVycy4gSSBiZWxpZXZl
IG9ubHkgNzYxODAgaXMgbmVlZGVkLCBidXQgaGVyZSdzIHRoZSBjb21wbGV0ZSBzZXJpZXMKPiBJ
IHJlZmVyIHRvOgo+IAo+IDc2MTc4ICAgQWNjZXB0ZWQgICAgIFt2MywxLzRdIG1lZGlhOiBSZW5h
bWUgVjRMMl9QSVhfRk1UX1NVTlhJX1RJTEVEX05WMTIgdG8gVjRMMl9QSVhfRk1UX05WMTJfMzJM
MzIKPiA3NjE3OSAgIEFjY2VwdGVkICAgICBbdjMsMi80XSBtZWRpYTogUmVuYW1lIFY0TDJfUElY
X0ZNVF9ITTEyIHRvIFY0TDJfUElYX0ZNVF9OVjEyXzE2TDE2Cj4gNzYxODAgICBBY2NlcHRlZCAg
ICAgW3YzLDMvNF0gbWVkaWE6IEFkZCBOVjEyXzRMNCB0aWxlZCBmb3JtYXQKPiA3NjE4MSAgIEFj
Y2VwdGVkICAgICBbdjMsNC80XSBtZWRpYTogQ2xlYW4gVjRMMl9QSVhfRk1UX05WMTJNVCBkb2N1
bWVudGF0aW9uCj4gCj4gCj4+ICAgCQkuY29kZWNfbW9kZSA9IEhBTlRST19NT0RFX05PTkUsCj4+
ICAgCX0sCj4+ICAgCXsKPiAKPiAKCgpJdCB3YXMgbWVudGlvbmVkIGluIHRoZSBjb3ZlciBsZXR0
ZXI6CgoiVGhlIHNlcmllcyBkZXBlbmRzIG9uIHRoZSBZVVYgdGlsZWQgZm9ybWF0IHN1cHBvcnQg
cHJlcGFyZWQgYnkgRXplcXVpZWw6Cmh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4
LW1lZGlhL21zZzE5NzA0Ny5odG1sIgoKQW55d2F5LCB0aGFua3MgZm9yIGNsYXJpZnlpbmcgdGhp
cy4KClJlZ2FyZHMsCgpBbmRyemVqCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
