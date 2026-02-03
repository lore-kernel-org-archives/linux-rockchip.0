Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C0ABE6E803
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Feb 2026 11:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axy9ru2jdALx06Jkl7L6Ws9tQCfwz2Ade8TQLe77OqI=; b=WEwF58MU82NEhH
	ddJvhI3yJlVvyg0rPX1ZNpWnEs/ALp7CafoQiN/TFGP2MnK6xuo+YWNm4c7SAPIAby5GYV1UWcz/v
	trtqj3oIHQbuNa2XdcRTfUGVnLmA/Ty4fVBQQ9bnq/WfG9iTSB1wKA/PzHbLuhBTgqWNc4kBiV7yE
	4HPMlukl7TCDOO7bRghnY+ez9xG/nT1qPYOOyS9xom+nD77B6roH0HYjwk2jPIIbRYlNLNjsbmiCG
	2MXKKWdH+Jpd3aloJiZcrHsAeHPoP0BnHNU6ORCeGaDMFBhsLEYXtapNJTnc+0+2zsqNsvez+CMMX
	kjhWwMbHmhTlzyv+sLog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEAK-00000006VVQ-0ySa;
	Tue, 03 Feb 2026 11:01:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEAH-00000006VUy-1hVN;
	Tue, 03 Feb 2026 11:01:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 26E80418F4;
	Tue,  3 Feb 2026 11:01:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EDDAC116D0;
	Tue,  3 Feb 2026 11:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770116507;
	bh=GxpkLSU3/SN94Y1LrIF/NsSI8rqnDYsojgY4sdRUp2I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JnD+miHlZT1H1O7EyTAriS6D9q3++oVAdq5nasJG2G9lDCGirpsI+QAOzFpBKyw04
	 K9YTRelPpexx8rtE3OW2S9DvIF/8ItfzHa4R5++LHCKbKj3hV53Uiht+XOnQVpCspY
	 lHlpnu5f4whFXGXanWqsFW1VTkAAhA7cm+BTLCk4d0QQZfffgMjYOBaT6IehZ/SiSy
	 1Edxsw1WDgQMa2HDbCDXi2nNnDz1kdGBj0PXX0/TJAhPXRjgHz0KnT1V6miG14Oh0R
	 UO+V+Q75pKRVJzpLScYsi8XVp0mWYqYhGFphXiogzRjOrvkKFgsgFy3bWytJzUOrVL
	 H0IJKB/v8cQ2g==
Date: Tue, 3 Feb 2026 12:01:41 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Grimmauld <grimmauld@grimmauld.de>, mani@kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
Message-ID: <aYHVlS1nbCMMyF04@ryzen>
References: <20240809073610.2517-1-linux.amoon@gmail.com>
 <aXtpg0V_sifQEWHJ@grimm-nixos-ssd-2>
 <aXyHITrZ89Mmn8_J@ryzen>
 <CANAwSgTQ-cdyzd2WjHMYCY33p7um3CpjMeTzRO7vcd0fTF6X9Q@mail.gmail.com>
 <aYB0ctHF1ZeIIzbq@ryzen>
 <CANAwSgSR7AYCvMXSo5UskTF3LJToOnPV9JE4XBAUzrCbWGKD_w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgSR7AYCvMXSo5UskTF3LJToOnPV9JE4XBAUzrCbWGKD_w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_030149_538240_50B56F76 
X-CRM114-Status: GOOD (  20.24  )
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

T24gTW9uLCBGZWIgMDIsIDIwMjYgYXQgMTE6MzU6NDhQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBPbiBNb24sIDIgRmViIDIwMjYgYXQgMTU6MjUsIE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBr
ZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBTYXQsIEphbiAzMSwgMjAyNiBhdCAwMzowODo0
MlBNICswNTMwLCBBbmFuZCBNb29uIHdyb3RlOgo+ID4gPiA+Cj4gPiA+IEnigJl2ZSBhdHRlbXB0
ZWQgdG8gcmVwcm9kdWNlIHRoZSB3YXJuaW5nIGJ1dCB3YXMgdW5hYmxlIHRvIHRyaWdnZXIgaXQg
bG9jYWxseS4KPiA+ID4KPiA+ID4gSSBoYXZlIHRlc3RlZCB3aXRoIHRoZSBidWlsdC1pbiBtb2R1
bGUKPiA+ID4gQ09ORklHX1I4MTY5PXkKPiA+ID4gQ09ORklHX1I4MTY5X0xFRFM9eQo+ID4gPgo+
ID4gPiBBcyB3ZWxsIGFzIHRoZSBtb2R1bGUKPiA+ID4gQ09ORklHX1I4MTY5PW0KPiA+ID4gQ09O
RklHX1I4MTY5X0xFRFM9eQo+ID4gPgo+ID4KPiA+IEknbSBydW5uaW5nIHdpdGg6Cj4gPiBDT05G
SUdfUjgxNjk9eQo+ID4gQ09ORklHX1BIWUxJQj15Cj4gPiBDT05GSUdfUkVBTFRFS19QSFk9eQo+
ID4gQ09ORklHX1JFQUxURUtfUEhZX0hXTU9OPXkKPiA+Cj4gSSBmZWVsIENPTkZJR19SODE2OSBz
aG91bGQgbm90IGJlIGJ1aWx0IGludG8gdGhlIGtlcm5lbCBpbWFnZS4KPiBTaW5jZSB0aGUgZHJp
dmVyIGlzIHJlZ2lzdGVyZWQgdmlhIG1vZHVsZV9wY2lfZHJpdmVyKHJ0bDgxNjlfcGNpX2RyaXZl
ciksCj4gaXQgaXMgaW50ZW5kZWQgdG8gYmUgbG9hZGVkIGFzIGEgbW9kdWxlLiBJbiBhZGRpdGlv
biwgdGhpcyBkcml2ZXIKPiByZXF1aXJlcyBleHRlcm5hbCBmaXJtd2FyZQo+IGR1cmluZyBpbml0
aWFsaXphdGlvbiwgd2hpY2ggY291bGQgbWFrZSBhIGJ1aWx04oCRaW4gY29uZmlndXJhdGlvbiBw
cm9ibGVtYXRpYy4KPiBLZWVwaW5nIGl0IG1vZHVsYXIgZW5zdXJlcyBwcm9wZXIgZmlybXdhcmUg
bG9hZGluZyBhbmQgYXZvaWRzCj4gZWFybHnigJFib290IGZhaWx1cmVzLgoKRm9yIHdoYXQgaXQg
aXMgd29ydGgsIEkgc3Ryb25nbHkgZGlzYWdyZWUgdGhhdCB5b3Ugc2hvdWxkIG5vdCBiZSBhbGxv
d2VkCnRvIGJ1aWxkIHNvbWV0aGluZyBhcyBidWlsdC1pbiBqdXN0IGJlY2F1c2UgdGhlIGRyaXZl
ciBpcyByZWdpc3RlcmVkIHVzaW5nCm1vZHVsZV9wY2lfZHJpdmVyKCkuCgpJbiBvcmRlciB0byB1
c2UgTkZTIHJvb3QsIGFuZCB0byBhdm9pZCB0aGUgaGFzc2xlIG9mIHVzaW5nIGFuIGluaXRyYW1m
cywKaGF2aW5nIHRoZSBkcml2ZXIgYXMgYnVpbHQtaW4gaXMgYSBsb2dpY2FsIG9wdGlvbi4KQW55
d2F5LCB0aGlzIGlzIGN1cnJlbnRseSB3b3JraW5nIGZpbmUgd2l0aCBteSBzZXR1cCB0b2RheSwg
YW5kIGlzCnVucmVsYXRlZCB0byB0aGUgcGh5bGliIHNwbGF0IHRoYXQgSSBoYXZlIHJlcG9ydGVk
IGluIHRoaXMgdGhyZWFkLgoKSSBrbm93IHRoYXQgdGhlIFI4MTY5IGRyaXZlciB0cmllcyB0byBs
b2FkIGEgZmlybXdhcmUgYmxvYiwgSSB1c2VkIHRvIGhhdmUKYW4gaW5pdHJhbWZzIGp1c3QgdG8g
YmUgYWJsZSB0byBsb2FkIHRoaXMgZmlybXdhcmUgYmxvYiwgYnV0IEkgZm91bmQgb3V0CnRoYXQg
dGhlIGRyaXZlciBwcm9iZXMgYW5kIHdvcmtzIHBlcmZlY3RseSBmaW5lIGV2ZW4gd2l0aG91dCB0
aGUgbG9hZGluZwphbnkgZmlybXdhcmUsIHRoZXJlZm9yZSBJIG5vIGxvbmdlciB1c2UgYW4gaW5p
dHJhbWZzLgpBZ2FpbiwgdGhpcyBpcyB3b3JraW5nIHBlcmZlY3RseSBmaW5lIHRvZGF5LCBhbmQg
dGhlIFI4MTY5IGxvYWRpbmcgb3Igbm90CmxvYWRpbmcgYW55IGZpcm13YXJlIGlzIHVucmVhbGF0
ZWQgdG8gdGhlIHBoeWxpYiBzcGxhdC4KCihKdXN0IGZvciBjbGFyaXR5LCBJIGRvbid0IHRoaW5r
IHRoYXQgdGhlIHBoeWxpYiBzcGxhdCBzaG91bGQgc3RvcCB0aGlzCnBhdGNoIGZyb20gYmVpbmcg
YWNjZXB0ZWQuKQoKCktpbmQgcmVnYXJkcywKTmlrbGFzCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
