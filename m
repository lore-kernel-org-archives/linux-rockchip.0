Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21045C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 11:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3USC1htYx32wrTLZYSBj9JSdHxxtPzgL9BtlIN1Xfc=; b=h34r373bNjYFyI
	sRJEMj0JQvGjjBeZgMZNmqHOk+XsRvzwW9I/jUiZR0Vr2PwrTYBRNlUht8Jlp87L39WK6jpYdgyva
	+UAnGwmfpe/SCCKEZES+yopl9qnwo6qVwb8mRiD+tFdYnPxEe9HdZmvzHqFcZ39+peBbXU+qFY1D7
	LANtlM17pDQz7kmOLVrIFdztcUHH1rZ+58Fj0/aDOK+N6nyq7NmAfgYnO64l44lSk5OK4Xb4bwfOi
	0M48NsrvmvdzHtyGVJoiyNKACV5Jvh0rE6IRbztbxSQ27pVPJ8LGQ2Ek0UzO1cnrSfLiwhYNo0weV
	01DDeZdm0CyZQoNNEkkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sevbF-0000000CokR-3b35;
	Fri, 16 Aug 2024 11:58:33 +0000
Received: from smtpbgbr2.qq.com ([54.207.22.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sevbC-0000000CohJ-2dEn
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 11:58:32 +0000
X-QQ-mid: bizesmtp87t1723809479tkg7y7fb
X-QQ-Originating-IP: gQekxQ1rJdkb+DwrsrVnuCxALPpM7BB1ElFJNJZjVm4=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 16 Aug 2024 19:57:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14912246979607843899
Message-ID: <5667DC6446CBC344+3d442915-f28d-4d50-85e3-3863e3c7092a@radxa.com>
Date: Fri, 16 Aug 2024 20:57:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: use "pwm-leds" for multicolor PWM
 LEDs on Radxa E25
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240816110402.840-1-naoki@radxa.com> <2335200.ElGaqSPkdT@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <2335200.ElGaqSPkdT@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_045831_540377_D6C01DD3 
X-CRM114-Status: GOOD (  16.33  )
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

SGksCgpPbiA4LzE2LzI0IDIwOjI2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBGcmVpdGFn
LCAxNi4gQXVndXN0IDIwMjQsIDEzOjA0OjAyIENFU1Qgc2NocmllYiBGVUtBVU1JIE5hb2tpOgo+
PiB0byBtYWtlIG11bHRpY29sb3IgUFdNIExFRHMgYmVoYXZpb3IgbW9yZSBjb25zaXN0ZW50IHdp
dGggdmVuZG9yCj4+IGtlcm5lbFsxXSwgdXNlICJwd20tbGVkcyIgZm9yIGl0IG9uIFJhZHhhIEUy
NS4KPiAKPiBzb3JyeSwgYnV0IHRoYXQgaXMgZGVmaW5pdGx5IG5vdCBhIHZhbGlkIHJlYXNvbi4K
Ckkgc2VlLiBJJ2xsIG5vdCBjaGFuZ2UgaXQuCgo+IEEgZGV2aWNldHJlZSBkb2VzIGRlc2NyaWJl
IGFjdHVhbCBoYXJkd2FyZSBhbmQgaXMgbm90IGEgc3BhY2UgZm9yCj4gY29uZmlndXJhdGlvbiBj
aG9pY2VzLiBTbyB0aGF0IHdob2xlIG5vdGlvbiB0byAibWF0Y2ggYSBrZXJuZWwiCj4gaXMgbm90
IGNvcnJlY3QuCj4gCj4gTG9va2luZyBhdAo+IGh0dHBzOi8vd2lraS5yYWR4YS5jb20vUm9jazMv
Q00vQ00zSS9FMjUvZ2V0dGluZ19zdGFydGVkCj4gdGhlIHNwZWNpZmljYXRpb24gdGFibGUgY2xl
YXJseSBkZXNpZ25hdGVzIHRoZSBib2FyZCdzIExFRCBhcwo+ICJSR0IgTEVEIiAtIHNvIG9uZSBM
RUQgYW5kIG11bHRpY29sb3IgLgoKSSB1bmRlcnN0YW5kIGZvbGxvd2luZyBiZWhhdmlvciBpcyBu
b3QgcG9zc2libGUgb24gbWFpbmxpbmUuCgpodHRwczovL2dpdGh1Yi5jb20vcmFkeGEtcGtnL3Jz
ZXR1cC9ibG9iL21haW4vY29uZmlnLzAwLXJnYjAtcmFpbmJvdy5jb25mCgp0aGlzIGlzIG5vdCB3
aGF0IHdlKFJhZHhhKSB3YW50LCBidXQgd2UgbmVlZCB0byBmb2xsb3cgdGhlIHJ1bGUuCgooYnR3
IHdpa2kucmFkeGEuY29tIGlzIG91dGRhdGVkLCBpdCdzIG5vdCB1c2VkIGFueW1vcmUpCgpCZXN0
IHJlZ2FyZHMsCgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28u
LCBMdGQuCgo+IEhlaWtvCj4gCj4gCj4+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vcmFkeGEva2Vy
bmVsL2Jsb2IvbGludXgtNS4xMC1nZW4tcmtyNC4xL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTY4LXJhZHhhLWUyNS5kdHMjTDEwMC1MMTIxCj4+Cj4+IEZpeGVzOiAyYmYyZjRkOWY2
NzMgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIFJhZHhhIENNM0kgRTI1IikKPj4gU2lnbmVk
LW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+PiAtLS0KPj4gICAuLi4v
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJhZHhhLWUyNS5kdHMgICAgfCAzNiArKysrKysrKysr
LS0tLS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDE2IGRlbGV0
aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1NjgtcmFkeGEtZTI1LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4
LXJhZHhhLWUyNS5kdHMKPj4gaW5kZXggNzJhZDc0YzM4YTJiLi4wYjUyN2Y2N2JkYmQgMTAwNjQ0
Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJhZHhhLWUyNS5k
dHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcmFkeGEtZTI1
LmR0cwo+PiBAQCAtMTIsMjYgKzEyLDMwIEBAIGFsaWFzZXMgewo+PiAgIAl9Owo+PiAgIAo+PiAg
IAlwd20tbGVkcyB7Cj4+IC0JCWNvbXBhdGlibGUgPSAicHdtLWxlZHMtbXVsdGljb2xvciI7Cj4+
ICsJCWNvbXBhdGlibGUgPSAicHdtLWxlZHMiOwo+PiAgIAo+PiAtCQltdWx0aS1sZWQgewo+PiAt
CQkJY29sb3IgPSA8TEVEX0NPTE9SX0lEX1JHQj47Cj4+ICsJCWxlZC1yZWQgewo+PiArCQkJY29s
b3IgPSA8TEVEX0NPTE9SX0lEX1JFRD47Cj4+ICsJCQlkZWZhdWx0LXN0YXRlID0gIm9uIjsKPj4g
KwkJCWZ1bmN0aW9uID0gTEVEX0ZVTkNUSU9OX1NUQVRVUzsKPj4gICAJCQltYXgtYnJpZ2h0bmVz
cyA9IDwyNTU+Owo+PiArCQkJcHdtcyA9IDwmcHdtMSAwIDEwMDAwMDAgMD47Cj4+ICsJCX07Cj4+
ICAgCj4+IC0JCQlsZWQtcmVkIHsKPj4gLQkJCQljb2xvciA9IDxMRURfQ09MT1JfSURfUkVEPjsK
Pj4gLQkJCQlwd21zID0gPCZwd20xIDAgMTAwMDAwMCAwPjsKPj4gLQkJCX07Cj4+IC0KPj4gLQkJ
CWxlZC1ncmVlbiB7Cj4+IC0JCQkJY29sb3IgPSA8TEVEX0NPTE9SX0lEX0dSRUVOPjsKPj4gLQkJ
CQlwd21zID0gPCZwd20yIDAgMTAwMDAwMCAwPjsKPj4gLQkJCX07Cj4+ICsJCWxlZC1ncmVlbiB7
Cj4+ICsJCQljb2xvciA9IDxMRURfQ09MT1JfSURfR1JFRU4+Owo+PiArCQkJZGVmYXVsdC1zdGF0
ZSA9ICJvbiI7Cj4+ICsJCQlmdW5jdGlvbiA9IExFRF9GVU5DVElPTl9TVEFUVVM7Cj4+ICsJCQlt
YXgtYnJpZ2h0bmVzcyA9IDwyNTU+Owo+PiArCQkJcHdtcyA9IDwmcHdtMiAwIDEwMDAwMDAgMD47
Cj4+ICsJCX07Cj4+ICAgCj4+IC0JCQlsZWQtYmx1ZSB7Cj4+IC0JCQkJY29sb3IgPSA8TEVEX0NP
TE9SX0lEX0JMVUU+Owo+PiAtCQkJCXB3bXMgPSA8JnB3bTEyIDAgMTAwMDAwMCAwPjsKPj4gLQkJ
CX07Cj4+ICsJCWxlZC1ibHVlIHsKPj4gKwkJCWNvbG9yID0gPExFRF9DT0xPUl9JRF9CTFVFPjsK
Pj4gKwkJCWRlZmF1bHQtc3RhdGUgPSAib24iOwo+PiArCQkJZnVuY3Rpb24gPSBMRURfRlVOQ1RJ
T05fU1RBVFVTOwo+PiArCQkJbWF4LWJyaWdodG5lc3MgPSA8MjU1PjsKPj4gKwkJCXB3bXMgPSA8
JnB3bTEyIDAgMTAwMDAwMCAwPjsKPj4gICAJCX07Cj4+ICAgCX07Cj4+ICAgCj4+Cj4gCj4gCj4g
Cj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
