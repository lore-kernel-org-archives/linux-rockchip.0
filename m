Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB9FBD1CA14
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Nov 2024 01:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sT0fZ/RupaekkFRoa5lJy+bNBHaa8PU7v7NTRJL5sXA=; b=QN4/Ovy1SQ3Ie/
	zppTXG/xwpE429GdWgr6NwC/W/5gkvlyWUl7k3xyQVZjH6Kiosbb+IeZ5LSfhoYvoztvLh0FvFfRa
	skFLHu2yL0dGnwgWUVgu3iuYEPUjt5iAtTuyTnM36lfWR2o5fPhtP4ufZOYHtb8sjHNFJK/XrGPjC
	cjdz1pvn1cNDngfNi00A+CmybfQPHJ4L7DxZ9eVcXaZF3yG1mWYpfMXMGMLOEgj5HooKbMh3vYGIB
	2guCuMmm3wkSDmPghGADQrXSx1C32KQDU0mQrfQTMeWeU+Br7v5X+9D6a3mYU+6dTT7LVtgs5PJix
	y29z8ktlzhk3VANvdyLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t88m1-0000000Fbqv-3P5m;
	Tue, 05 Nov 2024 01:54:25 +0000
Received: from mail-m49194.qiye.163.com ([45.254.49.194])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t88ly-0000000FbpE-3Fdx
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Nov 2024 01:54:24 +0000
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1ca84001;
	Tue, 5 Nov 2024 09:54:16 +0800 (GMT+08:00)
Message-ID: <7dc6d164-ced4-4c9b-888f-7345e8e52298@rock-chips.com>
Date: Tue, 5 Nov 2024 09:54:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 7/7] scsi: ufs: rockchip: initial support for UFS
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
 <1730705521-23081-8-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKFrig236e5xTSeOHfNR5Z3840o6u_h7LnoAG2P8Ck348WQ@mail.gmail.com>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAPDyKFrig236e5xTSeOHfNR5Z3840o6u_h7LnoAG2P8Ck348WQ@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ05CTlYaQk4fSkMeTR9NHx9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a92fa07a0ad09cckunm1ca84001
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PzI6NAw6MjIiOD9WLUM3MUMU
	TzAKCStVSlVKTEhLTExKTU5DTU5OVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhISkk3Bg++
DKIM-Signature: a=rsa-sha256;
	b=G5vQ+5aYDCJavHWVQd2/JQy8pH4pXhGK7lfwRJCut5f7KgZIWvD9qns7F09wkJBKJ617KofBK4ie0DhT4tnet+0w6x1LKYxnXeGUE5jGpSvJXuPiR/Bu0ssR67I9WlqPXdQQCrV/ywqF/X2K5dDgkcTtfhhv6b8qbjSYLJNKsGk=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Fo3iov3n5PotHG4cT/K2Z9fmQxOkM6kWWia+7CBTW+w=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_175423_390449_C892D1E8 
X-CRM114-Status: GOOD (  19.54  )
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

CuWcqCAyMDI0LzExLzQgMTg6NTcsIFVsZiBIYW5zc29uIOWGmemBkzoKPiBPbiBNb24sIDQgTm92
IDIwMjQgYXQgMDg6MzQsIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90
ZToKPj4KPj4gUkszNTc2IFNvQyBjb250YWlucyBhIFVGUyBjb250cm9sbGVyLCBhZGQgaW5pdGlh
bCBzdXBwb3J0IGZvciBpdC4KPj4gVGhlIGZlYXR1cmVzIGFyZToKPj4gKDEpIHN1cHBvcnQgVUZT
IDIuMCBmZWF0dXJlcwo+PiAoMikgSGlnaCBzcGVlZCB1cCB0byBIUy1HMwo+PiAoMykgMlJYLTJU
WCBsYW5lcwo+PiAoNCkgYXV0byBIOCBlbnRyeSBhbmQgZXhpdAo+Pgo+PiBTb2Z0d2FyZSBsaW1p
dGF0aW9uOgo+PiAoMSkgSENFIHByb2NlZHVyZTogZW5hYmxlIGNvbnRyb2xsZXItPmVuYWJsZSBp
bnRyLT5kbWVfcmVzZXQtPmRtZV9lbmFibGUKPj4gKDIpIGRpc2FibGUgdW5pcHJvIHRpbWVvdXQg
dmFsdWVzIGJlZm9yZSBwb3dlciBtb2RlIGNoYW5nZQo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3
biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+Cj4+IENoYW5nZXMgaW4g
djQ6Cj4+IC0gZGVhbCB3aXRoIHBvd2VyIGRvbWFpbiBvZiBycG0gYW5kIHNwbSBzdWdnZXN0ZWQg
YnkgVWxmCj4+IC0gRml4IHR5cG8gYW5kIGRpc2FibGUgY2xrcyBpbiB1ZnNfcm9ja2NoaXBfcmVt
b3ZlCj4+IC0gcmVtb3ZlIGNsa19kaXNhYmxlX3VucHJlcGFyZShob3N0LT5yZWZfb3V0X2Nsaykg
ZnJvbQo+PiAgICB1ZnNfcm9ja2NoaXBfcmVtb3ZlCj4+Cj4gCj4gWy4uLl0KPiAKPj4gKyNpZmRl
ZiBDT05GSUdfUE0KPj4gK3N0YXRpYyBpbnQgdWZzX3JvY2tjaGlwX3J1bnRpbWVfc3VzcGVuZChz
dHJ1Y3QgZGV2aWNlICpkZXYpCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IHVmc19oYmEgKmhiYSA9
IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+PiArICAgICAgIHN0cnVjdCB1ZnNfcm9ja2NoaXBfaG9z
dCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+PiArCj4+ICsgICAgICAgY2xrX2Rp
c2FibGVfdW5wcmVwYXJlKGhvc3QtPnJlZl9vdXRfY2xrKTsKPj4gKwo+PiArICAgICAgIC8qIFNo
b3VsZG4ndCBwb3dlciBkb3duIGlmIHJwbV9sdmwgaXMgbGVzcyB0aGFuIGxldmVsIDUuICovCj4+
ICsgICAgICAgZGV2X3BtX2dlbnBkX3JwbV9hbHdheXNfb24oZGV2LCBoYmEtPnJwbV9sdmwgPCBV
RlNfUE1fTFZMXzUgPyB0cnVlIDogZmFsc2UpOwo+PiArCj4+ICsgICAgICAgcmV0dXJuIHVmc2hj
ZF9ydW50aW1lX3N1c3BlbmQoZGV2KTsKPj4gK30KPj4gKwo+PiArc3RhdGljIGludCB1ZnNfcm9j
a2NoaXBfcnVudGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+PiArewo+PiArICAgICAg
IHN0cnVjdCB1ZnNfaGJhICpoYmEgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPj4gKyAgICAgICBz
dHJ1Y3QgdWZzX3JvY2tjaGlwX2hvc3QgKmhvc3QgPSB1ZnNoY2RfZ2V0X3ZhcmlhbnQoaGJhKTsK
Pj4gKyAgICAgICBpbnQgZXJyOwo+PiArCj4+ICsgICAgICAgZXJyID0gY2xrX3ByZXBhcmVfZW5h
YmxlKGhvc3QtPnJlZl9vdXRfY2xrKTsKPj4gKyAgICAgICBpZiAoZXJyKSB7Cj4+ICsgICAgICAg
ICAgICAgICBkZXZfZXJyKGhiYS0+ZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSByZWYgb3V0IGNsb2Nr
ICVkXG4iLCBlcnIpOwo+PiArICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPj4gKyAgICAgICB9
Cj4+ICsKPj4gKyAgICAgICByZXNldF9jb250cm9sX2Fzc2VydChob3N0LT5yc3QpOwo+PiArICAg
ICAgIHVzbGVlcF9yYW5nZSgxLCAyKTsKPj4gKyAgICAgICByZXNldF9jb250cm9sX2RlYXNzZXJ0
KGhvc3QtPnJzdCk7Cj4+ICsKPj4gKyAgICAgICByZXR1cm4gdWZzaGNkX3J1bnRpbWVfcmVzdW1l
KGRldik7Cj4+ICt9Cj4+ICsjZW5kaWYKPj4gKwo+PiArI2lmZGVmIENPTkZJR19QTV9TTEVFUAo+
PiArc3RhdGljIGludCB1ZnNfcm9ja2NoaXBfc3lzdGVtX3N1c3BlbmQoc3RydWN0IGRldmljZSAq
ZGV2KQo+PiArewo+PiArICAgICAgIHN0cnVjdCB1ZnNfaGJhICpoYmEgPSBkZXZfZ2V0X2RydmRh
dGEoZGV2KTsKPj4gKwo+PiArICAgICAgIGlmIChoYmEtPnNwbV9sdmwgPCA1KQo+PiArICAgICAg
ICAgICAgICAgZGV2aWNlX3NldF93YWtldXBfcGF0aChkZXYpOwo+IAo+IFBsZWFzZSB1c2UgZGV2
aWNlX3NldF9hd2FrZV9wYXRoKCkgaW5zdGVhZC4KPiAKPiBJZGVhbGx5IGFsbCB1c2VycyBvZiBk
ZXZpY2Vfc2V0X3dha2V1cF9wYXRoKCkgc2hvdWxkIGNvbnZlcnQgaW50bwo+IGRldmljZV9zZXRf
YXdha2VfcGF0aCgpLCBpdCdzIGp1c3QgdGhhdCB3ZSBoYXZlbid0IGJlZW4gYWJsZSB0bwo+IGNv
bXBsZXRlIHRoZSBjb252ZXJzaW9uIHlldC4KCldpbGwgdXNlIGRldmljZV9zZXRfYXdha2VfcGF0
aCgpLgoKPiAKPj4gKyAgICAgICBlbHNlCj4+ICsgICAgICAgICAgICAgICBkZXZpY2VfY2xyX3dh
a2V1cF9wYXRoKGRldik7Cj4gCj4gVGhpcyBpc24ndCBuZWVkZWQuIFRoZSBmbGFnIGlzIGdldHRp
bmcgY2xlYXJlZCBpbiBkZXZpY2VfcHJlcGFyZSgpLgo+IAo+PiArCj4+ICsgICAgICAgcmV0dXJu
IHVmc2hjZF9zeXN0ZW1fc3VzcGVuZChkZXYpOwo+IAo+IERvbid0IHlvdSB3YW50IHRvIGRpc2Fi
bGUgdGhlIGNsb2NrIGR1cmluZyBzeXN0ZW0gc3VzcGVuZCB0b28/IElmIHRoZQo+IGRldmljZSBp
cyBydW50aW1lIHJlc3VtZWQgYXQgdGhpcyBwb2ludCwgdGhlIGNsb2NrIHdpbGwgYmUgbGVmdAo+
IGVuYWJsZWQsIG5vPwoKR29vZCBwb2ludC4gV2lsbCBmaXggaXQuCgo+IAo+PiArfQo+PiArI2Vu
ZGlmCj4+ICsKPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZGV2X3BtX29wcyB1ZnNfcm9ja2NoaXBf
cG1fb3BzID0gewo+PiArICAgICAgIFNFVF9TWVNURU1fU0xFRVBfUE1fT1BTKHVmc19yb2NrY2hp
cF9zeXN0ZW1fc3VzcGVuZCwgdWZzaGNkX3N5c3RlbV9yZXN1bWUpCj4+ICsgICAgICAgU0VUX1JV
TlRJTUVfUE1fT1BTKHVmc19yb2NrY2hpcF9ydW50aW1lX3N1c3BlbmQsIHVmc19yb2NrY2hpcF9y
dW50aW1lX3Jlc3VtZSwgTlVMTCkKPj4gKyAgICAgICAucHJlcGFyZSAgICAgICAgID0gdWZzaGNk
X3N1c3BlbmRfcHJlcGFyZSwKPj4gKyAgICAgICAuY29tcGxldGUgICAgICAgID0gdWZzaGNkX3Jl
c3VtZV9jb21wbGV0ZSwKPj4gK307Cj4+ICsKPiAKPiBbLi4uXQo+IAo+IEtpbmQgcmVnYXJkcwo+
IFVmZmUKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
