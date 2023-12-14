Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56FCEC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 08:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3GXfeWndkBhv09rKEpp5pjb25FxHJl+4EZ/FECELI8=; b=rN6IBrUhw/2U4u
	I8bAX36OVF84GXXMGDDcjxOYGicLc3//UN56fGLaPw1XjgYfsO1yHPWaNpCK1stfd/K7bptfdQxrk
	pRQcXMg3+dalAXNmRPl+XckS9/xH2KKPJxF8dDzMHs4N5t2gulQzMpUpSf0/CnydFiXyK8LLo+NB6
	F75fjsziBSmtkV2nyKj2yxWsSdFlmpH44wIHmQbZJbsxyuTLQWpLGtaoPpycXfEqwCZizUN4mL0+D
	AnwLXLWJdyj2XwxsQxj+E418i6ImveY/AvlTJZBN/zV/6hStqPUygJ4Y5dwjYc+BOJHWRej5pHVzX
	0pSf+wuJ+Nh0XGT9XsJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhJO-00HH0V-2W;
	Thu, 14 Dec 2023 08:43:18 +0000
Received: from mail-m15596.qiye.163.com ([101.71.155.96])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhJK-00HGzG-33
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Dec 2023 08:43:17 +0000
DKIM-Signature: a=rsa-sha256;
	b=H+Tih2AC1swsa5LpolLueaHwjGrZcQgYvOihmSPLeeLcpCcwbsfl7MzZ+JSwRBd74tlMZ7Fpt9bioIds7vQaYmqF5oGzOxy94LNRn4LQ5dnuTLiF8MxZf8s/VdbY8o7UZ/2PD2I+OBdlnugqv89YfjOOTW9XmUoBtzSDWg3BL3I=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=WikvbsWmSBI7ys5pJkbGwLqwVnrtiIg2JwpTBdw98p0=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.87] (unknown [58.22.7.114])
	by mail-m12744.qiye.163.com (Hmail) with ESMTPA id CEE8B10052F;
	Thu, 14 Dec 2023 16:42:35 +0800 (CST)
Message-ID: <090a7670-6997-4be3-99d7-24f67430a16c@rock-chips.com>
Date: Thu, 14 Dec 2023 16:42:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/7] clk: rockchip: rk3588: fix CLK_NR_CLKS usage
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, andy.yan@rock-chips.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, Elaine Zhang <zhangqing@rock-chips.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org
References: <20231213185114.47565-1-sebastian.reichel@collabora.com>
 <20231213185114.47565-2-sebastian.reichel@collabora.com>
From: Tao Huang <huangtao@rock-chips.com>
In-Reply-To: <20231213185114.47565-2-sebastian.reichel@collabora.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUNJSFZMTx8aShlIQkkfGBpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c677df184b217kuuucee8b10052f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NSo6ITo*UTwzPzICCipNKRgC
	DyhPCjVVSlVKTEtJTk9ISE5NQk5LVTMWGhIXVRMOGhUcDxoUOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTkhOSTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_004315_490336_BFD605EB 
X-CRM114-Status: GOOD (  18.74  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMy8xMi8xNCDkuIrljYgyOjQ2LCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPiBDTEtf
TlJfQ0xLUyBpcyBub3QgcGFydCBvZiB0aGUgRFQgYmluZGluZ3MgYW5kIG5lZWRzIHRvIGJlIHJl
bW92ZWQKPiBmcm9tIGl0LCBqdXN0IGxpa2UgaXQgcmVjZW50bHkgaGFwcGVuZWQgZm9yIG90aGVy
IHBsYXRmb3Jtcy4gVGhpcwo+IHRha2VzIGNhcmUgb2YgaXQgYnkgaW50cm9kdWNpbmcgYSBuZXcg
ZnVuY3Rpb24gaWRlbnRpZnlpbmcgdGhlCj4gbWF4aW11bSB1c2VkIGNsb2NrIElEIGF0IHJ1bnRp
bWUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNo
ZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU4
OC5jIHwgIDUgKysrKy0KPiAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmMgICAgICAgIHwgMTcg
KysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmggICAgICAgIHwg
IDIgKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU4OC5jIGIvZHJp
dmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU4OC5jCj4gaW5kZXggNjk5NDE2NWUwMzk1Li4wYjYw
YWU3OGY5ZDggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU4OC5j
Cj4gKysrIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU4OC5jCj4gQEAgLTI0NTgsMTUg
KzI0NTgsMTggQEAgc3RhdGljIHN0cnVjdCByb2NrY2hpcF9jbGtfYnJhbmNoIHJrMzU4OF9jbGtf
YnJhbmNoZXNbXSBfX2luaXRkYXRhID0gewo+ICBzdGF0aWMgdm9pZCBfX2luaXQgcmszNTg4X2Ns
a19pbml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4gIHsKPiAgCXN0cnVjdCByb2NrY2hpcF9j
bGtfcHJvdmlkZXIgKmN0eDsKPiArCXVuc2lnbmVkIGxvbmcgY2xrX25yX2Nsa3M7Cj4gIAl2b2lk
IF9faW9tZW0gKnJlZ19iYXNlOwo+ICAKPiArCWNsa19ucl9jbGtzID0gcm9ja2NoaXBfY2xrX2Zp
bmRfbWF4X2Nsa19pZChyazM1ODhfY2xrX2JyYW5jaGVzLAo+ICsJCQkJCUFSUkFZX1NJWkUocmsz
NTg4X2Nsa19icmFuY2hlcykpICsgMTsKPiAgCXJlZ19iYXNlID0gb2ZfaW9tYXAobnAsIDApOwo+
ICAJaWYgKCFyZWdfYmFzZSkgewo+ICAJCXByX2VycigiJXM6IGNvdWxkIG5vdCBtYXAgY3J1IHJl
Z2lvblxuIiwgX19mdW5jX18pOwo+ICAJCXJldHVybjsKPiAgCX0KPiAgCj4gLQljdHggPSByb2Nr
Y2hpcF9jbGtfaW5pdChucCwgcmVnX2Jhc2UsIENMS19OUl9DTEtTKTsKPiArCWN0eCA9IHJvY2tj
aGlwX2Nsa19pbml0KG5wLCByZWdfYmFzZSwgY2xrX25yX2Nsa3MpOwo+ICAJaWYgKElTX0VSUihj
dHgpKSB7Cj4gIAkJcHJfZXJyKCIlczogcm9ja2NoaXAgY2xrIGluaXQgZmFpbGVkXG4iLCBfX2Z1
bmNfXyk7Cj4gIAkJaW91bm1hcChyZWdfYmFzZSk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xr
L3JvY2tjaGlwL2Nsay5jIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmMKPiBpbmRleCA0MDU5
ZDkzNjVhZTYuLjA0MzQ1OGI3YzU3OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay9yb2NrY2hp
cC9jbGsuYwo+ICsrKyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay5jCj4gQEAgLTQyOSw2ICs0
MjksMjMgQEAgdm9pZCByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfcGxscyhzdHJ1Y3Qgcm9ja2NoaXBf
Y2xrX3Byb3ZpZGVyICpjdHgsCj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwocm9ja2NoaXBfY2xr
X3JlZ2lzdGVyX3BsbHMpOwo+ICAKPiArdW5zaWduZWQgbG9uZyByb2NrY2hpcF9jbGtfZmluZF9t
YXhfY2xrX2lkKHN0cnVjdCByb2NrY2hpcF9jbGtfYnJhbmNoICpsaXN0LAo+ICsJCQkJCSAgIHVu
c2lnbmVkIGludCBucl9jbGspCj4gK3sKPiArCXVuc2lnbmVkIGludCBpZHg7Cj4gKwl1bnNpZ25l
ZCBsb25nIG1heDsKCnNtYXRjaCByZXBvcnQgd2FybmluZzogdW5pbml0aWFsaXplZCBzeW1ib2wg
J21heCcuCkFuZCBtYWtlIHN1cmUgdGhpcyBmdW5jdGlvbiByZXR1cm4gY29ycmVjdCBudW1iZXIs
IGZvciBleGFtcGxlLCB3aGVuIG5yX2NsayA9PSAwLgoKPiArCj4gKwlmb3IgKGlkeCA9IDA7IGlk
eCA8IG5yX2NsazsgaWR4KyssIGxpc3QrKykgewo+ICsJCWlmIChsaXN0LT5pZCA+IG1heCkKPiAr
CQkJbWF4ID0gbGlzdC0+aWQ7Cj4gKwkJaWYgKGxpc3QtPmNoaWxkICYmIGxpc3QtPmNoaWxkLT5p
ZCA+IG1heCkKPiArCQkJbWF4ID0gbGlzdC0+aWQ7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIG1heDsK
PiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTChyb2NrY2hpcF9jbGtfZmluZF9tYXhfY2xrX2lkKTsK
PiArCj4gIHZvaWQgcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzKHN0cnVjdCByb2NrY2hp
cF9jbGtfcHJvdmlkZXIgKmN0eCwKPiAgCQkJCSAgICBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX2JyYW5j
aCAqbGlzdCwKPiAgCQkJCSAgICB1bnNpZ25lZCBpbnQgbnJfY2xrKQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuaCBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay5oCj4g
aW5kZXggNzU4ZWJhZjIyMzZiLi5mZDNiNDc2ZGVkZGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9j
bGsvcm9ja2NoaXAvY2xrLmgKPiArKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuaAo+IEBA
IC05NzMsNiArOTczLDggQEAgc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92aWRlciAqcm9ja2NoaXBf
Y2xrX2luaXQoc3RydWN0IGRldmljZV9ub2RlICpucCwKPiAgCQkJdm9pZCBfX2lvbWVtICpiYXNl
LCB1bnNpZ25lZCBsb25nIG5yX2Nsa3MpOwo+ICB2b2lkIHJvY2tjaGlwX2Nsa19vZl9hZGRfcHJv
dmlkZXIoc3RydWN0IGRldmljZV9ub2RlICpucCwKPiAgCQkJCXN0cnVjdCByb2NrY2hpcF9jbGtf
cHJvdmlkZXIgKmN0eCk7Cj4gK3Vuc2lnbmVkIGxvbmcgcm9ja2NoaXBfY2xrX2ZpbmRfbWF4X2Ns
a19pZChzdHJ1Y3Qgcm9ja2NoaXBfY2xrX2JyYW5jaCAqbGlzdCwKPiArCQkJCQkgICB1bnNpZ25l
ZCBpbnQgbnJfY2xrKTsKPiAgdm9pZCByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXMoc3Ry
dWN0IHJvY2tjaGlwX2Nsa19wcm92aWRlciAqY3R4LAo+ICAJCQkJICAgIHN0cnVjdCByb2NrY2hp
cF9jbGtfYnJhbmNoICpsaXN0LAo+ICAJCQkJICAgIHVuc2lnbmVkIGludCBucl9jbGspOwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
