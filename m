Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93484D11185
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 06:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6CGBOZ/zM9mxNynExcMkXBiBdxHxcAbyGKjd3B0YaqQ=; b=VnM3BwgCubCeHN
	eodc4o0U1SYmyNWXECPf22kgLj/QWaDduxjERbCTrLIzBNzYEl+ZhWJLtN9lkyhHTgswrKPAEqtVZ
	kEpJcNah4vCu8C7dBvo0KCNbfJtwICljFEIjNpPUcvPeTZ4tM0/aqAWo/lgxTnVyfOlxeVafC9g/Z
	TG2zxJxYBD94SzXD9AQQPqS5ILj4C8j026Ct+71JC7BYOeHQkGtlzTTeeCA3GBTwg4fPmgtESEgp2
	terIVWdSh85f67XtrnNfT6bbwm0DDI4M8wVCogpCjSAKzRi2jBzUTSJlSmDr6dLBxhiYvEXcTGPnw
	qriX3BimhP7FtM+A0AAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7qjH-0000000Clxb-3p3W;
	Mon, 04 Nov 2024 06:38:23 +0000
Received: from mail-m1973170.qiye.163.com ([220.197.31.70])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7qjF-0000000Clx1-1NYu
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 06:38:23 +0000
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1b3e7143;
	Mon, 4 Nov 2024 14:38:16 +0800 (GMT+08:00)
Message-ID: <6f3f2d17-4ca2-44ad-b8df-72986d4b3174@rock-chips.com>
Date: Mon, 4 Nov 2024 14:38:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 5/5] scsi: ufs: rockchip: initial support for UFS
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
 <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKForpLcmkqruuTfD6kkJhp_4CKFABWRxFVYNskGL1tjO=w@mail.gmail.com>
 <3969bae0-eeb8-447a-86a5-dfdac0b136cd@rock-chips.com>
 <CAPDyKFo=GcHG2sGQBrXJ7VWyp59QOmbLCAvHQ3krUympEkid_A@mail.gmail.com>
 <98e0062c-aeb1-4bea-aa2b-4a99115c9da4@rock-chips.com>
 <20241103120223.abkwgej4svas4epr@thinkpad>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20241103120223.abkwgej4svas4epr@thinkpad>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhpCSlZMTR4dSkhKSx9PHh9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a92f5e546e209cckunm1b3e7143
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NBw6Sww4FTIuPDpLSBktPSI9
	MggwCRFVSlVKTEhLTEtJSUJDTktIVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5JTkg3Bg++
DKIM-Signature: a=rsa-sha256;
	b=DU3SuEdPcEpa+HXaAmtYzoHn1y+J+KZBKzvBxCyom7GSkWUk50hQMl+d4ECHq69Tsvw8Tw05iTs3jWFbioFxLIB83lYsghYWbulcmBPsfGMTdvyqfWaVycjbMornt1Ol5qaIUYlBAMETiWUExJp/Ye+9gkZKuMd6wfhjUqNQiJw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=coXjwW8ahmTl1/WoUAvxkkWEwwxJZx/4YBJoZyucdyI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241103_223821_915491_F11655A4 
X-CRM114-Status: GOOD (  28.27  )
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

5ZyoIDIwMjQvMTEvMyAyMDowMiwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIOWGmemBkzoKPiBPbiBG
cmksIE9jdCAxOCwgMjAyNCBhdCAwNToyMDowOFBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4+
IEhpIFVsZiwKPj4KPj4g5ZyoIDIwMjQvMTAvMTggMTc6MDcsIFVsZiBIYW5zc29uIOWGmemBkzoK
Pj4+IE9uIFRodSwgMTAgT2N0IDIwMjQgYXQgMDM6MjEsIFNoYXduIExpbiA8c2hhd24ubGluQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IEhpIFVsZgo+Pj4+Cj4+Pj4g5ZyoIDIwMjQv
MTAvOSAyMToxNSwgVWxmIEhhbnNzb24g5YaZ6YGTOgo+Pj4+PiBbLi4uXQo+Pj4+Pgo+Pj4+Pj4g
Kwo+Pj4+Pj4gK3N0YXRpYyBpbnQgdWZzX3JvY2tjaGlwX3J1bnRpbWVfc3VzcGVuZChzdHJ1Y3Qg
ZGV2aWNlICpkZXYpCj4+Pj4+PiArewo+Pj4+Pj4gKyAgICAgICBzdHJ1Y3QgdWZzX2hiYSAqaGJh
ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4+Pj4+PiArICAgICAgIHN0cnVjdCB1ZnNfcm9ja2No
aXBfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+Pj4+Pj4gKyAgICAgICBz
dHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdlbnBkID0gcGRfdG9fZ2VucGQoZGV2LT5wbV9kb21h
aW4pOwo+Pj4+Pgo+Pj4+PiBwZF90b19nZW5wZCgpIGlzbid0IHNhZmUgdG8gdXNlIGxpa2UgdGhp
cy4gSXQncyBzb2xlbHkgdG8gYmUgdXNlZCBieQo+Pj4+PiBnZW5wZCBwcm92aWRlciBkcml2ZXJz
Lgo+Pj4+Pgo+Pj4+Pj4gKwo+Pj4+Pj4gKyAgICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUoaG9z
dC0+cmVmX291dF9jbGspOwo+Pj4+Pj4gKwo+Pj4+Pj4gKyAgICAgICAvKgo+Pj4+Pj4gKyAgICAg
ICAgKiBTaG91bGRuJ3QgcG93ZXIgZG93biBpZiBycG1fbHZsIGlzIGxlc3MgdGhhbiBsZXZlbCA1
Lgo+Pj4+Pgo+Pj4+PiBDYW4geW91IGVsYWJvcmF0ZSBvbiB3aHkgd2UgbXVzdCBub3QgcG93ZXIt
b2ZmIHRoZSBwb3dlci1kb21haW4gd2hlbgo+Pj4+PiBsZXZlbCBpcyBsZXNzIHRoYW4gNT8KPj4+
Pj4KPj4+Pgo+Pj4+IEJlY2F1c2UgdWZzaGNkIGRyaXZlciBhc3N1bWUgdGhlIGNvbnRyb2xsZXIg
aXMgYWN0aXZlIGFuZCB0aGUgbGluayBpcyBvbgo+Pj4+IGlmIGxldmVsIGlzIGxlc3MgdGhhbiA1
LiBTbyB0aGUgZGVmYXVsdCByZXN1bWUgcG9saWN5IHdpbGwgbm90IHRyeSB0bwo+Pj4+IHJlY292
ZXIgdGhlIHJlZ2lzdGVycyB1bnRpbCB0aGUgZmlyc3QgZXJyb3IgaGFwcGVuZWQuIE90aGVyd2lz
ZSBpZiB0aGUKPj4+PiBsZXZlbCBpcyA+PTUsIGl0IGFzc3VtZXMgdGhlIGNvbnRyb2xsZXIgaXMg
b2ZmIGFuZCB0aGUgbGluayBpcyBkb3duLAo+Pj4+IHRoZW4gaXQgd2lsbCByZXN0b3JlIHRoZSBy
ZWdpc3RlcnMgYW5kIGxpbmsuCj4+Pj4KPj4+PiBBbmQgdGhlIGxldmVsIGlzIGNoYW5nZWFibGUg
dmlhIHN5c2ZzLgo+Pj4KPj4+IE9rYXksIHRoYW5rcyBmb3IgY2xhcmlmeWluZy4KPj4+Cj4+Pj4K
Pj4+Pj4gV2hhdCBoYXBwZW5zIGlmIHdlIHBvd2VyLW9mZiBhbnl3YXkgd2hlbiB0aGUgbGV2ZWwg
aXMgbGVzcyB0aGFuIDU/Cj4+Pj4+Cj4+Pj4+PiArICAgICAgICAqIFRoaXMgZmxhZyB3aWxsIGJl
IHBhc3NlZCBkb3duIHRvIHBsYXRmb3JtIHBvd2VyLWRvbWFpbiBkcml2ZXIKPj4+Pj4+ICsgICAg
ICAgICogd2hpY2ggaGFzIHRoZSBmaW5hbCBkZWNpc2lvbi4KPj4+Pj4+ICsgICAgICAgICovCj4+
Pj4+PiArICAgICAgIGlmIChoYmEtPnJwbV9sdmwgPCBVRlNfUE1fTFZMXzUpCj4+Pj4+PiArICAg
ICAgICAgICAgICAgZ2VucGQtPmZsYWdzIHw9IEdFTlBEX0ZMQUdfUlBNX0FMV0FZU19PTjsKPj4+
Pj4+ICsgICAgICAgZWxzZQo+Pj4+Pj4gKyAgICAgICAgICAgICAgIGdlbnBkLT5mbGFncyAmPSB+
R0VOUERfRkxBR19SUE1fQUxXQVlTX09OOwo+Pj4+Pgo+Pj4+PiBUaGUgZ2VucGQtPmZsYWdzIGlz
IG5vdCBzdXBwb3NlZCB0byBiZSBjaGFuZ2VkIGxpa2UgdGhpcyAtIGFuZAo+Pj4+PiBlc3BlY2lh
bGx5IG5vdCBmcm9tIGEgZ2VucGQgY29uc3VtZXIgZHJpdmVyLgo+Pj4+Pgo+Pj4+PiBJIGFtIHRy
eWluZyB0byB1bmRlcnN0YW5kIGEgYml0IG1vcmUgb2YgdGhlIHVzZSBjYXNlIGhlcmUuIExldCdz
IHNlZQo+Pj4+PiBpZiB0aGF0IGhlbHBzIG1lIHRvIHBvdGVudGlhbGx5IHN1Z2dlc3QgYW4gYWx0
ZXJuYXRpdmUgYXBwcm9hY2guCj4+Pj4+Cj4+Pj4KPj4+PiBJIHdhcyBub3QgZmFtaWxpYXIgd2l0
aCB0aGUgZ2VucGQgcGFydCwgc28gSSBoYXZlbid0IGNvbWUgdXAgd2l0aAo+Pj4+IGFub3RoZXIg
c29sdXRpb24uIEl0IHdvdWxkIGJlIGdyZWF0IGlmIHlvdSBjYW4gZ3VpZGUgbWUgdG8gdGhlIHJp
Z2h0Cj4+Pj4gd2F5Lgo+Pj4KPj4+IEkgaGF2ZSBiZWVuIHBsYXlpbmcgd2l0aCB0aGUgZXhpc3Rp
bmcgaW5mcmFzdHJ1Y3R1cmUgd2UgaGF2ZSBhdCBoYW5kCj4+PiB0byBzdXBwb3J0IHRoaXMsIGJ1
dCBJIG5lZWQgYSBmZXcgbW9yZSBkYXlzIHRvIGJlIGFibGUgdG8gcHJvcG9zZQo+Pj4gc29tZXRo
aW5nIGZvciB5b3UuCj4+Pgo+Pgo+PiBNdWNoIGFwcHJlY2lhdGUuCj4+Cj4+Pj4KPj4+Pj4+ICsK
Pj4+Pj4+ICsgICAgICAgcmV0dXJuIHVmc2hjZF9ydW50aW1lX3N1c3BlbmQoZGV2KTsKPj4+Pj4+
ICt9Cj4+Pj4+PiArCj4+Pj4+PiArc3RhdGljIGludCB1ZnNfcm9ja2NoaXBfcnVudGltZV9yZXN1
bWUoc3RydWN0IGRldmljZSAqZGV2KQo+Pj4+Pj4gK3sKPj4+Pj4+ICsgICAgICAgc3RydWN0IHVm
c19oYmEgKmhiYSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+Pj4+Pj4gKyAgICAgICBzdHJ1Y3Qg
dWZzX3JvY2tjaGlwX2hvc3QgKmhvc3QgPSB1ZnNoY2RfZ2V0X3ZhcmlhbnQoaGJhKTsKPj4+Pj4+
ICsgICAgICAgaW50IGVycjsKPj4+Pj4+ICsKPj4+Pj4+ICsgICAgICAgZXJyID0gY2xrX3ByZXBh
cmVfZW5hYmxlKGhvc3QtPnJlZl9vdXRfY2xrKTsKPj4+Pj4+ICsgICAgICAgaWYgKGVycikgewo+
Pj4+Pj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoaGJhLT5kZXYsICJmYWlsZWQgdG8gZW5hYmxl
IHJlZiBvdXQgY2xvY2sgJWRcbiIsIGVycik7Cj4+Pj4+PiArICAgICAgICAgICAgICAgcmV0dXJu
IGVycjsKPj4+Pj4+ICsgICAgICAgfQo+Pj4+Pj4gKwo+Pj4+Pj4gKyAgICAgICByZXNldF9jb250
cm9sX2Fzc2VydChob3N0LT5yc3QpOwo+Pj4+Pj4gKyAgICAgICB1c2xlZXBfcmFuZ2UoMSwgMik7
Cj4+Pj4+PiArICAgICAgIHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoaG9zdC0+cnN0KTsKPj4+Pj4+
ICsKPj4+Pj4+ICsgICAgICAgcmV0dXJuIHVmc2hjZF9ydW50aW1lX3Jlc3VtZShkZXYpOwo+Pj4+
Pj4gK30KPj4+Pj4+ICsKPj4+Pj4+ICtzdGF0aWMgaW50IHVmc19yb2NrY2hpcF9zeXN0ZW1fc3Vz
cGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+Pj4+PiArewo+Pj4+Pj4gKyAgICAgICBzdHJ1Y3Qg
dWZzX2hiYSAqaGJhID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4+Pj4+PiArICAgICAgIHN0cnVj
dCB1ZnNfcm9ja2NoaXBfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+Pj4+
Pj4gKwo+Pj4+Pj4gKyAgICAgICAvKiBQYXNzIGRvd24gZGVzaXJlZCBzcG1fbHZsIHRvIEZpcm13
YXJlICovCj4+Pj4+PiArICAgICAgIGFybV9zbWNjY19zbWMoUk9DS0NISVBfU0lQX1NVU1BFTkRf
TU9ERSwgUk9DS0NISVBfU0xFRVBfUERfQ09ORklHLAo+Pj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgaG9zdC0+cGRfaWQsIGhiYS0+c3BtX2x2bCA8IDUgPyAxIDogMCwgMCwgMCwgMCwgMCwg
TlVMTCk7Cj4+Pj4+Cj4+Pj4+IENhbiB5b3UgcGxlYXNlIGVsYWJvcmF0ZSBvbiB3aGF0IGdvZXMg
b24gaGVyZT8gSXMgdGhpcyB0dXJuaW5nIG9mZiB0aGUKPj4+Pj4gcG93ZXItZG9tYWluIHRoYXQg
dGhlIGRldiBpcyBhdHRhY2hlZCB0byAtIG9yIHdoYXQgaXMgYWN0dWFsbHkKPj4+Pj4gaGFwcGVu
aW5nPwo+Pj4+Pgo+Pj4+Cj4+Pj4gVGhpcyBzbWMgY2FsbCBpcyB0cnlpbmcgdG8gYXNrIGZpcm13
YXJlIG5vdCB0byB0dXJuIG9mZiB0aGUgcG93ZXItZG9taWFuCj4+Pj4gdGhhdCB0aGUgVUZTIGlz
IGF0dGFjaGVkIHRvIGFuZCBhbHNvIG5vdCB0byB0dXJuIG9mZiB0aGUgcG93ZXIgb2YgVUZTCj4+
Pj4gY29ubnRyb2xsZXIuCj4+Pgo+Pj4gT2theSwgdGhhbmtzIGZvciBjbGFyaWZ5aW5nIQo+Pj4K
Pj4+IEEgZm9sbG93IHVwIHF1ZXN0aW9uLCBkb24ndCB5b3UgbmVlZCB0byBtYWtlIGEgY29ycmVz
cG9uZGluZyBzbWMgY2FsbAo+Pj4gdG8gaW5mb3JtIHRoZSBGVyB0aGF0IGl0J3Mgb2theSB0byB0
dXJuIG9mZiB0aGUgcG93ZXItZG9tYWluIGF0IHNvbWUKPj4+IHBvaW50Pwo+Pj4KPj4KPj4gWWVz
LiBFYWNoIHRpbWUgZW50ZXJpbmcgc2xlZXAsIHdlIHRlYWNoIEZXIGlmIGl0IG5lZWQgdG8gdHVy
biBvZmYgb3Iga2VlcAo+PiBwb3dlci1kb21haW4sIGZvciBpbnN0YW5jZSAiaGJhLT5zcG1fbHZs
IDwgNSA/IDEgOiAwIiAsIDAgbWVhbnMKPj4gb2ZmIGFuZCAxIG1lYW5zIG9uLgo+Pgo+IAo+IFdl
IGhhZCBhIHJlcXVpcmVtZW50IHRvIG5vdGlmeSB0aGUgZ2VucGQgcHJvdmlkZXIgZnJvbSBjb25z
dW1lciB0byBub3QgdHVybiBvZmYKPiB0aGUgcG93ZXIgZG9tYWluIGR1cmluZyBzeXN0ZW0gc3Vz
cGVuZC4gU28gVWxmIGNhbWUgdXAgd2l0aCBhbiBBUEkgZm9yCj4gY29uc3VtZXJzLCBkZXZpY2Vf
c2V0X3dha2V1cF9wYXRoKCkgc2V0dGluZyB0aGUgJ2Rldi0+cG93ZXIud2FrZXVwX3BhdGgnIHdo
aWNoCj4gd2lsbCBiZSBob25vcmVkIGJ5IHRoZSBnZW5wZCBjb3JlLiBXaWxsIHRoYXQgd29yayBm
b3IgeW91PwoKWWVzLCB0aGF0IHdvcmtzLiBBbmQgd2UgbWF5IG5lZWQgYSBzeW1tZXRyaWNhbCBj
YWxsLCBmb3IgaW5zdGFuY2UsCmRldmljZV9jbHJfd2FrZXVwX3BhdGgoKSB0byBhbGxvdyBnZW5w
ZCBwcm92aWRlciB0byB0dXJuIG9mZiB0aGUgcG93ZXIKZG9tYWluIGFzIHdlbGwuCgo+IAo+IFBT
OiBUaGUgQVBJIG5hbWluZyBzdWdnZXN0cyB0aGF0IHRoZSBkZXZpY2Ugd2lsbCBiZSB1c2VkIGlu
IHdha2V1cCBwYXRoLCB3aGljaAo+IG1heSBub3QgYmUgdHJ1ZSBoZXJlIGJ1dCB0aGUgZW5kIHJl
c3VsdCB3aWxsIGJlIHRoZSBzYW1lLgo+IAo+IC0gTWFuaQo+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
