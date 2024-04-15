Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 553ACC4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 06:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHoN1JMMyY9YJbWYCb/oGXO7i0+T2QT06CittJpp6xw=; b=OeJtXnTUJ9ieKe
	CVO/rsh1IulIHvVfGuo4t53FiTYM/evVPHcOixcXvjsnhX8OsS90hlb+r3QAxldmJSrzEfEG7nbLQ
	YZyN7NXU4tKiJnRNdg5O/7cquGi+EVnD+XuFe9aZYqIcIUYeayWsogkUOlZIAhDkCEbGSIVGKE5Yq
	N/N2B7rZoE5U4djnClqaPInhYbbWtSG8v58QZPKM4Hdgk6f6JsJDCRA+iSl/oWN3IRZn6HHVGqjhs
	WxpvD9K5yGMa8ZeC5lG/6LC0jUN9rTsEqxaC7xUbMf66KkKXlH5Eol/rDo0iUTNAUJlLrvE/o2Ffd
	jmPyUcvFfFtQKwFC8uCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwGBH-00000007Dkb-0C3w;
	Mon, 15 Apr 2024 06:51:07 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwGBE-00000007Djt-0WII
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Apr 2024 06:51:05 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-5d3912c9a83so1665446a12.3
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Apr 2024 23:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713163863; x=1713768663; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PEJxfvpeTL9PwsFNBxOiLehpxuzN2ftOHpkf1xALIpg=;
        b=jsmwRX0s6uF87E8jvR0O9jzEWxeFFbyXD54Q1LHn9RlYxp6+MG6GuxTxSiKTLrk5VN
         KKmXiyOjszkFngySaE1/dTsov/sah9XH2r2pZQ5lJ0qnEnTPSBap92qodHms8XBGEL2C
         ylsihxqJh19xfax+FLTiEjF9dWPVc7stTpyphjCTjvgpS4tAryrSH4ShG7kvdnDvW7n3
         tFfTg1rUm2IXI+jzt5f58rIi6EWMcRaew+dy6qCuSF26sEM3K+fDaamvXrsNgQzmhq4U
         b6dWnLQ0Zo/N0cDPJjh6heKXsD8UpL82VHCeaIIUZc7+9UtbR5tB7OcJShUiUa9SE9oJ
         wPNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713163863; x=1713768663;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PEJxfvpeTL9PwsFNBxOiLehpxuzN2ftOHpkf1xALIpg=;
        b=aHezzfE06A4Mos6qaitfP08ivOCeU1AEVdHEI6atg6bqOhSYg/L3Cou6K9iO/bFai8
         R2jk4V9b8vAeSuCwxG/2vH1DPKkoHoqjtJ3/wkfpFSYcoCJDKPeZg2w9lUabnHjJhcBy
         jfk04tRImpI+euuRHo0kNXg+1gJga5QmfQp1WkDSGWUB319zgrMKyHkZr3ByGED1Svrk
         9zTOo+VKKflUO6fkyMOc/iu3cN5ns0g6G4V0SCbKTvbiedhaFsElPWVavPbDx6wlw2bC
         sLFyTJRyVQSZHuHRqiZR0iV4jeciEGyurMuJgMOEALWQ3g71KIyxyaa+575jAUR8T3zT
         onww==
X-Forwarded-Encrypted: i=1; AJvYcCWdxGu5+dFmyDpzsk+TjRY29FdgjE05k3pegJo2GSpVHZwuYHvpIyLDbzi6qKqUGCcVEnEoi12+eMYrall5NeDvc7mrNQZl2Fdp0GMpPeXxM9Ua
X-Gm-Message-State: AOJu0YzL3qzeIVfuIkbcczHssCLJvzyU4TLD3dyDvhmYAmgulzAaalgD
	kCBGCAnxarBlDBD3awJ9LjLQooSS2agIlE8DB0ED6idI9elGkQWxK0Yme2IQlA==
X-Google-Smtp-Source: AGHT+IEAEfajN2yAj/y0OrMWFHmYxxtw5arcoHq58B7ItcGW4hY4E4nE+BGBSQk4MLak5kFXkoAnXg==
X-Received: by 2002:a05:6a21:8881:b0:1a3:ae4a:930 with SMTP id tb1-20020a056a21888100b001a3ae4a0930mr9656451pzc.33.1713163862718;
        Sun, 14 Apr 2024 23:51:02 -0700 (PDT)
Received: from thinkpad ([103.28.246.218])
        by smtp.gmail.com with ESMTPSA id p7-20020a17090a348700b002a21b9805f8sm7237084pjb.17.2024.04.14.23.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 23:51:02 -0700 (PDT)
Date: Mon, 15 Apr 2024 12:20:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/2] PCI: rockchip-host: Wait 100ms after reset before
 starting configuration
Message-ID: <20240415065058.GD7537@thinkpad>
References: <20240413004120.1099089-1-dlemoal@kernel.org>
 <20240413004120.1099089-3-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240413004120.1099089-3-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_235104_198056_DAED5BC1 
X-CRM114-Status: GOOD (  19.94  )
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

T24gU2F0LCBBcHIgMTMsIDIwMjQgYXQgMDk6NDE6MjBBTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gVGhlIFBDSSBFeHByZXNzIEJhc2UgU3BlY2lmaWNhdGlvbiByNi4wLCBzZWN0aW9u
IDYuNi4xLCBzdGF0ZXMgdGhhdCB0aGUKPiBob3N0IHNob3VsZCB3YWl0IGZvciBhdCBsZWFzdCAx
MDAgbXNlYyBmcm9tIHRoZSBlbmQgb2YgYSBjb252ZW50aW9uYWwKPiByZXNldCAoUEVSU1QjIGlz
IGRlLWFzc2VydGVkKSBiZWZvcmUgc2VuZGluZyBhIGNvbmZpZ3VyYXRpb24gcmVxdWVzdCB0bwo+
IGVuc3VyZSB0aGF0IHRoZSBkZXZpY2UgaXMgYWJsZSB0byByZXNwb25kIHdpdGggYSAiUmVxdWVz
dCBSZXRyeSBTdGF0dXMiCj4gY29tcGxldGlvbi4KPiAKPiBBZGQgdGhlIFBDSUVfVF9SUlNfUkVB
RFlfTVMgbWFjcm8gdG8gZGVmaW5lIHRoaXMgd2FpdCB0aW1lIGFuZCBtb2RpZnkKPiByb2NrY2hp
cF9wY2llX2hvc3RfaW5pdF9wb3J0KCkgdG8gYWRkIHRoaXMgMTAwbXMgc2xlZXAgYWZ0ZXIgZGVh
c3NlcnRpbmcKPiBQRVJTVCMgdXNpbmcgdGhlIGVwX2dwaW8gR1BJTy4KPiAKPiBTdWdnZXN0ZWQt
Ynk6IEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBE
YW1pZW4gTGUgTW9hbCA8ZGxlbW9hbEBrZXJuZWwub3JnPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5u
YW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgotIE1hbmkK
Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMgfCAy
ICsrCj4gIGRyaXZlcnMvcGNpL3BjaS5oICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA3ICsr
KysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYyBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMKPiBpbmRleCBmYzg2ODI1MWU1NzAu
LmNiZWM3MTExNDgyNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAtaG9zdC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tj
aGlwLWhvc3QuYwo+IEBAIC0zMjUsNiArMzI1LDggQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2ll
X2hvc3RfaW5pdF9wb3J0KHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiAgCW1zbGVl
cChQQ0lFX1RfUFZQRVJMX01TKTsKPiAgCWdwaW9kX3NldF92YWx1ZV9jYW5zbGVlcChyb2NrY2hp
cC0+ZXBfZ3BpbywgMSk7Cj4gIAo+ICsJbXNsZWVwKFBDSUVfVF9SUlNfUkVBRFlfTVMpOwo+ICsK
PiAgCS8qIDUwMG1zIHRpbWVvdXQgdmFsdWUgc2hvdWxkIGJlIGVub3VnaCBmb3IgR2VuMS8yIHRy
YWluaW5nICovCj4gIAllcnIgPSByZWFkbF9wb2xsX3RpbWVvdXQocm9ja2NoaXAtPmFwYl9iYXNl
ICsgUENJRV9DTElFTlRfQkFTSUNfU1RBVFVTMSwKPiAgCQkJCSBzdGF0dXMsIFBDSUVfTElOS19V
UChzdGF0dXMpLCAyMCwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvcGNpLmggYi9kcml2ZXJz
L3BjaS9wY2kuaAo+IGluZGV4IDE3ZmVkMTg0Njg0Ny4uYzkzZmZjNWU2ZTFmIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvcGNpL3BjaS5oCj4gKysrIGIvZHJpdmVycy9wY2kvcGNpLmgKPiBAQCAtMTYs
NiArMTYsMTMgQEAKPiAgLyogUG93ZXIgc3RhYmxlIHRvIFBFUlNUIyBpbmFjdGl2ZSBmcm9tIFBD
SWUgY2FyZCBFbGVjdHJvbWVjaGFuaWNhbCBTcGVjICovCj4gICNkZWZpbmUgUENJRV9UX1BWUEVS
TF9NUwkJMTAwCj4gIAo+ICsvKgo+ICsgKiBFbmQgb2YgY29udmVudGlvbmFsIHJlc2V0IChQRVJT
VCMgZGUtYXNzZXJ0ZWQpIHRvIGZpcnN0IGNvbmZpZ3VyYXRpb24KPiArICogcmVxdWVzdCAoZGV2
aWNlIGFibGUgdG8gcmVzcG9uZCB3aXRoIGEgIlJlcXVlc3QgUmV0cnkgU3RhdHVzIiBjb21wbGV0
aW9uKSwKPiArICogZnJvbSBQQ0kgRXhwcmVzcyBCYXNlIFNwZWNpZmljYXRpb24gcjYuMCwgc2Vj
dGlvbiA2LjYuMS4KPiArICovCj4gKyNkZWZpbmUgUENJRV9UX1JSU19SRUFEWV9NUwkxMDAKPiAr
Cj4gIC8qCj4gICAqIFBDSWUgcjYuMCwgc2VjIDUuMy4zLjIuMSA8UE1FIFN5bmNocm9uaXphdGlv
bj4KPiAgICogUmVjb21tZW5kcyAxbXMgdG8gMTBtcyB0aW1lb3V0IHRvIGNoZWNrIEwyIHJlYWR5
Lgo+IC0tIAo+IDIuNDQuMAo+IAo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
