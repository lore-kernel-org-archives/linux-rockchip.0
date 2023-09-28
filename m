Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 821C3CE7B1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 10:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5U3jhO0rHv/hX+fizLzthVvYJR4cH2MbLGFwy6q+ydk=; b=QTMJS3XPZFYO2a
	cA/NZUpMpJ4SiS3y++GY6lELqKKfGpqMub8va6Fh0YKY5+P2jEKgesLtff6Osr6oC7/K+uRyRWfM/
	mqvxCBbyyO8OF/dfi6EIYY9EZXcnENVTXDTRzMxFUDbVPvoZ3BSkUzZjBzHoNe/Sbwq3V9KhNg/Gz
	GP28ddjgMS7SKDGHhS04gtgj7H9umb1QSv74+Fs16ZclzDeKrWlQewhG+JbAkNhMnou6KkfpJLDFH
	PE1dZfHM7qj43IHqOJ1QLLmBDhVBVEJ/qykvhSUW9B7pqDS4DF39awPCFzXQ23lkx8oTxjJP68x7r
	R9P9vMyn0mwVpIK6Tx5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qloci-002xnm-1s;
	Thu, 28 Sep 2023 10:52:00 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qloce-002xlI-0A;
	Thu, 28 Sep 2023 10:51:57 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38SApdDT010995;
	Thu, 28 Sep 2023 05:51:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695898299;
	bh=yQ23yP/4dLIZZYBzgjMWswPX30FCFAgk9cKsBV41l1w=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=m5ODKqDG5onzNxq/eWYNosvJKXhxGK4K9GBtgPrZxKvOYPw5sUxVzLmIc3XDWp9wQ
	 8U638e914wJ1FuQiCJABqJKYcrctXxxxRPL/Z6ZmsIb/OFYpdPEUiG9E+KQ75tDBtC
	 jezhpFs3N96g557+2STN2iI/STq0TXTieMBVgfE4=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38SApd4a056756
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 28 Sep 2023 05:51:39 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 28
 Sep 2023 05:51:39 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 28 Sep 2023 05:51:39 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38SApcig093586;
	Thu, 28 Sep 2023 05:51:39 -0500
Date: Thu, 28 Sep 2023 16:21:37 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Muhammed Efe Cetin <efectn@6tel.net>
CC: <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <heiko@sntech.de>,
        <sebastian.reichel@collabora.com>, <jonas@kwiboo.se>, <megi@xff.cz>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: Add Orange Pi 5
Message-ID: <20230928105137.5ljhuoxjc7et5thw@dhruva>
References: <cover.1692632346.git.efectn@6tel.net>
 <1dac46f3d6d4b4a1b2621534da0bdde9a9cf777c.1692632346.git.efectn@6tel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1dac46f3d6d4b4a1b2621534da0bdde9a9cf777c.1692632346.git.efectn@6tel.net>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_035156_185973_83A0BD66 
X-CRM114-Status: GOOD (  18.50  )
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

SGksCgpPbiBBdWcgMjEsIDIwMjMgYXQgMTg6NDc6NTkgKzAzMDAsIE11aGFtbWVkIEVmZSBDZXRp
biB3cm90ZToKPiBBZGQgaW5pdGlhbCBzdXBwb3J0IGZvciBPUGk1IHRoYXQgaW5jbHVkZXMgc3Vw
cG9ydCBmb3IgVVNCMiwgUENJZTIsIFNhdGEsCj4gU2RtbWMsIFNQSSBGbGFzaCwgUE1JQy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBNdWhhbW1lZCBFZmUgQ2V0aW4gPGVmZWN0bkA2dGVsLm5ldD4KPiBS
ZXZpZXdlZC1ieTogT25kxZllaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+IC0tLQo+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDEgKwo+ICAuLi4vYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01LmR0cyAgfCA2NzMgKysrKysrKysrKysr
KysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNjc0IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01
LmR0cwo+IAouLi4KCkNhbiB5b3UgcHJvdmlkZSBzb21lIHNvcnQgb2YgZG9jdW1lbnRhdGlvbiBv
biBob3cgSSBjYW4gYnVpbGQgYW5kIGJvb3QKdGhlIGtlcm5lbCBvbiB0aGlzIGJvYXJkPyBJIHdh
cyB1bmFibGUgdG8gdXNlIHRoZSB1cHN0cmVhbSBhcm02NApkZWZjb25maWcgd2l0aCB0aGlzIGV4
YWN0IHNlcmllcyBhcHBsaWVkIHRvIGJvb3QgdGhlIGJvYXJkLgoKPiArCj4gKyZpMmM2IHsKPiAr
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLTAgPSA8JmkyYzZtM194ZmVy
PjsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArCj4gKwloeW04NTYzOiBydGNANTEgewo+ICsJCWNv
bXBhdGlibGUgPSAiaGFveXUsaHltODU2MyI7Cj4gKwkJcmVnID0gPDB4NTE+Owo+ICsJCSNjbG9j
ay1jZWxscyA9IDwwPjsKPiArCQljbG9jay1vdXRwdXQtbmFtZXMgPSAiaHltODU2MyI7Cj4gKwkJ
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8Jmh5bTg1NjNfaW50
PjsKPiArCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvMD47Cj4gKwkJaW50ZXJydXB0cyA9IDxS
S19QQjAgSVJRX1RZUEVfTEVWRUxfTE9XPjsKPiArCQl3YWtldXAtc291cmNlOwoKQXJlIHlvdSBh
YmxlIHRvIGFjdHVhbGx5IHVzZSBydGMgYXMgYSB3YWtldXAgc291cmNlPyBJIHRyaWVkIHRoaXMK
b24gYSBkb3duc3RyZWFtIGtlcm5lbCB0aGF0IEkgbWVudGlvbiBiZWxvdy4uCgpydGN3YWtlIC1z
IDEwIC1tIG1lbQoKZGlkbid0IGFjdHVhbGx5IHNlZW0gdG8gd2FrZSB0aGUgZGV2aWNlIGZyb20g
ZGVlcHNsZWVwIGFmdGVyIDEwIHNlY29uZHMuCkRvIHlvdSBrbm93IHdoYXQgb3RoZXIgcGlucyBJ
IGNhbiB1c2UgYXMgd2FrZXVwIHNvdXJjZXM/Cgo+ICsJfTsKPiArfTsKPiArCj4gKyZtZGlvMSB7
Cj4gKwlyZ21paV9waHkxOiBldGhlcm5ldC1waHlAMSB7Cj4gKwkJY29tcGF0aWJsZSA9ICJldGhl
cm5ldC1waHktaWVlZTgwMi4zLWMyMiI7CgpKdXN0IHdvbmRlcmluZywgY2FuIHlvdSBwbGVhc2Ug
Z2l2ZSBzb21lIGxvZ3Mgb2YgdGhlIGJvYXJkIHdpdGggZXRoCndvcmtpbmc/IFRoZSBpbWFnZSB0
aGF0IEkgaGF2ZSBmcm9tIG9waSBzZWVtcyB0byBmYWlsIGV0aD8gQXMgaW4gSSBhbQpub3QgYWJs
ZSB0byBzZWUgYW55IGlwIGFkZHJlc3MuIGhlcmUgYXJlIHRoZSBsb2dzOgoKaHR0cHM6Ly9naXN0
LmdpdGh1Yi5jb20vRGhydXZhRzIwMDAvZWRhMjc2MmUzNTAxM2M4ZDVhYzlmMzdlODE4MTAzYTMK
Ci4uLgoKLS0gCkJlc3QgcmVnYXJkcywKRGhydXZhIEdvbGUgPGQtZ29sZUB0aS5jb20+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
