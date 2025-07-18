Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85616C83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 17:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozONATMm95DKq4z3o2tZXwCzZk+P+GNaZu2OpH27kqE=; b=0q1zWEyGQc2yZZ
	k7mL+bc6krS7vuYGq8TdJSm+s65O9d7nJ088saL6fiQdD3QkVhtDiw9+CPlwt3ZDuA4cWMLGobX2j
	JyZlOZj0GjMOJUSh64yP89ImUc1H7vtMlnZaiM2wTZPekJP8OhV/b2+6Vfx/YgajxDeqpeHNOb8tU
	XUXBzIy7KQKaiaHbCBn5KbwtBwqrIfF2nbzF7xM/PIMfWT/X9u0oBc3MfaTO+qHFY0HFnP7/WN4Kr
	CYtO+wychevquOlq6LO50stMgFyRauJujJm0SKnZQlx5lDo2ia7rJ8F5W26H7gXOMtModiHuz4Emy
	/Z8GlZNptTJiBTy/d22A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucodz-0000000DBqj-186f;
	Fri, 18 Jul 2025 17:13:11 +0000
Received: from mail-ua1-x92f.google.com ([2607:f8b0:4864:20::92f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucoXL-0000000DB4B-2cBp;
	Fri, 18 Jul 2025 17:06:20 +0000
Received: by mail-ua1-x92f.google.com with SMTP id a1e0cc1a2514c-87f4c8e9cdcso1102375241.2;
        Fri, 18 Jul 2025 10:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752858378; x=1753463178; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JODog4W99P7CS8ZRV6Zf5jfAFaFc/53al1khJwbmT8A=;
        b=hEwPO/DL/Y6N0SoBThj7egVVB3TGdaIpHrXeFuSkse9c1EMkRe3uh7Q/m7OlFTrWEO
         XqiKfUHubHZQzGV/p5oM4P5Y+lHF8SC0eeOIx3qficGVmfAWH6ALRrCOu1eUqaeTzMf7
         px5yQ+b7NVTU9QX7TnSx1Sk+LbMEYRrZmcxsJVPq8CyVGa7Aak+6b1ePXpaH2weGL9Me
         GE9tf6WDPDvYDkZFSIRE1qVkZUMZDnVoxylqjopw3P60kCXSHfExTE8be1iihVmtZxgX
         VnkAE3u3jfagKiffEQAuviqOVEBqslmTpeWUBhz0Ww++0OEVevW65gf2YrdDKUBTnr6F
         FyYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752858378; x=1753463178;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JODog4W99P7CS8ZRV6Zf5jfAFaFc/53al1khJwbmT8A=;
        b=f/aqgtCCr26pg4wgZHogzhwPqHkTFa/uI8XSWYnR88qZv/JbGRo2Wi21gQbOfqyfUM
         bwX67hUPtaTnse56oRUq9m43D6zqH1f65F6UBxZv0NcRGJ599WehBaVHUBwzJjeGeQH7
         Hcuh6qBelPlTXDiBMLmvyOD2fjjB8ZIYEaBaVoj/z83nxiE2TfOYQGq5GsLZx069tpjL
         h1jrxTkt4qGF7Hmp6VY3UaiC54G75qRdqPAXa+H34SiUibaHAAu0qzCQLtjxXYmla6ay
         uzqVvwlXarA8qbISGXZBxdAkPGCEEAYzTZ//OKJp644uXWFo4ZtOLKJ+1gIUjPGfoD6i
         vpog==
X-Forwarded-Encrypted: i=1; AJvYcCV788FKsPe2zRHocsGyKIFlrhWJxum8gKXI7XP+ysy2TO1ld+jsvzoXYMHNfB4qfPss/ER94IdgWIT+Vaiiq7g=@lists.infradead.org, AJvYcCVzWHWIOecxnYlX6cfQjWQ6Pwkn0dsHc+jOfLcEtWh+DE3h+xE4xkB1UuPD6n3PY35UGwqWJF8jDRE/0/rX9UrV@lists.infradead.org
X-Gm-Message-State: AOJu0YxNEefu4XYbQWroFCGe2cQkZfPdzmQcoYhFkwYBCiqj1zLbfsst
	Xt+wJ2aoQFTqen+0ddner9LtaqsmJ9P1kCIOLRg2hk7I5VdZjbTASZL1
X-Gm-Gg: ASbGnculs79YASso/oVmhRviR1Q0kMkGQdIkJ1pgfG35GH0SMXbQpAIt6F6nbLvP6x9
	1xS9kU3KwpdzJL0P7HD/DQNvkriN8YlilTW+voOTYIkNbhivOdOIiioCHxGPQ7qtasu+OGa/pSN
	jSJIWULwE63t3Pd+YwKx1cHVOdPHXVA+0d15sl2jr3or7JUAmMJrgYY83O4L6oVZ2xN9DcrtHrI
	9K3N6LI1nuTIc4InCONiO//6tuPaYJ748ou9cH9/xg54g5wbof96kJCOMrKLYXKnpJp7NpY3XnB
	CWYnItjwM0+BU4Efw1JdsaK8KY5OyLFQx30DSs44AcJnZtZjFqJv14xLLiRtCPLYeYagCy2JLlL
	mTwOMK0KDLg==
X-Google-Smtp-Source: AGHT+IHLlDQix1yjP8AWd2tUqC/hSHZ26YyE8eCcJfbFHbJgwOfqTSR7MAKzgkxm2sVR4SNzi9k28Q==
X-Received: by 2002:a05:6102:8027:b0:4e7:c14c:9e30 with SMTP id ada2fe7eead31-4f998126d21mr4372502137.21.1752858377696;
        Fri, 18 Jul 2025 10:06:17 -0700 (PDT)
Received: from geday ([2804:7f2:800b:45e8::dead:c001])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4f9acdbb99bsm608794137.2.2025.07.18.10.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 10:06:17 -0700 (PDT)
Date: Fri, 18 Jul 2025 14:06:08 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Hugh Cole-Baker <sigmaris@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC PATCH v3 2/3] PCI: rockchip-host: Retry link training on
 failure without PERST#
Message-ID: <aHp_APHDTFqc7wOL@geday>
References: <cover.1749582046.git.geraldogabriel@gmail.com>
 <b7c09279b4a7dbdba92543db9b9af169776bd90c.1749582046.git.geraldogabriel@gmail.com>
 <ac48d142-7aec-4fdd-92a4-6f9bc10a7928@rock-chips.com>
 <aHnAcbXuFqcMXy_5@geday>
 <067e1833-8527-4c66-90f5-d284f7d2ca5c@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <067e1833-8527-4c66-90f5-d284f7d2ca5c@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_100619_659360_71087B4D 
X-CRM114-Status: GOOD (  18.69  )
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

T24gRnJpLCBKdWwgMTgsIDIwMjUgYXQgMTE6NDY6MzNBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IOWcqCAyMDI1LzA3LzE4IOaYn+acn+S6lCAxMTozMywgR2VyYWxkbyBOYXNjaW1lbnRvIOWG
memBkzoKPiA+IE9uIEZyaSwgSnVsIDE4LCAyMDI1IGF0IDA5OjU1OjQyQU0gKzA4MDAsIFNoYXdu
IExpbiB3cm90ZToKPiA+PiBDb3VsZCB5b3UgaGVscCB0cmllZCB0aGlzPwo+ID4+IFsxXSBhcHBs
eSB5b3VyIHBhdGNoIDMgZmlyc3QKPiA+IAo+ID4gU3VyZSwgSSdtIGFsd2F5cyBvcGVuIGZvciB0
ZXN0aW5nLCBidXQgY291bGQgeW91IGNsYXJpZnkgdGhlIHBhdGNoIDMKPiA+IHBhcnQ/IEFGQUlL
IHRoaXMgc2VyaWVzIG9mIG1pbmUgb25seSBoYXMgMiBwYXRjaGVzLCBzbyBJJ20gYSBsaXR0bGUK
PiA+IGNvbmZ1c2VkIGFib3V0IGV4YWN0bHkgd2hpY2ggcGF0Y2ggdG8gYXBwbHkgYXMgYSBwcmVs
aW1pbmFyeSBzdGVwLgo+IAo+IFBhdGNoIDMgcmVmZXJzIHRvICJhcm02NDogZHRzOiByb2NrY2hp
cDogZHJvcCBQQ0llIDN2MyBhbHdheXMtb24gYW5kCj4gYm9vdC1vbiIgd2hpY2ggbGV0IGtlcm5l
bCBmdWxseSBjb250cm9sbGVyIHRoZSBwb3dlciBpbiBjYXNlIGZpcm13YXJlCj4gZGlkIGl0IGlu
IGFkdmFuY2VkLgoKSGkgU2hhd24sCgpJIHRlc3RlZCB5b3VyIHBhdGNoIGJ1dCB1bmZvcnR1bmF0
ZWx5IGl0IGRvZXMgbm90IHdvcmssIFBNOTgxYSBTU0QgInBsYXlzCmRlYWQiIGFuZCAyLjUgR1Qv
cyB0cmFpbmluZyBuZXZlciBjb21wbGV0ZXMsIGV2ZW4gd2l0aCB0aGUgYmlnZ2VyCnRpbWVvdXQu
CgpJIGhvcGUgeW91IGdldCB0aGUgY2hhbmNlIHRvIHRlc3QgbXkgcGF0Y2ggc29vbiwgYmVjYXVz
ZSBvbmNlIHlvdSBzaGFyZQp5b3VyIHJlc3VsdHMgdGhlcmUgY291bGQgYmUgdHdvIHBvc3NpYmxl
IHNjZW5hcmlvczoKCjEpIFBhdGNoIGRvZXMgbm90IGFsbGV2aWF0ZSBwcm9ibGVtIGZvciB5b3U6
CiAgIElmIHRoaXMgaXMgdGhlIGNhc2UsIHRoZW4gdGhlcmUncyBsaXR0bGUgSSBjYW4gZG8gZnVy
dGhlciBhbmQgdGhpcwogICBiZWNvbWVzIGEgd2lsZCBnb29zZSBjaGFzZSwgc28gbm8gY2hhbmNl
IG9mIHVwc3RyZWFtaW5nIGFueXRoaW5nIGFuZAogICBJJ2xsIGp1c3QgbW92ZSBvbiB0byBtb3Jl
IHVzZWZ1bCB3b3JrIGFuZCBsZWF2ZSBldmVyeWJvZHkgZWxzZSB0byBkbwogICB0aGVpciB1c2Vm
dWwgd29yayB0b28uCgoyKSBQYXRjaCB3b3JrcyBhbmQgcHJldmlvdXNseSBub24td29ya2luZyBT
U0QgaXMgbm93IHdvcmtpbmc6CiAgIEluIHRoaXMgY2FzZSB0aGVyZSdzIHNvbWV0aGluZyBzZXJp
b3VzIGdvaW5nIG9uIGFuZCBpdCBpcyBvdXIgbWlzc2lvbgogICB0byBmaW5kIGEgd2F5IHRvIGNv
cnJlY3RseSB1cHN0cmVhbSBhIGZpeC4KClRoYW5rcywKR2VyYWxkbyBOYXNjaW1lbnRvCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
