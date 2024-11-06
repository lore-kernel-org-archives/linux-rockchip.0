Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A38BAD59F73
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Nov 2024 20:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYXITINCiCqQCHP6PwuZQ9x0lH/QUR4500vnlWKrWUM=; b=iVleAWkiM7n0hD
	IU91OWWzkZKImjz9rJjayofu3lel4Ful6ZEXMlBceqa25S3a5qmYSgf2P7fHOOQu8V4MXM1YCXcmx
	di/Z3zfzj5hX6FBY2ofNR33EktqVPqjsWkglf/vIBMXKfjHk+22PSsPpBv/EVIL6E/7Jyzs7GeXss
	SouI4m05th0c+iPDg1XCb1uW3ap4tVlpz8O3AnhsLBWpAHA5QVoCFyTRv1sxUyn+Xv0zGVxwltwIr
	/3bSQeHDODWH6GuxNuLVcmf/iZLv72+ZSTgYzGibYMRp2FmwPHFdsFT80rV2tii7gKaLhD/V5ddLw
	CQRTuXEOP2ar7yYt1bTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8mvx-00000004jHy-2Fdu;
	Wed, 06 Nov 2024 20:47:21 +0000
Received: from [2a01:e0a:828:c7c0:e2d5:5eff:fe2d:8e8] (helo=luna.linkmauve.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8mrI-00000004iUw-2c80;
	Wed, 06 Nov 2024 20:42:35 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id 7CC2F15E5A9A; Wed, 06 Nov 2024 21:42:25 +0100 (CET)
Date: Wed, 6 Nov 2024 21:42:25 +0100
From: Link Mauve <linkmauve@linkmauve.fr>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Luis de Arquer <ldearquer@gmail.com>,
	Alexandre ARNOUD <aarnoud@me.com>, kernel@collabora.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: rockchip: Enable HDMI0 on rock-5b
Message-ID: <ZyvUsdc8ZhiD8-DY@desktop>
References: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
 <20241019-rk3588-hdmi0-dt-v2-2-466cd80e8ff9@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241019-rk3588-hdmi0-dt-v2-2-466cd80e8ff9@collabora.com>
Jabber-ID: linkmauve@linkmauve.fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_124232_832983_933FDF13 
X-CRM114-Status: GOOD (  20.56  )
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

SGksCgpJ4oCZdmUgdGVzdGVkIHRoaXMgc2VyaWVzIG9uIGEgUmFkeGEgUm9jayA1QiB1c2luZyBX
ZXN0b24sIGFuZCB0aHVzCnBhdGNoZXMgMSBhbmQgMiBhcmU6ClRlc3RlZC1ieTogTGluayBNYXV2
ZSA8bGlua21hdXZlQGxpbmttYXV2ZS5mcj4KCk9uIGEgVFYgd2hpY2ggZXJyb25lb3VzbHkgcmVw
b3J0cyAxMzYww5c3NjggYXMgaXRzIHByZWZlcnJlZCBtb2RlLApub3RoaW5nIGdldHMgZGlzcGxh
eWVkLiAgT25seSBzZXR0aW5nIGEgMTkyMMOXMTA4MCBtb2RlIHdpbGwgZGlzcGxheQp0aGluZ3Mg
Y29ycmVjdGx5LCBldmVyeSBvdGhlciBtb2RlIHN0YXlzIGJsYWNrLgoKQWxzbywgYmVmb3JlIHN0
YXJ0aW5nIFdlc3RvbiwgZHJtX2luZm8gcmVwb3J0cyBTdGF0dXM6IHVua25vd24sIDDDlzAgbW0s
Cm5vIG1vZGVzLCBhbmQgbm8gRURJRCBibG9iLiAgQWZ0ZXIgc3RhcnRpbmcgV2VzdG9uIGFsbCBv
ZiB0aGVzZSBwcm9wZXJ0eQpnZXQgbG9hZGVkIHByb3Blcmx5LCBhc2lkZSBmcm9tIHRoZSBwaHlz
aWNhbCBzaXplIHdoaWNoIGdldHMgc2V0IHRvIHRoZQpvYnZpb3VzbHkgaW52YWxpZCAxNjAww5c5
MDAgbW0uCgpUaGUgZmlyc3Qgc3RhcnQgb2YgV2VzdG9uIGFmdGVyIHJlYm9vdCB0YWtlcyBhIHRv
dGFsIG9mIDcuNHMsIHdoaWNoCnNlZW1zIHZlcnkgbG9uZyBqdXN0IHRvIChJIGJlbGlldmUpIHBy
b2JlIHRoZSBzY3JlZW4gYW5kIHBhcnNlIHRoZSBFRElELAppZiB0aGF04oCZcyB3aGF0IHRoZSBk
cml2ZXIgaXMgZG9pbmcuICBTdWJzZXF1ZW50IGxhdW5jaGVzIGNvbXBsZXRlIGluCmFib3V0IDQw
MCBtcywgd2hpY2ggaXMgY2xvc2VyIHRvIG15IGV4cGVjdGF0aW9uLgoKVGhhbmtzIGEgbG90IGZv
ciB0aGlzIHNlcmllcyEKCk9uIFNhdCwgT2N0IDE5LCAyMDI0IGF0IDAxOjEyOjExUE0gKzAzMDAs
IENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPiBBZGQgdGhlIG5lY2Vzc2FyeSBEVCBjaGFuZ2Vz
IHRvIGVuYWJsZSBIRE1JMCBvbiBSYWR4YSBST0NLIDVCLgo+IAo+IFRlc3RlZC1ieTogRlVLQVVN
SSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2Nh
bHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIHwgNDcgKysrKysrKysrKysr
KysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKQo+IAo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0
cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4gaW5k
ZXggZDZmZmY1Yjg2Yjg3MDIwZjExNWNlNjQ3OTVhZWU5MGMwMDJhMjI1NS4uMGMzYmFmNzQ5ODFi
NzE0ZWIyYTFlZGJjM2ZiYmI2OWNkNjg4Y2ZjMiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4gQEAgLTQsNiArNCw3IEBACj4gIAo+
ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+Cj4gICNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9sZWRzL2NvbW1vbi5oPgo+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3Mvc29jL3JvY2tjaGlw
LHZvcDIuaD4KPiAgI2luY2x1ZGUgInJrMzU4OC5kdHNpIgo+ICAKPiAgLyB7Cj4gQEAgLTM3LDYg
KzM4LDE3IEBAIGFuYWxvZy1zb3VuZCB7Cj4gIAkJcGluY3RybC0wID0gPCZocF9kZXRlY3Q+Owo+
ICAJfTsKPiAgCj4gKwloZG1pMC1jb24gewo+ICsJCWNvbXBhdGlibGUgPSAiaGRtaS1jb25uZWN0
b3IiOwo+ICsJCXR5cGUgPSAiYSI7Cj4gKwo+ICsJCXBvcnQgewo+ICsJCQloZG1pMF9jb25faW46
IGVuZHBvaW50IHsKPiArCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmaGRtaTBfb3V0X2Nvbj47Cj4g
KwkJCX07Cj4gKwkJfTsKPiArCX07Cj4gKwo+ICAJbGVkcyB7Cj4gIAkJY29tcGF0aWJsZSA9ICJn
cGlvLWxlZHMiOwo+ICAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gQEAgLTE5Miw2ICsy
MDQsMjYgQEAgJmdwdSB7Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4gIAo+ICsmaGRtaTAg
ewo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJmhkbWkwX2luIHsKPiArCWhkbWkw
X2luX3ZwMDogZW5kcG9pbnQgewo+ICsJCXJlbW90ZS1lbmRwb2ludCA9IDwmdnAwX291dF9oZG1p
MD47Cj4gKwl9Owo+ICt9Owo+ICsKPiArJmhkbWkwX291dCB7Cj4gKwloZG1pMF9vdXRfY29uOiBl
bmRwb2ludCB7Cj4gKwkJcmVtb3RlLWVuZHBvaW50ID0gPCZoZG1pMF9jb25faW4+Owo+ICsJfTsK
PiArfTsKPiArCj4gKyZoZHB0eHBoeV9oZG1pMCB7Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307
Cj4gKwo+ICAmaTJjMCB7Cj4gIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICAJcGluY3Ry
bC0wID0gPCZpMmMwbTJfeGZlcj47Cj4gQEAgLTg1OCwzICs4OTAsMTggQEAgJnVzYl9ob3N0MV94
aGNpIHsKPiAgJnVzYl9ob3N0Ml94aGNpIHsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAr
Cj4gKyZ2b3BfbW11IHsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZ2b3Agewo+
ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJnZwMCB7Cj4gKwl2cDBfb3V0X2hkbWkw
OiBlbmRwb2ludEBST0NLQ0hJUF9WT1AyX0VQX0hETUkwIHsKPiArCQlyZWcgPSA8Uk9DS0NISVBf
Vk9QMl9FUF9IRE1JMD47Cj4gKwkJcmVtb3RlLWVuZHBvaW50ID0gPCZoZG1pMF9pbl92cDA+Owo+
ICsJfTsKPiArfTsKPiAKPiAtLSAKPiAyLjQ3LjAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgotLSAKTGluayBNYXV2
ZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
