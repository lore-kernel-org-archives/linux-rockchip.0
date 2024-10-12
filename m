Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADA3ACF2568
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 12:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWMHmvw15WldfCMDfUDx49nTS6MGBkVZwztGBHgNVAk=; b=zl4IqES/AgQHCK
	JehWor2e2rqC2a7Jc6ajyyVg9YWr5/V6j3jV5W7whQOGSy8AiBtkiZ+IxLu6GdyXvUE5nPRh8+Dsx
	9ooQ9JWZbREjIXeBG26wdbITnNxQVxQfwW9blZTv6e1Dq8j56sVrDVYsh9E7PwEki6O8sYlAHB+RL
	bunVPzFp00yEvdRQ/d24VguKcoJOqF7Ls0U5cEiNd+rAqRdnjz2pP9R53lZjluGoPFBhWDWIEeuRX
	3o/5hFCtnhjGqS6lfZqRMD3ZJz/7iLLgVZvDzSjRmo305Pi/TLHKQtUXNtkp2EPhoogmkgSmF518s
	B2gQTLxQSYMKP014LrWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szbHF-00000001Ba0-1zVO;
	Sat, 12 Oct 2024 12:31:21 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szbHC-00000001BZY-1U5k
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 12:31:19 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-20cbb1cf324so6989465ad.0
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Oct 2024 05:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728736277; x=1729341077; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o6zyDyeTtPJ40HuJojRed0anIe5PmnUIqk8gS8vhC04=;
        b=WMFQnSorfw8Kh8ZQ4rBFaDK7dNlp33+cEwSYk+iCiSUlUjSy5xfgpj7BW+1xWkOv77
         RI22Px5y0ZR6y2ibVzuv9XHmECUx7xXhKJDQgZcG0Ru7Hywu/TiBj7QpNMx4oess7/hK
         MVZHRlNBSI+W83rbIDo0w8rI0lFoNyc6z0oCewljj+QVxfXvV1XkeSws9Ctx13vnYUl6
         9kElHKZp7Fvtz+bCbmcrTopAXLPANQZRC3+X1BoYUdARnb8ouM4aqW2rFYrTMqpMC4RO
         lChfWAacmVXsq4XFe+TY00Wn3Gvt+baToyFz3r5kVfu2nS3DLb9Hgdx95FY0zYZr4JkW
         /HXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728736277; x=1729341077;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o6zyDyeTtPJ40HuJojRed0anIe5PmnUIqk8gS8vhC04=;
        b=XpWcW9UhK4RWi567f0bQ0kTcN1FSBSod2yF4Xf1/vGNukBq7ZEb5UmldbrXKsJJeit
         XH9hT3Z7VaVhjD8FS8ITDji/sdz/XlP2gMvzFqLMA+Yq/8d63A7Fy5JTXb9shnPLq5WJ
         BFxhYf0ATq/NAVzTez+Tj55pILnx8PrYMQ3H0s1YzLwa0V/VenU6nbg9f+ajyJDFjmDB
         rHOSdEKTRpRPhj9UtqqraZ31N9pMuhhIH6fpPtJ+PskEKaPneEtdIwnIa4w/3KeDIvxH
         TH3Ii+y5xKsQYFnznltpc/1rPKidT3c8jrMAqXGUDE3jeGv7Q0CqwQc3lGkISZh+tGyc
         T9BA==
X-Forwarded-Encrypted: i=1; AJvYcCWz2V44X7L128efAP340/eB57+vc3OHIUJL/RLItinkIMtuYBCECDyFlBBbXSdrfTcHBa213uZ5+PKtk7Y7cA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzu7JLon5fl25oJeWcWuLzviSyfWW6iTPDILgqK7KH5eWIqRl/K
	mWIlKc/BX5k19MkQLpu69Pyjfu00iXroAyhTb+OXJDc3JLe76FJxLvnCR4OwCw==
X-Google-Smtp-Source: AGHT+IHWHwbSaDZkpKZg/vkEnfXk7LU06gEkVAG3M5hSmPI5sp+UlowafZbkiKf+muCQsqeF+wVDLg==
X-Received: by 2002:a17:903:595:b0:202:508c:b598 with SMTP id d9443c01a7336-20ca1726af8mr59782905ad.59.1728736277331;
        Sat, 12 Oct 2024 05:31:17 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc1a160sm36596595ad.102.2024.10.12.05.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 05:31:16 -0700 (PDT)
Date: Sat, 12 Oct 2024 18:01:11 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 12/12] PCI: rockchip-ep: Handle PERST# signal in
 endpoint mode
Message-ID: <20241012123111.bg6rzxotabkxfchc@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-13-dlemoal@kernel.org>
 <20241010104932.gfrunorhpnhan5wp@thinkpad>
 <b525abc8-4066-4097-9a36-558b84144228@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b525abc8-4066-4097-9a36-558b84144228@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_053118_440517_196FB2E2 
X-CRM114-Status: GOOD (  13.02  )
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

T24gRnJpLCBPY3QgMTEsIDIwMjQgYXQgMDY6MzA6MzFQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gT24gMTAvMTAvMjQgMTk6NDksIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToK
PiA+PiArc3RhdGljIGludCByb2NrY2hpcF9wY2llX2VwX3NldHVwX2lycShzdHJ1Y3QgcGNpX2Vw
YyAqZXBjKQo+ID4+ICt7Cj4gPj4gKwlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZV9lcCAqZXAgPSBlcGNf
Z2V0X2RydmRhdGEoZXBjKTsKPiA+PiArCXN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCA9
ICZlcC0+cm9ja2NoaXA7Cj4gPj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSByb2NrY2hpcC0+ZGV2
Owo+ID4+ICsJaW50IHJldDsKPiA+PiArCj4gPj4gKwlpZiAoIXJvY2tjaGlwLT5lcF9ncGlvKQo+
ID4+ICsJCXJldHVybiAwOwo+ID4+ICsKPiA+PiArCS8qIFBDSWUgcmVzZXQgaW50ZXJydXB0ICov
Cj4gPj4gKwllcC0+cGVyc3RfaXJxID0gZ3Bpb2RfdG9faXJxKHJvY2tjaGlwLT5lcF9ncGlvKTsK
PiA+PiArCWlmIChlcC0+cGVyc3RfaXJxIDwgMCkgewo+ID4+ICsJCWRldl9lcnIoZGV2LCAiTm8g
Y29ycmVzcG9uZGluZyBJUlEgZm9yIFBFUlNUIEdQSU9cbiIpOwo+ID4+ICsJCXJldHVybiBlcC0+
cGVyc3RfaXJxOwo+ID4+ICsJfQo+ID4+ICsKPiA+PiArCWVwLT5wZXJzdF9hc3NlcnRlZCA9IHRy
dWU7Cj4gPiAKPiA+IEhvdyBjb21lPwo+IAo+IFllYWgsIGEgYml0IGNvbmZ1c2luZy4gVGhpcyBp
cyBiZWNhdXNlIHRoZSBncGlvIGFjdGl2ZSBsb3cgLyBpbmFjdGl2ZSBoaWdoLCBzbwo+IGFzIHNv
b24gYXMgd2UgZW5hYmxlIHRoZSBJUlEsIHdlIGFyZSBnb2luZyB0byBnZXQgb25lIElSUSBldmVu
IHRob3VnaCBwZXJzdCBncGlvCj4gc2lnbmFsIGhhcyBub3QgY2hhbmdlZCB5ZXQuCgpXaGljaCBt
ZWFucyB5b3UgYXJlIGxvb2tpbmcgZm9yIGEgd3JvbmcgbGV2ZWwhIFdoYXQgaXMgdGhlIHBvbGFy
aXR5IG9mIHRoZQpQRVJTVCMgZ3BpbyBpbiBEVD8KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
