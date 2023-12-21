Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A9ECC35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 10:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L81NeDmhrqJyq/TN0XRDo/1c4zK5/0rXaDu4qNlidUQ=; b=4Gvenf5hnh8cBX
	FNk8BTHProCBJLMCztGB+vbgciSxNp/rXIB7ppVanHpnk3md7eRFtfTkbnIe8eNk+2dzghpHs5l3H
	gpO6uUBcrjmUqoiz9eQFeWFxzSTKzASo7Y8DDrQsyaLrzaleGpaPDtWObK7s39QNJr8EdlAVIf0P0
	6KY2ajIiB8b1j8miEQe5Do8v/zG1885+vjbgkuIvbiysVVIAwXapVfI0c2H1cnXWS+FQmzRsmUt2s
	eZiSLFyYWrjSi7G5hd1RDUiwIHmyyX951bQNnwa5n4SFCp1dfgbloeCxW6VjvGuhtJAbKkia6JUtC
	XqPD1v8Scj7HBLe0jT0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGG1b-002OE4-1V;
	Thu, 21 Dec 2023 10:11:31 +0000
Received: from mail-vk1-xa2f.google.com ([2607:f8b0:4864:20::a2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGG1Y-002O9M-1z
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Dec 2023 10:11:30 +0000
Received: by mail-vk1-xa2f.google.com with SMTP id 71dfb90a1353d-4b6f353df52so996866e0c.0
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Dec 2023 02:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1703153484; x=1703758284; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l0Hvx4cto20Ne4d57l8qGj6+wrzsdugoTeB7SK6hGPs=;
        b=JxNECwxzUWIov2AwVmQ1iX1DlzAVJU1mYnMi2Glq9JfhiOALNw5ODXw5uv7G7f5VNe
         AU1iEoyy0WuWms0IZMKPiYCsTJdsJyPbCV0g+4mq1aTfI4lQxIpLjjbk25yR1PNsinLe
         KzaA4/E5aL/Yg6fhCjCsEXV3TPg+CbbZvhu7tGIznwcwcIrANNl9x4W4oecFbrndQfUO
         hhrRqjd2wLqGC2sIK1lJPhRCVBN8qkQFcZ+ZXUcURT92rzwon46+4Cwk+nFqrHF5Wep2
         7s1JtnvvMpF70RBNQLDdYOCXWpsiAIkSfb+ekV/YLaUzXUYTMZ0sRsPqt/BF4yWJprpO
         61iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703153484; x=1703758284;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l0Hvx4cto20Ne4d57l8qGj6+wrzsdugoTeB7SK6hGPs=;
        b=rAd8wiZDMrYhdayPv90YMidEgJu1vAq/PvUxFQJ04vV4QhbEghFXJpSfZlpUPqqOYt
         qXJtUjhJmAoi7nVQhCRwgsc6dkxABLooht56Gbr1X5mjtzL1X3XCuC8dOOjBXGX8pPJI
         atQve9R/jBlR+O71yQlzNZzWkrHfSPBbYsyevyb1mXWpjNVreKNtskRiqdT2F+Gi8APS
         KzItCJ19Z6M2FSGWm4AnxLvOZFVZqKG8dIbZex03K1D8whaWfKs57niBCD8ZV2xFAfyK
         f2aE14/+DSsq5io/F3Z/wI+lQc6ZIFo+xsNYFV9DZwvLRqtth//0JEM6Fxbz38PqnS4/
         FB1Q==
X-Gm-Message-State: AOJu0YzG5zA9K1a5cAovpEc6XI0KyuKhdR+gWd+SmAatawF3JtXjCriH
	H09Dsdmu5ikV0RMhRliOrvSLmB0YVzk0M33uNZ9mygngHO0rwQ==
X-Google-Smtp-Source: AGHT+IF50tn3iZwIm2NwOmidAzv8MeYuCtbpNdUGGv8wF6iTw6sxKGGz64uQKmRScaYK5/c5VyqNwsRXwZvSDTzZ72E=
X-Received: by 2002:a05:6122:458c:b0:4b6:b610:3a2a with SMTP id
 de12-20020a056122458c00b004b6b6103a2amr182198vkb.4.1703153484000; Thu, 21 Dec
 2023 02:11:24 -0800 (PST)
MIME-Version: 1.0
References: <20231209232109.348999-1-i@shantur.com> <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org> <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
 <acbadb7f1d2c14b7003103c10d663d38@manjaro.org> <CABEcMwV8XhShnbJ_Z+2YW0EUCYt460pEyE-FPHW9jN16SR_Lpg@mail.gmail.com>
 <c6761d07ab7fb0eb38b94f4602f58e42@manjaro.org>
In-Reply-To: <c6761d07ab7fb0eb38b94f4602f58e42@manjaro.org>
From: Shantur Rathore <i@shantur.com>
Date: Thu, 21 Dec 2023 10:11:13 +0000
Message-ID: <CABEcMwXdD06KoODi4Sx7Q6oaNZ7CEUcNLiysVyqQSQq-7zYoqA@mail.gmail.com>
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_021128_875738_F4D59088 
X-CRM114-Status: GOOD (  29.65  )
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

T24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMjozNeKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IE9uIDIwMjMtMTItMTQgMTU6MjQsIFNoYW50dXIgUmF0aG9y
ZSB3cm90ZToKPiA+IE9uIFN1biwgRGVjIDEwLCAyMDIzIGF0IDEyOjA44oCvQU0gRHJhZ2FuIFNp
bWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gPiB3cm90ZToKPiA+PiBPbiAyMDIzLTEyLTEwIDAx
OjAzLCBTaGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4gPj4gPiBPbiBTYXQsIERlYyA5LCAyMDIzIGF0
IDExOjQz4oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gPj4gPiB3cm90
ZToKPiA+PiA+PiBPbiAyMDIzLTEyLTEwIDAwOjM1LCBTaGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4g
Pj4gPj4gPiBVU0IgcG9ydCByZWd1bGF0b3JzIHNob3VsZCBiZSBjb250cm9sbGVkIGJ5IFBIWXMK
PiA+PiA+PiA+IHNvIHdlIHJlbW92ZSBhbHdheXMtb24gcHJvcGVydHkgYW5kIGxldCBQSFlzIG1h
bmFnZSB0aGUKPiA+PiA+PiA+IHJlZ3VsYXRvci4KPiA+PiA+PiA+Cj4gPj4gPj4gPiBUeXBlYyBw
b3J0IGhhcyBtaXNjb25mdWdyZWQgcGh5LXN1cHBseSBhbmQgbm93IHRoYXQgd2UgYXJlCj4gPj4g
Pj4gPiByZW1vdmluZyByZWd1bGF0b3ItYWx3YXlzLW9uLCB3ZSBuZWVkIHRvIGZpeCB0aGUgcGh5
LXN1cHBseQo+ID4+ID4+ID4gc28gdGhlIFBIWXMgYXJlIGFibGUgdG8gdHVybiBwb3dlciB0byB0
eXBlLWMgcG9ydC4KPiA+PiA+PiA+Cj4gPj4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBTaGFudHVyIFJh
dGhvcmUgPGlAc2hhbnR1ci5jb20+Cj4gPj4gPj4gPiAtLS0KPiA+PiA+PiA+ICsgZGV2aWNldHJl
ZQo+ID4+ID4+ID4KPiA+PiA+PiA+IEFmdGVyIHRoaXMgcGF0Y2ggdGhlIHBvcnRzIHdlcmUgY29u
ZmlybWVkIHRvIHBvd2VyIHVwIGFuZCBkb3duCj4gPj4gPj4gPiBpbiB1LWJvb3Qgd2hlbiBkb2lu
ZyB1c2Igc3RhcnQgYW5kIHVzYiBzdG9wLgo+ID4+ID4+ID4gQXQgYm9vdCB0aGUgcmVndWxhdG9y
cyB3ZXJlIG9mZiwgdGhlIGRldmljZXMgY29ubmVjdGVkIHdlcmVuJ3QKPiA+PiA+PiA+IHBvd2Vy
ZWQgdXAsIG9uIHVzYiBzdGFydCB0aGUgUEhZcyBhcmUgYWJsZSB0byBwb3dlciBvbiB0aGUgcG9y
dHMKPiA+PiA+PiA+IGFuZCBvbiB1c2Igc3RvcCB0aGV5IHdlcmUgcG93ZXJlZCBkb3duLgo+ID4+
ID4+ID4KPiA+PiA+PiA+IEF0IHRoZSBib290LCB0aGUgcG9ydHMgd2VyZSBwb3dlcmVkIGRvd24g
d2hpY2ggd2FzIGFnYWluIHBvd2VyZWQKPiA+PiA+PiA+IHVwIGJ5IExpbnV4IGtlcm5lbCB3aGVu
IGJvb3RpbmcgdXAuCj4gPj4gPj4gPgo+ID4+ID4+ID4KPiA+PiA+PiA+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaSB8IDQgKy0tLQo+ID4+ID4+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKPiA+PiA+PiA+
Cj4gPj4gPj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktcm9ja3BybzY0LmR0c2kKPiA+PiA+PiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiA+PiA+PiA+IGluZGV4IGJjYTJiNTBlMGEuLmJkMjgy
NGFhNDggMTAwNjQ0Cj4gPj4gPj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1yb2NrcHJvNjQuZHRzaQo+ID4+ID4+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiA+PiA+PiA+IEBAIC0xOTIsNyArMTky
LDYgQEAgdmNjNXYwX2hvc3Q6IHZjYzV2MC1ob3N0LXJlZ3VsYXRvciB7Cj4gPj4gPj4gPiAgICAg
ICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPj4gPj4gPiAgICAgICAgICAg
ICAgIHBpbmN0cmwtMCA9IDwmdmNjNXYwX2hvc3RfZW4+Owo+ID4+ID4+ID4gICAgICAgICAgICAg
ICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1djBfaG9zdCI7Cj4gPj4gPj4gPiAtICAgICAgICAgICAg
IHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPj4gPj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkg
PSA8JnZjYzV2MF91c2I+Owo+ID4+ID4+ID4gICAgICAgfTsKPiA+PiA+PiA+Cj4gPj4gPj4gPiBA
QCAtMjAzLDcgKzIwMiw2IEBAIHZjYzV2MF90eXBlYzogdmNjNXYwLXR5cGVjLXJlZ3VsYXRvciB7
Cj4gPj4gPj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPj4g
Pj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdmNjNXYwX3R5cGVjX2VuPjsKPiA+PiA+
PiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3R5cGVjIjsKPiA+PiA+
PiA+IC0gICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+PiA+PiA+ICAgICAgICAg
ICAgICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX3VzYj47Cj4gPj4gPj4gPiAgICAgICB9Owo+ID4+
ID4+ID4KPiA+PiA+PiA+IEBAIC04NjMsNyArODYxLDcgQEAgdTJwaHkwX290Zzogb3RnLXBvcnQg
ewo+ID4+ID4+ID4gICAgICAgfTsKPiA+PiA+PiA+Cj4gPj4gPj4gPiAgICAgICB1MnBoeTBfaG9z
dDogaG9zdC1wb3J0IHsKPiA+PiA+PiA+IC0gICAgICAgICAgICAgcGh5LXN1cHBseSA9IDwmdmNj
NXYwX2hvc3Q+Owo+ID4+ID4+ID4gKyAgICAgICAgICAgICBwaHktc3VwcGx5ID0gPCZ2Y2M1djBf
dHlwZWM+Owo+ID4+ID4+ID4gICAgICAgICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPj4gPj4g
PiAgICAgICB9Owo+ID4+ID4+ID4gIH07Cj4gPj4gPj4KPiA+PiA+PiBRdWl0ZSBmcmFua2x5LCBz
b21ldGhpbmcgZG9lc24ndCBmZWVsIHJpZ2h0IHRoZXJlLiAgV291bGQgeW91IG1pbmQsCj4gPj4g
Pj4gcGxlYXNlLCB0byBwbGFjZSB0aGlzIHBhdGNoIG9uIGhvbGQgdW50aWwgbmV4dCB3ZWVrIG9y
IHNvLCBhdCB3aGljaAo+ID4+ID4+IHBvaW50IEkgc2hvdWxkIGhhdmUgZW5vdWdoIHRpbWUgdG8g
Z28gdGhyb3VnaCB0aGUgUm9ja1BybzY0IHNjaGVtYXRpYwo+ID4+ID4+IHRob3JvdWdobHkgb25j
ZSBhZ2FpbiwgYW5kIHRlc3QgdGhlIHBhdGNoIGluIGRldGFpbD8KPiA+PiA+Cj4gPj4gPiBTdXJl
LCBubyB3b3JyaWVzLgo+ID4+Cj4gPj4gR3JlYXQsIHRoYW5rcy4KPiA+Pgo+ID4+ID4gV291bGQg
eW91IG1pbmQgbGV0dGluZyBtZSBrbm93IHdoaWNoIHBhcnQgZG9lc24ndCBmZWVsIHJpZ2h0IHRv
IHlvdT8KPiA+Pgo+ID4+IFN1cmUsIGl0IHdhcyBhYm91dCB0aGUgbGFzdCBjaGFuZ2UgaW4gdGhl
IHBhdGNoLgo+ID4KPiA+IFRoZSBUeXBlQyBwb3J0IFZCVVMgaXMgVkJVU19UWVBFQyBvbiBQYWdl
IDIwIG9mIDMzIG1hcmtlZCBmb3IKPiA+IFZCVVNfWzEtNF0gaW4gc2NoZW1hdGljIGhlcmUgLSBb
MF0KPiA+Cj4gPiBbMF0gLSBodHRwczovL2ZpbGVzLnBpbmU2NC5vcmcvZG9jL3JvY2twcm82NC9y
b2NrcHJvNjRfdjIxLVNDSC5wZGYKPgo+IEkgc2VlLCB0aGFua3MsIGFuZCBJIGFscmVhZHkgd2Vu
dCBvbmNlIGFnYWluIHRocm91Z2ggdGhlIFJvY2tQcm82NAo+IHNjaGVtYXRpYywgYnV0IG9ubHkg
YnJpZWZseS4gIEkgbmVlZCB0byBkbyB0aGF0IGFnYWluLCBidXQgaW4gZGV0YWlsLAo+IGFuZCBj
b21wYXJlIGl0IHRob3JvdWdobHkgd2l0aCB0aGUgZHRzKGkpLgoKUGluZy4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
