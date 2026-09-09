Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CC76C79F82
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 00:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhJaJKSoX/eYV0kkflcNt0ihQgNqzrlHmQI18BDy4F8=; b=o0S7FK95mSGgbx
	siZLXHyZi82sigLdAzecQucY+nZUrfmlnp65zGQiHN4L6XP0HqOWE2Lnr4b88KcblZbL3vMiFDOEF
	pc9/Tqxx7e6WcyStMQnHSFEaWQwttaMnNoY4/5ecdbOMZb9tv5xfc4mR/0tXJoCaazexzg+txhNW+
	IPo332RrGE3vP/c5OkJJLe118KwZZtzXwMLYKEoplmM5ikyqk4Ivjul6l65YoBWv9BxEvRbp01K+h
	+cPdliSnzRyXSZjjLijc0CjsmxEx0yhuqTKQzzjidpOL7vRNzZeijq8/7qd9soW3whKp+XaKTjujE
	1Hnx++2vVoxB7nclgERA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46aE-0000000AYe5-1LtZ;
	Wed, 09 Sep 2026 00:54:38 +0000
Received: from mail-m1602365262.xmail.ntesmail.com ([160.236.52.62])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x46aA-0000000AYcT-2SK8;
	Wed, 09 Sep 2026 00:54:36 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4d0905848;
	Wed, 9 Sep 2026 08:54:29 +0800 (GMT+08:00)
Message-ID: <26006eef-56b3-4a81-8b4c-95ac241412cb@rock-chips.com>
Date: Wed, 9 Sep 2026 08:54:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Alexey Charkov <alchark@flipper.net>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 03/10] PCI: dw-rockchip: Move devm_phy_get out of
 phy_init
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jingoo Han <jingoohan1@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 "Yury Norov (NVIDIA)" <yury.norov@gmail.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
References: <20260908-rockchip-pcie-system-suspend-v6-0-fbabcca9921b@collabora.com>
 <20260908-rockchip-pcie-system-suspend-v6-3-fbabcca9921b@collabora.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260908-rockchip-pcie-system-suspend-v6-3-fbabcca9921b@collabora.com>
X-HM-Tid: 0aa083a8bf7103a4kunm4244ed5d43fc53
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCSh1MVkNJQk4dTBhCSE0eS1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=KmXB2npbkEt7CZvkKJcT5M6qDw2i7cCdkaVp4hQw6JqugrzoiXbkmlVDz1fpqHrq3/Lo0GHHseH/PffkVdv699JZxxH+IB2ye2sZz/Gt7NfojO4bRGNoof0/1zQqTd1okvCihaUf7Kr5vLnWxfyoprykKBpqbKY0Qj67vVCiSd8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=RPL25zB+175xW+b9ln85IKNsB2hgoRLnH6maFPW5Ixw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_175435_210054_45ADDDA1 
X-CRM114-Status: GOOD (  17.73  )
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

5ZyoIDIwMjYvMDkvMDgg5pif5pyf5LqMIDIyOjUxLCBTZWJhc3RpYW4gUmVpY2hlbCDlhpnpgZM6
Cj4gQnkgbW92aW5nIGRldm1fcGh5X2dldCgpIHRvIHRoZSBwcm9iZSByb3V0aW5lLCByb2NrY2hp
cF9wY2llX3BoeV9pbml0KCkKPiBjYW4gYmUgdXNlZCB0byByZS1pbml0aWFsaXplIHRoZSBQQ0ll
IFBIWSwgd2hpY2ggaXMgZm9yIGV4YW1wbGUgbmVlZGVkCj4gYWZ0ZXIgYSBzeXN0ZW0gc3VzcGVu
ZC9yZXN1bWUgY3ljbGUuCj4gCgpSZXZpZXdlZC1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9j
ay1jaGlwcy5jb20+Cgo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwgMTMgKysrKysrKy0tLS0tLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggZjY3YWQzYzMxYzM1
Li43NDcyZWM3OGI0NzMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kdy1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jCj4gQEAgLTYxMiwxNCArNjEyLDggQEAgc3RhdGljIGludCByb2NrY2hp
cF9wY2llX3Jlc291cmNlX2dldChzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ICAgCj4g
ICBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcGh5X2luaXQoc3RydWN0IHJvY2tjaGlwX3BjaWUg
KnJvY2tjaGlwKQo+ICAgewo+IC0Jc3RydWN0IGRldmljZSAqZGV2ID0gcm9ja2NoaXAtPnBjaS5k
ZXY7Cj4gICAJaW50IHJldDsKPiAgIAo+IC0Jcm9ja2NoaXAtPnBoeSA9IGRldm1fcGh5X2dldChk
ZXYsICJwY2llLXBoeSIpOwo+IC0JaWYgKElTX0VSUihyb2NrY2hpcC0+cGh5KSkKPiAtCQlyZXR1
cm4gZGV2X2Vycl9wcm9iZShkZXYsIFBUUl9FUlIocm9ja2NoaXAtPnBoeSksCj4gLQkJCQkgICAg
ICJtaXNzaW5nIFBIWVxuIik7Cj4gLQo+ICAgCXJldCA9IHBoeV9pbml0KHJvY2tjaGlwLT5waHkp
Owo+ICAgCWlmIChyZXQgPCAwKQo+ICAgCQlyZXR1cm4gcmV0Owo+IEBAIC04NTgsNiArODUyLDEz
IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ICAgCQkJCQkgICAgICJmYWlsZWQgdG8gZW5hYmxlIHZwY2llM3YzIHJlZ3VsYXRv
clxuIik7Cj4gICAJfQo+ICAgCj4gKwlyb2NrY2hpcC0+cGh5ID0gZGV2bV9waHlfZ2V0KGRldiwg
InBjaWUtcGh5Iik7Cj4gKwlpZiAoSVNfRVJSKHJvY2tjaGlwLT5waHkpKSB7Cj4gKwkJcmV0ID0g
UFRSX0VSUihyb2NrY2hpcC0+cGh5KTsKPiArCQlkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAibWlz
c2luZyBQSFlcbiIpOwo+ICsJCWdvdG8gZGlzYWJsZV9yZWd1bGF0b3I7Cj4gKwl9Cj4gKwo+ICAg
CXJldCA9IHJvY2tjaGlwX3BjaWVfcGh5X2luaXQocm9ja2NoaXApOwo+ICAgCWlmIChyZXQpCj4g
ICAJCWdvdG8gZGlzYWJsZV9yZWd1bGF0b3I7Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
