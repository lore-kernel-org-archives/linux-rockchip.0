Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FF41D74978
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Oct 2024 06:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=keKRCTusvrMuJguLlPT+pqmIeL/EaYSqVW1dTxrDHiQ=; b=SsmsGScZnAGFQv
	mXTL2/4FU39niyHR6Nbt61Us6hTyD5CZeF5aCToe4VllZ3bBCah0j9GzqKCMDcXiEhG6wKMU1Jrn5
	/CSPxFjSACCNUT96sCrCFS8B1wN+G5n/hM4Ik0rfxTfVGDdBkx1jz4lcSiFYr61qthw31dQjTBQGC
	tnINGUilMiG30m32Dp7tLW+7XisMXO/NNTwOfLWFtNh94HvFTXPVUgAu8Zmp/6P/j3eCNZnHvwrCt
	zX5cxNubPAvLNbcTPZyTBevqcIabcYoccF8yqbcsPA7AAjYOeTRTcETkpWCDXYsEMc8JWWoiYzhUM
	cOK03LZy2Or2YN4JywXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t62dm-0000000H3fE-1o9v;
	Wed, 30 Oct 2024 06:57:14 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t62di-0000000H3e3-0enj
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Oct 2024 06:57:12 +0000
X-QQ-mid: bizesmtpip3t1730271398tosmee8
X-QQ-Originating-IP: HYPucG35j92Rx/gYRVc91fYMW7X2Dz/rbJNQGFnK5tA=
Received: from [IPV6:240f:10b:7440:1:2231:c46: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 30 Oct 2024 14:56:33 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 207981743245967855
Message-ID: <C05BCF5E4F84451F+e29f0311-b245-4c3a-a9eb-0f8a7ef3c3d6@radxa.com>
Date: Wed, 30 Oct 2024 15:56:33 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: use "pwm-leds" for multicolor PWM
 LEDs on Radxa E25
To: Krzysztof Kozlowski <krzk@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240816110402.840-1-naoki@radxa.com> <2335200.ElGaqSPkdT@diego>
 <5667DC6446CBC344+3d442915-f28d-4d50-85e3-3863e3c7092a@radxa.com>
 <6f9994b3-d16a-4bfa-aaf8-ce1c5abde91b@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <6f9994b3-d16a-4bfa-aaf8-ce1c5abde91b@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: Nwz8Cs33/LprWeYpsbhHmuJX5rMTG6YZq25lhNA7P9Hzqgqedwh77bPb
	X8SzO5oA7I7xQ3VBicEMZGR7X4zV+NTyuQUCJy/+Impg2TE9LobvWTV0obpwN8TPeHxJYPk
	5xpHqQA4uuwo1Hat7FRcNFO0LE3Vda0uBdsGjXW37jJWLT87xJML9G4GPbVVsXNnfDssNnM
	DR3XAgTTeg78NX9B1iTYE0wsos/muOd61wCjW81UsZr1/Tl2/AbKeInaERqaDF0j6mN2eAX
	UXipjFK1CtZeWvG6cbNnCWb6fZhifyeuvFk0PeEPrOPeKwUhzk02icVt3ko6KhlnWAF39/D
	fhYSzNSftiGfl4PA82jtYHIGYAm8Qtz7/1mT3AfhVGguMxrPe/whpHLF/o406xJ5RsmBpJ4
	V/3CZytRFQw0JMe2nGV9qvJn1WDhUlPulZ/VxSfVICEbhY4vdKl0xZ8mEhxmg2IALP9cx7A
	N/uFTK32GhZLKuaVYZRdXpKOWbvPolvYDFGW1ff3eqTqPFkSOs4JSoJkYRvr+o2+UrG5uwV
	bgjnl6PwGjtzS4lgletrTQyjGLG+KZ83Zr93Wth45juJvR+jJhfhpQuAB6uK/YCmgLRUdgS
	0osNWNgXk+iPuz/a1r2+H/RN5GgpRabgpTzxsNr2LcHXrbMJDPiIP4IR/GQ9YcQBRKfaxPl
	FDeGRf+Ha6kkqYQHEu9vO+ZEbaFs7qOMqJQ3b+UZxlHfJjbNPktkLbUoU5TQLPVc8comsic
	IAPL+bK5TxfpHbQa+f7IY+G6xmwV6DaalgNmYjYygxwGzWYPb0gM1lb0SP+nkZQOFwVLF2M
	H189RfNYl5szF3aePvBE7qcZRAeulYB8zXNUVQFqXLEnXtMV0sMX5H3dpCKYNAwE1/3K4Na
	M65dXFgWSek5Xb3bX6y9B4xhSTCjJpVOI4Qf/LPphvqxqploax998fF9TalWjmtCHvTmx1+
	b0bk=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_235710_699982_8926CAE2 
X-CRM114-Status: GOOD (  12.33  )
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

SGksCgpPbiA4LzE2LzI0IDIxOjI1LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDE2
LzA4LzIwMjQgMTM6NTcsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+IEhpLAo+Pgo+PiBPbiA4LzE2
LzI0IDIwOjI2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+IEFtIEZyZWl0YWcsIDE2LiBBdWd1
c3QgMjAyNCwgMTM6MDQ6MDIgQ0VTVCBzY2hyaWViIEZVS0FVTUkgTmFva2k6Cj4+Pj4gdG8gbWFr
ZSBtdWx0aWNvbG9yIFBXTSBMRURzIGJlaGF2aW9yIG1vcmUgY29uc2lzdGVudCB3aXRoIHZlbmRv
cgo+Pj4+IGtlcm5lbFsxXSwgdXNlICJwd20tbGVkcyIgZm9yIGl0IG9uIFJhZHhhIEUyNS4KPj4+
Cj4+PiBzb3JyeSwgYnV0IHRoYXQgaXMgZGVmaW5pdGx5IG5vdCBhIHZhbGlkIHJlYXNvbi4KPj4K
Pj4gSSBzZWUuIEknbGwgbm90IGNoYW5nZSBpdC4KPj4KPj4+IEEgZGV2aWNldHJlZSBkb2VzIGRl
c2NyaWJlIGFjdHVhbCBoYXJkd2FyZSBhbmQgaXMgbm90IGEgc3BhY2UgZm9yCj4+PiBjb25maWd1
cmF0aW9uIGNob2ljZXMuIFNvIHRoYXQgd2hvbGUgbm90aW9uIHRvICJtYXRjaCBhIGtlcm5lbCIK
Pj4+IGlzIG5vdCBjb3JyZWN0Lgo+Pj4KPj4+IExvb2tpbmcgYXQKPj4+IGh0dHBzOi8vd2lraS5y
YWR4YS5jb20vUm9jazMvQ00vQ00zSS9FMjUvZ2V0dGluZ19zdGFydGVkCj4+PiB0aGUgc3BlY2lm
aWNhdGlvbiB0YWJsZSBjbGVhcmx5IGRlc2lnbmF0ZXMgdGhlIGJvYXJkJ3MgTEVEIGFzCj4+PiAi
UkdCIExFRCIgLSBzbyBvbmUgTEVEIGFuZCBtdWx0aWNvbG9yIC4KPj4KPj4gSSB1bmRlcnN0YW5k
IGZvbGxvd2luZyBiZWhhdmlvciBpcyBub3QgcG9zc2libGUgb24gbWFpbmxpbmUuCj4+Cj4+IGh0
dHBzOi8vZ2l0aHViLmNvbS9yYWR4YS1wa2cvcnNldHVwL2Jsb2IvbWFpbi9jb25maWcvMDAtcmdi
MC1yYWluYm93LmNvbmYKPj4KPj4gdGhpcyBpcyBub3Qgd2hhdCB3ZShSYWR4YSkgd2FudCwgYnV0
IHdlIG5lZWQgdG8gZm9sbG93IHRoZSBydWxlLgo+Pgo+PiAoYnR3IHdpa2kucmFkeGEuY29tIGlz
IG91dGRhdGVkLCBpdCdzIG5vdCB1c2VkIGFueW1vcmUpCj4gCj4gWW91ciBSYWR4YSB2ZW5kb3Ig
a2VybmVsIGFuZCB3aGF0ZXZlciB5b3UgaGF2ZSAqTVVTVCogYWxpZ24gdG8gdGhlCj4gdXBzdHJl
YW0sIG5vdCB0aGUgb3RoZXIgd2F5LiBUaGUgdXBzdHJlYW0gaXMgdGhlIGNvcnJlY3Qgc291cmNl
IG9mIGRvaW5nCj4gdGhpbmdzLCBub3QgdGhlIG90aGVyIHdheS4KCmNvdWxkIHlvdSB0ZWxsIG1l
IGhvdyB0byBtYWtlIHJhaW5ib3cgY29sb3IgZWZmZWN0IHdpdGggCiJwd20tbGVkcy1tdWx0aWNv
bG9yIiBkcml2ZXI/CgphcyBmYXIgYXMgSSBrbm93LCAicGF0dGVybiIgdHJpZ2dlciBjYW4gY2hh
bmdlIChvbmx5KSBicmlnaHRuZXNzLCBub3QgY29sb3IuCgpCZXN0IHJlZ2FyZHMsCgotLQpGVUtB
VU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgo+IEJlc3QgcmVn
YXJkcywKPiBLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
