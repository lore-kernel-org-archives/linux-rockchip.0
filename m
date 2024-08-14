Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B851C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 21:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcN44SyQ/KlvH0Ha249+3FV2UPBN5O6Qau/dO85/xV4=; b=MXsXyJk2vjU/ol
	ZP2TNQR7HhEyzxo1zqKtQiJjVCwPhS9FpRR6dno3e+5aIhk7zmP7+SBl+/eZab9nu7kKGPjCUn+a+
	0ZV30WlUKK9UrBaEuvknYF8eqSOZnvWnxChQnFxQnuIFpi5Z1Jeo62NXRnsJW7tj45XupXahVPtrj
	BatuHDw7fAi5lQ6QgOD99RihfK24VWJiOcC6bmv0ld8/PcaxEjzvsGdohYiXLwXYP37etfRFZmohG
	x8iDt3Kl7apkon6XccTv2RZU1YatBUnpkD8QPnu5RcUuEyM/AzxHFV/mY3i60O9VI/nd9s16395ll
	rHSPpuiQC7Uw7Hv199Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seLyh-00000008NTd-2Ek6;
	Wed, 14 Aug 2024 21:56:23 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seLyc-00000008NSd-0dpy
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 21:56:22 +0000
X-QQ-mid: bizesmtp88t1723672539toqoffky
X-QQ-Originating-IP: xIyUMW30ApZD9TYQkJa7cC50cvKLqDzdeQJxFfbvO3U=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 15 Aug 2024 05:55:36 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6573782108803585030
Message-ID: <E2FF51EF97313CA8+53ea57a4-59aa-4415-a1fa-0e56c19ce9d4@radxa.com>
Date: Thu, 15 Aug 2024 06:55:36 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa
 ROCK Pi E v3.0
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240814095727.1662908-1-naoki@radxa.com>
 <9908246.lRi8OiJO2u@diego>
 <4F2DC0BFBC9A7038+cd76538a-6a56-44a1-9ae6-f81e9088ff48@radxa.com>
 <3456551.yMk1gmxOD6@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <3456551.yMk1gmxOD6@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_145618_744423_C720E532 
X-CRM114-Status: GOOD (  13.78  )
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

aGksCgpPbiA4LzE1LzI0IDA2OjUzLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBNaXR0d29j
aCwgMTQuIEF1Z3VzdCAyMDI0LCAyMjowNDo1MSBDRVNUIHNjaHJpZWIgRlVLQVVNSSBOYW9raToK
Pj4gSGksCj4+Cj4+IHRoYW5rcyBmb3IgdGhlIHJldmlldyEKPj4KPj4gT24gOC8xNC8yNCAyMDoz
MCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+PiBBbSBNaXR0d29jaCwgMTQuIEF1Z3VzdCAyMDI0
LCAxMTo1NzoyNiBDRVNUIHNjaHJpZWIgRlVLQVVNSSBOYW9raToKPj4+PiBSYWR4YSBST0NLIFBp
IEUgdjMuMCBpcyBhIGNvbXBhY3QgbmV0d29ya2luZyBTQkNbMV0gdXNpbmcgdGhlIFJvY2tjaGlw
Cj4+Pj4gUkszMzI4IGNoaXAuCj4+Pj4KPj4+PiBbMV0gaHR0cHM6Ly9yYWR4YS5jb20vcHJvZHVj
dHMvcm9ja3BpL3BpZQo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFv
a2lAcmFkeGEuY29tPgo+Pj4+IC0tLQo+Pj4+IENoYW5nZXMgaW4gdjQ6Cj4+Pj4gLSB1cGRhdGUg
Y29tcGF0aWJsZSBzdHJpbmcgZm9yIE9wZW5XcnQKPj4+PiAtIGRyb3AgQS1iIHRhZwo+Pj4+IENo
YW5nZXMgaW4gdjM6Cj4+Pj4gLSBjb2xsZWN0IEEtYiB0YWcKPj4+PiBDaGFuZ2VzIGluIHYyOgo+
Pj4+IC0gZml4IHR5cG8gaW4gY29tbWl0IG1lc3NhZ2UKPj4+PiAtIGFkZCBtaXNzaW5nIC0tLSBp
biBjb21taXQgbWVzc2FnZQo+Pj4+IC0gYWRkIG5ldyBzZWN0aW9uIGluc3RlYWQgb2YgbmV3IGl0
ZW0gaW4gcm9ja2NoaXAueWFtbAo+Pj4+IC0tLQo+Pj4+ICAgIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCB8IDUgKysrKysKPj4+PiAgICAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4+Pj4gaW5kZXggMmFkODM1
ZjQwNjhlLi4xZDQyNmQ0ZTE5MjggMTAwNjQ0Cj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4+Pj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4+Pj4gQEAgLTc5MCw2ICs3
OTAsMTEgQEAgcHJvcGVydGllczoKPj4+PiAgICAgICAgICAgICAgLSBjb25zdDogcmFkeGEscm9j
a3BpLWUKPj4+PiAgICAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMzI4Cj4+Pj4gICAg
Cj4+Pj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFJhZHhhIFJPQ0sgUGkgRSB2My4wCj4+Pj4gKyAg
ICAgICAgaXRlbXM6Cj4+Pj4gKyAgICAgICAgICAtIGNvbnN0OiByYWR4YSxyb2NrLXBpLWUtdjMK
Pj4+PiArICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzMyOAo+Pj4+ICsKPj4+Cj4+PiBQ
bGVhc2UgZG9uJ3QgYWRkIGEgc2VwYXJhdGUgZW50cnkgZm9yIHRoZSBzaW1wbGUgdXBkYXRlZCB2
ZXJzaW9uLgo+Pj4gSW5zdGVhZCBncm91cCBpdCB3aXRoIHRoZSBvcmlnaW5hbCBSb2NrIFBpIGUg
YWJvdmUuCj4+Pgo+Pj4gRm9yIGhvdyB0byBkbyBpdCwgbG9vayBhdCB0aGUgUmFkeGEgWmVybyAz
dy8zZSAuCj4+Cj4+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1y
b2NrY2hpcC9wYXRjaC8yMDI0MDcxMTIxMDUyNi40MDQ0OC0xLW5hb2tpQHJhZHhhLmNvbS8KPj4K
Pj4gaXMgdGhpcyByaWdodCB3YXk/Cj4gCj4gTm9wZS4gWW91IG5lZWQgYW4gZW51bS4gVGhhdCdz
IHRoZSByZWFzb24gSSBwb2ludGVkIHRvIHRoZSBSYWR4YSBaZXJvIGFzCj4gYW4gZXhhbXBsZSBb
MF0KPiAKPiBTbyB5b3VyIGVudHJ5IHNob3VsZCBsb29rIHNvbWV0aGluZyBsaWtlOgo+IAo+ICAg
ICAgICAgLSBkZXNjcmlwdGlvbjogUmFkeGEgUk9DSyBQaSBFCj4gICAgICAgICAgaXRlbXM6Cj4g
ICAgICAgICAgICAtIGVudW06Cj4gICAgICAgICAgICAgICAgLSByYWR4YSxyb2NrcGktZQo+ICAg
ICAgICAgICAgICAgIC0gcmFkeGEscm9ja3BpLWUtdjMKPiAgICAgICAgICAgIC0gY29uc3Q6IHJv
Y2tjaGlwLHJrMzMyOAoKSSBzZWUuIEknbGwgZG8gaXQgaW4gdjUuCgpCZXN0IHJlZ2FyZHMsCgot
LQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgo+IHRo
YXQgd2F5IHRoZSBiaW5kaW5nIG1hdGNoZXMgYWdhaW5zdCBib3RoOgo+IAljb21wYXRpYmxlID0g
InJhZHhhLHJvY2twaS1lIiwgInJvY2tjaGlwLHJrMzMyOCIKPiBhcyB3ZWxsIGFzCj4gCWNvbXBh
dGlibGUgPSAicmFkeGEscm9ja3BpLWUtdjMiLCAicm9ja2NoaXAscmszMzI4Igo+IAo+IAo+IEhv
cGUgdGhhdCBoZWxwcyBhIGJpdAo+IEhlaWtvCj4gCj4gCj4gWzBdIGh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCNuODQ0Cj4g
Cj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
