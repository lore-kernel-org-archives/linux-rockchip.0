Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4E67C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 05:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VK/88aHbR0Hl7YUZei2TuSdXJt4uAqZXEr77dfhaEPE=; b=uw2/SKtBDm7tRf
	OvpaqCfBcUlYgaP8c9pb3PRPCwXyiLUAKraQueskBIR+IF6OtiDB0KNkxc/OL2y+xFAkI5RS3WWro
	DutgUxeoFh6bulm6JvPPb4FCkA2ZPSR3hElFiwdXmcCZGe6whRkcxTG5DqxQUIs4MHH/bBOKdThVY
	NqBKcotge67RATkiKZqXSxkrpNm28A8Kb5H4Jkobd0biUuJZ4beh8SIj55dh/9xug7+WVAl/HLku9
	Lwvtv1qbXPq1P1voBtejISRP4w9p79kR6q2E0+SVGU0vW2qFm//fdhHuc0dR1nFO5xKbmO6CID+R1
	mcNppEmUcAmNBml5+MSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxKht-000000012Ou-0va1;
	Thu, 18 Apr 2024 05:53:13 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxKho-000000012LD-0dtQ;
	Thu, 18 Apr 2024 05:53:10 +0000
X-QQ-mid: bizesmtpsz13t1713419533tf4gio
X-QQ-Originating-IP: KK9L0DB68nJZeG2DfOPLLnMrgziwM3QZRsgGEYAJBOs=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 18 Apr 2024 13:52:11 +0800 (CST)
X-QQ-SSF: 01100000000000C0G000000A0000000
X-QQ-FEAT: 83ShfzFP0oC8nXF2nK1YIPY3n1Qcg8oyeTIWy3Fn5A9bOP4KrCgiPFprv0W9n
	MslRqKoEPWyLKMlAmtgq3br1a0asRJiisfNBavmenK36g2HxTuSzidvFkwkmvHmwYoH7OyF
	h9eK7FWdU8OOfMPAxWgyam2Vixa+f2x5+LpvaiEQVegoCEk09cx/YUePckIcI4MJjUkVxRV
	vdjvTWN+JFZlNcL4BWMeLaRg/yPkYW9l88JqgseXYIOSgzKsbb9Fbg2vnjyyA/HNmZCGbqG
	0LnQ8WDttduZ96gA4rNdSxrUZjGixdaHDsCZuVPRDwXHaqPhfxqqM1T1KBXHJ1Xkd2l2H3f
	dajYZ4/URtpN/QqiM1c2Dm1A3ExN6KPqcny8DwLkeDQQ7mSHHGVM3Ql9ZcnuedHLaShfU0l
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15298947766438916063
Message-ID: <B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com>
Date: Thu, 18 Apr 2024 14:52:09 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ROCK3 Model C
To: Dragan Simic <dsimic@manjaro.org>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: jonas@kwiboo.se, conor+dt@kernel.org, devicetree@vger.kernel.org,
 heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org
References: <d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se>
 <20240417133016.62753-1-amadeus@jmu.edu.cn>
 <a144c052fcc2460a615a754a64a8f739@manjaro.org>
Content-Language: en-US
In-Reply-To: <a144c052fcc2460a615a754a64a8f739@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz6a-0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_225308_617998_8F4438DC 
X-CRM114-Status: GOOD (  12.48  )
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

SGksCgp0aGlzIGlzIE5hb2tpIEAgUmFkeGEuCgp0aGFuayB5b3UgZm9yIHlvdXIgZ3JlYXQgd29y
ayEKCk9uIDQvMTgvMjQgMDI6MDIsIERyYWdhbiBTaW1pYyB3cm90ZToKPiBIZWxsbyBDaHVrdW4s
Cj4gCj4gT24gMjAyNC0wNC0xNyAxNTozMCwgQ2h1a3VuIFBhbiB3cm90ZToKPj4gSGkgSm9uYXMs
Cj4+Pj4gK8KgwqDCoCBtb2RlbCA9ICJSYWR4YSBST0NLMyBNb2RlbCBDIjsKPj4+Cj4+PiBUaGUg
bWFya2V0aW5nIG5hbWUgc2VlbXMgdG8gYmUgIlJhZHhhIFJPQ0sgM0MiIGFjY29yZGluZyB0byB0
aGUgcHJvZHVjdAo+Pj4gcGFnZSBhdCBbMV0uCj4+Pgo+Pj4gWzFdIGh0dHBzOi8vcmFkeGEuY29t
L3Byb2R1Y3RzL3JvY2szLzNjCj4+Cj4+IEFjY29yZGluZyB0byBodHRwczovL3dpa2kucmFkeGEu
Y29tL1JvY2szLzNjICwgaXQgc2hvdWxkIGJlIGNhbGxlZAo+PiAiUmFkeGEgUk9DSyAzIE1vZGVs
IEMiLiBJIGNvcGllZCByb2NrM2EgaGVyZSB3aXRob3V0IHBheWluZyBhdHRlbnRpb24uCgpzb3Jy
eSwgd2lraS5yYWR4YS5jb20gaXMgb3V0ZGF0ZWQuCgpkb2NzLnJhZHhhLmNvbSBpcyBjb3JyZWN0
IG9uZSBhbmQgbWFpbnRhaW5lZC4KKGJ1dCBpdCBzdGlsbCBoYXMgc29tZSBlcnJvcnMsIHNvcnJ5
KQoKPiBJZiBJIG1heSBpbnRlcmplY3QsIGhlcmUncyB0aGUgcmVzdWx0IG9mIGEgcXVpY2sgcXJl
cDoKPiAKPiAuL3JrMzM5OXByby1yb2NrLXBpLW4xMC5kdHM6wqDCoMKgIG1vZGVsID0gIlJhZHhh
IFJPQ0sgUGkgTjEwIjsKPiAuL3JrMzM5OS1yb2NrLXBpLTRhLXBsdXMuZHRzOsKgwqDCoCBtb2Rl
bCA9ICJSYWR4YSBST0NLIFBpIDRBKyI7Cj4gLi9yazM1ODhzLXJvY2stNWEuZHRzOsKgwqDCoCBt
b2RlbCA9ICJSYWR4YSBST0NLIDUgTW9kZWwgQSI7Cj4gLi9yazM1ODgtcm9jay01Yi5kdHM6wqDC
oMKgIG1vZGVsID0gIlJhZHhhIFJPQ0sgNSBNb2RlbCBCIjsKPiAuL3JrMzM5OS1yb2NrLTRjLXBs
dXMuZHRzOsKgwqDCoCBtb2RlbCA9ICJSYWR4YSBST0NLIDRDKyI7Cj4gLi9yazMzOTktcm9jay1w
aS00Yi1wbHVzLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9DSyBQaSA0QisiOwo+IC4vcmsz
Mzk5LXJvY2stcGktNGIuZHRzOsKgwqDCoCBtb2RlbCA9ICJSYWR4YSBST0NLIFBpIDRCIjsKPiAu
L3JrMzM5OS1yb2NrLXBpLTRjLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9DSyBQaSA0QyI7
Cj4gLi9yazMzMDgtcm9jay1waS1zLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9DSyBQaSBT
IjsKPiAuL3JrMzM5OS1yb2NrLXBpLTRhLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9DSyBQ
aSA0QSI7Cj4gLi9yazMzOTktcm9jay00c2UuZHRzOsKgwqDCoCBtb2RlbCA9ICJSYWR4YSBST0NL
IDRTRSI7Cj4gLi9yazMzMjgtcm9jay1waS1lLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9D
SyBQaSBFIjsKPiAuL3JrMzU2OC1yb2NrLTNhLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9D
SzMgTW9kZWwgQSI7Cj4gCj4gQmFzZWQgb24gdGhhdCwgSSB0aGluayB0aGF0ICJSYWR4YSBST0NL
IDMgTW9kZWwgQyIgd291bGQgYWN0dWFsbHkKPiBiZSB0aGUgcHJlZmVycmVkIG5hbWUuLi7CoCBQ
ZXJoYXBzPwo+IAo+IElmIHdlIGVuZCB1cCBmb2xsb3dpbmcgdGhhdCBhcHByb2FjaCwgdGhlIGxh
c3QgYm9hcmQgZHRzIG9uIHRoZSBsaXN0Cj4gYWJvdmUgc2hvdWxkIGFsc28gYmUgZml4ZWQgdG8g
cmVhZCAiUmFkeGEgUk9DSyAzIE1vZGVsIEEiLgo+IAo+IEVpdGhlciB0aGF0LCBvciBhbGwgIk1v
ZGVsICIgc3RyaW5ncyBzaG91bGQgYmUgc3RyaXBwZWQgb3V0IGZyb20KPiBhbGwgYm9hcmQgZHRz
IGZpbGVzIHRoYXQgY3VycmVudGx5IGNvbnRhaW4gaXQuCgp3ZSBoYXZlIGEgZG9jdW1lbnQgbmFt
ZWQgIlJhZHhhIFByb2R1Y3QgTmFtaW5nIENvbnZlbnRpb24iLgp0aGVyZSBhcmUgImZ1bGwgbmFt
ZSIgYW5kICJzaG9ydCBuYW1lIi4gIk1vZGVsIiBpcyB1c2VkIGluICJmdWxsIG5hbWUiLCAKYnV0
IGl0J3Mgbm90IHVzZWQgaW4gInNob3J0IG5hbWUiLiBib3RoIGFyZSBjb3JyZWN0LgoKYnV0LCB3
ZSBwcmVmZXJyZWQgdG8gdXNlICJzaG9ydCBuYW1lIiBmb3IgIm1vZGVsID0gIiBpbiBtYWlubGlu
ZSAKbGludXgvdS1ib290LgoKZm9yIFJPQ0sgM0MsIHBsZWFzZSB1c2UKCiAgbW9kZWwgPSAiUmFk
eGEgUk9DSyAzQyI7Cgpmb3IgUk9DSyA1QS81QiBhbmQgUk9DSyAzQSwKCiAgbW9kZWwgPSAiUmFk
eGEgUk9DSyA1QSI7CiAgbW9kZWwgPSAiUmFkeGEgUk9DSyA1QiI7CiAgbW9kZWwgPSAiUmFkeGEg
Uk9DSyAzQSI7CgphcmUgcHJlZmVycmVkLgoKd2UgbmVlZCB0byBmaXggdGhpcyBpbmNvbnNpc3Rl
bmN5LiAoaW5jbHVkZSBvdXIgZG9jcykKCkJlc3QgcmVnYXJkcywKCi0tCkZVS0FVTUkgTmFva2kK
UmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4KCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
