Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 830C9C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 12:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7/0lHyYMrvrzu4omMFaCd1yMz0L88wsO2XmratEM/4=; b=mZiJ232KuvLUbA
	bQXq3HHdpQp0IIOaS4wZ27L4+gK6meP947Fhr/I6aH7ssZK69YsAB6FZoBoqVvSB2YJq1AsG3TYFi
	vBZI0opl9L6xKTNzhlPsxIn1ppdwbhlac+sqXd9f9EJX6VcyScR/NDhXb2a6lzEtPqwnJPHaejXZO
	7UWWUL8UNq9xEOEK9sx4FP8lBPy5MsFQrmjMsRs5nAK9nYGyeyqIlNfxP3c2y05oWptywx8yoLlXL
	tvHDMVdkYLa1qkiqKP7XB6LkmVgePYuYFZmghxY+GfcAcqc9UK3BUshj+l3V1O/6Xh5XP7rSf/HCj
	+hygZJu3VrjdOzj6u8bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGzK3-000000096JL-0vwj;
	Mon, 19 May 2025 12:10:23 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGzK0-000000096Ge-1pS3
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 12:10:22 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-ac3eb3fdd2eso799598866b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 19 May 2025 05:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747656618; x=1748261418; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6baiB+VhScKnBJFcGjroRlH3n+JmifYkI1E83/dxc7w=;
        b=DCLdnbfALANyocZoXA6nqCmpug4Nvut7ixIh6T4EbsL6kbZktWANZjiKqEc/0IDjKO
         QCLGdfkv+lzEos7vEgskQvr2xNWt3g5zc9IfVBZnZ1n4/0bArvju5XKjECdl+OnJnpjs
         /IVp9edoh4SacH6PP8sFLe3gc0f9NJLX0du11gZKSq2C3P753ha6hShlGqCHqcBVncsN
         zI9Nq7Gd0TjXwGTEr0x4Jo23+KwWs0hpqUMpcTeGC+iEqXJAyu9hAHUHMt9dJ7+qxqcn
         gdOGp0XAw7xJKYWNqFukn3cDJjkEB44+bSvhYZ8FruGy8kvJcDZWCKfxIlzlMA26exvZ
         cxXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747656618; x=1748261418;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6baiB+VhScKnBJFcGjroRlH3n+JmifYkI1E83/dxc7w=;
        b=c7tjsFdniX6AplDbxjdXtyF4cKq0+DjhDlkLAsvuGgN6gw62xvc84l/aDaAagCGq70
         Q1uilLJjJx2+smANEYCfIlia6mgICkxEIooQ+OXszt4YTY47q2jmKEezBs4oJDvBRQ+Q
         cdjwgtcAhkFWv9nxSyOTwtOeB3K5FapuMuZFLP/S6Se6n57BCUfdeDRPlDKCJVDV4sv4
         cz8O0MX9rQY1fpn/ndYkU56snL9aIrIGFD+42RYfNnNzV1271ToHGFmKi+YHJQkG0V94
         rnIPGOnWySGCfxgknweTtXjD4nEciq5yXoD/EB2b1BMyRhhXFKRc7w3lb8iA/UbQ0M30
         dRCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVt36l9EtPAbV0hToaqgYBiJ8RYH/JujIUoKuVFXYoqqFNRM6UIT4M0T2h1jWGpvu/+juQPWlYYknD2C9I9Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyix2HeRhWn2NRpiCH/BVeWm4M3E66aYL0vnlNNwTYn6eVlKQAz
	tCDAxZkviuez6NMOCWdYs88McBfAwPvUz8bUqPvYHMuhYJbF0txk3Sgc1s9b90MQUQ==
X-Gm-Gg: ASbGncvRTqlvM+lqFPKnZ4xvlkTqJbOhcbyrM2x6a/0jIfTCSSMrGCnzze9qNIsQWzk
	p56Zj2WPt+ehr/YhkbV5Oo1YNFkVhX6NwHI76gJQg4WIx7eVvfWJOFxiJsmqkOzx7ZpQf8tQeGC
	YbvL0BSZRNXxX1ahg/crinA7LHetHKm4Z5U9dzRD8aSH2kC2ralnmwYpZr5i2K1UezC0Cdln8z1
	3S5D+nxM8pe1q7lcQbw36pAwWlhl4LeSkvY/NYUxl8PvzAYijODzd07yKLKUsFMiROwK9EKBxyS
	0eXLfTjgD15ZwSnZBhzKOgi0lvwdOlS/NjBQ9NTVahyuDIIRB+wFByJ3yQsSYYgwQkbP7ej8bXS
	iHcGKXNJ9YwJKdaSfuv2tbEW/L+UA8L5b7g==
X-Google-Smtp-Source: AGHT+IHpTwdnK5YFZhkdVK9LBLESGLHcc/FhT6MMJ8mFqjOpeOo+JiJr1fFrHlhNHE5cLqHy2HqRNQ==
X-Received: by 2002:a17:907:7f16:b0:ad5:5210:749c with SMTP id a640c23a62f3a-ad5521075fbmr644487766b.22.1747656618307;
        Mon, 19 May 2025 05:10:18 -0700 (PDT)
Received: from thinkpad (host-87-20-215-169.retail.telecomitalia.it. [87.20.215.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d04e80asm580893166b.2.2025.05.19.05.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 05:10:17 -0700 (PDT)
Date: Mon, 19 May 2025 13:10:16 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Laszlo Fiat <laszlo.fiat@proton.me>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Krishna chaitanya chundru <quic_krichai@quicinc.com>, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, Damien Le Moal <dlemoal@kernel.org>, 
	Hans Zhang <18255117159@163.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH v2 0/4] PCI: dwc: Link Up IRQ fixes
Message-ID: <jbl77lwvxvjeeaed5jiavv3nwfctjqpuhvbzha2fucsdgoulss@u6xjrckk4so3>
References: <20250506073934.433176-6-cassel@kernel.org>
 <7zcrjlv5aobb22q5tyexca236gnly6aqhmidx6yri6j7wowteh@mylkqbwehak7>
 <aCNSBqWM-HM2vX7K@ryzen>
 <fCMPjWu_crgW5GkH4DJd17WBjnCAsb363N9N_h6ld1i8NqNNGR9PTpQWAO9-kwv4DUL6um48dwP0GJ8GmdL4uQf-WniBepwuxTEhjmbBnug=@proton.me>
 <aCcMrtTus-QTNNiu@ryzen>
 <5l0eAX7zaDMDMp1vJhvB9MVKXSPn3Ra0ZiP5e2q1E4rwmADBB6MlREZO9cuD_zvclAOhhBE0-NFthVbOajeSCfYjchT-83OgLbjclOgx3T4=@proton.me>
 <aCr9cYhtcBJZ-9Fj@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aCr9cYhtcBJZ-9Fj@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_051020_475799_9D83F566 
X-CRM114-Status: GOOD (  23.15  )
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

T24gTW9uLCBNYXkgMTksIDIwMjUgYXQgMTE6NDQ6MTdBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBGcmksIE1heSAxNiwgMjAyNSBhdCAwNjo0ODo1OVBNICswMDAwLCBMYXN6bG8g
RmlhdCB3cm90ZToKPiA+IAo+ID4gSSBoYXZlIGNvbXBpbGVkIGEgdmFuaWxsYSA2LjEyLjI4LCB0
aGF0IGJvb3RlZCBmaW5lLCBhcyBleHBlY2VkLiBUaGVuIGNvbXBpbGVkIGEgIHZlcnNpb24gd2l0
aCB0aGUgcGF0Y2ggZGlyZWN0bHkgYWJvdmUuCj4gPiAKPiA+ID4gIFdlIGV4cGVjdCB0aGUgbGlu
ayB0byBjb21lIHVwLCBidXQgdGhhdCB5b3Ugd2lsbCBub3QgYmUgYWJsZSB0byBtb3VudCByb290
ZnMuCj4gPiA+ICAKPiA+IAo+ID4gVGhhdCBpcyBleGFjdGx5IHdoYXQgaGFwcGVuZWQuIAo+ID4g
Cj4gPiA+ICBJZiB0aGF0IGlzIHRoZSBjYXNlLCB3ZSBhcmUgY2VydGFpbiB0aGF0IHRoZSB0aGlz
IHBhdGNoIHNlcmllcyBpcyAxMDAlIG5lZWRlZAo+ID4gPiAgZm9yIHlvdXIgZGV2aWNlIHRvIGhh
dmUgdGhlIHNhbWUgZnVuY3Rpb25hbCBiZWhhdmlvciBhcyBiZWZvcmUuCj4gPiAKPiA+IFRoYXQg
aXMgdGhlIGNhc2UuCj4gCj4gTGFzemxvLAo+IAo+IFRoYW5rIHlvdSBmb3IgdmVyaWZ5aW5nIQo+
IAo+ID4gCj4gPiBCeWUsCj4gPiAKPiA+IExhc3psbyBGaWF0IAo+IAo+IE1hbmksIEtyenlzenRv
ZiwKPiAKPiBJdCBkb2VzIGluZGVlZCBzZWVtIGxpa2UgdGhlIHJlYXNvbiBmb3IgdGhpcyByZWdy
ZXNzaW9uIGlzIHRoYXQgdGhpcyB3ZWlyZAo+IE5WTWUgZHJpdmUgcmVxdWlyZXMgc29tZSBhZGRp
dGlvbmFsIHRpbWUgYWZ0ZXIgbGluayB1cCB0byBiZSByZWFkeS4KPiAKPiBUaGlzIHNlcmllcyBk
b2VzIHJlLWFkZCBhIHNpbWlsYXIgZGVsYXksIGJ1dCBpbiB0aGUgJ2xpbmsgdXAnIElSUSB0aHJl
YWQsCj4gc28gZXZlbiB3aXRoIHRoaXMgc2VyaWVzLCB0aGluZ3MgYXJlIG5pY2VyIHRoYW4gYmVm
b3JlICh3aGVyZSB3ZSBoYWQgYW4KPiB1bmNvbmRpdGlvbmFsIGRlbGF5IGFmdGVyIHN0YXJ0aW5n
IHRoZSBsaW5rKS4KPiAKPiBEbyB5b3UgcmVxdWlyZSBhbnkgYWRkaXRpb25hbCBjaGFuZ2VzPwo+
IAoKTm8uIFNvcnJ5IGZvciB0aGUgZGVsYXkgaW4gZ2V0dGluZyBiYWNrLiBJIHdhcyBhdCBMaW5h
cm8gQ29ubmVjdCBsYXN0IHdlZWsgYW5kCmhhZCB0byB0YWtlIHNvbWUgdmFjYXRpb24gZm9yIHRo
ZSBmaXJzdCBoYWxmIG9mIHRoaXMgd2Vlay4KCkl0IGlzIGZpbmUgd2l0aCBtZSB0byBhZGQgdGhl
IGRlbGF5IG9ubHkgaW4gdGhlIFJvY2tjaGlwIHBsYXRmb3JtIHdoZXJlIHRoZQppc3N1ZSB3YXMg
cmVwb3J0ZWQgKG5leHQgdGltZSBwbGVhc2UgbWVudGlvbiB0aGUgaXNzdWUgdGhhdCB0cmlnZ2Vy
ZWQgdGhlIHNlcmllcwppbiB0aGUgY292ZXIgbGV0dGVyKS4gQnV0IEkgZG8gbm90IHdhbnQgdG8g
YWRkIHRoZSBzYW1lIGluIFFjb20gcGxhdGZvcm0gYXMgdGhlCmRlbGF5IGlzIG5vdCBzdHJpY3Rs
eSByZXF1aXJlZCBhcyBwZXIgdGhlIHNwZWMgKGlmIEkgdW5kZXJzdG9vZCBpdCBwcm9wZXJseSku
CgpTbyBJJ2xsIG1lcmdlIHJlc3Qgb2YgdGhlIDMgcGF0Y2hlcy4KCi0gTWFuaQoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
