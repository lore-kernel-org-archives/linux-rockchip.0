Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CFE3C02183
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 17:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bavlqva3feTvC2FhKG08bvM4EgfnDCuj0Es06AhZXSg=; b=tyXSfMpzbovEds
	v18gTLA6U9/fB6+IcQpPeuHdZsNJ0E5Tdj7+atmJ23ZGQeGUVe9NQC4KsFCtglPzlkfZlQC7eRzE0
	eUcseNDLaN7DVPMzun0AHS9a29STTtWYsLipVbNaeYA34RPsTHzZ6428gPnZoWMyiqy9veJxhy9ka
	0im0V6y0cxvYuOFtnLF9AtFW8lucvwQHHJXyohW4SOF0hu9iWl8Vx1OPyfxnn+OQAR0sFASdbetqd
	u/sEqp24gkHiGm+ItmYRU/7EiCCad+PwAM/JJXVLuoh7KjPHpi4YLbHYxLDwsdzx8AT9BoTE+F4Uo
	hrbV5wXI70GWY0iu2Iog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY7Og-0000000Cdjj-0ycS;
	Wed, 15 Jan 2025 17:41:42 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY7NM-0000000CdSO-3Pxo
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jan 2025 17:40:22 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2156e078563so105260565ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jan 2025 09:40:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736962820; x=1737567620; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RSM2HZluyONZrn3gXP7oqGlR+tWUwLkG4z/EG2USxK4=;
        b=TDQ2WqH4yZ3e8uX7D7L7Tl5sbS/BLGGw+JCf7G9z78OSbUsdQ6g6fqAWbl3NIaosmn
         40ZtXTSMncognbdULS2sXxmMBatGmNFsV3KyJAWOiwzEnmCv2fAPOQP4/Vc+FRWYagnZ
         jO4JtBFFo6PZoujrUXM3l0Q8OKUS5EeQjQBfj3cD5BSXtFajiDtjjEV5NucnY5/xIuDd
         MlS3QhjbE9pALM4YQJE7VlBOiESemzUnR46hdJVQr/yvNIfhcxj36pcY/WB1r90rM8/u
         mUeKC471ychjezuNvi1Az1Bz1ekyS6VNNWVyWEF9M5V+upztYhESFkwgUPWwK6vVYN7a
         rF0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736962820; x=1737567620;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RSM2HZluyONZrn3gXP7oqGlR+tWUwLkG4z/EG2USxK4=;
        b=ixGk6/FAh1ZEsWZYY/5dWyu/3dWJIRJhwBlzbL3ohFSaP6Qw2vy6XQZxIJ2BagGjKx
         It+pCIkckDiiCjlVb5rP4d1gZh6kGbiWlAJh1nrU3p3wSAA63KYaEwbEVQJsiXx8y/Tn
         llIKP9LUbrC/X6/KW+QUPEG3sz3UD5Vn32GmP5/jnowSATVlUgbn3kACKpbPUTL/1sSP
         XuWIw/Y51yP408d9Clemfi+bD0NpIgQVOaQcqbDHQ6PkRxP3I8AOWU9DMgOTzDva02uf
         mCAeRlEX/uSkH2xPPLuR3mul3Wrsu2XhYj4X6rUIqORWHNKfO5e9WQbqUj1gwJGrm1mO
         njrA==
X-Forwarded-Encrypted: i=1; AJvYcCWEurbVX0vXKyB/41oqLan7s7gXPfkU/JZXo61JIMZy4ON80ZFZ9id2NGSKb3vPayAvNUOlY9lMd5SpGYdqPw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxg5jUAsTNOFHRZhrTLldzlTg9NGq+gXrBzQpKUdyHe97FXNmde
	ZFRxnkP8/piuZBYCDExdOzXHhg/3o2gtlk8stU67e3UNaIsKW4jJrPIgKlAwnWhlqnmG/AVH4oE
	=
X-Gm-Gg: ASbGncuZq5GJ/I07+jUR+E/HB7JjFKzUw7Nl1U8IrIZVSLvgRnN6wskdecQKohOp38T
	cxI3iTmZiFaLMiBm98ZWmk62I5iGrvxw9h3jUxhuIYTHSsJvFaaSu1FvdI/yMNr4WalnwrZXE0I
	XZ3RlZfhSy2/5MIKZgpOHq1CSgCD0vD1d1gozmX5ncpRauOKxTjsR9Mw/qKP3Jyi1VjnKq4DfjV
	chR0RUgpW58qv02rgwslAKYF2yLMsCb4cbIkIBHkyns8I1WBmmeLLHPtIEH5lCcAzs=
X-Google-Smtp-Source: AGHT+IGd3FfUImkbuTIHualSl03iWhPCsK272UsBzIXbKjGtmziydc6ISX0oPJIXEIB8DvlCJBFtQw==
X-Received: by 2002:a17:903:244d:b0:216:7175:41bd with SMTP id d9443c01a7336-21a83fb0b26mr432450835ad.39.1736962819934;
        Wed, 15 Jan 2025 09:40:19 -0800 (PST)
Received: from thinkpad ([120.60.139.68])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f12eaadsm85327695ad.70.2025.01.15.09.40.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 09:40:16 -0800 (PST)
Date: Wed, 15 Jan 2025 23:10:12 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Dan Carpenter <dan.carpenter@linaro.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH linux-next v1] PCI: rockchip: Improve error handling in
 clock return value
Message-ID: <20250115174012.bdny6nxxr4tuzyis@thinkpad>
References: <20250106153041.55267-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250106153041.55267-1-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_094020_846100_832ABCA9 
X-CRM114-Status: GOOD (  17.83  )
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

T24gTW9uLCBKYW4gMDYsIDIwMjUgYXQgMDk6MDA6MzhQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKClN1YmplY3Qgc2hvdWxkIGluY2x1ZGUgdGhlIHdvcmQgJ2ZpeCcgbm90ICdpbXByb3ZlJwoK
PiBVcGRhdGVzIHRoZSBlcnJvciBtZXNzYWdlIHRvIGluY2x1ZGUgdGhlIGFjdHVhbCByZXR1cm4g
dmFsdWUgb2YKCnMvVXBkYXRlcy9VcGRhdGUgKGltcGVyYXRpdmUgZm9ybSkKCj4gZGV2bV9jbGtf
YnVsa19nZXRfYWxsLCB3aGljaCBwcm92aWRlcyBtb3JlIGNvbnRleHQgZm9yIGRlYnVnZ2luZwo+
IGFuZCB0cm91Ymxlc2hvb3RpbmcgdGhlIHJvb3QgY2F1c2Ugb2YgY2xvY2sgcmV0cmlldmFsIGZh
aWx1cmVzLgo+IAoKQnR3LCBpdCBpcyBub3QganVzdCB1cGRhdGluZyB0aGUgZXJyb3IgbWVzc2Fn
ZSwgaXQgYWxzbyByZXR1cm5zIHRoZSBhY3R1YWwgZXJyb3IKY29kZS4KCi0gTWFuaQoKPiBSZXBv
cnRlZC1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBsaW5hcm8ub3JnPgo+IENsb3Nl
czogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDEwNDA0MDkuU1VWMDlSODAtbGtwQGlu
dGVsLmNvbS8KPiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBnbWFpbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jIHwgMyAr
Ky0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jCj4gaW5kZXggZmVhODY3YzI0Zjc1
Li5jYTYxNjNmOWQyZGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ll
LXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAu
Ywo+IEBAIC05OSw3ICs5OSw4IEBAIGludCByb2NrY2hpcF9wY2llX3BhcnNlX2R0KHN0cnVjdCBy
b2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiAgCj4gIAlyb2NrY2hpcC0+bnVtX2Nsa3MgPSBkZXZt
X2Nsa19idWxrX2dldF9hbGwoZGV2LCAmcm9ja2NoaXAtPmNsa3MpOwo+ICAJaWYgKHJvY2tjaGlw
LT5udW1fY2xrcyA8IDApCj4gLQkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBlcnIsICJmYWls
ZWQgdG8gZ2V0IGNsb2Nrc1xuIik7Cj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCByb2Nr
Y2hpcC0+bnVtX2Nsa3MsCj4gKwkJCQkgICAgICJmYWlsZWQgdG8gZ2V0IGNsb2Nrc1xuIik7Cj4g
IAo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAtLSAKPiAyLjQ3LjEKPiAKCi0tIArgrq7grqPgrr/grrXg
rqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
