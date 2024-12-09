Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50C49E77180
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 21:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xe4sID74Mj7Tfw7Eqxoqfti1GV673N7XO2ScDJhkXuo=; b=ShCyEHYzeVX+dl
	Zacfr7H2oqNbyMUbgaHltdj6L1xBOV4iK+hrce2O7ju7MVPdicycTAu7v/I+p75CLS0MXVN4b5O4z
	V3/AT8+7Y94aMShKA7oeuf/gfCQiiU1+8UZdlO9okj3ir11w9vYwG2F5HB1AXnLshN7d43fPC71Zq
	Suexneg7PzZ3/HSYLhWqoQtqGjSBnncaDrPkvxnCUq6iaFpGz65In11af2Oj8vjb+W/DdBYOQvDj/
	gC6ijQiznfwT7KbAFt5fiyfPfNTW5bPWh5YgkY94zybz7Q+cbgKERsCzfrbECkAfvSZffJQjRkmFa
	XP9gPNhanHhWYLg/MK7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKl4r-00000009G9l-1kun;
	Mon, 09 Dec 2024 21:14:01 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKl4n-00000009G4P-29UR
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 21:14:00 +0000
X-QQ-mid: bizesmtpip2t1733778780tn44ik7
X-QQ-Originating-IP: nghcMwGwJG8U0kfU8TWJRS/iIuhL9Fi6u5fpYwkrRqY=
Received: from [IPV6:240f:10b:7440:1:42fa:d92a ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 10 Dec 2024 05:12:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7788240959183773366
Message-ID: <CEFF3F7FDF50046C+6bccd571-3475-46b9-a7b9-e2e8cb94ed91@radxa.com>
Date: Tue, 10 Dec 2024 06:12:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/12] arm64: dts: rockchip: fix property for pwm-fan
 for Radxa ROCK 5C
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241209125131.4101-1-naoki@radxa.com>
 <20241209125131.4101-4-naoki@radxa.com>
 <ae031ff8c8c5d9e5c266c73026d4dfab@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <ae031ff8c8c5d9e5c266c73026d4dfab@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: M5aznPMtO1XHy0wjvEtPxY54LpGtOQbsSzx8k1wzWqeCPP694tIfFRnl
	HvWc7J9SGqpIxQVN6htn7k5YRCW9hTc6oA/fabNEII6e/PRUXXR4HSbkujjNoofZDXqcPfG
	WZu6wMhc/xKb/dAs7Xn65bpGsl9X/lCeyOm+FJLfMo/rgSyuiffHGQm0DRYwnrlY0Lwviu/
	jX/WcR3smcZSTlvgmoBC+fB6BozC6haItdKbOfT1TJu5gaD1SzXaHE4+1QRRfMY13Czqx7f
	4Nm+koUK9vtIu1b7ohN3hqhnZfmTjG+wAa47ele9HVMpZhulAfu1Pccrhe8UIvl8z7TZ2fl
	K3TiWqZBWa+AYkEBXdFzLziVX2Lzzy0aG6FNXZ1xC7ikWTBKOHeZyVHpXDqZSEmiWT/h+K/
	3JBvLNhUtdobMefr8FVHm4OVtkvUpW5+mi6GI3eH6lgtibFCMznLuNkSv5znm07wyduuxWs
	WmMojllLfXUMjrKE0YL6UfM+MnyGRAN7XM2zxs+nUliWhEXfkBsXMOuLI0O6Qyvw0mRwRfI
	V2ly+KYUuews4eReyS7+gpWkBoBcpePN2/YWiSBLV9OVy5xSbHkKCE9mgG30GumQCb18Cou
	JFwvlMsvPpVxXl78XV+VEMq3ydLDUUdTPPlLVIT7ECE7EJ8minrPiOe/uxEfiXYL722gdzs
	eyw6CanPvedHvyI0h0wqyhjIDPgFYmpzavIVjcs+0Y9VHl6cLj15kX/f8GXs1COAeapJpLY
	5U2ZKDQXvSL5RpzedIKR9FauCM+4N6QW29ACusHQrn9nQjXmsrPwedb+0cfKx6ajt2zPH84
	oNGzPMpStwrR7JS8Pp9PGlv98fmNz3GDH+K+jtYiiIGpsZsgfa3PZjnCq3ZGenQbyRGdei0
	jvsH7+vOlA+jcHeUzrhaQBxhaRsKM8fm
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_131358_413273_F659E312 
X-CRM114-Status: GOOD (  11.61  )
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

SGksCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IQoKT24gMTIvMTAvMjQgMDE6MzIsIERyYWdhbiBT
aW1pYyB3cm90ZToKPiBIZWxsbyBGdWthdW1pLAo+IAo+IE9uIDIwMjQtMTItMDkgMTM6NTEsIEZV
S0FVTUkgTmFva2kgd3JvdGU6Cj4+IGZpeCBwd20gcGVyaW9kIHRvIG1hdGNoIHdpdGggdmVuZG9y
IGtlcm5lbFsxXS4KPiAKPiBJbnN0ZWFkIG9mIHNpbXBseSByZWZlcnJpbmcgdG8gdGhlIGRvd25z
dHJlYW0gdmVuZG9yIGtlcm5lbCwgaW4gdGhpcwo+IHNwZWNpZmljIGNhc2UgdGhlIHJlYXNvbnMg
Zm9yIGFkanVzdGluZyB0aGUgZmFuIFBXTSBwYXJhbWV0ZXJzIHNob3VsZAo+IGJlIGV4cGxhaW5l
ZCBieSByZWZlcnJpbmcgdG8gdGhlIGFjdHVhbCBmYW4gc2V0dXAgeW91J3JlIHVzaW5nLCB0aGUK
PiBvYnNlcnZlZCBmYW4gUlBNIGJlaGF2aW9yLCBldGMuCgpvcmlnaW5hbCBjb21taXQgbWVzc2Fn
ZSBpczoKCnwgYXJtNjQ6IGR0czogcm9ja2NoaXA6IG1vZGlmeSBmYW4gcHdtIHBlcmlvZCB0byA2
MHVzCnwgUmVkdWNlIHB3bSBmcmVxdWVuY3kgdG8gMTYuNiBLSHogZm9yIGEgbGFyZ2VyIGFkanVz
dGFibGUgcmFuZ2Ugb2YgCkFPMzQxNiBtb3NmZXQuCgpJIGhhdmUgbm8ga25vd2xlZGdlIGFib3V0
IHRoaXMga2luZCBvZiB0aGluZ3MuIElzIHF1b3RpbmcgdGhpcyBtZXNzYWdlIAplbm91Z2g/CgpC
ZXN0IHJlZ2FyZHMsCgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikg
Q28uLCBMdGQuCgo+PiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3JhZHhhL2tlcm5lbC9ibG9iL2xp
bnV4LTYuMS1zdGFuLXJrcjEvYXJjaC8gCj4+IGFybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OHMtcm9jay01Yy5kdHMKPj4KPj4gRml4ZXM6IDNkZGY1Y2RiNzdlNiAoImFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBhZGQgUmFkeGEgUk9DSyA1QyIpCj4+IFNpZ25lZC1vZmYtYnk6IEZVS0FVTUkgTmFv
a2kgPG5hb2tpQHJhZHhhLmNvbT4KPj4gLS0tCj4+IENoYW5nZXMgaW4gdjQ6Cj4+IC0gbm9uZQo+
PiBDaGFuZ2VzIGluIHYzOgo+PiAtIG5vbmUKPj4gQ2hhbmdlcyBpbiB2MjoKPj4gLSByZXdvcmQg
Y29tbWl0IG1lc3NhZ2UKPj4gLS0tCj4+IMKgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODhzLXJvY2stNWMuZHRzIHwgMiArLQo+PiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWMuZHRzCj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODhzLXJvY2stNWMuZHRzCj4+IGluZGV4IDYzMGYwMjZkODU2Yy4uODU1ODlk
MWE2ZDNiIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OHMtcm9jay01Yy5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODhzLXJvY2stNWMuZHRzCj4+IEBAIC03Myw3ICs3Myw3IEBAIHB3bS1mYW4gewo+PiDCoMKgwqDC
oMKgwqDCoMKgICNjb29saW5nLWNlbGxzID0gPDI+Owo+PiDCoMKgwqDCoMKgwqDCoMKgIGNvb2xp
bmctbGV2ZWxzID0gPDAgNjQgMTI4IDE5MiAyNTU+Owo+PiDCoMKgwqDCoMKgwqDCoMKgIGZhbi1z
dXBwbHkgPSA8JnZjY181djA+Owo+PiAtwqDCoMKgwqDCoMKgwqAgcHdtcyA9IDwmcHdtMyAwIDEw
MDAwIDA+Owo+PiArwqDCoMKgwqDCoMKgwqAgcHdtcyA9IDwmcHdtMyAwIDYwMDAwIDA+Owo+PiDC
oMKgwqDCoCB9Owo+Pgo+PiDCoMKgwqDCoCBwY2llMngxbDJfM3YzOiByZWd1bGF0b3ItcGNpZTJ4
MWwyLTN2MyB7Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
