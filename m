Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E464E9E310
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Feb 2026 14:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SSHJtyOtRH+ZKgfXIIKTOLnkfoL3Io/AmNnnWQ+Y8GM=; b=d0Z5S62c/uGc5SFUbxLfAcOw2h
	kOu7+71u2wUG3Lk8M1JAd8sPUrMXbLYL8eTTS3Pg6A/ztFIX7LbqZ4VNSCfCQPqnydIrLbMHAQbSZ
	3PNPJaxTeuuHP1H3Ej7/1XvJG325hblLJaY5pE4tM16iGFQEdy9H6dwHUOfeVTV8c4T974DHl47Tg
	Sh78rdohMSqcMVf4xy1FBX7s9lrj0kmxlMHWyzg3vN0SAalAIqi8DxslFi0B9tcf9EGLKXsJkksTO
	bAqMkXl9r9OiHorpIlJJ+vPHrJnjekNSC51cztSURfSWu9VfipBiK4Q/dCvKd7y8+kUF/cxr/Gvjj
	sm/p+VpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqB5B-00000000ira-2N8D;
	Wed, 11 Feb 2026 14:20:45 +0000
Received: from mail-m155100.qiye.163.com ([101.71.155.100])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqB57-00000000iqr-2sj8;
	Wed, 11 Feb 2026 14:20:44 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 33e0ed73f;
	Wed, 11 Feb 2026 22:20:36 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, quentin.schulz@cherry.de,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 1/4] arm64: dts: rockchip: use gated-fixed-clock for
 pcie-refclk on rk3588-jaguar
To: Heiko Stuebner <heiko@sntech.de>
References: <20260210080303.680403-1-heiko@sntech.de>
 <20260210080303.680403-2-heiko@sntech.de>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <35e97a41-b88b-f526-351f-d4c5f70ee4e9@rock-chips.com>
Date: Wed, 11 Feb 2026 22:20:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260210080303.680403-2-heiko@sntech.de>
X-HM-Tid: 0a9c4d134d3309cckunm6558f76d1130b4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU9MH1YfT09OHk5PTEtOQ0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Jd/D6SqqvQ/D2crUTb0SspbNzDIKFiut0E+3WDbA/abOzfoUi9CbOdqOOIJbwKw6vfJUSXZQ38LibqNUbdgvQBdoZQdCWiDXH4agJO9R3b6QO90bSoYksEH3U3qdC0lpopMq++iBnFNaRR0kfPmQTxH2zmipkJyvNkYqCozK6/o=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=AutWd/q6ZaqPhu5uFw1JelIb15wNEG20TmOwXpnuti8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_062043_104627_B936B669 
X-CRM114-Status: GOOD (  18.47  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28KCtTaIDIwMjYvMDIvMTAg0MfG2rb+IDE2OjAyLCBIZWlrbyBTdHVlYm5lciDQtLXA
Ogo+IEZyb206IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckBjaGVycnkuZGU+Cj4gCj4g
VXNpbmcgYSBjb21iaW5hdGlvbiBvZiBmaXhlZCBjbG9jayBhbmQgZ3Bpby1nYXRlIGNsb2NrIHdv
cmtzIGJ1dCBkb2VzCj4gbm90IGRlc2NyaWJlIHRoZSBhY3R1YWwgaGFyZHdhcmUuIFVzZSB0aGUg
Z2F0ZWQtZml4ZWQtY2xvY2sgYmluZGluZwo+IHRvIGRlc2NyaWJlIHRoaXMgaW4gYSBuaWNlciB3
YXkuCj4gCj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0dWVibmVyQGNo
ZXJyeS5kZT4KPiAtLS0KPiAgIC4uLi9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtamFn
dWFyLmR0cyB8IDE5ICsrKysrLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1qYWd1YXIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtamFndWFyLmR0cwo+IGluZGV4IDk1MmFmZmFmNDU1Yy4uZTIxYWQ3
NTc1Y2I2IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LWphZ3Vhci5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1q
YWd1YXIuZHRzCj4gQEAgLTg2LDI1ICs4NiwxNiBAQCBsZWQtMSB7Cj4gICAJCX07Cj4gICAJfTsK
PiAgIAo+IC0JLyoKPiAtCSAqIDEwME1IeiByZWZlcmVuY2UgY2xvY2sgZm9yIFBDSWUgcGVyaXBo
ZXJhbHMgZnJvbSBQSTZDNTU3LTA1QkxFCj4gLQkgKiBjbG9jayBnZW5lcmF0b3IuCj4gLQkgKiBU
aGUgY2xvY2sgb3V0cHV0IGlzIGdhdGVkIHZpYSB0aGUgT0UgcGluIG9uIHRoZSBjbG9jayBnZW5l
cmF0b3IuCj4gLQkgKiBUaGlzIGlzIG1vZGVsZWQgYXMgYSBmaXhlZC1jbG9jayBwbHVzIGEgZ3Bp
by1nYXRlLWNsb2NrLgo+IC0JICovCj4gLQlwY2llX3JlZmNsa19nZW46IHBjaWUtcmVmY2xrLWdl
bi1jbG9jayB7Cj4gLQkJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4gKwkvKiAxMDBNSHog
UENJZSByZWZlcmVuY2UgY2xvY2sgZnJvbSBQSTZDNTU3LTA1QkxFICovCj4gKwlwY2llX3JlZmNs
azogcGNpZS1jbG9jay1nZW5lcmF0b3Igewo+ICsJCWNvbXBhdGlibGUgPSAiZ2F0ZWQtZml4ZWQt
Y2xvY2siOwo+ICAgCQkjY2xvY2stY2VsbHMgPSA8MD47Cj4gICAJCWNsb2NrLWZyZXF1ZW5jeSA9
IDwxMDAwMDAwMDA+Owo+IC0JfTsKPiAtCj4gLQlwY2llX3JlZmNsazogcGNpZS1yZWZjbGstY2xv
Y2sgewo+IC0JCWNvbXBhdGlibGUgPSAiZ3Bpby1nYXRlLWNsb2NrIjsKPiAtCQljbG9ja3MgPSA8
JnBjaWVfcmVmY2xrX2dlbj47Cj4gLQkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ICsJCWNsb2NrLW91
dHB1dC1uYW1lcyA9ICJwY2llLXJlZmNsay1jbG9jayI7Cj4gICAJCWVuYWJsZS1ncGlvcyA9IDwm
Z3BpbzAgUktfUEM2IEdQSU9fQUNUSVZFX0xPVz47IC8qIFBDSUUzMFg0X0NMS1JFUU5fTTAgKi8K
PiAgIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgIAkJcGluY3RybC0wID0gPCZwY2ll
MzB4NF9jbGtyZXFuX20wPjsKClRoaXMgbG9va3MgZmluZSwKClJldmlld2VkLWJ5OiBTaGF3biBM
aW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KCgo+ICsJCXZkZC1zdXBwbHkgPSA8JnZjY2Ff
M3YzX3MwPjsKPiAgIAl9Owo+ICAgCj4gICAJcHBzIHsKPiAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
