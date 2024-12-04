Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71C6DE7716B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Dec 2024 01:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0rw9z9CXBvJipjsBP4KR0YVwAU2hapH36vy+/iOp0NQ=; b=aodO2KXB6101EEfNKfptFZgEZ/
	evxPRmBUUWj0UBxj8588tPPW0/iJ+yNC1JLtXBA7aaNYzKk29Ti8tTFhEKMUIm3k1quw8qfE8sQYa
	v93GvujZK8Ef/9SYtMcjy61OIQ/jInvWSTzLgyTCbKbE1RF4GT8MXdhVomjF9R/ZNjZsUofKmGgW7
	VlpXmtFknA2fg5/EdqK6FxgQoRRN8Z9k7kwKv+bEYL1muKARGNSk/DInqLqc+a0WL2Xu4Wqyd75WT
	K/fYXstW+PERqameeZNq8wG2x5HtoKHZVCDdLzvhWOjNFkxZQ7sqGnoDSP1yO6y+0wRAQQliloyEM
	+iezzfsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIeID-0000000BCTa-0chu;
	Wed, 04 Dec 2024 01:35:05 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIeI9-0000000BCQH-378W
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Dec 2024 01:35:03 +0000
X-QQ-mid: bizesmtpip4t1733276037tc2o1xi
X-QQ-Originating-IP: mIAJ5jGNqHI9WzkY9PnTP5KVZOet4dlgFiUSDEWWg3M=
Received: from [IPV6:240f:10b:7440:1:c275:7079 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 04 Dec 2024 09:33:52 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 798759568462877452
Message-ID: <1E761945EF83B097+dd2dae29-235b-4741-9c4e-dad22b2cf93b@radxa.com>
Date: Wed, 4 Dec 2024 10:33:52 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix USB 3.0 bottom port for
 Radxa ROCK 5B
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
References: <20241130014043.12942-1-naoki@radxa.com>
 <20241130014043.12942-2-naoki@radxa.com> <2724169.KRxA6XjA2N@diego>
 <6o2nwuxemfrdnq74tsag3s5cbdeopk5cgoa2iqg3vpkh64xdvs@gpzehjwjioph>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <6o2nwuxemfrdnq74tsag3s5cbdeopk5cgoa2iqg3vpkh64xdvs@gpzehjwjioph>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: M5aCtjAndv5OPCpRrOk1cvafl3twhSQo+34o22+yEmUDWTo9WGMYAeiu
	wPSS326raEWjPHlrwrtLcRMqEbtYSL6vDCCSFWb02KLbWtIH3Qx85pbCJ+m+IVRpGsJonGH
	T3D7glpjl/Bm/I9TuSXxECv3c0O+HIGwRz28NaEtrIGYpZNyyROdgGeWt4LgQK8eNryWPRq
	+qpR+pEvvMXWTf+YrsKrzSOsXw10Axw4kuX72b8uq0rrOpUf1wYi71C4wYEiRdRrzvtnOaj
	zR5Q2/W2SqFYQYIGm8z4KPzqEPu29cHZL5pYKQ6aFspvKbX9vE3uFhTK8Vn1yh4IarYGwh9
	I7myw79rBa0hNPA6qERGKgIVAYn+vJKddX5lpXinRh0E1J8m3ecExX8BkPMssxgEG0dLb4k
	nz5tk2w9K/5u+vBHEQeqWupwXTx5obcRvGbJAcUSQbVBw1VFt49mXrA9eVyyCb0un625Vri
	BdMrYFbuov/LSwCqU26qYu4T/iiU0yZ2C7kIWS7hcNA17GJ+bMKB/hXkY5Z6bP8DE6muhmZ
	CFiH35JC2UAEEkki6bd/BVw7l60yXnqw38Wg63AWxBvPG3bVgDcXKOspFHqTSmgrmrHs2CA
	2t3A1P8AZeovLXyaVq94Bq/135Pl1DfCL02F/sw3LhXr4BYwiFF+7AxnMIaF66W50VOMbUv
	P+xdO5mCWA6TCFKXMzZ8IcKe0aYas2JPlZjTMTv1v2l4uN8DNIYooBvhnzBCLDpILewdcFM
	ze8euvT5QKKMusol1mVfXJYDRJYR29Uc+0P0g0ftHxKIV6OM+YxxBbVXwbdOWf8cfrDqwDp
	CO/ofYEVTd9esvRMV9bMqdJETQMWMJHTQ6JDgj5b+OjyWKWjFxpeVqPD35Ndr2/YtfqKKqL
	Vlibj6ytpVfjflicBezTFEGZkdJ+kZW1s5+DuRL5YVK9gjcTOQHkaA==
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_173502_330667_8D11CD3C 
X-CRM114-Status: GOOD (  18.07  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, alchark@gmail.com, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiAxMi80LzI0IDAyOjAxLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPiBIaSwKPiAK
PiBPbiBUdWUsIERlYyAwMywgMjAyNCBhdCAwNToxOTo1NVBNICswMTAwLCBIZWlrbyBTdMO8Ym5l
ciB3cm90ZToKPj4gQW0gU2Ftc3RhZywgMzAuIE5vdmVtYmVyIDIwMjQsIDAyOjQwOjQzIENFVCBz
Y2hyaWViIEZVS0FVTUkgTmFva2k6Cj4+PiBhZGQgcm9ja2NoaXAsZHAtbGFuZS1tdXggdG8gdXNi
ZHBfcGh5MSB0byBtYWtlIGl0IHdvcmsgcHJvcGVybHkuCj4+Cj4+IE1ha2UgaXQgd29yayBwcm9w
ZXJseSBpcyBub3QgYW4gaWRlYWwgY29tbWl0IGRlc2NyaXB0aW9uLgo+Pgo+PiBJIGd1ZXNzIHRo
ZSBsYW5lIGFzc2lnbm1lbnQgZm9yIHRoZSBkcCBwb3J0IHNob3VsZCBiZSBkaXNjb3ZlcmFibGUK
Pj4gaW4gdGhlIGRldmljZSBzY2hlbWF0aWNzLCBzbyB0aGUgY29tbWl0IGRlc2NyaXB0aW9uIHNo
b3VsZCBleHBsYWluCj4+IGFzIG11Y2guCj4gCj4gUm9jayA1QiBkb2VzIG5vdCBoYXZlIFNTUlgy
UC9TU1JYMk4gYW5kIFNTVFgyUC9TU1RYMk4gY29ubmVjdGVkIHRvCj4gYW55dGhpbmcsIHNvIHRo
aXMgZGVzY3JpcHRpb24gaXMganVzdCB3cm9uZy4gVGhlIG90aGVyIGxhbmVzIGFyZQo+IGNvbm5l
Y3RlZCB0byBhIFVTQi1BIHBvcnQgYW5kIHRodXMgbm8gVVNCLUMgY29udHJvbGxlciBpcyBpbnZv
bHZlZCwKPiB3aGljaCB0YWtlcyBjYXJlIG9mIGFueSBtdXhpbmcuIE5vdCBzcGVjaWZ5aW5nIGFu
eQo+IHJvY2tjaGlwLGRwLWxhbmUtbXV4IGNvbmZpZ3VyYXRpb24gc2V0cyBtb2RlIHRvIFVEUEhZ
X01PREVfVVNCLAo+IHdoaWNoIGlzIGNvcnJlY3QuCj4gCj4gTmFva2ksIGlmIHlvdSBzZWUgYW55
IHByb2JsZW1zLCBpdCBpcyBtb3N0IGxpa2VseSBhIGJ1ZyBpbiB0aGUgVVNCRFAKPiBQSFkgb3Ig
RFdDMyBkcml2ZXIuCgpzb3JyeSwgSSBzaG91bGQgd3JpdGUgZXJyb3IgbWVzc2FnZS4gSSB1bmRl
cnN0YW5kIGl0LCBwbGVhc2UgaWdub3JlIG15IApwYXRjaC4KCkJlc3QgcmVnYXJkcywKCi0tCkZV
S0FVTUkgTmFva2kKUmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4KCj4gR3JlZXRp
bmdzLAo+IAo+IC0tIFNlYmFzdGlhbgo+IAo+Pgo+Pj4gdGVzdGVkIHdpdGggRUxFQ09NIFUzSEMt
QTQyNFAxMEJLWzFdOgo+Pj4KPj4+ICQgbHN1c2IgLXQKPj4+IC86ICBCdXMgMDAxLlBvcnQgMDAx
OiBEZXYgMDAxLCBDbGFzcz1yb290X2h1YiwgRHJpdmVyPWVoY2ktcGxhdGZvcm0vMXAsIDQ4ME0K
Pj4+ICAgICAgfF9fIFBvcnQgMDAxOiBEZXYgMDAyLCBJZiAwLCBDbGFzcz1IdWIsIERyaXZlcj1o
dWIvNHAsIDQ4ME0KPj4+ICAgICAgICAgIHxfXyBQb3J0IDAwMzogRGV2IDAwMywgSWYgMCwgQ2xh
c3M9V2lyZWxlc3MsIERyaXZlcj1idHVzYiwgMTJNCj4+PiAgICAgICAgICB8X18gUG9ydCAwMDM6
IERldiAwMDMsIElmIDEsIENsYXNzPVdpcmVsZXNzLCBEcml2ZXI9YnR1c2IsIDEyTQo+Pj4gLzog
IEJ1cyAwMDIuUG9ydCAwMDE6IERldiAwMDEsIENsYXNzPXJvb3RfaHViLCBEcml2ZXI9b2hjaS1w
bGF0Zm9ybS8xcCwgMTJNCj4+PiAvOiAgQnVzIDAwMy5Qb3J0IDAwMTogRGV2IDAwMSwgQ2xhc3M9
cm9vdF9odWIsIERyaXZlcj1laGNpLXBsYXRmb3JtLzFwLCA0ODBNCj4+PiAvOiAgQnVzIDAwNC5Q
b3J0IDAwMTogRGV2IDAwMSwgQ2xhc3M9cm9vdF9odWIsIERyaXZlcj14aGNpLWhjZC8xcCwgNDgw
TQo+Pj4gLzogIEJ1cyAwMDUuUG9ydCAwMDE6IERldiAwMDEsIENsYXNzPXJvb3RfaHViLCBEcml2
ZXI9eGhjaS1oY2QvMXAsIDUwMDBNCj4+PiAgICAgIHxfXyBQb3J0IDAwMTogRGV2IDAwMiwgSWYg
MCwgQ2xhc3M9TWFzcyBTdG9yYWdlLCBEcml2ZXI9dXNiLXN0b3JhZ2UsIDUwMDBNCj4+PiAvOiAg
QnVzIDAwNi5Qb3J0IDAwMTogRGV2IDAwMSwgQ2xhc3M9cm9vdF9odWIsIERyaXZlcj14aGNpLWhj
ZC8xcCwgNDgwTQo+Pj4gICAgICB8X18gUG9ydCAwMDE6IERldiAwMDIsIElmIDAsIENsYXNzPUh1
YiwgRHJpdmVyPWh1Yi81cCwgNDgwTQo+Pj4gICAgICAgICAgfF9fIFBvcnQgMDA1OiBEZXYgMDAz
LCBJZiAwLCBDbGFzcz1CaWxsYm9hcmQsIERyaXZlcj1bbm9uZV0sIDQ4ME0KPj4+IC86ICBCdXMg
MDA3LlBvcnQgMDAxOiBEZXYgMDAxLCBDbGFzcz1yb290X2h1YiwgRHJpdmVyPXhoY2ktaGNkLzFw
LCA1MDAwTQo+Pj4gICAgICB8X18gUG9ydCAwMDE6IERldiAwMDIsIElmIDAsIENsYXNzPUh1Yiwg
RHJpdmVyPWh1Yi80cCwgNTAwME0KPj4+ICAgICAgICAgIHxfXyBQb3J0IDAwNDogRGV2IDAwMywg
SWYgMCwgQ2xhc3M9TWFzcyBTdG9yYWdlLCBEcml2ZXI9dXNiLXN0b3JhZ2UsIDUwMDBNCj4+PiAv
OiAgQnVzIDAwOC5Qb3J0IDAwMTogRGV2IDAwMSwgQ2xhc3M9cm9vdF9odWIsIERyaXZlcj14aGNp
LWhjZC8xcCwgNDgwTQo+Pj4gLzogIEJ1cyAwMDkuUG9ydCAwMDE6IERldiAwMDEsIENsYXNzPXJv
b3RfaHViLCBEcml2ZXI9eGhjaS1oY2QvMXAsIDUwMDBNCj4+PiAgICAgIHxfXyBQb3J0IDAwMTog
RGV2IDAwMiwgSWYgMCwgQ2xhc3M9TWFzcyBTdG9yYWdlLCBEcml2ZXI9dXNiLXN0b3JhZ2UsIDUw
MDBNCj4+Pgo+Pj4gWzFdIGh0dHBzOi8vd3d3LmVsZWNvbS5jby5qcC9wcm9kdWN0cy9VM0hDLUE0
MjRQMTBCSy5odG1sCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lA
cmFkeGEuY29tPgo+Pj4gLS0tCj4+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LXJvY2stNWIuZHRzIHwgMSArCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OC1yb2NrLTViLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2st
NWIuZHRzCj4+PiBpbmRleCBjNTc3NmUzYjRhYWIuLjQzZmMxZjI0ZGZjOSAxMDA2NDQKPj4+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4+PiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+Pj4g
QEAgLTkxOCw2ICs5MTgsNyBAQCAmdXNiZHBfcGh5MCB7Cj4+PiAgIH07Cj4+PiAgIAo+Pj4gICAm
dXNiZHBfcGh5MSB7Cj4+PiArCXJvY2tjaGlwLGRwLWxhbmUtbXV4ID0gPDIgMz47Cj4+PiAgIAlz
dGF0dXMgPSAib2theSI7Cj4+PiAgIH07Cj4+PiAgIAo+Pj4KPj4KPj4KPj4KPj4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
