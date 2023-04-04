Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BA0CC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 12:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w75lZvzaForxiK4X6iintFgnhY6icdb0VFH1rbwjNls=; b=ZK44NauRZSvgcO
	52bJsUR19Zc1F/1dGz1Ploieubo1VoqTAZq7D6jXiIk14Uzdku6M0nvFGC9YsaT6oWjmior2NE3Lb
	liJVZ66ZzvbZwy7rL44V1z5QPbbPZNedMvn4TSpADl7NXJvKxFOE6nl16kd7W/ktdklXDt/cwsvG6
	jNHdHuKr7KbpgejZJK9ubAf3Q1MFk53bPmrEMAfXLzW9L+t3UxITxlkc/2ottgrxSlSPQx/F9JiKL
	/Wx581vxx3X20Dge3uwaJORPz8DBb7rpZG3t3BOnnzkpjvqQvhCSxD0QlZtXu3aFgWGv7qXs4Esvj
	uhRnnJUUKonvZRCi8SRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfNa-001C46-1j;
	Tue, 04 Apr 2023 12:03:14 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfNX-001C2A-0N;
	Tue, 04 Apr 2023 12:03:12 +0000
Received: from [IPv6:2a00:23c7:6883:e501:e15b:407b:49da:d40e] (unknown [IPv6:2a00:23c7:6883:e501:e15b:407b:49da:d40e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9E6A26603158;
	Tue,  4 Apr 2023 13:03:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680609789;
	bh=EqCuUIa26dLCJIvyIcfxXwu2vSGTNNCWYPJnB/cNK2Y=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Tz0SoriJge1fjbnmAt9vwvUlwVBBreEh0NihySKYb4y97SmwkCYB2pIBWJvFPYQgg
	 6T3XOohm875kZRmwGTDLmR/Giq81x/IEiLDxZhX5DgPoMZBRJGa6GQdKO7ORiy4xix
	 FVf/yMEGnROX3NVpT52V+6ClFpYWgDjMfVMVprOU3oU8Q6umoM+sYMkZI93rsmKTCo
	 zM3o+ocwH4hS/U7vi5fCKEACeMXUoUOWr+IdLLOs4LK7QLYd4ISW0OV3uOLUgUi5P4
	 DeEo6HfFlZg8DawlvwposK3DhNv+R/yopCYWzGIJNPsWapqVRa6OD//jUs/io9ISff
	 9RgQMqsJCK3cQ==
Message-ID: <b1c27c7499660d0601927e8fdc5e9b1f6c691e57.camel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add RTC support for RK3588
From: Christopher Obbard <chris.obbard@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Date: Tue, 04 Apr 2023 13:03:07 +0100
In-Reply-To: <20230404115802.33693-1-shreeya.patel@collabora.com>
References: <20230404115802.33693-1-shreeya.patel@collabora.com>
User-Agent: Evolution 3.46.4-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_050311_284136_5C7E74B1 
X-CRM114-Status: GOOD (  16.76  )
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

SGkgU2hyZWV5YSwKCk9uIFR1ZSwgMjAyMy0wNC0wNCBhdCAxNzoyOCArMDUzMCwgU2hyZWV5YSBQ
YXRlbCB3cm90ZToKPiBBZGQgRFQgbm9kZSB0byBlbmFibGUgUlRDIHN1cHBvcnQgb24gUkszNTg4
IGJvYXJkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNocmVleWEgUGF0ZWwgPHNocmVleWEucGF0ZWxA
Y29sbGFib3JhLmNvbT4KCm5pdDogSXQnZCBiZSBncmVhdCB0byBtYWtlIHRoZSBzdWJqZWN0IHNv
bWV0aGluZyBtb3JlIGRlc2NyaXB0aXZlIGFib3V0IHRoZSBzdXBwb3J0ZWQgaGFyZHdhcmUsIHNp
bmNlIHRoaXMgcGF0Y2ggZG9lc24ndCBlbmFibGUgdGhlIFJUQyBmb3IgX2FsbF8gUkszNTg4IGJv
YXJkcyB5b3VyIHN1YmplY3QgY291bGQgYmUgYSBiaXQgbWlzbGVhZGluZy4KU29tZXRoaW5nIGxp
a2UgImFybTY0OiBkdHM6IHJvY2tjaGlwOiBFbmFibGUgUlRDIHN1cHBvcnQgZm9yIFJvY2sgNUIi
IGNvdWxkIGJlIGJldHRlci4KClJldmlld2VkLWJ5OiBDaHJpc3RvcGhlciBPYmJhcmQgPGNocmlz
Lm9iYmFyZEBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiDCoC4uLi9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtcm9jay01Yi5kdHPCoMKgwqDCoMKgIHwgMjcgKysrKysrKysrKysrKysrKysrKwo+IMKg
MSBmaWxlIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+IGluZGV4IDk1ODA1Y2IwYWRmYS4u
YTMyYmZhOGQ5MTRhIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LXJvY2stNWIuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtcm9jay01Yi5kdHMKPiBAQCAtMjcsNiArMjcsMzEgQEAgdmNjNXYwX3N5czogdmNjNXYw
LXN5cy1yZWd1bGF0b3Igewo+IMKgwqDCoMKgwqDCoMKgwqB9Owo+IMKgfTsKPiDCoAo+ICsmaTJj
NiB7Cj4gK8KgwqDCoMKgwqDCoMKgc3RhdHVzID0gIm9rYXkiOwo+ICsKPiArwqDCoMKgwqDCoMKg
wqBoeW04NTYzOiBoeW04NTYzQDUxIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
Y29tcGF0aWJsZSA9ICJoYW95dSxoeW04NTYzIjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmVnID0gPDB4NTE+Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjY2xv
Y2stY2VsbHMgPSA8MD47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNsb2NrLWZy
ZXF1ZW5jeSA9IDwzMjc2OD47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNsb2Nr
LW91dHB1dC1uYW1lcyA9ICJoeW04NTYzIjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcGluY3RybC0wID0gPCZoeW04NTYzX2ludD47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8wPjsKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaW50ZXJydXB0cyA9IDxSS19QQjAgSVJRX1RZUEVfTEVWRUxfTE9XPjsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgd2FrZXVwLXNvdXJjZTsKPiArwqDCoMKg
wqDCoMKgwqB9Owo+ICt9Owo+ICsKPiArJnBpbmN0cmwgewo+ICvCoMKgwqDCoMKgwqDCoGh5bTg1
NjMgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBoeW04NTYzX2ludDogaHltODU2
My1pbnQgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cm9ja2NoaXAscGlucyA9IDwwIFJLX1BCMCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsKPiArwqDCoMKgwqDCoMKgwqB9Owo+
ICt9Owo+ICsKPiDCoCZzZGhjaSB7Cj4gwqDCoMKgwqDCoMKgwqDCoGJ1cy13aWR0aCA9IDw4PjsK
PiDCoMKgwqDCoMKgwqDCoMKgbm8tc2RpbzsKPiBAQCAtNDIsMyArNjcsNSBAQCAmdWFydDIgewo+
IMKgwqDCoMKgwqDCoMKgwqBwaW5jdHJsLTAgPSA8JnVhcnQybTBfeGZlcj47Cj4gwqDCoMKgwqDC
oMKgwqDCoHN0YXR1cyA9ICJva2F5IjsKPiDCoH07Cj4gKwo+ICsKPiAtLSAKPiAyLjMwLjIKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
