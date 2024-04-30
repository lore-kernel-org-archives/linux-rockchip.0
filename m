Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18712C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 16:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rrhi7tv4VfyLosH+FfqhWq+cQglGrYyImckwm3+mqlw=; b=OL6h4zjdGnoBq7
	FasdduJ90uMaURZOkkqWonVVX2wkbHN5JLqHR/PAUulP3AQbpXNQEfY/BLBXY+bIq4iRMCrX7c1zw
	0/jyoi4vflLPqlkHump/wRE118FFFSbJNFgssqXaP3bRnr0JIPIVyq4xX3lSGj0OwttPdvlCQKsQ0
	cj61lOieRWd1e+k7PfeVPcxidv40BrBWixt+cxSLIVhCZXoWSPq7A6w4b+b1ICcp+SrBS9ENWj5qg
	S7o1EeUieCayFXudbeEd4iAhl1dlgb2XYCW21i3TML6+cGHCjHvNscNaUjxVCUs9YV7S1PWg5lXN3
	b+jeDbuQbMIZPGqeFexg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1qET-00000007CAY-1Pi0;
	Tue, 30 Apr 2024 16:21:29 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1qEP-00000007C9B-0CgV
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 16:21:26 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-78f103d9f64so446060585a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Apr 2024 09:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1714494082; x=1715098882; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mXGOQl9cAc/ekX6puhK0PlxYSMCVsGhUyl3CG8jYDPk=;
        b=08B4IuZ+NhgNp7JZeVxk5sSwl34pc7a5lFz8zKvTCN/ZzPeX3k1TFnHoug7hztQuCk
         2DUHyACevN+QtLOXJNkOCqDE1z4mAad/ITimrRxMmkapGqKxhqVzVY5SvxbI7qGLQUna
         jXowLyJDLo8r85v5bXTCWaLU/YnWQw9lyDH6YD+90yG5enYaynB7MtGmhU+K0JfNn5/i
         T4wFbIYL1r6urQylabzf2SWUVn5Mi0Rns8mY268sIo4coMnEVQFH6AWOt1RP4IDu/X1e
         EU2s9KHZJEgA7/k4RPahoNZfZv0jw3lwefuTPk2yPG4gSrhhSC4sxw6jy6+i1PwfQRQ1
         +g2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714494082; x=1715098882;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mXGOQl9cAc/ekX6puhK0PlxYSMCVsGhUyl3CG8jYDPk=;
        b=vxei3v34wHByhdgo0uT4SR/XHoaXtMfJzj5+Q27UxTQXkASy2Wl2l/xo6mbJOgy+Wk
         22hFxYNY7C4uAoMAsYb+avS9Q8EDeW/a4dto1Sr5ugARSlx9w4aJ82S6+hwxar4qGPUK
         MG65vBIspW11p8wentOTPUYhM1QPiEzuYYLwDm0F7DGAcIFPEm4geHA7IHyE9GAeZAds
         g8u9hLcvXOSu+hTAkNDXXaGGNDFHHxl0r7xc8icLkCZFYtBd+N/vkefUrc5kn4uzfTtg
         apRNfWp562SAaDjzrcnKQ1AHJAlmVslWOUpcVMRXrzyqEbFOb518wFZ/475IRVWIQKNX
         RF5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVMrVX8ee+OsWSHhC11L39rWbbFSESCEKSdSiu1p2iEdXIX0p+OozLr2UM6a8GX9EN/I08NMK09fL2oGUuPHPBYIcKGp+LVFOnso6VGcsq6amlb
X-Gm-Message-State: AOJu0Ywo8LuNymEklXxsi6yO/g5RdzoyNCgI48XHnVY13y7BORIPjIrl
	+ELN15EJ8SorAytoHvNI7FyP5WfQpUFfjtXltzBOqpwq4LwpNstiFAagW3AgInQ=
X-Google-Smtp-Source: AGHT+IH0NQBZBOgLEKq2kUdCPO3ctmAmOrn9KlWUcdcpsDQVdL8XpPMfwth/n2qHT+VVUlEawW7vPA==
X-Received: by 2002:a05:620a:4054:b0:790:edd8:ac18 with SMTP id i20-20020a05620a405400b00790edd8ac18mr5590333qko.35.1714494082626;
        Tue, 30 Apr 2024 09:21:22 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:17:6448::7a9])
        by smtp.gmail.com with ESMTPSA id i15-20020ac8764f000000b0043a7f359414sm3946068qtr.19.2024.04.30.09.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 09:21:22 -0700 (PDT)
Message-ID: <59899cfa3d3245309ce6952ae1028dceae27b488.camel@ndufresne.ca>
Subject: Re: [PATCH v7 1/2] dt-bindings: media: rockchip-vpu: Add rk3588
 vpu121 compatible string
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jianfeng Liu <liujianfeng1994@gmail.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 mchehab@kernel.org,  robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de,  sebastian.reichel@collabora.com,
 sfr@canb.auug.org.au, sigmaris@gmail.com,  linkmauve@linkmauve.fr, Conor
 Dooley <conor.dooley@microchip.com>
Date: Tue, 30 Apr 2024 12:21:21 -0400
In-Reply-To: <20240430024002.708227-2-liujianfeng1994@gmail.com>
References: <20240430024002.708227-1-liujianfeng1994@gmail.com>
	 <20240430024002.708227-2-liujianfeng1994@gmail.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_092125_310403_347B0411 
X-CRM114-Status: GOOD (  18.37  )
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

SGksCgpMZSBtYXJkaSAzMCBhdnJpbCAyMDI0IMOgIDEwOjQwICswODAwLCBKaWFuZmVuZyBMaXUg
YSDDqWNyaXTCoDoKPiBBZGQgSGFudHJvIEcxIFZQVSBjb21wYXRpYmxlIHN0cmluZyBmb3IgUksz
NTg4Lgo+IFJLMzU4OCBoYXMgdGhlIHNhbWUgSGFudHJvIEcxIGlwIGFzIFJLMzU2OCwgd2hpY2gg
YXJlIGJvdGgKPiBrbm93biBhcyBWRFBVMTIxIGluIFRSTSBvZiBSSzM1NjggYW5kIFJLMzU4OC4K
PiAKPiBOb3RlIHRoYXQgdGhpcyBWUFUgYWxzbyBoYXMgYSBqcGVnIGVuY29kZXIsIHdoaWNoIGlz
IG9uZSBwYXJ0IG9mCj4gdGhlIGZpdmUgVkVQVTEyMSBqcGVnIGVuY29kZXJzIG9uIFJLMzU4OC4g
U28gdGhpcyBWUFUxMjEgc2hvdWQgYmUKPiB0aGUgc2FtZSBhcyB2cHVAZmY2NTAwMDAgb24gUksz
Mzk5LiBCdXQgd2UgZG9uJ3QgdXNlIHRoZSBjb21wYXRpYmxlCj4gc3RyaW5nIHJrMzM5OS12cHUg
YmVjYXVzZSBvZiB0d28gcmVhc29uczoKPiAxLCByazMzOTktdnB1IGhhcyBkaXNhYmxlZCBIMjY0
IGRlY29kaW5nIGJlY2F1c2UgUkszMzk5IGFsc28gaGFzCj4gcmt2ZGVjIHRvIHN1cHBvcnQgNEsg
SDI2NCBkZWNvZGluZy4gQW5kIHdlIG5lZWQgSDI2NCBkZWNvZGluZyBiZWNhdXNlCj4gcmt2ZGVj
MiBvbiByazM1ODggZm9yIEgyNjQgZGVjb2RpbmcgaXMgbm90IHN1cHBvcnRlZCBub3cuCj4gMiwg
VGhlcmUgYXJlIGZpdmUgVkVQVTEyMSBqcGVnIGVuY29kZXJzLCBidXQgdGhlIGtlcm5lbCBkcml2
ZXIgY2FuJ3QKPiBkbyBzY2hlZHVsaW5nLiBTbyBpdCdzIGJldHRlciB0byBkaXNhYmxlIHRoZSBW
RVBVMTIxIGpwZWcgZW5jb2Rlcgo+IGF0IHRoZSBtb21lbnQuCj4gCj4gU2lnbmVkLW9mZi1ieTog
SmlhbmZlbmcgTGl1IDxsaXVqaWFuZmVuZzE5OTRAZ21haWwuY29tPgo+IEFja2VkLWJ5OiBDb25v
ciBEb29sZXkgPGNvbm9yLmRvb2xleUBtaWNyb2NoaXAuY29tPgo+IFJldmlld2VkLWJ5OiBTZWJh
c3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLXZwdS55YW1s
IHwgMyArKysKPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtdnB1
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAt
dnB1LnlhbWwKPiBpbmRleCBjNTdlMWY0ODguLjI3MTBiYjJmYiAxMDA2NDQKPiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtdnB1LnlhbWwKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtdnB1
LnlhbWwKPiBAQCAtMzEsNiArMzEsOSBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAtIGl0ZW1zOgo+
ICAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMjI4LXZwdQo+ICAgICAgICAgICAgLSBj
b25zdDogcm9ja2NoaXAscmszMzk5LXZwdQo+ICsgICAgICAtIGl0ZW1zOgo+ICsgICAgICAgICAg
LSBjb25zdDogcm9ja2NoaXAscmszNTg4LXZwdTEyMQo+ICsgICAgICAgICAgLSBjb25zdDogcm9j
a2NoaXAscmszNTY4LXZwdQoKU29ycnkgdG8gY29tZSB0aGF0IGxhdGUsIGJ1dCBJJ20gbm90aWNp
bmcgYSBiaWcgbWlzdGFrZSBoZXJlLiBZb3Ugc2FpZCB5b3UgYXJlCmVuYWJsaW5nIFZEUFUxMjEs
IHRoZSBKUEVHIGRlY29kZXIuIEJ1dCB3ZSBkb24ndCBoYXZlIGEgSlBFRyBkZWNvZGVyIGRyaXZl
cgptYWlubGluZSwgaXMgdGhlcmUgc29tZSBwYXRjaGVzIG1pc3NpbmcgPwoKTmljb2xhcwoKPiAK
PiAgICByZWc6Cj4gICAgICBtYXhJdGVtczogMQo+IC0tCj4gMi4zNC4xCj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
