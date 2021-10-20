Return-Path: <SRS0=Zsw1=PI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3842C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 13:07:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4EF56137C
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 13:07:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B4EF56137C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MY9mnFWooomSEef8tVfLuFpcpZOb7RHLY9kl1iX7eSU=; b=0nq8PiWaj7ERlSkhqWd/ptmY4U
	nRDIpfslCLTR+fiE/p+IcHHiuf0nijhkBkOVvxJiUgPATOYp6wQEUQcjuRNapQqRT4cHziK6eao5K
	eYR1H5uZuOHss2GogdMzvG+qZfZ9ylhXbzvqSoADQL3g2Qr1Fe2AjA2+mTU0qkHWQ1nWbArhkMKrX
	DgM9/OChaLInxRT69plNeP/eznr4gtTTg0UhWE0aC5OJKhKx/TiTiZT/M1ahl4s12GQFghyzf2s4v
	5YZYQlRcxfOnk2xmaNcQ+zFy+2NE8oQEXnvqV7rQmvYp8biTCLwV2P0hCVNltzZbEsxSpwmYyeu1Z
	eTLtrJ3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdBJb-004a75-RK; Wed, 20 Oct 2021 13:07:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdBJO-004a5Y-Jf; Wed, 20 Oct 2021 13:07:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 4645D1F43A1E
Subject: Re: [PATCH v7 07/11] media: rkvdec: Add the VP9 backend
To: Alex Bee <knaerzche@gmail.com>, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Adrian Ratiu <adrian.ratiu@collabora.com>
References: <20210929160439.6601-1-andrzej.p@collabora.com>
 <20210929160439.6601-8-andrzej.p@collabora.com>
 <966b04a7-421a-a592-2e17-ea5ecdb76b00@gmail.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <91ba5098-2528-1e63-3a1a-b908db8d6f2a@collabora.com>
Date: Wed, 20 Oct 2021 15:07:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <966b04a7-421a-a592-2e17-ea5ecdb76b00@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_060718_933661_637B50EA 
X-CRM114-Status: GOOD (  25.52  )
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

SGkgQWxleCwKClcgZG5pdSAyMC4xMC4yMDIxIG/CoDAxOjI0LCBBbGV4IEJlZSBwaXN6ZToKPiBI
aSBBbmRyemVqLAo+IAo+IEFtIDI5LjA5LjIxIHVtIDE4OjA0IHNjaHJpZWIgQW5kcnplaiBQaWV0
cmFzaWV3aWN6Ogo+PiBGcm9tOiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xs
YWJvcmEuY29tPgo+Pgo+PiBUaGUgUm9ja2NoaXAgVkRFQyBzdXBwb3J0cyBWUDkgcHJvZmlsZSAw
IHVwIHRvIDQwOTZ4MjMwNEAzMGZwcy4gQWRkCj4+IGEgYmFja2VuZCBmb3IgdGhpcyBuZXcgZm9y
bWF0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxv
bkBjb2xsYWJvcmEuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1
aWVsQGNvbGxhYm9yYS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEFkcmlhbiBSYXRpdSA8YWRyaWFu
LnJhdGl1QGNvbGxhYm9yYS5jb20+Cj4+IENvLWRldmVsb3BlZC1ieTogQW5kcnplaiBQaWV0cmFz
aWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQW5kcnpl
aiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+IMKgIGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvS2NvbmZpZ8KgwqDCoMKgwqAgfMKgwqDCoCAxICsK
Pj4gwqAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9NYWtlZmlsZcKgwqDCoMKgIHzCoMKg
wqAgMiArLQo+PiDCoCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy12cDkuYyB8
IDEwNzggKysrKysrKysrKysrKysrKysrKysrCj4+IMKgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9y
a3ZkZWMvcmt2ZGVjLmPCoMKgwqDCoCB8wqDCoCA1MiArLQo+PiDCoCBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvcmt2ZGVjL3JrdmRlYy5owqDCoMKgwqAgfMKgwqAgMTIgKy0KPj4gwqAgNSBmaWxlcyBj
aGFuZ2VkLCAxMTM3IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+IMKgIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy12cDkuYwoKPHNu
aXA+Cgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMu
YyAKPj4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4+IGluZGV4IDcx
MzExNTZjMWYyYy4uNmFhOGFjYTY2NTQ3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3Zk
ZWMvcmt2ZGVjLmMKPj4gQEAgLTk5LDEwICs5OSwzMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJr
dmRlY19jdHJscyBya3ZkZWNfaDI2NF9jdHJscyA9IHsKPj4gwqDCoMKgwqDCoCAubnVtX2N0cmxz
ID0gQVJSQVlfU0laRShya3ZkZWNfaDI2NF9jdHJsX2Rlc2NzKSwKPj4gwqAgfTsKPj4gLXN0YXRp
YyBjb25zdCB1MzIgcmt2ZGVjX2gyNjRfZGVjb2RlZF9mbXRzW10gPSB7Cj4+ICtzdGF0aWMgY29u
c3QgdTMyIHJrdmRlY19oMjY0X3ZwOV9kZWNvZGVkX2ZtdHNbXSA9IHsKPj4gwqDCoMKgwqDCoCBW
NEwyX1BJWF9GTVRfTlYxMiwKPiAKPiBGb3IgSC4yNjQgcmt2ZGVjIEhXIHN1cHBvcnRzIGFkZGl0
aW9uYWwgZm9ybWF0czogVjRMMl9QSVhfRk1UX05WMTUsIAo+IFY0TDJfUElYX0ZNVF9OVjE2IGFu
ZCBWNEwyX1BJWF9GTVRfTlYyMC4gTm90IGFsbCBvZiB0aG9zZSBhcmUgdXBzdHJlYW1lZCB5ZXQg
YW5kIAo+IHRodXMgbm90IHN1cHBvcnRlZCBieSBya3ZkZWMgZHJpdmVyIC0gYnV0IEkgdGhpbmsg
d2Ugc2hvdWxkIGludHJvZHVjZSBhIHNlcGVyYXRlIAo+IHJrdmRlY192cDlfZGVjb2RlZF9mbXRz
IGFscmVhZHkgYSB0aGlzIHBvaW50LiAoVG8gYXZvaWQgdW5uZWNlc3NhcnkgZGlmZiAKPiBhZnRl
cndhcmRzKQoKSSB3aWxsIGRvIGl0IGlmIEkgZ2V0IHRvIHJlLXNwaW5uaW5nIHRoZSBzZXJpZXMg
Zm9yIG90aGVyIHJlYXNvbnMuCgo+IAo+PiDCoCB9Owo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBy
a3ZkZWNfY3RybF9kZXNjIHJrdmRlY192cDlfY3RybF9kZXNjc1tdID0gewo+PiArwqDCoMKgIHsK
Pj4gK8KgwqDCoMKgwqDCoMKgIC5jZmcuaWQgPSBWNEwyX0NJRF9TVEFURUxFU1NfVlA5X0ZSQU1F
LAo+PiArwqDCoMKgIH0sCj4+ICvCoMKgwqAgewo+PiArwqDCoMKgwqDCoMKgwqAgLmNmZy5pZCA9
IFY0TDJfQ0lEX1NUQVRFTEVTU19WUDlfQ09NUFJFU1NFRF9IRFIsCj4+ICvCoMKgwqAgfSwKPj4g
K8KgwqDCoCB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAuY2ZnLmlkID0gVjRMMl9DSURfTVBFR19WSURF
T19WUDlfUFJPRklMRSwKPj4gK8KgwqDCoMKgwqDCoMKgIC5jZmcubWluID0gVjRMMl9NUEVHX1ZJ
REVPX1ZQOV9QUk9GSUxFXzAsCj4+ICvCoMKgwqDCoMKgwqDCoCAuY2ZnLm1heCA9IFY0TDJfTVBF
R19WSURFT19WUDlfUFJPRklMRV8wLAo+PiArwqDCoMKgwqDCoMKgwqAgLmNmZy5kZWYgPSBWNEwy
X01QRUdfVklERU9fVlA5X1BST0ZJTEVfMCwKPj4gK8KgwqDCoCB9LAo+PiArfTsKPj4gKwo+PiAr
c3RhdGljIGNvbnN0IHN0cnVjdCBya3ZkZWNfY3RybHMgcmt2ZGVjX3ZwOV9jdHJscyA9IHsKPj4g
K8KgwqDCoCAuY3RybHMgPSBya3ZkZWNfdnA5X2N0cmxfZGVzY3MsCj4+ICvCoMKgwqAgLm51bV9j
dHJscyA9IEFSUkFZX1NJWkUocmt2ZGVjX3ZwOV9jdHJsX2Rlc2NzKSwKPj4gK307Cj4+ICsKPj4g
wqAgc3RhdGljIGNvbnN0IHN0cnVjdCBya3ZkZWNfY29kZWRfZm10X2Rlc2Mgcmt2ZGVjX2NvZGVk
X2ZtdHNbXSA9IHsKPj4gwqDCoMKgwqDCoCB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAuZm91cmNj
ID0gVjRMMl9QSVhfRk1UX0gyNjRfU0xJQ0UsCj4+IEBAIC0xMTYsOCArMTM2LDIzIEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgcmt2ZGVjX2NvZGVkX2ZtdF9kZXNjIAo+PiBya3ZkZWNfY29kZWRfZm10
c1tdID0gewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIC5j
dHJscyA9ICZya3ZkZWNfaDI2NF9jdHJscywKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIC5vcHMgPSAm
cmt2ZGVjX2gyNjRfZm10X29wcywKPj4gLcKgwqDCoMKgwqDCoMKgIC5udW1fZGVjb2RlZF9mbXRz
ID0gQVJSQVlfU0laRShya3ZkZWNfaDI2NF9kZWNvZGVkX2ZtdHMpLAo+PiAtwqDCoMKgwqDCoMKg
wqAgLmRlY29kZWRfZm10cyA9IHJrdmRlY19oMjY0X2RlY29kZWRfZm10cywKPj4gK8KgwqDCoMKg
wqDCoMKgIC5udW1fZGVjb2RlZF9mbXRzID0gQVJSQVlfU0laRShya3ZkZWNfaDI2NF92cDlfZGVj
b2RlZF9mbXRzKSwKPj4gK8KgwqDCoMKgwqDCoMKgIC5kZWNvZGVkX2ZtdHMgPSBya3ZkZWNfaDI2
NF92cDlfZGVjb2RlZF9mbXRzLAo+PiArwqDCoMKgIH0sCj4+ICvCoMKgwqAgewo+PiArwqDCoMKg
wqDCoMKgwqAgLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9WUDlfRlJBTUUsCj4+ICvCoMKgwqDCoMKg
wqDCoCAuZnJtc2l6ZSA9IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLm1pbl93aWR0aCA9
IDY0LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAubWF4X3dpZHRoID0gNDA5NiwKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgLnN0ZXBfd2lkdGggPSA2NCwKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgLm1pbl9oZWlnaHQgPSA2NCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLm1h
eF9oZWlnaHQgPSAyMzA0LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAuc3RlcF9oZWlnaHQg
PSA2NCwKPj4gK8KgwqDCoMKgwqDCoMKgIH0sCj4gSSBjaGVja2VkIChhdmFpbGFibGUpIGRvY3Vt
ZW50YXRpb24gYW5kIGNvdWxkbid0IGZpbmQgYW55IGhpbnQgdG8gdGhlIAo+IC5zdGVwX3dpZHRo
IGFuZCAuc3RlcF9oZWlnaHQsIGJ1dCBJJ20gbm90IHN1cmUgdGhhdCdzIGNvcnJlY3Q6IHRha2lu
Zwo+IHRoaXMgdmFsdWVzIGhlcmUgbmVpdGhlciBmcmFtZXNpemUgb2YgMzg0MHgyMTYwIG5vciAx
MjgweDcyMCB3b3VsZCBiZSBwb3NzaWJsZSAtIAo+IGJ1dCB0aGUgSFcgc2VlbXMgdG8gaGF2ZSBu
byBwcm9ibGVtIHdpdGggdGhvc2UsIGkuZS4gZGVjb2Rpbmcgd29ya3MgZmluZS4KPiBHaXZlbiB0
aGUgb3V0cHV0IGZvcm1hdCBpcyB0aGUgc2FtZSBhcyB0aGUgKG9ubHkpIGN1cnJlbnRseSBzdXBw
b3J0ZWQgSC4yNjQgCj4gb3V0cHV0IGZvcm1hdCAoTlYxMikgYW5kIHRob3NlIHN0ZXBzIGFyZSB1
c3VhbGx5IGZvciBhbGlnbm1lbnQgcHVycG9zZXMgbmVlZCBieSAKPiB0aGUgSFcgLCBJIHN0cm9u
Z2x5IGd1ZXNzIC5zdGVwX2hlaWdodCBhbmQgLnN0ZXBfd2lkdGggYXJlIHRoZSBzYW1lIGFzIAo+
IFY0TDJfUElYX0ZNVF9IMjY0X1NMSUNFIGhhcy4KPiAKCkFyZW4ndCB0aGVzZSB1c2VkIHByaW1h
cmlseSBieSB2NGwyX2FwcGx5X2ZybXNpemVfY29uc3RyYWludHMoKT8gRG9lc24ndAp0aGlzIG1l
cmVseSBtZWFuIHRoYXQgZXZlbiB0aG91Z2ggdXNlcnNwYWNlIHJlcXVlc3RzLCBzYXksIDQ4eDQ4
LAppdCB3aWxsIGdldCA2NHg2NCBpbnN0ZWFkPwoKSSB0cmllZCBkZWNvZGluZyBhIDcyMHAgdmlk
ZW8gd2l0aCBnc3RyZWFtZXIgYW5kIGl0IHdvcmtlZCBmaW5lCihJIGdvdCBhIHByb3Blcmx5IHNp
emVkIDEyODB4NzIwIG91dHB1dCkuCgpSZWdhcmRzLAoKQW5kcnplagoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
