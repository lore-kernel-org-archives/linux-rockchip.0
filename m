Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94613D3C935
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 00:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25emf7Qfp2YsqqNYQU0Z9+RFW6nUXuKroPQd+dMC2Uc=; b=WvZyakrLq7crny
	kDzIyuavZGEb15Pu+/ejAIAwaznOuv/mYhC4M/EsHEOUQKMxFKrpVk5U/Wg1J6K3GjOq4wgyF/lvG
	aMdl+sZBCC7IQyKFijnDVUq1YNahEhY7F5pl9lSlcl+KQs6TzGhYGFhwluSAKoKy/JWRkUDuSIn87
	CeTbmPujSejl5dHQeFOTrlUH139UWHDVUzUvb71SD3z310qTgaoJJd5msUWloPmN8UEB0Osnl9XM0
	wYud7X8LYTS7yf7NcyLz9Drpy6x6rtZ4x2igqyeBcIlJbbNTQ35vFi7uWIICfNe1C0fnLmCl/BhOQ
	Ar5rAfUImSNKmeNLCssg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2ggg-00000005ls3-0s8W;
	Mon, 21 Oct 2024 00:54:22 +0000
Received: from mail-m1012.netease.com ([154.81.10.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2gWk-00000005kYG-0od0
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Oct 2024 00:44:09 +0000
DKIM-Signature: a=rsa-sha256;
	b=V38btIJakVMMe4dDZ7E9LyioghrUde8fStgdte4jHGxwc+2EhgCGN0sjjP27GgFTzEIKpv44PwwmVP00KwPN+kvnp8fM2cX187Apk2Rw9geRwTmVRErIA1f54NhKN/GR8ZCTcyH3FRTM65pLwwDiDSCTEVHcZdLbPmIwyC1vK9Q=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=KtWr2riFT/2Ittypx/eroyOm6tXa4t9/AcYin97fqlY=;
	h=date:mime-version:subject:message-id:from;
Received: from lintao?rock-chips.com (gy-adaptive-ssl-proxy-3-entmail-virt135.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with SMTP id DA0B62A0123;
	Mon, 21 Oct 2024 08:43:26 +0800 (CST)
Message-ID: <90ff835d-f3b2-4b7c-aa1a-575e231a57e6@rock-chips.com>
Date: Mon, 21 Oct 2024 08:43:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 5/5] scsi: ufs: rockchip: initial support for UFS
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
 <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKForpLcmkqruuTfD6kkJhp_4CKFABWRxFVYNskGL1tjO=w@mail.gmail.com>
 <3969bae0-eeb8-447a-86a5-dfdac0b136cd@rock-chips.com>
 <CAPDyKFo=GcHG2sGQBrXJ7VWyp59QOmbLCAvHQ3krUympEkid_A@mail.gmail.com>
 <98e0062c-aeb1-4bea-aa2b-4a99115c9da4@rock-chips.com>
 <CAPDyKFogrPEEe1A3Kghjj3-SSJT2xEoKfo_hU7KZk+d9bZxEYQ@mail.gmail.com>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAPDyKFogrPEEe1A3Kghjj3-SSJT2xEoKfo_hU7KZk+d9bZxEYQ@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU8aQ1YaTh1LTxkaH0odH0pWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a92ac87724003aakunmda0b62a0123
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nxw6FDo6MDIsTCkCQz4vHy0K
	MDoKCkhVSlVKTElCT0xKT0pKTk5DVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUNISEg3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241020_174406_897114_66CF8F5B 
X-CRM114-Status: GOOD (  27.42  )
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

5ZyoIDIwMjQvMTAvMTggMTg6MDMsIFVsZiBIYW5zc29uIOWGmemBkzoKPiBPbiBGcmksIDE4IE9j
dCAyMDI0IGF0IDExOjIwLCBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4gd3Jv
dGU6Cj4+Cj4+IEhpIFVsZiwKPj4KPj4g5ZyoIDIwMjQvMTAvMTggMTc6MDcsIFVsZiBIYW5zc29u
IOWGmemBkzoKPj4+IE9uIFRodSwgMTAgT2N0IDIwMjQgYXQgMDM6MjEsIFNoYXduIExpbiA8c2hh
d24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IEhpIFVsZgo+Pj4+Cj4+Pj4g
5ZyoIDIwMjQvMTAvOSAyMToxNSwgVWxmIEhhbnNzb24g5YaZ6YGTOgo+Pj4+PiBbLi4uXQo+Pj4+
Pgo+Pj4+Pj4gKwo+Pj4+Pj4gK3N0YXRpYyBpbnQgdWZzX3JvY2tjaGlwX3J1bnRpbWVfc3VzcGVu
ZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+Pj4+PiArewo+Pj4+Pj4gKyAgICAgICBzdHJ1Y3QgdWZz
X2hiYSAqaGJhID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4+Pj4+PiArICAgICAgIHN0cnVjdCB1
ZnNfcm9ja2NoaXBfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+Pj4+Pj4g
KyAgICAgICBzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdlbnBkID0gcGRfdG9fZ2VucGQoZGV2
LT5wbV9kb21haW4pOwo+Pj4+Pgo+Pj4+PiBwZF90b19nZW5wZCgpIGlzbid0IHNhZmUgdG8gdXNl
IGxpa2UgdGhpcy4gSXQncyBzb2xlbHkgdG8gYmUgdXNlZCBieQo+Pj4+PiBnZW5wZCBwcm92aWRl
ciBkcml2ZXJzLgo+Pj4+Pgo+Pj4+Pj4gKwo+Pj4+Pj4gKyAgICAgICBjbGtfZGlzYWJsZV91bnBy
ZXBhcmUoaG9zdC0+cmVmX291dF9jbGspOwo+Pj4+Pj4gKwo+Pj4+Pj4gKyAgICAgICAvKgo+Pj4+
Pj4gKyAgICAgICAgKiBTaG91bGRuJ3QgcG93ZXIgZG93biBpZiBycG1fbHZsIGlzIGxlc3MgdGhh
biBsZXZlbCA1Lgo+Pj4+Pgo+Pj4+PiBDYW4geW91IGVsYWJvcmF0ZSBvbiB3aHkgd2UgbXVzdCBu
b3QgcG93ZXItb2ZmIHRoZSBwb3dlci1kb21haW4gd2hlbgo+Pj4+PiBsZXZlbCBpcyBsZXNzIHRo
YW4gNT8KPj4+Pj4KPj4+Pgo+Pj4+IEJlY2F1c2UgdWZzaGNkIGRyaXZlciBhc3N1bWUgdGhlIGNv
bnRyb2xsZXIgaXMgYWN0aXZlIGFuZCB0aGUgbGluayBpcyBvbgo+Pj4+IGlmIGxldmVsIGlzIGxl
c3MgdGhhbiA1LiBTbyB0aGUgZGVmYXVsdCByZXN1bWUgcG9saWN5IHdpbGwgbm90IHRyeSB0bwo+
Pj4+IHJlY292ZXIgdGhlIHJlZ2lzdGVycyB1bnRpbCB0aGUgZmlyc3QgZXJyb3IgaGFwcGVuZWQu
IE90aGVyd2lzZSBpZiB0aGUKPj4+PiBsZXZlbCBpcyA+PTUsIGl0IGFzc3VtZXMgdGhlIGNvbnRy
b2xsZXIgaXMgb2ZmIGFuZCB0aGUgbGluayBpcyBkb3duLAo+Pj4+IHRoZW4gaXQgd2lsbCByZXN0
b3JlIHRoZSByZWdpc3RlcnMgYW5kIGxpbmsuCj4+Pj4KPj4+PiBBbmQgdGhlIGxldmVsIGlzIGNo
YW5nZWFibGUgdmlhIHN5c2ZzLgo+Pj4KPj4+IE9rYXksIHRoYW5rcyBmb3IgY2xhcmlmeWluZy4K
Pj4+Cj4+Pj4KPj4+Pj4gV2hhdCBoYXBwZW5zIGlmIHdlIHBvd2VyLW9mZiBhbnl3YXkgd2hlbiB0
aGUgbGV2ZWwgaXMgbGVzcyB0aGFuIDU/Cj4+Pj4+Cj4+Pj4+PiArICAgICAgICAqIFRoaXMgZmxh
ZyB3aWxsIGJlIHBhc3NlZCBkb3duIHRvIHBsYXRmb3JtIHBvd2VyLWRvbWFpbiBkcml2ZXIKPj4+
Pj4+ICsgICAgICAgICogd2hpY2ggaGFzIHRoZSBmaW5hbCBkZWNpc2lvbi4KPj4+Pj4+ICsgICAg
ICAgICovCj4+Pj4+PiArICAgICAgIGlmIChoYmEtPnJwbV9sdmwgPCBVRlNfUE1fTFZMXzUpCj4+
Pj4+PiArICAgICAgICAgICAgICAgZ2VucGQtPmZsYWdzIHw9IEdFTlBEX0ZMQUdfUlBNX0FMV0FZ
U19PTjsKPj4+Pj4+ICsgICAgICAgZWxzZQo+Pj4+Pj4gKyAgICAgICAgICAgICAgIGdlbnBkLT5m
bGFncyAmPSB+R0VOUERfRkxBR19SUE1fQUxXQVlTX09OOwo+Pj4+Pgo+Pj4+PiBUaGUgZ2VucGQt
PmZsYWdzIGlzIG5vdCBzdXBwb3NlZCB0byBiZSBjaGFuZ2VkIGxpa2UgdGhpcyAtIGFuZAo+Pj4+
PiBlc3BlY2lhbGx5IG5vdCBmcm9tIGEgZ2VucGQgY29uc3VtZXIgZHJpdmVyLgo+Pj4+Pgo+Pj4+
PiBJIGFtIHRyeWluZyB0byB1bmRlcnN0YW5kIGEgYml0IG1vcmUgb2YgdGhlIHVzZSBjYXNlIGhl
cmUuIExldCdzIHNlZQo+Pj4+PiBpZiB0aGF0IGhlbHBzIG1lIHRvIHBvdGVudGlhbGx5IHN1Z2dl
c3QgYW4gYWx0ZXJuYXRpdmUgYXBwcm9hY2guCj4+Pj4+Cj4+Pj4KPj4+PiBJIHdhcyBub3QgZmFt
aWxpYXIgd2l0aCB0aGUgZ2VucGQgcGFydCwgc28gSSBoYXZlbid0IGNvbWUgdXAgd2l0aAo+Pj4+
IGFub3RoZXIgc29sdXRpb24uIEl0IHdvdWxkIGJlIGdyZWF0IGlmIHlvdSBjYW4gZ3VpZGUgbWUg
dG8gdGhlIHJpZ2h0Cj4+Pj4gd2F5Lgo+Pj4KPj4+IEkgaGF2ZSBiZWVuIHBsYXlpbmcgd2l0aCB0
aGUgZXhpc3RpbmcgaW5mcmFzdHJ1Y3R1cmUgd2UgaGF2ZSBhdCBoYW5kCj4+PiB0byBzdXBwb3J0
IHRoaXMsIGJ1dCBJIG5lZWQgYSBmZXcgbW9yZSBkYXlzIHRvIGJlIGFibGUgdG8gcHJvcG9zZQo+
Pj4gc29tZXRoaW5nIGZvciB5b3UuCj4+Pgo+Pgo+PiBNdWNoIGFwcHJlY2lhdGUuCj4+Cj4+Pj4K
Pj4+Pj4+ICsKPj4+Pj4+ICsgICAgICAgcmV0dXJuIHVmc2hjZF9ydW50aW1lX3N1c3BlbmQoZGV2
KTsKPj4+Pj4+ICt9Cj4+Pj4+PiArCj4+Pj4+PiArc3RhdGljIGludCB1ZnNfcm9ja2NoaXBfcnVu
dGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+Pj4+Pj4gK3sKPj4+Pj4+ICsgICAgICAg
c3RydWN0IHVmc19oYmEgKmhiYSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+Pj4+Pj4gKyAgICAg
ICBzdHJ1Y3QgdWZzX3JvY2tjaGlwX2hvc3QgKmhvc3QgPSB1ZnNoY2RfZ2V0X3ZhcmlhbnQoaGJh
KTsKPj4+Pj4+ICsgICAgICAgaW50IGVycjsKPj4+Pj4+ICsKPj4+Pj4+ICsgICAgICAgZXJyID0g
Y2xrX3ByZXBhcmVfZW5hYmxlKGhvc3QtPnJlZl9vdXRfY2xrKTsKPj4+Pj4+ICsgICAgICAgaWYg
KGVycikgewo+Pj4+Pj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoaGJhLT5kZXYsICJmYWlsZWQg
dG8gZW5hYmxlIHJlZiBvdXQgY2xvY2sgJWRcbiIsIGVycik7Cj4+Pj4+PiArICAgICAgICAgICAg
ICAgcmV0dXJuIGVycjsKPj4+Pj4+ICsgICAgICAgfQo+Pj4+Pj4gKwo+Pj4+Pj4gKyAgICAgICBy
ZXNldF9jb250cm9sX2Fzc2VydChob3N0LT5yc3QpOwo+Pj4+Pj4gKyAgICAgICB1c2xlZXBfcmFu
Z2UoMSwgMik7Cj4+Pj4+PiArICAgICAgIHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoaG9zdC0+cnN0
KTsKPj4+Pj4+ICsKPj4+Pj4+ICsgICAgICAgcmV0dXJuIHVmc2hjZF9ydW50aW1lX3Jlc3VtZShk
ZXYpOwo+Pj4+Pj4gK30KPj4+Pj4+ICsKPj4+Pj4+ICtzdGF0aWMgaW50IHVmc19yb2NrY2hpcF9z
eXN0ZW1fc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+Pj4+PiArewo+Pj4+Pj4gKyAgICAg
ICBzdHJ1Y3QgdWZzX2hiYSAqaGJhID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4+Pj4+PiArICAg
ICAgIHN0cnVjdCB1ZnNfcm9ja2NoaXBfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudCho
YmEpOwo+Pj4+Pj4gKwo+Pj4+Pj4gKyAgICAgICAvKiBQYXNzIGRvd24gZGVzaXJlZCBzcG1fbHZs
IHRvIEZpcm13YXJlICovCj4+Pj4+PiArICAgICAgIGFybV9zbWNjY19zbWMoUk9DS0NISVBfU0lQ
X1NVU1BFTkRfTU9ERSwgUk9DS0NISVBfU0xFRVBfUERfQ09ORklHLAo+Pj4+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgaG9zdC0+cGRfaWQsIGhiYS0+c3BtX2x2bCA8IDUgPyAxIDogMCwgMCwg
MCwgMCwgMCwgTlVMTCk7Cj4+Pj4+Cj4+Pj4+IENhbiB5b3UgcGxlYXNlIGVsYWJvcmF0ZSBvbiB3
aGF0IGdvZXMgb24gaGVyZT8gSXMgdGhpcyB0dXJuaW5nIG9mZiB0aGUKPj4+Pj4gcG93ZXItZG9t
YWluIHRoYXQgdGhlIGRldiBpcyBhdHRhY2hlZCB0byAtIG9yIHdoYXQgaXMgYWN0dWFsbHkKPj4+
Pj4gaGFwcGVuaW5nPwo+Pj4+Pgo+Pj4+Cj4+Pj4gVGhpcyBzbWMgY2FsbCBpcyB0cnlpbmcgdG8g
YXNrIGZpcm13YXJlIG5vdCB0byB0dXJuIG9mZiB0aGUgcG93ZXItZG9taWFuCj4+Pj4gdGhhdCB0
aGUgVUZTIGlzIGF0dGFjaGVkIHRvIGFuZCBhbHNvIG5vdCB0byB0dXJuIG9mZiB0aGUgcG93ZXIg
b2YgVUZTCj4+Pj4gY29ubnRyb2xsZXIuCj4+Pgo+Pj4gT2theSwgdGhhbmtzIGZvciBjbGFyaWZ5
aW5nIQo+Pj4KPj4+IEEgZm9sbG93IHVwIHF1ZXN0aW9uLCBkb24ndCB5b3UgbmVlZCB0byBtYWtl
IGEgY29ycmVzcG9uZGluZyBzbWMgY2FsbAo+Pj4gdG8gaW5mb3JtIHRoZSBGVyB0aGF0IGl0J3Mg
b2theSB0byB0dXJuIG9mZiB0aGUgcG93ZXItZG9tYWluIGF0IHNvbWUKPj4+IHBvaW50Pwo+Pj4K
Pj4KPj4gWWVzLiBFYWNoIHRpbWUgZW50ZXJpbmcgc2xlZXAsIHdlIHRlYWNoIEZXIGlmIGl0IG5l
ZWQgdG8gdHVybiBvZmYgb3IKPj4ga2VlcCBwb3dlci1kb21haW4sIGZvciBpbnN0YW5jZSAiaGJh
LT5zcG1fbHZsIDwgNSA/IDEgOiAwIiAsIDAgbWVhbnMKPj4gb2ZmIGFuZCAxIG1lYW5zIG9uLgo+
IAo+IEkgc2VlLiBTbyB5b3UgbmVlZCB0byBtYWtlIHRoZSBjYWxsIGVhY2ggdGltZSB3aGVuIGVu
dGVyaW5nIHRoZSBzeXN0ZW0gc3VzcGVuZD8KPiAKPiBPciB3b3VsZCBpdCBiZSBva2F5IHRvIGp1
c3QgbWFrZSBpdCBvbmNlLCB3aGVuIHRoZSBzcG1fbHZsIGlzIGNoYW5nZWQ/CgpUaGVycyBpcyBu
byBub2ZpdHkgd2hlbiBjaGFuZ2luZyBzcG1fbHZsLgoKPiAKPiBBbm90aGVyIHdheSB0byBkZWFs
IHdpdGggaXQsIHdvdWxkIGJlIHRvIG1ha2UgdGhlIHNtYyBjYWxsIGVhY2ggdGltZQo+IHRoZSBw
b3dlci1kb21haW4gaXMgdHVybmVkLW9uLCBiYXNlZCBvbiBzcG1fbHZsIHRvbyBvZiBjb3Vyc2Uu
Cj4gCj4gV291bGQgdGhhdCB3b3JrPwoKWWVzLCB0aGF0IHdvcmtzLiBBbm90aGVyIG9wdGlvbiBp
cyB0byBjYWNoZSBwb3dlci1kb21haW4gc3RhdGVzIGFuZApjaGVjayBzcG1fbHZsIGxvY2FsbHku
IElmIGl0IGRvZXNuJ3QgY2hhbmdlLCB3ZSBza2lwIHNtYyBjYWxsLgoKPiAKPiBbLi4uXQo+IAo+
IEtpbmQgcmVnYXJkcwo+IFVmZmUKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
