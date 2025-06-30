Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CCACC8302F
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 21:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Iz766cPQ0AOUROKeQQVOnxrlaLx6YOoMPqlZsODsO0=; b=KkQTMvf2BiGcMv
	0A2tOuTJOJQKv5//bZOQOvLavn5reGol5bybQVhvn6lAvWkOhqaSNP/YYrDyfTZl2De0rsTCliy6S
	n3ktVPuvtIk0LmNYqJEWHc1RwciPdvUjSwYbn2Tdac6cNS9k3/JONJsdb56Beh+d2ojiGGG4xeWJw
	w8R1aPkRUITl24zPclwi9RPATIxT0TM0WNzkT6e3r4RfESdifV25Sqql5y3YA1KjScq1BeFLdFxj7
	ncQMF7gcUmsFsiWZzvTH7bD2DH5Ad8AllfZL+gf+SsSemtv8lW4zkEqBzwjU3I1iEK1owy0GxnGn9
	+1wvvIZttz5H43qq1VYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWMHQ-00000003VXx-3spo;
	Mon, 30 Jun 2025 21:43:12 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWMHO-00000003VXR-3Vj1;
	Mon, 30 Jun 2025 21:43:11 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-4a5903bceffso67883141cf.3;
        Mon, 30 Jun 2025 14:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751319790; x=1751924590; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/n8VfpILnh3xTd/ry0xCdOmAPegbbmqua23xjp6yCbU=;
        b=BkSeG8Ga/k9h+doH+0tgUgpkRnsYExwk+9L6wzrFuWHTq4ocqDsHOrtb97HY3KX7OQ
         I3Syp1Ff/aIvM8ijwHMZKsYZEN7MZOcMqLJxdbDLhZZK6x0amLKRK44RwnC0rtQOM82y
         r76sqghHiM7TqkjUGuf1y9BJX+z20Su0JVJ+2lPPhgVfe4JmPsVeY/G/6RufUxvGpG+6
         bM3nxBFsKG5KSPQeagTq1SldHcsLDDvUovMoabeEoyzs9VHPGVwL3Eqa7QbwFXBTkvpm
         PMdcq16gjDR3ioeCcutHZNQYMS1DfM7Zczo3PIrBbTD5RK5jt1PjPiQMkUEWVI1z6ykK
         55QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751319790; x=1751924590;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/n8VfpILnh3xTd/ry0xCdOmAPegbbmqua23xjp6yCbU=;
        b=IJnz4L+A2mSKVe28G8muvkpVjUh09dXcotp73bhff+LH1e5lHRgwKQBF/H5N1HMLXH
         hEez6n3F5BuoMfGm/U2hZRW4v9oyY8RdPTXoqc6RPwRMjsvSx2N2RzKglMOeyuEaupMl
         a5HojpWG9zcG2kfCMaq7HiukcxdQJbzTXPh/0yuvdRTRG5uMp21wlcG40bn2AKpM1vGd
         Lzp2lW/EryEdBRUu0YawFs2JjW+CGWt/pvrWsPPVaJa3ZPxazdPVTaO2YT4GtAMdcdjJ
         v2tcMOrwKdm0xY4YRApCrnDWBDFHXJAmQSTPHvmSuerq7cwf3lo9QyczR7AqHvEET7zi
         OMXA==
X-Forwarded-Encrypted: i=1; AJvYcCUA5aF9o7qoU5QQTTxwYXsI24NC0Fpzag+sBWYopFivsgvCavzBjzoE2OSO6tHe+hnEdJ0/NvdKu2Bw@lists.infradead.org, AJvYcCWvkyzXkl+0ktNMchycHSexX9K3pfYD8sFoGRnUuX1iQjqS8T0fnqHhRKGWBR4wLxh1mtBNS9vbwcSgHaHG/EH6@lists.infradead.org
X-Gm-Message-State: AOJu0YxPA0K4RchpXBeP1KKknQYtQqv+URDeAuiV3W3bskOwEHRLTErE
	ia6Lpd1j0DaZMMEYNNxBdEKSieTxCnxGQNfet5HkQ2Ckwb8gbYeH1PGP
X-Gm-Gg: ASbGnct1+ePlq4W9ZD3Ncy622aaJKl0m10pDlTyYN0fMmKxm9ea2/Ot3dDadId67dWV
	o2r4hGHBq22qjySx7aiQOGBEqZAmJr2Z3BQGPsIG/XlIiTtg7a3jPcdLGlv//ZkSiNLOgHGr00q
	L96rKS3Hifb1WyuLorj8D14MmOeD6j3Zt7ajoi6uzoT/I8gtfulFv2hFFIDw0vLHgODtnea0VI7
	UYWaGcoofuL9buZmCI8toqArvWerWfC+fQxLSQYnmg978LtfpPkCq1Fg3yEV2R35wJWF8HEK3dx
	OHbKXdnIA4B4aK/PmwkCtCOKPDzU8n2o1V2pT5IOEUNDG74TSQ==
X-Google-Smtp-Source: AGHT+IGgiesFUWV/yzbfRLw9KUgtdZVfuq32iKhJIw8iUWSflMfyK58IUhuPCz10MrQuAnv+l4ThFw==
X-Received: by 2002:a05:622a:578d:b0:4a4:40b7:9cc with SMTP id d75a77b69052e-4a7fc9f8ee0mr225437281cf.12.1751319789601;
        Mon, 30 Jun 2025 14:43:09 -0700 (PDT)
Received: from geday ([2804:7f2:800b:4851::dead:c001])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a7fc138d7esm66590201cf.21.2025.06.30.14.43.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 14:43:08 -0700 (PDT)
Date: Mon, 30 Jun 2025 18:43:02 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rick wertenbroek <rick.wertenbroek@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Valmantas Paliksa <walmis@gmail.com>, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 3/4] phy: rockchip-pcie: Enable all four lanes if
 required
Message-ID: <aGME5sh1fLJlmVCD@geday>
References: <cover.1751307390.git.geraldogabriel@gmail.com>
 <d3e7dc38bd287aa93a5d6bba87bf3c428ae92ca4.1751307390.git.geraldogabriel@gmail.com>
 <4006908.X513TT2pbd@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4006908.X513TT2pbd@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_144310_875827_C3D9D751 
X-CRM114-Status: GOOD (  14.34  )
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

T24gTW9uLCBKdW4gMzAsIDIwMjUgYXQgMTE6MzM6MTlQTSArMDIwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gQW0gTW9udGFnLCAzMC4gSnVuaSAyMDI1LCAyMDoyMjowMSBNaXR0ZWxldXJvcMOk
aXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEdlcmFsZG8gTmFzY2ltZW50bzoKPiA+IEN1cnJlbnQg
Y29kZSBlbmFibGVzIG9ubHkgTGFuZSAwIGJlY2F1c2UgcHdyX2NudCB3aWxsIGJlIGluY3JlbWVu
dGVkIG9uCj4gPiBmaXJzdCBjYWxsIHRvIHRoZSBmdW5jdGlvbi4gTGV0J3MgcmVvcmRlciB0aGUg
ZW5hYmxlbWVudCBjb2RlIHRvIGVuYWJsZQo+ID4gYWxsIDQgbGFuZXMgdGhyb3VnaCBHUkYuCj4g
PiAKPiA+IFJldmlld2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJv
Lm9yZz4KPiA+IFJldmlld2VkLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29t
Pgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBWYWxtYW50YXMgUGFsaWtzYSA8d2FsbWlzQGdtYWls
LmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEdlcmFsZG8gTmFzY2ltZW50byA8Z2VyYWxkb2dhYnJp
ZWxAZ21haWwuY29tPgo+IAo+IGhtbSwgaWYgVmFsbWFudGFzIGlzIHRoZSBvcmlnaW5hbCBhdXRo
b3IgeW91IHNob3VsZCBwcm9iYWJseSBrZWVwIHRoYXQgYXV0aG9yc2hpcAo+ICAgZ2l0IGNvbW1p
dCAtLWFtZW5kIC0tYXV0aG9yPSJWYWxtYW50YXMgUGFsaWtzYSA8d2FsbWlzQGdtYWlsLmNvbT4i
Cj4gc2hvdWxkIGRvIHRoZSB0cmljay4KPiAKPiBUaGUgZmlyc3Qgc2lnbmVkLW9mZiBzaG91bGQg
YmUgZnJvbSB0aGUgcGF0Y2ggYXV0aG9yLCB0aGVuIHlvdXIgc2lnbmVkLW9mZgo+IGluZGljYXRl
cyB5b3UgaGFuZGxpbmcgdGhlIHBhdGNoIGxhdGVyIGFzIHBhcnQgb2YgdGhpcyBzZXJpZXMuCj4g
Cj4gW29yLCBpZiB5b3UgbW9kaWZpZWQgdGhlIGNvZGUgb2YgdGhlIHBhdGNoIGhlYXZpbHksIENv
LWRldmVsb3BlZC1ieSBjb3VsZAo+ICBhbHNvIGJlIGFwcHJvcHJpYXRlXQo+IAoKSGkgSGVpa28s
Cgp0aGFua3MgZm9yIHRoZSBwb2ludGVyIG9uIGRvaW5nIHRoaW5ncyByaWdodC4gSSdkIGhhdGUg
dG8gYXBwcm9wcmlhdGUKc29tZW9uZSdzIGVsc2Ugd29yay4gSSBhbHJlYWR5IGVtYWlsZWQgVmFs
bWFudGFzIGFuZCBoZSdzIGZpbmUgd2l0aAp0aGUgaW5jbHVzaW9uIG9mIGhpcyBzaWduZWQtb2Zm
LCBzbyBsZXQncyBnaXZlIGhpbSBkdWUgY3JlZGl0LgoKR2VyYWxkbyBOYXNjaW1lbnRvCgo+IEhl
aWtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
