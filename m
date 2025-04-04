Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55B11C36010
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 12:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsyW1XlDQwRKyxqNnLkmrOC5p+dY1txIY9TQyYxds5s=; b=QQU3nEJsTm4mn1
	c37rGAQgh9/FANOXIk0SGibygD9obHOKncYafs/qyd/QrdO+eDR2IcEj0DYanM3IbPwhO1jU58YY2
	VBCpxN92t9DzyMZjcQjJRNeYOPJyHIQImLhDQCZImPq1V5Fl0Srl8D2qtzIQNLagW+yiUei1CIIc9
	O7iM5twiNvpYCP02eKXD0zRXM3DEPnFjGD3CrgC/dGBhr0EWE0Ke3sPvc0uvTlzy6NZDoAzcEXFwX
	mnHJkZKlryGdjt2ss6HM8pz6bbj8RGGEDb82h9W4W7BUzkgCkstP9vsCUlN38k8G3b8I2+QTGxTZs
	9vqS0heT6GFtLPIi+2vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0gXA-0000000Bj5y-3POq;
	Fri, 04 Apr 2025 12:52:32 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0gX9-0000000Bj5H-0u5z
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Apr 2025 12:52:32 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-22580c9ee0aso22853585ad.2
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Apr 2025 05:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743771150; x=1744375950; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DKMhv36eTVwOYBrxUb1Bibo3iK9Aa6oEo/P/njWpUJg=;
        b=NMurWp4SlH2YF4RXf/GYepoU4vqEXvp+/pO9nk1Jib1G+/BiItq7vUBdmmnhak7AXl
         oFiQzl/GvGshpXgM7g+ly/sAFbLz/UGYJw8CTx2sMtskA/SCdJHe5LXIFS/kHiBExotX
         K09I4Ad216mQ4IyHN1Ow4pdLv0DrTihPmRQ4Q0mMsLjgfwqhz8x5wJLVDAWcic8dcOu6
         ivEHJ7QRt/Y9q6bBlhhwwXVpikhH2vTxwcSUo4awLhOioDqbZEL+HJ1T9sykGK6YU0eI
         1dwqvcWHUatYR3qof0BHL1NVL+1CBeEThcPFwXgIkWByECa+f9Or4+g+TZB0PWSqxwOj
         EUdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743771150; x=1744375950;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DKMhv36eTVwOYBrxUb1Bibo3iK9Aa6oEo/P/njWpUJg=;
        b=Ueiure9e3st9eBeGC/0OEIkR/ZYKXKq4GsMDJGh8Qam1dX3IyuN/tuJYBXLAMOAdm5
         gLL80h4dJ7Hlqt2VDixztGhHigdPrPerjmX/XNcqzpftkS2K0uDySxUYjalsHw/rbLKu
         ZiR41Mg84x3eVQnO8UoZZ0TnJn8pMC58e6E8zXeYJsri6VoT86ZRO6Umgt1xJCvEnIK6
         S+2bjDGwuNd4YBr6d5Elo5LkSN/cyzlmeCQkCMST22DDynVturMOlJbO5Go+5ntU+qe9
         ZC5+xutkdo1vIwAEbJku9RXd/VTxpLS4YgTWRzYAc1enickI+GtkiUDpwqgMkW8FAard
         f1vg==
X-Forwarded-Encrypted: i=1; AJvYcCXaPXG17Pb6gIA5aOp55ukTAGnO4JuNBDQhboPbpDopkCl6Dvj3iL/W+1ryUgtyCaGKbfo31lxAG45kUAuwQg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2jiG0h8i+OfZGS0XUZR0jjM0TbRut+VY4HkVKADxwYnAjtXtw
	rUy0NLNwoxzv8Xu2yOWIHg8AkBX91f6dEc+oLqX1YxZYQ94Ik5hcx/2lF+8tkA==
X-Gm-Gg: ASbGncuiJ/2CuUE0EMjTECk2QEw8gKzvJDYF5TFvIPKEB+nHhIMhzCKfy3fzAfuOnWM
	Dgz3CGcc+q6KgcPd9beTzJUehM5lngt1QTNdhS5vYjoG2G5EfeZZ52D9L0iZwlYKVL2QaUlpn6E
	59E2Uv/MPnPoU/4UGdGY/QbrEYv6zdsAO4PX9IS3jyXVrXLs+5Vx9fcc154ghAj0kqx+1mjFSlt
	rxRIr2TzOvbcaz90+YqqXJ2nmAm2qqS8HEPIJKMiit61Vm37BnhtT/s39XMtzHB0fw3HQ2/2SNQ
	Kul4WlqjsbX6PaTIq8t8MaDN2btsplfQD150fI6/AZhpCeZzRydRWSkfor5U/n8z3w==
X-Google-Smtp-Source: AGHT+IERCFn6js6qeVXEwdJZjCbdeV3RjyphuuYpeMmQ+ZbwSxAgINay3FYEHGIrYESdCmhtl9xeVQ==
X-Received: by 2002:a17:902:d4c7:b0:220:ec62:7dc8 with SMTP id d9443c01a7336-22a8a85a18dmr40259765ad.2.1743771150028;
        Fri, 04 Apr 2025 05:52:30 -0700 (PDT)
Received: from thinkpad ([120.60.75.137])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-229785ad83esm31289735ad.20.2025.04.04.05.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 05:52:29 -0700 (PDT)
Date: Fri, 4 Apr 2025 18:22:22 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: shao.mingyin@zte.com.cn, shawn.lin@rock-chips.com, 
	yang.yang29@zte.com.cn, xu.xin16@zte.com.cn, ye.xingchen@zte.com.cn, 
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, bhelgaas@google.com, 
	heiko@sntech.de, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, zhang.enpei@zte.com.cn
Subject: Re: [PATCH] drivers: pci: controller: pcie-rockchip: Use
 dev_err_probe()
Message-ID: <4mbdugltwhiaw5kgg2d44jq4yz4mpdrscjiomp2kmnv5gk5i22@hid72rovi2oj>
References: <20250403154326411S4luMrK8A5RXovincATzF@zte.com.cn>
 <03d12cd2-c719-4703-a0eb-2a32ef41af92@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03d12cd2-c719-4703-a0eb-2a32ef41af92@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_055231_255396_8276E04A 
X-CRM114-Status: GOOD (  12.66  )
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

T24gRnJpLCBBcHIgMDQsIDIwMjUgYXQgMDg6MDk6NDBBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAwMy8wNC8yMDI1IDA5OjQzLCBzaGFvLm1pbmd5aW5AenRlLmNvbS5j
biB3cm90ZToKPiA+IEZyb206IFpoYW5nIEVucGVpIDx6aGFuZy5lbnBlaUB6dGUuY29tLmNuPgo+
ID4gCj4gPiBSZXBsYWNlIHRoZSBvcGVuLWNvZGUgd2l0aCBkZXZfZXJyX3Byb2JlKCkgdG8gc2lt
cGxpZnkgdGhlIGNvZGUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFpoYW5nIEVucGVpIDx6aGFu
Zy5lbnBlaUB6dGUuY29tLmNuPgo+ID4gU2lnbmVkLW9mZi1ieTogU2hhbyBNaW5neWluIDxzaGFv
Lm1pbmd5aW5AenRlLmNvbS5jbj4KPiA+IC0tLQo+IENvbnNpZGVyaW5nIHp0ZSBpcyBzZW5kaW5n
IHVudGVzdGVkIHBhdGNoZXMgZnJvbSBwb29yIGF1dG9tYXRpb24gKG9yIEFJCj4gZ2VuZXJhdGVk
KSwgdGhpcyBtaWdodCBiZSBjb3JyZWN0IG9yIG1pZ2h0IG5vdCBiZSBiZWNhdXNlIGl0IGRvZXMg
bm90Cj4gbG9vayBsaWtlIHByb2JlIHBhdGguCj4gCj4gQW55d2F5LCBkb24ndCBzZW5kIHBhdGNo
IGJ5IHBhdGNoIGFuZCBsaW5lIGJ5IGxpbmUuIFdoeSB5b3UgZGlkIG5vdAo+IGRlY2lkZSB0byBm
aXggYWxsIG9mIHRoZSBwbGFjZXMgaW4gdGhlc2UgZHJpdmVycz8KPiAKClRvIGJ1bXAgdXAgdGhl
IGNvbnRyaWJ1dGlvbiBtYXliZSA6UAoKQnV0IHRvIHJlaXRlcmF0ZSB3aGF0IEtyenlzenRvZiBz
YWlkLCBwbGVhc2Ugc2VuZCBwYXRjaGVzIG9ubHkgYWZ0ZXIgZml4aW5nIGFsbAppZGVudGljYWwg
aXNzdWVzIGluIHRoZSBkcml2ZXIuIFBhdGNoZXMgc2hvdWxkIGJlIHNwbGl0IG9ubHkgd2hlbiB0
aGUgZml4ZXMgYXJlCm5vbi1pZGVudGljYWwuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
