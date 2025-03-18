Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1046DC35FF3
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 19:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGjBAfOISaciipBKYMdR5aVAFWS03WM86pG+7U2/PrE=; b=5FOsk4NmTAE67g
	Vyvg3aOXpjEeXzhD0RZpKBCal1HLEa2aNLlwY5rQ/4ZFj4N+RQRAy+Yk+FvzitkFHF74El/3B7oeT
	WEQ6Tw9gHb46zt8qaMN9mv1pBxyLdLLTmKKqEFwsokcuNMVDw2kN4JlH7rFX6roL+vTLNczDmBZCe
	taR/7m8Go3OQaT6tqd7xIG36zU6HE8oWU8NXdyWZp62UHZ6siRZpKflPH/ACtyuL7iAJXQfLcvf7j
	/VQkCMo5Dzig0AK2eGKxrZI7CxLmeezrE7oAg7kb9ce3vnRecimvI183bGeQOO1DS9Z5GTj7mTAy4
	V1UR/65jzVb80DnnpQCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tucpP-00000006wX7-2Y4p;
	Tue, 18 Mar 2025 19:42:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tucnh-00000006wMa-0GDe;
	Tue, 18 Mar 2025 19:40:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=2yIRsFHirJ37KBcLD30+yZG2Opb6u/GoLSe5oqPfVTk=; b=g/KHEQ5HuI0l8F6zgsgk6oHdFg
	TfUN3InEJ5E+MTgL/itqTJpX3ootj1FWXqQzd7rl8//QbBWqScJDg5ZJHBVCXwuXnDC/AItAkGxmG
	cB/c0o1uv67ZeVYvwIp+bheSnj0X88axXENu7NtMXnSsKQ+LnkD5hKCtkrSiB8febnkkdegLDZqQ+
	CaufOzzMeL6qvCk2QtJIwIGxo7nTxLSMV7wriKfDEcPJ30TXHeCcJ3qTuxS0AHoKHQzixfVBjMG8F
	B6vNsj6FGbSSWvoukwz7twEmJgz0NWqNPHeBnQBYqby6zUcSc7iRHonK3vEaEXt4MdPogXXudNs8o
	2gUG8i4A==;
Received: from i53875bc6.versanet.de ([83.135.91.198] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tucnY-0001yR-FC; Tue, 18 Mar 2025 20:40:24 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrew Lunn <andrew@lunn.ch>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Improve gmac phy setup for QNAP-TS433
Date: Tue, 18 Mar 2025 20:40:23 +0100
Message-ID: <2984786.e9J7NaK4W3@diego>
In-Reply-To: <20250318184550.47642-2-uwe@kleine-koenig.org>
References: <20250318184550.47642-2-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_124033_126066_12A625C2 
X-CRM114-Status: GOOD (  18.16  )
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

SGV5IFV3ZSwKCkFtIERpZW5zdGFnLCAxOC4gTcOkcnogMjAyNSwgMTk6NDU6NDkgTUVaIHNjaHJp
ZWIgVXdlIEtsZWluZS1Lw7ZuaWc6Cj4gSW5zdGVhZCBvZiByZWx5aW5nIG9uIHRoZSBNRElPIGJy
b2FkY2FzdCBhZGRyZXNzICgwKSB0YWxrIHRvIHRoZSBwaHkgb24KPiBpdHMgY29uZmlndXJlZCBh
ZGRyZXNzLiBBbHNvIGFkZCB0aGUgcGh5IHJlc2V0IGdwaW8gd2hpY2ggd2FzIGZvdW5kIGJ5Cj4g
SGVpa28gaW5zcGVjdGluZyB0aGUgVS1Cb290IHZlbmRvciBzb3VyY2UgY29kZS4gSGUgaXMgc3Rp
bGwgdHJ5aW5nIHRvCj4gcmVjb3Zlci4KCkkgYmVsaWV2ZSB0aGVzZSB3YW50IHRvIGJlIHR3byBz
ZXBhcmF0ZSBjaGFuZ2VzIC4uLiBhcyBpbmRpY2F0ZWQgYnkKdGhlICJBbHNvIC4uLiIgaW4gdGhl
IGNvbW1pdCBtZXNzYWdlOgotIHJlc2V0LWdwaW8gYWRkaXRpb24gCi0gbWRpbyBhZGRyZXNzIGNo
YW5nZQoKYW5kIEkgZ3Vlc3MgYm90aCBjb3VsZCBwb3NzaWJseSBoYXZlIGEKCkZpeGVzOiA5ZGEx
YzAzMjdkNTggKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGJhc2ljIHN1cHBvcnQgZm9yIFFO
QVAgVFMtNDMzIikKCgpIZWlrbwoKPiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dXdlQGtsZWluZS1rb2VuaWcub3JnPgo+IC0tLQo+ICAuLi4vYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzIHwgMTUgKysrKysrKysrKysrKy0tCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCj4gaW5kZXgg
N2JkMzJkMjMwYWQyLi40MTFmOGFjNzk5NGIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cwo+IEBAIC00ODEsOSArNDgxLDE0
IEBAIGVlcHJvbUA1NiB7Cj4gIH07Cj4gIAo+ICAmbWRpbzAgewo+IC0JcmdtaWlfcGh5MDogZXRo
ZXJuZXQtcGh5QDAgewo+ICsJcmdtaWlfcGh5MDogZXRoZXJuZXQtcGh5QDMgewo+ICsJCS8qIE1v
dG9yY29tbSBZVDg1MjEgcGh5ICovCj4gIAkJY29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWVl
ZTgwMi4zLWMyMiI7Cj4gLQkJcmVnID0gPDB4MD47Cj4gKwkJcmVnID0gPDB4Mz47Cj4gKwkJcGlu
Y3RybC0wID0gPCZldGhfcGh5MF9yZXNldF9waW4+Owo+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4gKwkJcmVzZXQtYXNzZXJ0LXVzID0gPDEwMDAwPjsKPiArCQlyZXNldC1ncGlvcyA9
IDwmZ3BpbzAgUktfUEM2IEdQSU9fQUNUSVZFX0xPVz47Cj4gIAl9Owo+ICB9Owo+ICAKPiBAQCAt
NTU2LDYgKzU2MSwxMiBAQCAmcGNpZTN4MiB7Cj4gIH07Cj4gIAo+ICAmcGluY3RybCB7Cj4gKwln
bWFjMCB7Cj4gKwkJZXRoX3BoeTBfcmVzZXRfcGluOiBldGgtcGh5MC1yZXNldC1waW4gewo+ICsJ
CQlyb2NrY2hpcCxwaW5zID0gPDAgUktfUEM2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsK
PiArCQl9Owo+ICsJfTsKPiArCj4gIAlrZXlzIHsKPiAgCQljb3B5X2J1dHRvbl9waW46IGNvcHkt
YnV0dG9uLXBpbiB7Cj4gIAkJCXJvY2tjaGlwLHBpbnMgPSA8MCBSS19QQjYgUktfRlVOQ19HUElP
ICZwY2ZnX3B1bGxfdXA+Owo+IAo+IGJhc2UtY29tbWl0OiAyMDE0Yzk1YWZlY2VlM2U3NmNhNGE1
Njk1NmE5MzZlMjMyODNmMDViCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
