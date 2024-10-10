Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71C3CCED611
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 01:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ekgomR8lrvaawvn5rD5dfnNfXfX+figWZ2xx1xs8x4=; b=VgURNUg8Jb5Sxz
	xj/Be+aCFbE9lI58bgXniDKzR0+L7kRGao2j2qkpB0gcIL8UlXIIhOZ5PU/l4VIW97RauKXOJ4vgP
	/YCRqorG6QhxW0Q6NkZsG3Y5EK+hoguLlaY3mIXOiiv77U1xYoP9oHGYJ3IVVS/tvmeTPS8Q1I6ui
	C2u2OEnoW5eEtmqTflfadTzkerT0Zm5v7pqnlCUppX+rG646ijJiOkOZFbY6+BhZiYjP4S7MpAamA
	nVpBnCeHu4ba0PkWR6w++lhLPbSrbUZ4pQaT/+7ZQxfcvYVBR7WsI9c7G5HEmnL8AxzXKl1cGCInK
	Mhumqencj8J/jmlug1rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syhs7-0000000BCcS-3cvD;
	Thu, 10 Oct 2024 01:21:43 +0000
Received: from mail-m24107.xmail.ntesmail.com ([45.195.24.107])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syhs4-0000000BCaz-3ZYL
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 01:21:43 +0000
DKIM-Signature: a=rsa-sha256;
	b=JUEgjjWsw8WkgYb+mcECVsI9IkmmXko4RB2udUoVTr19YR+jrI2EiCkwocKdrB85u2ooGalZr4zn1fVqmOtcGX/SUp90/dS2xkk0galBmo+k5nbZW6RqSLhusQYNH/rZ1r4xyCOArDJMFmu40t95UgPPWeBGiwNqZlyEss0tugs=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=aKBu267PcSvUBWDRFu4xvYcquBPnRNKWPIvfJjrnkG4=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 114E95203C3;
	Thu, 10 Oct 2024 09:21:08 +0800 (CST)
Message-ID: <3969bae0-eeb8-447a-86a5-dfdac0b136cd@rock-chips.com>
Date: Thu, 10 Oct 2024 09:21:08 +0800
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
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAPDyKForpLcmkqruuTfD6kkJhp_4CKFABWRxFVYNskGL1tjO=w@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkJCTFYdSUNMTh5LS0lPTR9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a927403f43303afkunm114e95203c3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MT46Shw6SjIpFA9LHw89NxcJ
	Pz9PCgtVSlVKTElDTklISU1CTExNVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU1CTEg3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_182141_444191_D70ADEAA 
X-CRM114-Status: GOOD (  28.76  )
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

SGkgVWxmCgrlnKggMjAyNC8xMC85IDIxOjE1LCBVbGYgSGFuc3NvbiDlhpnpgZM6Cj4gWy4uLl0K
PiAKPj4gKwo+PiArc3RhdGljIGludCB1ZnNfcm9ja2NoaXBfcnVudGltZV9zdXNwZW5kKHN0cnVj
dCBkZXZpY2UgKmRldikKPj4gK3sKPj4gKyAgICAgICBzdHJ1Y3QgdWZzX2hiYSAqaGJhID0gZGV2
X2dldF9kcnZkYXRhKGRldik7Cj4+ICsgICAgICAgc3RydWN0IHVmc19yb2NrY2hpcF9ob3N0ICpo
b3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4+ICsgICAgICAgc3RydWN0IGdlbmVyaWNf
cG1fZG9tYWluICpnZW5wZCA9IHBkX3RvX2dlbnBkKGRldi0+cG1fZG9tYWluKTsKPiAKPiBwZF90
b19nZW5wZCgpIGlzbid0IHNhZmUgdG8gdXNlIGxpa2UgdGhpcy4gSXQncyBzb2xlbHkgdG8gYmUg
dXNlZCBieQo+IGdlbnBkIHByb3ZpZGVyIGRyaXZlcnMuCj4gCj4+ICsKPj4gKyAgICAgICBjbGtf
ZGlzYWJsZV91bnByZXBhcmUoaG9zdC0+cmVmX291dF9jbGspOwo+PiArCj4+ICsgICAgICAgLyoK
Pj4gKyAgICAgICAgKiBTaG91bGRuJ3QgcG93ZXIgZG93biBpZiBycG1fbHZsIGlzIGxlc3MgdGhh
biBsZXZlbCA1Lgo+IAo+IENhbiB5b3UgZWxhYm9yYXRlIG9uIHdoeSB3ZSBtdXN0IG5vdCBwb3dl
ci1vZmYgdGhlIHBvd2VyLWRvbWFpbiB3aGVuCj4gbGV2ZWwgaXMgbGVzcyB0aGFuIDU/Cj4gCgpC
ZWNhdXNlIHVmc2hjZCBkcml2ZXIgYXNzdW1lIHRoZSBjb250cm9sbGVyIGlzIGFjdGl2ZSBhbmQg
dGhlIGxpbmsgaXMgb24KaWYgbGV2ZWwgaXMgbGVzcyB0aGFuIDUuIFNvIHRoZSBkZWZhdWx0IHJl
c3VtZSBwb2xpY3kgd2lsbCBub3QgdHJ5IHRvCnJlY292ZXIgdGhlIHJlZ2lzdGVycyB1bnRpbCB0
aGUgZmlyc3QgZXJyb3IgaGFwcGVuZWQuIE90aGVyd2lzZSBpZiB0aGUKbGV2ZWwgaXMgPj01LCBp
dCBhc3N1bWVzIHRoZSBjb250cm9sbGVyIGlzIG9mZiBhbmQgdGhlIGxpbmsgaXMgZG93biwKdGhl
biBpdCB3aWxsIHJlc3RvcmUgdGhlIHJlZ2lzdGVycyBhbmQgbGluay4KCkFuZCB0aGUgbGV2ZWwg
aXMgY2hhbmdlYWJsZSB2aWEgc3lzZnMuCgo+IFdoYXQgaGFwcGVucyBpZiB3ZSBwb3dlci1vZmYg
YW55d2F5IHdoZW4gdGhlIGxldmVsIGlzIGxlc3MgdGhhbiA1Pwo+IAo+PiArICAgICAgICAqIFRo
aXMgZmxhZyB3aWxsIGJlIHBhc3NlZCBkb3duIHRvIHBsYXRmb3JtIHBvd2VyLWRvbWFpbiBkcml2
ZXIKPj4gKyAgICAgICAgKiB3aGljaCBoYXMgdGhlIGZpbmFsIGRlY2lzaW9uLgo+PiArICAgICAg
ICAqLwo+PiArICAgICAgIGlmIChoYmEtPnJwbV9sdmwgPCBVRlNfUE1fTFZMXzUpCj4+ICsgICAg
ICAgICAgICAgICBnZW5wZC0+ZmxhZ3MgfD0gR0VOUERfRkxBR19SUE1fQUxXQVlTX09OOwo+PiAr
ICAgICAgIGVsc2UKPj4gKyAgICAgICAgICAgICAgIGdlbnBkLT5mbGFncyAmPSB+R0VOUERfRkxB
R19SUE1fQUxXQVlTX09OOwo+IAo+IFRoZSBnZW5wZC0+ZmxhZ3MgaXMgbm90IHN1cHBvc2VkIHRv
IGJlIGNoYW5nZWQgbGlrZSB0aGlzIC0gYW5kCj4gZXNwZWNpYWxseSBub3QgZnJvbSBhIGdlbnBk
IGNvbnN1bWVyIGRyaXZlci4KPiAKPiBJIGFtIHRyeWluZyB0byB1bmRlcnN0YW5kIGEgYml0IG1v
cmUgb2YgdGhlIHVzZSBjYXNlIGhlcmUuIExldCdzIHNlZQo+IGlmIHRoYXQgaGVscHMgbWUgdG8g
cG90ZW50aWFsbHkgc3VnZ2VzdCBhbiBhbHRlcm5hdGl2ZSBhcHByb2FjaC4KPiAKCkkgd2FzIG5v
dCBmYW1pbGlhciB3aXRoIHRoZSBnZW5wZCBwYXJ0LCBzbyBJIGhhdmVuJ3QgY29tZSB1cCB3aXRo
IAphbm90aGVyIHNvbHV0aW9uLiBJdCB3b3VsZCBiZSBncmVhdCBpZiB5b3UgY2FuIGd1aWRlIG1l
IHRvIHRoZSByaWdodAp3YXkuCgo+PiArCj4+ICsgICAgICAgcmV0dXJuIHVmc2hjZF9ydW50aW1l
X3N1c3BlbmQoZGV2KTsKPj4gK30KPj4gKwo+PiArc3RhdGljIGludCB1ZnNfcm9ja2NoaXBfcnVu
dGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+PiArewo+PiArICAgICAgIHN0cnVjdCB1
ZnNfaGJhICpoYmEgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPj4gKyAgICAgICBzdHJ1Y3QgdWZz
X3JvY2tjaGlwX2hvc3QgKmhvc3QgPSB1ZnNoY2RfZ2V0X3ZhcmlhbnQoaGJhKTsKPj4gKyAgICAg
ICBpbnQgZXJyOwo+PiArCj4+ICsgICAgICAgZXJyID0gY2xrX3ByZXBhcmVfZW5hYmxlKGhvc3Qt
PnJlZl9vdXRfY2xrKTsKPj4gKyAgICAgICBpZiAoZXJyKSB7Cj4+ICsgICAgICAgICAgICAgICBk
ZXZfZXJyKGhiYS0+ZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSByZWYgb3V0IGNsb2NrICVkXG4iLCBl
cnIpOwo+PiArICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPj4gKyAgICAgICB9Cj4+ICsKPj4g
KyAgICAgICByZXNldF9jb250cm9sX2Fzc2VydChob3N0LT5yc3QpOwo+PiArICAgICAgIHVzbGVl
cF9yYW5nZSgxLCAyKTsKPj4gKyAgICAgICByZXNldF9jb250cm9sX2RlYXNzZXJ0KGhvc3QtPnJz
dCk7Cj4+ICsKPj4gKyAgICAgICByZXR1cm4gdWZzaGNkX3J1bnRpbWVfcmVzdW1lKGRldik7Cj4+
ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbnQgdWZzX3JvY2tjaGlwX3N5c3RlbV9zdXNwZW5kKHN0cnVj
dCBkZXZpY2UgKmRldikKPj4gK3sKPj4gKyAgICAgICBzdHJ1Y3QgdWZzX2hiYSAqaGJhID0gZGV2
X2dldF9kcnZkYXRhKGRldik7Cj4+ICsgICAgICAgc3RydWN0IHVmc19yb2NrY2hpcF9ob3N0ICpo
b3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4+ICsKPj4gKyAgICAgICAvKiBQYXNzIGRv
d24gZGVzaXJlZCBzcG1fbHZsIHRvIEZpcm13YXJlICovCj4+ICsgICAgICAgYXJtX3NtY2NjX3Nt
YyhST0NLQ0hJUF9TSVBfU1VTUEVORF9NT0RFLCBST0NLQ0hJUF9TTEVFUF9QRF9DT05GSUcsCj4+
ICsgICAgICAgICAgICAgICAgICAgICAgIGhvc3QtPnBkX2lkLCBoYmEtPnNwbV9sdmwgPCA1ID8g
MSA6IDAsIDAsIDAsIDAsIDAsIE5VTEwpOwo+IAo+IENhbiB5b3UgcGxlYXNlIGVsYWJvcmF0ZSBv
biB3aGF0IGdvZXMgb24gaGVyZT8gSXMgdGhpcyB0dXJuaW5nIG9mZiB0aGUKPiBwb3dlci1kb21h
aW4gdGhhdCB0aGUgZGV2IGlzIGF0dGFjaGVkIHRvIC0gb3Igd2hhdCBpcyBhY3R1YWxseQo+IGhh
cHBlbmluZz8KPiAKClRoaXMgc21jIGNhbGwgaXMgdHJ5aW5nIHRvIGFzayBmaXJtd2FyZSBub3Qg
dG8gdHVybiBvZmYgdGhlIHBvd2VyLWRvbWlhbgp0aGF0IHRoZSBVRlMgaXMgYXR0YWNoZWQgdG8g
YW5kIGFsc28gbm90IHRvIHR1cm4gb2ZmIHRoZSBwb3dlciBvZiBVRlMKY29ubnRyb2xsZXIuCgpQ
ZXIgeW91ciBjb21tZW50IGF0IHBhdGNoIDQsIHNob3VsZCBJIHVzZSBHRU5QRF9GTEFHX0FMV0FZ
U19PTiArCmFybV9zbWNjY19zbWMgaGVyZSBpbiBzeXN0ZW0gc3VzcGVuZD8KCj4+ICsKPj4gKyAg
ICAgICByZXR1cm4gdWZzaGNkX3N5c3RlbV9zdXNwZW5kKGRldik7Cj4+ICt9Cj4+ICsKPj4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgZGV2X3BtX29wcyB1ZnNfcm9ja2NoaXBfcG1fb3BzID0gewo+PiAr
ICAgICAgIFNFVF9TWVNURU1fU0xFRVBfUE1fT1BTKHVmc19yb2NrY2hpcF9zeXN0ZW1fc3VzcGVu
ZCwgdWZzaGNkX3N5c3RlbV9yZXN1bWUpCj4+ICsgICAgICAgU0VUX1JVTlRJTUVfUE1fT1BTKHVm
c19yb2NrY2hpcF9ydW50aW1lX3N1c3BlbmQsIHVmc19yb2NrY2hpcF9ydW50aW1lX3Jlc3VtZSwg
TlVMTCkKPj4gKyAgICAgICAucHJlcGFyZSAgICAgICAgID0gdWZzaGNkX3N1c3BlbmRfcHJlcGFy
ZSwKPj4gKyAgICAgICAuY29tcGxldGUgICAgICAgID0gdWZzaGNkX3Jlc3VtZV9jb21wbGV0ZSwK
Pj4gK307Cj4+ICsKPj4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHVmc19yb2NrY2hp
cF9wbHRmb3JtID0gewo+PiArICAgICAgIC5wcm9iZSA9IHVmc19yb2NrY2hpcF9wcm9iZSwKPj4g
KyAgICAgICAucmVtb3ZlID0gdWZzX3JvY2tjaGlwX3JlbW92ZSwKPj4gKyAgICAgICAuZHJpdmVy
ID0gewo+PiArICAgICAgICAgICAgICAgLm5hbWUgPSAidWZzaGNkLXJvY2tjaGlwIiwKPj4gKyAg
ICAgICAgICAgICAgIC5wbSA9ICZ1ZnNfcm9ja2NoaXBfcG1fb3BzLAo+PiArICAgICAgICAgICAg
ICAgLm9mX21hdGNoX3RhYmxlID0gdWZzX3JvY2tjaGlwX29mX21hdGNoLAo+PiArICAgICAgIH0s
Cj4+ICt9Owo+PiArbW9kdWxlX3BsYXRmb3JtX2RyaXZlcih1ZnNfcm9ja2NoaXBfcGx0Zm9ybSk7
Cj4+ICsKPiAKPiBbLi4uXQo+IAo+IEtpbmQgcmVnYXJkcwo+IFVmZmUKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
