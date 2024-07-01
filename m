Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F0A7C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jul 2024 08:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09Js8nMz2a4KlTlzpKjH13nnxYZEY67ogSuNqANlCss=; b=CuXg4Vqrxlqls4
	Nttn1vapX+fes91Um/zpfBDDlUBtd2CIj3wsgkmOEoATE+3F2n7nfJlBQNoAEvsCQQLggkiJ6tywd
	0lnzprQCWWMY5Vkh1WAgKtngiMt1rUmAYaEXheNocL7GV7/XdQT5UU5gkYVt6FAS68BhKLc+iSbJf
	1dMj6Xb3ptapzD9LbPRqrphzMbiBHC4RwtCgX8FeUZD6mMG3N824CxmMjupMLlpx/sGZ1ktfNHseV
	9Yhoy5R7hOcb2N9wjACyXL7qARJz+Is7UR3w1fTz6wZ8rXiSI6E1mUwk0qrE/qOwMpILWRv8sHsDb
	ENadd/whID16DdfFLdOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOCbh-00000002GqJ-3LIS;
	Mon, 01 Jul 2024 08:41:53 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOCbW-00000002Glp-1L97;
	Mon, 01 Jul 2024 08:41:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6A259CE1077;
	Mon,  1 Jul 2024 08:41:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5590C116B1;
	Mon,  1 Jul 2024 08:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719823299;
	bh=hg+g7DiLnSzkTsvXjpWJRV2heN5XuuVLmYBc59TNCUg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UkoFlXfJsZhhnKX24BRkCiNKND2UWpXS+xqQonjFz3XLkR2/9BMFdGS3e8wdZAWOo
	 0XB+jbnH85jecYk9bhvMNOCFQ8C00l1fV6D3izX8vOCFvhnKR+vAmcelDVOd5q2Nu2
	 ydZ5yqd0PiJ2PyzAA55nwTiKAs2uchDveGeBlhgDXptedtSsNJh7yMobx53X+/OD4G
	 mUW4pM2OJzeHsSSq82mAdy5s+5Yw5c6KSz9dPrmsyi4Gg9k3ApexKHgO4OqTQOLzax
	 RvUCc+ZNtc0K95iaRnksSBJ7fZ9E77n9OGKOAGIXuL35lHUvLHGvnaf6oSWUpeCe1r
	 LQYq+T7Bzxs4A==
Message-ID: <3fe026a2-a8d6-4688-863f-1237e71945ea@kernel.org>
Date: Mon, 1 Jul 2024 10:41:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] arm64: dts: rockchip: Add AP6275P wireless support
 to Khadas Edge 2
To: Jacobe Zang <jacobe.zang@wesion.com>,
 "arend.vanspriel@broadcom.com" <arend.vanspriel@broadcom.com>
Cc: "kvalo@kernel.org" <kvalo@kernel.org>,
 "duoming@zju.edu.cn" <duoming@zju.edu.cn>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "minipli@grsecurity.net" <minipli@grsecurity.net>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>,
 "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>,
 "megi@xff.cz" <megi@xff.cz>, "robh@kernel.org" <robh@kernel.org>,
 "efectn@protonmail.com" <efectn@protonmail.com>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>, Nick Xie <nick@khadas.com>,
 "jagan@edgeble.ai" <jagan@edgeble.ai>,
 "dsimic@manjaro.org" <dsimic@manjaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20240624081906.1399447-1-jacobe.zang@wesion.com>
 <20240624081906.1399447-2-jacobe.zang@wesion.com>
 <258459b8-549b-4a63-8d33-76c9631483f1@kernel.org>
 <TYZPR03MB7001D4DE507C919802B2F7F380D52@TYZPR03MB7001.apcprd03.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <TYZPR03MB7001D4DE507C919802B2F7F380D52@TYZPR03MB7001.apcprd03.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_014142_737625_56B935E0 
X-CRM114-Status: GOOD (  16.43  )
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

T24gMjUvMDYvMjAyNCAxMDowNCwgSmFjb2JlIFphbmcgd3JvdGU6Cj4+PiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLWtoYWRhcy1lZGdlMi5kdHMgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMta2hhZGFzLWVkZ2UyLmR0cwo+Pj4g
aW5kZXggM2I2Mjg2NDYxYTc0Ni4uZjY3NGRlYjZmN2RhOCAxMDA2NDQKPj4+IC0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1raGFkYXMtZWRnZTIuZHRzCj4+PiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMta2hhZGFzLWVkZ2UyLmR0cwo+
Pj4gQEAgLTM1Niw2ICszNTYsMjIgQEAgJnBjaWUyeDFsMiB7Cj4+PiDCoMKgwqDCoMKgwqDCoCBy
ZXNldC1ncGlvcyA9IDwmZ3BpbzMgUktfUEQxIEdQSU9fQUNUSVZFX0hJR0g+Owo+Pj4gwqDCoMKg
wqDCoMKgwqAgdnBjaWUzdjMtc3VwcGx5ID0gPCZ2Y2MzdjNfcGNpZV93bD47Cj4+PiDCoMKgwqDC
oMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+PiArCj4+PiArwqDCoMKgwqAgcGNpZUAwLDAgewo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHg0MDAwMDAgMCAwIDAgMD47Cj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNhZGRyZXNzLWNlbGxzID0gPDM+Owo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwyPjsKPj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmFuZ2VzOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZp
Y2VfdHlwZSA9ICJwY2kiOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBidXMtcmFuZ2Ug
PSA8MHg0MCAweDRmPjsKPj4KPj4gSXNuJ3QgYnVzLXJhbmdlIGEgcHJvcGVydHkgb2YgUENJIGhv
c3QgYnJpZGdlLCBzbyB0aGUgcGFyZW50PyBUaGlzIGlzIGEKPj4gUENJIGRldmljZSwgcmlnaHQ/
Cj4+Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdpZmk6IHdpZmlAMCwwIHsK
Pj4KPj4gQmluZGluZyBkb2VzIG5vdCBzYXkgYW55dGhpbmcgYWJvdXQgdGhpcy4gUm9ja2NoaXAg
UENJIGNvbnRyb2xsZXIgaXMgdGhlCj4+IFBDSSBob3N0IGJyaWRnZSwgaXNuJ3QgaXQ/IFRoZW4g
dGhlIHBjaUAwLDAgaXMgdGhlIGNoaWxkLCBzbyB3aGF0IGlzIHRoaXM/Cj4gCj4gVGhlIGhvc3Qg
YnJpZGdlIGlzIHRoZSBwYXJlbnQgb2YgcGNpZUAwLDAuIEFuZCBwY2llQDAsMCBpcyBCcmlkZ2Ux
LCBzbyB0aGUKCkRvIHlvdSB3YW50IHRvIHNheSBSb2NrY2hpcCBQQ0kgaXMgUENJLVBDSSBicmlk
Z2U/IEJpbmRpbmdzIGRvIG5vdCBhbGxvdyBpdC4KCj4gd2lmaUAwLDAgYXMgYSBkZXZpY2UgdW5k
ZXIgdGhlIEJyaWRnZTEuCj4gCj4+Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZWcgPSA8MHg0MTAwMDAgMCAwIDAgMD47Cj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8Jmh5bTg1NjM+Owo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMgPSAiMzJrIjsK
Pj4KPj4gMS4gQmluZGluZ3MgYXJlIGJlZm9yZSB0aGUgdXNlcnMuCj4+IDIuIFdoZXJlIGlzIHRo
ZSBjb21wYXRpYmxlPyBBcmUgeW91IHN1cmUgdGhpcyB2YWxpZGF0ZXM/Cj4gCj4gQmVmb3JlLCB0
aGUgY29tcGF0aWJsZSBpcyAicGNpMTRlNCw0NDlkIiwgYnV0IHdoZW4gSSBjaGVja3BhdGNoIHRo
ZSB3YXJuaW5nCj4gc2FpZCB0aGF0ICJwY2kxNGU0IiB3YXMgbm90IGRvY3VtZW50ZWQsIHNvIEkg
cmVtb3ZlIHRoZSBjb21wYXRpYmxlIHdoaWNoIAo+IGRvZXNuJ3QgYWZmZWN0IHRoZSBXaS1GaSBm
dW5jdGlvbi4gSSBoYXZlIHRyaWVkIHRvIGFkZCAicGNpMTRlNCIgdG8gCj4gdmVuZG9yLXByZWZp
eGVzLnlhbWwgYnV0IHdhcyByZWZ1c2VkLiBTbyB3aGV0aGVyIHNob3VsZCBJIGFkZCB0aGUgY29t
cGF0aWJsZSAKPiB3aXRoIHdhcm5pbmc/IAoKSSB0YWxrIGFib3V0IGR0YnNfY2hlY2ssIG5vdCBj
aGVja3BhdGNoLiBUaGF0IGNoZWNrcGF0Y2ggd2FybmluZyBkb2VzCm5vdCBtYXR0ZXIsIG9idmlv
dXNseS4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
