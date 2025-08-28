Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB328CA0FFE
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 17:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8UEndIl5UV5qxJ9/KOMzaEoSexnH51JifMPr0YH280=; b=z7bbWx13aJUHVA
	rn6v1NjIYyEaLljQ9J/8cGdw6K/20oVdSSFMFWJnaQatNkVYWBcF4ZCmDQM28kn6MKsZzmD5tHwV7
	UErM17vjdt1xlsr2EX9E6Z4oi4Ac4UHxC89xMu3FWLDQntrslFOIvfBjNobxD4DgE8pbCeYKO01Eg
	LBHqI4kV+pJ13UBU6KfSRhMK05DkeNZiGaHYXGL70Jqa7wqHnFrT29BRty7gR8vMl3RdvZOv1iR1y
	IorqiHNsQry/6PW2OFzQ5uPng9tyhPahnHj6glyYon8Mv5ydazVG0Zl0b1wpKYKt/uojcpesiiYv0
	3MmxdOEbtpW+beZsX+VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgLl-00000002Q6R-0auo;
	Thu, 28 Aug 2025 17:23:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urbN2-00000001RD1-2OMI;
	Thu, 28 Aug 2025 12:04:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vPdymbaCqau+yaCWSCW4KLmPAF+HpjkM+g2fCUR5lNY=; b=dXfse24ojcLjDHCLcShxSynjgY
	N3lUpTszTBimpfq/1btLaJ5GmD2APYQLHOXc4DgzbEXb/MrcIWlyZKL4lIS5mG2MbF9glnlRmfRhT
	me0SSegWwB5BxdHbpsmlFCgvJy4VgoZkLTtUjvjksXVm1Y5lpTDUhCqGkrtdFHe3gcKFAoCpOFIJB
	764/UBax1SXtRp8cspT1503G4cSGfPKToIyaS7joNn/ldwsScvHDynbipeCcaulw9057Sxg6kDz1q
	h+pciZ0fW0BLrTeIMjqZoALd147RFdPQjJFZhWNZCYLVAIUIAbdZM+Dcpq+pna1EeX7feXmYmg3ih
	kyFo7bBQ==;
Received: from [185.205.242.134] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urbMy-0005X1-Ex; Thu, 28 Aug 2025 14:04:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hide Hako <opi5plus@bcc.bai.ne.jp>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-sound@vger.kernel.org, Hide Hako <opi5plus@bcc.bai.ne.jp>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enables sound output from the audio jack
 on OrangePI5 Plus
Date: Thu, 28 Aug 2025 14:04:43 +0200
Message-ID: <9820114.4vTCxPXJkl@phil>
In-Reply-To: <20250826134456.9636-2-opi5plus@bcc.bai.ne.jp>
References: <20250826134456.9636-2-opi5plus@bcc.bai.ne.jp>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_050448_636583_885EC371 
X-CRM114-Status: GOOD (  17.84  )
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

SGkgSGlkZSBIYWtvLAoKQW0gRGllbnN0YWcsIDI2LiBBdWd1c3QgMjAyNSwgMTU6NDQ6NTcgTWl0
dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBIaWRlIEhha286Cj4gQ3VycmVudGx5
LCBhbmFsb2cgc291bmQgaXMgbm90IG91dHB1dCBmcm9tIHRoZSBhdWRpbyBqYWNrLgo+IFRoaXMg
cGF0Y2ggYWxsb3dzIHlvdSB0byBzZWxlY3QgYW5hbG9nIGhlYWRwaG9uZXMgaW4gYWxzYW1peGVy
Lgo+IFdvcmtzIHdpdGgga2VybmVsIDYuMTYuMSwgYnV0IG5vdCA2LjE3LXJjMS4KPiAKPiBQb2lu
dHMgb2YgY29uY2VybjoKPiA2LjE2LjEga2VybmVsIHdpdGggdWJ1bnR1IDI1LjA0IFNldHRpbmcg
LT4gU291bmQgLT4gT3V0cHV0IERldmljZQo+ICBJIHNlbGVjdCBTcGVha2VycyBCdWlsdC1pbiBB
dWRpbywgdGhlIHNvdW5kIHdpbGwgYmUgb3V0cHV0IGZyb20gdGhlIGF1ZGlvIGphY2suCj4gCj4g
Q2hhbmdlcyBzaW5jZSB2MToKPiAtIEFzIHBvaW50ZWQgb3V0IGJ5IEppbW15LCB0aGUgZmlsZSB0
byBiZSBtb2RpZmllZCBoYXMgYmVlbiBjaGFuZ2VkCj4gICBmcm9tIHJrMzU4OC1vcmFuZ2VwaS01
LmR0c2kgdG8gcmszNTg4LW9yYW5nZXBpLTUtcGx1cy5kdHMuCgpBbGwgb2Ygd2hhdCBNYXVkIHNh
aWQsIGJ1dCBhbHNvIEkgdGhpbmsgdGhpcyBkZXNlcnZlcyBzb21lCgpGaXhlczogMjM2ZDIyNWUx
ZWU3ICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBib2FyZCBkZXZpY2UgdHJlZSBmb3Igcmsz
NTg4LW9yYW5nZXBpLTUtcGx1cyIpCgp0YWcgKyBjb3VsZCBkbyB0aGUgc3ViamVjdCBhcyAKICAi
YXJtNjQ6IGR0czogcm9ja2NoaXA6IEZpeCBzb3VuZCBvdXRwdXQgZnJvbSB0aGUgYXVkaW8gamFj
ayBvbiBPcmFuZ2VQSTUgUGx1cyIKCmJlY2F1c2UgdGhpcyByZWFsbHkgc291bmRzIGxpa2UgaXQg
Zml4ZXMgZnVuY3Rpb25hbGl0eSB0byBpcyBzdXBwb3NlZAp0byBiZSB3b3JraW5nIDotKQoKClRo
YW5rcyBhIGxvdApIZWlrbwoKPiBTaWduZWQtb2ZmLWJ5OiBIaWRlIEhha28gPG9waTVwbHVzQGJj
Yy5iYWkubmUuanA+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LW9yYW5nZXBpLTUtcGx1cy5kdHMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LW9yYW5nZXBpLTUtcGx1cy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OC1vcmFuZ2VwaS01LXBsdXMuZHRzCj4gaW5kZXggMTIxZTRkMWMzLi40NGJiMTU5NTEgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS1w
bHVzLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5n
ZXBpLTUtcGx1cy5kdHMKPiBAQCAtNzgsNiArNzgsNyBAQCAmYW5hbG9nX3NvdW5kIHsKPiAgCXBp
bmN0cmwtMCA9IDwmaHBfZGV0ZWN0PjsKPiAgCXNpbXBsZS1hdWRpby1jYXJkLGF1eC1kZXZzID0g
PCZzcGVha2VyX2FtcD4sIDwmaGVhZHBob25lX2FtcD47Cj4gIAlzaW1wbGUtYXVkaW8tY2FyZCxo
cC1kZXQtZ3Bpb3MgPSA8JmdwaW8xIFJLX1BEMyBHUElPX0FDVElWRV9MT1c+Owo+ICsJc2ltcGxl
LWF1ZGlvLWNhcmQscGluLXN3aXRjaGVzID0gIlNwZWFrZXIiLCAiSGVhZHBob25lcyI7Cj4gIAlz
aW1wbGUtYXVkaW8tY2FyZCx3aWRnZXRzID0KPiAgCQkiTWljcm9waG9uZSIsICJPbmJvYXJkIE1p
Y3JvcGhvbmUiLAo+ICAJCSJNaWNyb3Bob25lIiwgIk1pY3JvcGhvbmUgSmFjayIsCj4gCgoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
