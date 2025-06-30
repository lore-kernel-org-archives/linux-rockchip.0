Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3227EC8302F
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 22:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qKkN1gmaaVwaZtsJbnB4DT+fWXSfQRmOEAnCWquoYs=; b=VqyLqVD16z+bje
	YmK2wT239i2iwxG1ejapqxMfTUCDPE8Drua9jDnvQ+vBTi74fg9qdn8PxnV073YRS8FC7SnL3hXbx
	DbaZJYEIb04aDSfO30pDv8X1P1AqUVYOPm3oH/hZgCokxew9JkO/zH4JH0/rvuGLHEeNv9NMZJvjV
	PFhCFnkg7q9HIdSkt2JoDf1DefGgFRLzB7YhIZc62srsx+u02cqR2b1XRBeSFMJzBXmIYdMedJo5w
	BeYyMXM3uoeNpwPz0beS5Yy4+Utj2LvLDUjN9Y4s76uMZCHcaIAtacjRl0SKDqFC+fqLxgMcFT1yE
	/qTo0iywi3K9pffn5IlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWNJp-00000003dzj-3EdV;
	Mon, 30 Jun 2025 22:49:45 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWMze-00000003bIW-1U58;
	Mon, 30 Jun 2025 22:28:55 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4a43afb04a7so18533821cf.0;
        Mon, 30 Jun 2025 15:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751322533; x=1751927333; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bSaP5bu22sODePS3O3o6OuW/Yz/Yqp93mwqWTCEkiNY=;
        b=Ij2hhTKJl8NNjlapTnJonF4ST75sZDNP/0RevRCG4I/HZM7+uCU3cWMTxv4rAJHB5q
         sZhJdIvq77GUbbJq0qCHL9M6k9ZkJVp44iaYWSpixsN6XLzhWeR3T3u/Zj0LOz11CLDR
         dDwuiGUGVEVdxynKuExoYPnPzMOY6wPd/LYOIyH0ds2tEvERJMdoJsarVvO60eEGBYQf
         D7NqUiT1E+Nr35+Ur8krqWwII30loU4uJE8cbe1HTdlIuLJA02HkYLTYSqBLohSBKVs6
         m9onO1OrDh7dApQ6BOfcuEZXT1dIJdbQ20c/hXwd1LsRq+dwb4DoBabhOdmOLmF+Kx6s
         NU/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751322533; x=1751927333;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bSaP5bu22sODePS3O3o6OuW/Yz/Yqp93mwqWTCEkiNY=;
        b=EoEGdmgwSHNGnGmcAXOqCet8RD9Sb3S9sr6gekxFNhdf4nvZvXXjWOkfUjSP7+HpsQ
         WkCedvYdMbXj8K8cGQer+oDTIYU++6YQgQA6vZzzPBR2Wbr25dCg9g8NjpXmQeaIT5bZ
         XruEeF+6kYhZrf4xLo2Ds62OEItE78KRgcpWUw8VyDMJspE2p5/DZHFK4aY1jMxEl4jn
         Dc1yd58XiOSPeV5ftovIFQzWWmkhAWrzdJPYmS6AFE3GvKcu5FLIHuuQyVVm4qeB3ezk
         lwKUGlEPZQKfE+nyWX/dmqbFl6Cf8SWCO8mgrMNveuiqMY4Z6XBNUXSRaWxpZEAdLh8i
         7NkA==
X-Forwarded-Encrypted: i=1; AJvYcCUgbnJqcm7CvYGfNVAaUlYpvJpfNs2acMhNfjzSpqbPPztDeZJFSCWuevDLDAHBrtaIf4cTZk8HXkWPQNwoESq2@lists.infradead.org, AJvYcCWozxxgE8llA1SGfXBff8n32mAQCWxcboRuqIJ/GHQx1HEC4NAHVDnJauO+khRhqUk95FmSk00/Cv4F@lists.infradead.org
X-Gm-Message-State: AOJu0YyBFlbSUEnuYG/yumW47k89Qd6jUPv8kulaUoYc+owjBY7jRJxd
	0jh1jCyLeRT9MxvyF1yL+WDFpG8bSHRt9zCsbIrSr/Tkg1lBYPUjNNC6
X-Gm-Gg: ASbGncvfMTVaGeoQ5Q08H85Ng3j2DiKILR1C/FOn2X9s5Kwqlw9Tikm0dmZqgOmhl3P
	Ai2DsKo0Yruvi/bqtAivx6U3CD/lP1KL8gWF9wR7uriMxp0c8dvBmH1JhPL6m4UJBNJrcoSZxrF
	iSMF7I0wv83wevCLRDNoxreSyLia1WinE2DYv/Ecw3yddK7vMg3Vmvzv5FdVz7LOy1jNTLzMnol
	QqXdYEaE80mosIhZOUTG0fj+at9TOsfBEXwNL9YLwLotisJvy6RIMyKIveTl9cXmO1PbUO17UY7
	eAgXl3UDztqZ8mTl8LWRzYwemMhRoKQkQP2dcpYirH8tsGB+VA==
X-Google-Smtp-Source: AGHT+IEMPUqeW45dRJW4czX3mdDVSLcJrOSDF/YCwt3dJID5kuK14Ei+8Rr00WsM+IEYTAg6AuZ/Vg==
X-Received: by 2002:a05:622a:1994:b0:4a3:d015:38c0 with SMTP id d75a77b69052e-4a7fcbc9f4bmr253146511cf.37.1751322533182;
        Mon, 30 Jun 2025 15:28:53 -0700 (PDT)
Received: from geday ([2804:7f2:800b:4851::dead:c001])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a7fc13a311sm66966841cf.25.2025.06.30.15.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 15:28:52 -0700 (PDT)
Date: Mon, 30 Jun 2025 19:28:46 -0300
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
Message-ID: <aGMPnvF-TLsmA8rz@geday>
References: <cover.1751307390.git.geraldogabriel@gmail.com>
 <d3e7dc38bd287aa93a5d6bba87bf3c428ae92ca4.1751307390.git.geraldogabriel@gmail.com>
 <4006908.X513TT2pbd@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4006908.X513TT2pbd@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_152854_391551_2676C3DA 
X-CRM114-Status: GOOD (  10.89  )
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
Cj4gc2hvdWxkIGRvIHRoZSB0cmljay4KCkhpIGFnYWluIEhlaWtvLAoKU2luY2UgSSBkb24ndCB1
c2UgZ2l0LXNlbmQtZW1haWwgYW5kIGluc3RlYWQgcmVseSBvbiBtdXR0IHRvIHNlbmQgdGhlCnBh
dGNoZXMgaXQgc2VlbXMgSSBuZWVkZWQgImdpdCBjb25maWcgZm9ybWF0LmZyb20gdHJ1ZSIgdG8g
cHJvcGVybHkKYWRkIHRoZSBGcm9tOiB0byB0aGUgZW1haWwgYm9keS4KCkZpcnN0IHRyeSBtYW5n
bGVkIEZyb206IGVtYWlsIGhlYWRlciwgcmVzdWx0aW5nIGluIFZhbG1hbnRhcycgbmFtZQp0b2dl
dGhlciB3aXRoIG15IGVtYWlsIGFkZHJlc3MgOnwKCkkndmUgcmVzZW50IGl0IChob3BlZnVsbHkp
IGNvcnJlY3RlZCBub3cuCgpUaGFua3MhCkdlcmFsZG8gTmFzY2ltZW50bwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
