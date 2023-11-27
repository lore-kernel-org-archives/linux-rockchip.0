Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 652EEC07CB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 14:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCtRl6Bv7iKFlHYBo/+KhwltBZMXu0XgWdaf4UHNg/Q=; b=m5VaA1p9SdFAkW
	BhnrC5hq6HQ9sjZmzY4P7Qwa92uZFC411ePw6MFbIrZtkIXYx+IAUrHaRd2JVeaKwlKFlr/WIevy7
	OmaWQxu00stz5DkHLKVm1BaAvNtrYlVtpUknJTfGljIVbSyrZfla9quF7N6xmgCOobrwhte9cquk1
	7eCLbhor5d71wJXBmmZbX0/MkDEVX08MLZf1jTuAFJ2pTPEPdjQGuEK1r1MGvAkxD74HV/t8oaFT9
	B0HMaGCytpL3y01bNEwo0kRnub4VY+cflv9WPiGWnuTju/UMzU7Nc4MKmnMCjzu4s7uAaRpFDWrWN
	7z23/ewJmkqYbOEqTeSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7cT4-002gdc-23;
	Mon, 27 Nov 2023 14:20:10 +0000
Received: from mail-yw1-f195.google.com ([209.85.128.195])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7cT0-002gcK-1c;
	Mon, 27 Nov 2023 14:20:08 +0000
Received: by mail-yw1-f195.google.com with SMTP id 00721157ae682-5cbcfdeaff3so42805467b3.0;
        Mon, 27 Nov 2023 06:20:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701094805; x=1701699605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p8asMA5McnjUqiDsQhrdKj0am/206nD+kU8Fb3R8j7Q=;
        b=D36gDpEFsbyf0LQs95PnnADCOLwG/fwqPPmEXqB5lKp1WA7h0gmhsrQQpkMIcLVZD8
         R8r1xOKiDwTEiTNWAVdfOY7WbSq+A7BhbcGz5z83lJZPOEiThtC7JIe17bfI36ceM9L7
         NzT/c+3OTQDA16ujk0875fIONy3p93jy4DeD0G4rFnklBTe3E7JS9GR3DAy6Ar+rejZ4
         InZzTga6huLqweN723pfBoPIt/NSX7Y/gj1uh+b8wcKPDAQfvN/p1vkPHpBfDLrlpwIA
         UmE48W9jb1GHWqyNOYRuLP3LWFoDzybH9tqjrgB0Is7YeCF+47kPrPhFxgnjk2AvCttu
         Abiw==
X-Gm-Message-State: AOJu0YwMI8E8fQr5P5IoKgWiTsyXBMyGuSnYkqFaHtLvK3mfAyEk5CAL
	4STibeHVru4cwC7VUjkqJIB6JobVM7meCFOc
X-Google-Smtp-Source: AGHT+IHOrcDoV8LHmGn1Fu4pA56O7GTe0BttqKAknUyWlC2jZ9tGtevZtsS4Ssthq7dPn+Q5lggzIg==
X-Received: by 2002:a81:6008:0:b0:5cd:f157:fd05 with SMTP id u8-20020a816008000000b005cdf157fd05mr11595985ywb.25.1701094804776;
        Mon, 27 Nov 2023 06:20:04 -0800 (PST)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id a124-20020a0df182000000b005af6df31bb0sm3255806ywf.105.2023.11.27.06.20.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Nov 2023 06:20:04 -0800 (PST)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5cbcfdeaff3so42805237b3.0;
        Mon, 27 Nov 2023 06:20:03 -0800 (PST)
X-Received: by 2002:a0d:e207:0:b0:5a8:207b:48d with SMTP id
 l7-20020a0de207000000b005a8207b048dmr10958508ywe.11.1701094803713; Mon, 27
 Nov 2023 06:20:03 -0800 (PST)
MIME-Version: 1.0
References: <20231125184422.12315-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231125184422.12315-1-krzysztof.kozlowski@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Nov 2023 15:19:52 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUYEwMuxJ2Xx=KRVKneRT-e+uHz8LE1JVY5zLDkWksqKw@mail.gmail.com>
Message-ID: <CAMuHMdUYEwMuxJ2Xx=KRVKneRT-e+uHz8LE1JVY5zLDkWksqKw@mail.gmail.com>
Subject: Re: [PATCH v3] docs: dt-bindings: add DTS Coding Style document
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>, 
	Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Jonathan Corbet <corbet@lwn.net>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Michal Simek <michal.simek@amd.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	workflows@vger.kernel.org, linux-doc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_062006_536329_4B557DA4 
X-CRM114-Status: GOOD (  24.85  )
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

SGkgS3J6eXN6dG9mLAoKT24gU2F0LCBOb3YgMjUsIDIwMjMgYXQgNzo0NOKAr1BNIEtyenlzenRv
ZiBLb3psb3dza2kKPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gRG9j
dW1lbnQgcHJlZmVycmVkIGNvZGluZyBzdHlsZSBmb3IgRGV2aWNldHJlZSBzb3VyY2VzIChEVFMg
YW5kIERUU0kpLAo+IHRvIGJyaW5nIGNvbnNpc3RlbmN5IGFtb25nIGFsbCAoc3ViKWFyY2hpdGVj
dHVyZXMgYW5kIGVhc2UgaW4gcmV2aWV3cy4KPgo+IENjOiBBbmRyZXcgRGF2aXMgPGFmZEB0aS5j
b20+Cj4gY2M6IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4KPiBDYzogQW5nZWxvR2lvYWNj
aGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4K
PiBDYzogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiBDYzogQmpvcm4gQW5kZXJzc29u
IDxhbmRlcnNzb25Aa2VybmVsLm9yZz4KPiBDYzogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGtlcm5lbC5v
cmc+Cj4gQ2M6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4K
PiBDYzogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPiBDYzog
SGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiBDYzogSm9uYXRoYW4gQ29yYmV0IDxj
b3JiZXRAbHduLm5ldD4KPiBDYzogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0BsaW5hcm8u
b3JnPgo+IENjOiBNYXR0aGlhcyBCcnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPgo+IENj
OiBNaWNoYWwgU2ltZWsgPG1pY2hhbC5zaW1la0BhbWQuY29tPgo+IENjOiBOZWlsIEFybXN0cm9u
ZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KPiBDYzogTmlzaGFudGggTWVub24gPG5tQHRp
LmNvbT4KPiBDYzogT2xvZiBKb2hhbnNzb24gPG9sb2ZAbGl4b20ubmV0Pgo+IENjOiBSYWZhxYIg
TWnFgmVja2kgPHphamVjNUBnbWFpbC5jb20+Cj4gQWNrZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxu
ZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgo+IEFja2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPgo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlz
enRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPgo+IC0tLQo+Cj4gTWVyZ2luZyBpZGVhOiBSb2Iv
RFQgYmluZGluZ3MKPgo+IENoYW5nZXMgaW4gdjMKPiA9PT09PT09PT09PT09Cj4gMS4gc2hvdWxk
LT5zaGFsbCAoQW5nZWxvKQo+IDIuIENvbW1lbnRzIC8vIC0+IC8qIChBbmdlbG8sIE1pY2hhbCkK
PiAzLiBVc2UgaW1hZ2luYXJ5IGV4YW1wbGUgaW4gIk9yZGVyIG9mIFByb3BlcnRpZXMgaW4gRGV2
aWNlIE5vZGUiCj4gICAgKEFuZ2VsbykKPiA0LiBBZGRlZCBwYXJhZ3JhcGhzIGZvciB0aHJlZSBz
ZWN0aW9ucyB3aXRoIGp1c3RpZmljYXRpb25zIG9mIGNob3Nlbgo+ICAgIHN0eWxlLgo+IDUuIEFs
bG93IHR3byBzdHlsZSBvZiBvcmRlcmluZyBvdmVycmlkZXMgaW4gYm9hcmQgRFRTOiBhbHBoYWJl
dGljYWxseSBvcgo+ICAgIGJ5IG9yZGVyIG9mIERUU0kgKFJvYikuCj4gNi4gSSBkaWQgbm90IGlu
Y29ycG9yYXRlIGZlZWRiYWNrIGFib3V0LCBkdWUgdG8gbGFjayBvZiBjb25zZW5zdXMgYW5kIG15
Cj4gICAgZGlzYWdyZWVtZW50Ogo+ICAgIGEuIFNvTSBiZWluZyBEVFMgd2l0aG91dCBEVFNJIGlu
ICJPcmdhbml6aW5nIERUU0kgYW5kIERUUyIKClRoYW5rcyBmb3IgdGhlIHVwZGF0ZSEKCj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kdHMt
Y29kaW5nLXN0eWxlLnJzdAoKPiArICAgICAgIC8qIFNvQyBEVFNJICovCj4gKwo+ICsgICAgICAg
LyB7Cj4gKyAgICAgICAgICAgICAgIGNwdXMgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIC8q
IC4uLiAqLwo+ICsgICAgICAgICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAgICAgcHNjaSB7
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgLyogLi4uICovCj4gKyAgICAgICAgICAgICAgIH07
Cj4gKwo+ICsgICAgICAgICAgICAgICBzb2NAIHsKCiJzb2NAIiBpcyBpbnZhbGlkLCB0aGF0IHNo
b3VsZCBiZSAic29jIi4KCkFzIHRoZSAic29jIiBub2RlIGlzIHNwZWNpYWwsIHlvdSBtYXkgd2Fu
dCB0byBlbGFib3JhdGU6CgogICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzaW1wbGUtYnVz
IjsKICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+OwogICAgICAgICAgICAgICAg
I3NpemUtY2VsbHMgPSA8MT47CiAgICAgICAgICAgICAgICByYW5nZXM7Cgo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGRtYTogZG1hLWNvbnRyb2xsZXJAMTAwMDAgewo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgLyogLi4uICovCj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsK
PiArCj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xrOiBjbG9jay1jb250cm9sbGVyQDgwMDAw
IHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qIC4uLiAqLwo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICB9Owo+ICsK
PiArICAgICAgIC8qIEJvYXJkIERUUyAtIGFscGhhYmV0aWNhbCBvcmRlciAqLwo+ICsKPiArICAg
ICAgICZjbGsgewo+ICsgICAgICAgICAgICAgICAvKiAuLi4gKi8KPiArICAgICAgIH07Cj4gKwo+
ICsgICAgICAgJmRtYSB7Cj4gKyAgICAgICAgICAgICAgIC8qIC4uLiAqLwo+ICsgICAgICAgfTsK
PiArCj4gKyAgICAgICAvKiBCb2FyZCBEVFMgLSBhbHRlcm5hdGl2ZSBvcmRlciwga2VlcCBhcyBE
VFNJICovCj4gKwo+ICsgICAgICAgJmRtYSB7Cj4gKyAgICAgICAgICAgICAgIC8qIC4uLiAqLwo+
ICsgICAgICAgfTsKPiArCj4gKyAgICAgICAmY2xrIHsKPiArICAgICAgICAgICAgICAgLyogLi4u
ICovCj4gKyAgICAgICB9OwoKSU1PIHRoYXQgYWx0ZXJuYXRpdmUgb3JkZXIgaXMgaGFyZCB0byBy
ZXZpZXc6IHlvdSBuZWVkIHRvIGhhdmUgbXVsdGlwbGUKZmlsZXMgb3Blbi4gIEl0IHdpbGwgYWxz
byBtYWtlIHZhbGlkYXRpb24gaGFyZCwgYXMgeW91IGNhbiBvbmx5IHZhbGlkYXRlCnRoZSBlbmQg
cmVzdWx0LCBub3QgaW5kaXZpZHVhbCBmaWxlcy4KCkFueXdheSwgdGhpcyBpcyBhbHJlYWR5IHF1
aXRlIHVzYWJsZSBzbwpSZXZpZXdlZC1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5l
c2FzQGdsaWRlci5iZT4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAg
ICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4
IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJz
YXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0
CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIg
b3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAt
LSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
