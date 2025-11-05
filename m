Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96872CCFA04
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 08:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MXmATnhy1rL81OAIsfNU4h8peXpj3PzAlbaXcPLo04=; b=EU3ckFAzqSXJtw
	K5osiCZ0p94UzFKM7rJdILv4DX6ExDgCde0v3PHQK/AT4ILB1Um4vEwAm8/3qJrQvQGgcW8WEhrF7
	7Jli+gVDQRkNn02NCSD1/yBWhD/fQGUwYT6Cqz6BllzNuT0ZxdkcdB8D/7jErieFKnXK1lAVZo8MP
	YsgL7IOh2fN+FcX5fIZ8VQq1aGDByBW9dPEEg23P0bdWMWwEjTA/juxUGIiPfwTrtNRIFr5q5oekU
	gw81NpQxJI2WZLA1wpu/0tGpxGKejkKL9F5SnV83mcyh36QN/14BWmhyYPFoqd2/eA6pxHe8MFvIi
	JPFJdSankGb2TelOab0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGYjF-0000000DGdu-2Kep;
	Wed, 05 Nov 2025 08:18:54 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGYjC-0000000DGcc-2bjR
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 08:18:52 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7c2766675adso3524724a34.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 00:18:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762330729; x=1762935529; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f+akL+KyD042Z4LrBke1JL7l0fksnlBHxMHBzPhw6II=;
        b=U36HaWg+KVEbpbOzMopqk7M7o6BL4R9vsICEzAwW5ydx9zGVsgOKeZPvzYsINU4qtZ
         vS/Qahz58KxVoXgzMV5nZFMF4qAD+psiVwJC7LZqJD2kXVJD1Lq0MRxwxPNO0NBQsTDE
         rDY1hunL49X8n0BVZFgXBMUBFwFMqSkOuFvDe8WvdaThSAjzqEtUZBmea3OkUCi01n4V
         ckkclSs1PUxDm7/mmUeRwfMaFxtLktUoECGDdFprbwGQ4KsVItuUAgIBOPKB8xlgnl43
         axJwwz4WT4pT1jNsLJ1Ktx4SZUwAcL5KvLPNIYgt7Rm2eI3ANaPkrf+Z0RmnBYeSNfly
         jSew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762330729; x=1762935529;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f+akL+KyD042Z4LrBke1JL7l0fksnlBHxMHBzPhw6II=;
        b=XjTkx/JQpi90GDZQuUxCM3dV4zn5nAF1BZWJNvWUNteM3V2hemg34LEOmIT+bNmtZK
         xwzYaR0YPbUpDpty72SfdkqIhSJnc8oM0AcL+ZAsjxe3+3y7W32yNZ0MGg1g83sAdlMz
         IcAaJvgJi1avT4CYQKmiESckbf7bjSCs/omMIvsQeaeOj/20HDNHbVYhxh+wlr3jRiMz
         Iodmce+yyS2DfgYxhYlOmQUnB12ko5J21Wd8uysYi73F9SjmjO/bsnath7wphPbdxpOR
         Vlcg3wxPLJjx86PsK8VA/TPO0TUzQgE9eEiWp/tZActXaKhTa7nuqwPI90KMjkPsLif/
         uJPg==
X-Forwarded-Encrypted: i=1; AJvYcCWusI/a7jz2TyQgqSjoFtM0S2oXaWJ91LaINRClCZlQc7tP1Hf7FFweJsF/IW1kt43dzaDzkm+ErPOU1nFr4Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzTCNMRy0u6DVr/CEMj67ooS+GJNm+GT0gIiwCSLWNHI2TCYaX6
	4rxjaWT/C2YrySe9kK6A7O0I2nIKxKsN+NUN6fMlgm+PIuuvRcRnaNQq
X-Gm-Gg: ASbGncsci5V9d8YhMb+3oUi8bw7zABv8UJfCTkAkVHPcACba57FT3tqU0UXjOgTmQ2n
	WBTJy9jTR2uPK/EnZvWAhJW+6o7pP/QK40I0OKcCNpX8SOY3L3mjJ+3pWfMavVu9xi+nK49ePK3
	XehuAGvrMzRj64xOUbd7r9KNvthjX8wQQqSlnWzm1ChvEk4y0bFOObExrDp6fefi3e9gqJiFMnw
	9D6xDsR2ZFKd07J5gEo2+1xtxRGu1tRbVCNVguSi6g8tm9qgRZEUcfQuL/SXKxBpWVH+ash3GTw
	uw2bzyPkEuMxHD3NsMAB+SGDi/ijIwBspFwdmInePnuRdZklwpLRZ/jbfPXBflqjUM5BWtoMEyA
	kNsL8WEDRotm2GxsYrzyIt1TCYgyrXiQEa7ysZiP1govJ8jnWPtk+1dvFhGvIBuFXIlJ3d+1kmd
	FO594+EAb6
X-Google-Smtp-Source: AGHT+IFK0yDdBhfOz1NBWCKz0vAwOt4g+DxeXHtu06KoBEwHDsyVZU+NDbMVBjZzuCxM5y2NLKriXQ==
X-Received: by 2002:a05:6830:2650:b0:7c2:7b5e:8cb3 with SMTP id 46e09a7af769-7c6d141da8dmr1565084a34.31.1762330729550;
        Wed, 05 Nov 2025 00:18:49 -0800 (PST)
Received: from geday ([2804:7f2:800b:2ea1::dead:c001])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c6c2448c76sm1804557a34.2.2025.11.05.00.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 00:18:47 -0800 (PST)
Date: Wed, 5 Nov 2025 05:18:37 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
Message-ID: <aQsIXcQzeYop6a0B@geday>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
 <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_001850_684074_77333BB3 
X-CRM114-Status: GOOD (  33.23  )
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

T24gV2VkLCBOb3YgMDUsIDIwMjUgYXQgMDI6MzU6MjhQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEhpIEdlcmFsZG8sCj4gCj4g5ZyoIDIwMjUvMTEvMDUg5pif5pyf5LiJIDEzOjU1LCBHZXJh
bGRvIE5hc2NpbWVudG8g5YaZ6YGTOgo+ID4gVGhlIFBFUlNUIyBzaWRlLWJhbmQgc2lnbmFsIGlz
IGRlZmluZWQgYnkgUENJZSBzcGVjIGFzIGFuIG9wZW4tZHJhaW4KPiAKPiBJIGNvdWxkbid0IGZp
bmQgYW55IGNsdWUgdGhhdCBzYXlzIFBFUlNUIyBpcyBhbiBvcGVuLWRyYWluIHNpZ25hbC4gQ291
bGQKPiB5b3UgcXVvdGUgaXQgZnJvbSBQQ0kgRXhwcmVzcyBDYXJkIEVsZWN0cm9tZWNoYW5pY2Fs
IFNwZWNpZmljYXRpb24/Cj4gCj4gPiBhY3RpdmUtbG93IHNpZ25hbCB0aGF0IGRlcGVuZHMgb24g
YSBwdWxsLXVwIHJlc2lzdG9yIHRvIGtlZXAgdGhlCj4gPiBzaWduYWwgaGlnaCB3aGVuIGRlYXNz
ZXJ0ZWQuIEFsaWduIGJpbmRpbmdzIHRvIHRoZSBzcGVjLgo+IAo+IFRoaXMgaXMgbm90IHRydWUg
ZnJvbSBteSBQT1YuIEFuIG9wZW4tZHJhaW4gUENJZSBzaWRlLWJhbmQgIHNpZ25hbAo+IGlzIHVz
ZWQgZm9yIGJvdGggb2YgRVAgYW5kIFJDIHRvIGFjaGlldmUgc29tZSBzcGVjaWFsIHdvcmstZmxv
dywgbGlrZQo+IENMS1JFUSMgZm9yIEwxc3MsIGV0Yy4gU2luY2UgYm90aCBlbmRzIGNvdWxkIGNv
bnRyb2wgaXQuIEJ1dCBQRVJTVCMgaXMgYQo+IGZ1bmRhbWVudGFsIHJlc2V0IHNpZ25hbCBkcml2
ZW4gYnkgUkMgd2hpY2ggc2hvdWxkIGJlIGluIHN1cmUgc3RhdGUsCj4gaGlnaCBvciBsb3csIGhh
cyBub3RoaW5nIHRvIGRvIHdpdGggb3Blbi1kcmFpbi4KPiAKPiA+IAo+ID4gTm90ZSB0aGF0IHRo
ZSByZWxldmFudCBkcml2ZXIgaGFja3MgdGhlIGFjdGl2ZS1sb3cgc2lnbmFsIGFzCj4gPiBhY3Rp
dmUtaGlnaCBhbmQgc3dpdGNoZXMgdGhlIG5vcm1hbCBwb2xhcml0eSBvZiBQRVJTVCMKPiA+IGFz
c2VydGlvbi9kZWFzc2VydGlvbiwgMSBhbmQgMCBpbiB0aGF0IG9yZGVyLCBhbmQgaW5zdGVhZCB1
c2VzCj4gPiAwIHRvIHNpZ25hbCBsb3cgKGFzc2VydGlvbikgYW5kIDEgdG8gc2lnbmFsIGRlYXNz
ZXJ0aW9uLgo+ID4gCj4gPiBJbmNpZGVudGFsbHksIHRoaXMgY2hhbmdlIG1ha2VzIGhhcmR3YXJl
IHRoYXQgcmVmdXNlZCB0byB3b3JrCj4gPiB3aXRoIHRoZSBSb2NrY2hpcC1JUCBQQ0llIGNvcmUg
d29ya2luZyBmb3IgbWUsIHdoaWNoIHdhcyB0aGUKPiA+IG9iamVjdCBvZiBtYW55IGZvb2wncyBl
cnJhbmRzLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBHZXJhbGRvIE5hc2NpbWVudG8gPGdlcmFs
ZG9nYWJyaWVsQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OXByby12bWFyYy1zb20uZHRzaSB8IDggKysrKysrLS0KPiA+ICAgMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5cHJvLXZtYXJjLXNvbS5k
dHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTlwcm8tdm1hcmMtc29tLmR0
c2kKPiA+IGluZGV4IGFhNzA3NzZlODk4YS4uOGRjYjAzNzA4MTQ1IDEwMDY0NAo+ID4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTlwcm8tdm1hcmMtc29tLmR0c2kKPiA+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5cHJvLXZtYXJjLXNvbS5k
dHNpCj4gPiBAQCAtMzgzLDkgKzM4Myw5IEBAICZwY2llX3BoeSB7Cj4gPiAgIH07Cj4gPiAgIAo+
ID4gICAmcGNpZTAgewo+ID4gLQllcC1ncGlvcyA9IDwmZ3BpbzAgUktfUEI0IEdQSU9fQUNUSVZF
X0hJR0g+Owo+ID4gKwllcC1ncGlvcyA9IDwmZ3BpbzAgUktfUEI0IChHUElPX0FDVElWRV9ISUdI
IHwgR1BJT19PUEVOX0RSQUlOKT47Cj4gCj4gU28gbXkgYmlnZ2VzdCBndWVzcyBpcyB3ZSBkb24n
dCBuZWVkIHRoaXMgY2hhbmdlIGF0IGFsbC4KPiBncGlvMGI0IGlzIHVzZWQgYXMgZ3BpbyBmdW5j
dGlvbiwgdGhlIHByb2JsZW0geW91IGZhY2VkIGlzIHRoYXQgaXQKPiBkaWRuJ3Qgc2V0IGdwaW8w
YjQgYXMgcHVsbC11cCwgYmVjYXVzZSB0aGUgZGVmYXV0IHN0YXRlIGlzIHB1bGwtZG93bi4KPiAK
PiBNYXliZSB0aGUgZHJpdmUgY3VycmVudCBvZiB0aGlzIElPIGlzIHRvbyB3ZWFrLCBtYWtpbmcg
aXQgdW5hYmxlIHRvIAo+IGZ1bGx5IGRyaXZlIGhpZ2ggaW4gdGhlIHB1bGwtZG93biBzdGF0ZT8g
SWYgdGhhdCdzIHRoZSBjYXNlLCBjYW4geW91IHNlZSAKPiBhIGhhbGYtbGV2ZWwgc2lnbmFsIG9u
IHRoZSBvc2NpbGxvc2NvcGU/Cj4gCj4gPiAgIAludW0tbGFuZXMgPSA8ND47Cj4gPiAtCXBpbmN0
cmwtMCA9IDwmcGNpZV9jbGtyZXFuYl9jcG0+Owo+ID4gKwlwaW5jdHJsLTAgPSA8JnBjaWVfY2xr
cmVxbmJfY3BtPiwgPCZwY2llX3BlcnN0PjsKPiA+ICAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCI7Cj4gPiAgIAl2cGNpZTB2OS1zdXBwbHkgPSA8JnZjY2FfMHY5PjsJLyogVkNDXzBWOV9TMCAq
Lwo+ID4gICAJdnBjaWUxdjgtc3VwcGx5ID0gPCZ2Y2NhXzF2OD47CS8qIFZDQ18xVjhfUzAgKi8K
PiA+IEBAIC00MDgsNiArNDA4LDEwIEBAIHBjaWUgewo+ID4gICAJCXBjaWVfcHdyOiBwY2llLXB3
ciB7Cj4gPiAgIAkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QRDQgUktfRlVOQ19HUElPICZwY2Zn
X3B1bGxfdXA+Owo+ID4gICAJCX07Cj4gPiArCQlwY2llX3BlcnN0OiBwY2llLXBlcnN0IHsKPiA+
ICsJCQlyb2NrY2hpcCxwaW5zID0gPDAgUktfUEI0IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3Vw
PjsKPiA+ICsJCX07Cj4gPiArCj4gPiAgIAl9Owo+ID4gICAKPiA+ICAgCXBtaWMgewo+CgpIaSBT
aGF3biwgZ2xhZCB0byBoZWFyIGZyb20geW91LgoKUGVyaGFwcyB0aGUgZm9sbG93aW5nIGNoYW5n
ZSBpcyBiZXR0ZXI/IEl0IHJlc29sdmVzIHRoZSBpc3N1ZQp3aXRob3V0IHRoZSBhZGRlZCBjb21w
bGljYXRpb24gb2Ygb3BlbiBkcmFpbi4gQWZ0ZXIgeW91IHF1ZXN0aW9uZWQKaWYgb3BlbiBkcmFp
biBpcyBhY3R1YWxseSBwYXJ0IG9mIHRoZSBzcGVjLCBJIHJlbWVtYmVyZWQgdGhhdApHUElPX09Q
RU5fRFJBSU4gaXMgYWN0dWFsbHkgKEdQSU9fU0lOR0xFX0VOREVEIHwgR1BJT19MSU5FX09QRU5f
RFJBSU4pCnNvIEkgZGVjaWRlZCB0byB0ZXN0IHdpdGgganVzdCBHUElPX1NJTkdMRV9FTkRFRCBh
bmQgaXQgd29ya3MuCgpUaGFua3MsCkdlcmFsZG8gTmFzY2ltZW50bwoKLS0tCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTlwcm8tdm1hcmMtc29tLmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OXByby12bWFyYy1zb20uZHRzaQpp
bmRleCBhYTcwNzc2ZTg5OGEuLmIzZDE5ZGNlNTM5ZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTlwcm8tdm1hcmMtc29tLmR0c2kKKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTlwcm8tdm1hcmMtc29tLmR0c2kKQEAgLTM4Myw3ICsz
ODMsNyBAQCAmcGNpZV9waHkgewogfTsKIAogJnBjaWUwIHsKLQllcC1ncGlvcyA9IDwmZ3BpbzAg
UktfUEI0IEdQSU9fQUNUSVZFX0hJR0g+OworCWVwLWdwaW9zID0gPCZncGlvMCBSS19QQjQgKEdQ
SU9fQUNUSVZFX0hJR0ggfCBHUElPX1NJTkdMRV9FTkRFRCk+OwogCW51bS1sYW5lcyA9IDw0PjsK
IAlwaW5jdHJsLTAgPSA8JnBjaWVfY2xrcmVxbmJfY3BtPjsKIAlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
