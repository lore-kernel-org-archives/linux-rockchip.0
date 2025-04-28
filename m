Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A574C369D1
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Apr 2025 03:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iq/MMXHEepSf8iRpiWfIOaiKAD1V22gj+UUt/XExj8=; b=OnljGO4P6GTO/L
	JhAlyV/0zDWJGuNRSoWw5r16+c5SQCyvpKszvf9z403ybIMyas8lVG28mH21Iwoys14iYoS187GMz
	y6mYgjw3v+Dp8D53Ftt7BRfXAaOvarHN2uqLV2DtA5R3EU7uU97L2S867tZRqLgsEGHpYWlIPa+zi
	5wbZ+XOEIun514k3nViiFX7d6jDiHklch2UBmWrdiyOTNgXSS5lVMvGA18royQvNAHYOCKuUH1zqs
	WnPiqgCAQHaXJkhkUySLjwkC1SAS5xHIxyrvDUur1wq4lXXmqVrcDDH6Rh/iqfpVW2bBwubGy1OpZ
	N4FxpuC6g0VTbN6/LQ8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9F65-00000004Q53-1y40;
	Mon, 28 Apr 2025 03:23:57 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9F48-00000004Pu7-11Ig;
	Mon, 28 Apr 2025 03:21:57 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-73bf5aa95e7so3435496b3a.1;
        Sun, 27 Apr 2025 20:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745810515; x=1746415315; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W8yYHt/qUGB7zSsH1QYJ0433S7HWdvxYqg3YPVEOlQg=;
        b=D3yjsBwmJ6DQ+4VOic1LIl+lrar7OybZlHEKSgcrfir5OYYNqNPq27m7yOoSteJPqh
         x0piUiPIyvbPIVSWYV5m442KL9gS4IDtis50jOJcbmE+6+ONMTNvzGuunnl8Vck08Krs
         innFFCTuxhVja1YNBn//dS/tHfCdN/3DKVkTHrRfie5sAql4MdFMLyKU78rFi1oCV5J/
         4fRrNtg4/g+pU1018D/BB8qoiaX0rmn2dN3sijhy2+yUKTMcRnfWTexsVSP227zL0tg+
         EN0XArnbMcgJwIUfpODEK/EyfHIbSlPm/gz7Cu7qhJHgOrU7x/S1kxPUz7XbFGfjJ4DE
         Hhug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745810515; x=1746415315;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W8yYHt/qUGB7zSsH1QYJ0433S7HWdvxYqg3YPVEOlQg=;
        b=MWz/aFFhy+g+RAYzG8bSxW3zC+FyzxV4HAxQmZjI6LasA8dMeadips073WIEc378NS
         ox82FMEpopucPzWfw5dXQv20mo6woJ3C2z6tyCtxUJ7bgFASSCvC26og3L96lLkbYUEi
         Q0ypav5nfMK9U1tj9iIvrJVuBiX9R0jx/lLJvCiuKjubMpxPzqUnaw+41sAdP0HbjD80
         Kga2f04OgC/mj5X279Oz4lsUJDCdR1od1+ZEiDS/6wT8/M4IOwtgZ1DrdgPG//lquSNG
         zg8GEpN4yiyR7QeZPNlSV+wFqYGwxEMgk/dgKs0aRUoS9YxfshtcrsTAmEuyesD79ULB
         7ipg==
X-Forwarded-Encrypted: i=1; AJvYcCWgkfwv3Om93Unix/U3SsbBLPx3+kLJ78wogX79hMZkMqi9XG0hYpqcbQhHBCBSEUpqSQ+fHnI06nsq0/rKedS9@lists.infradead.org, AJvYcCXCCuaEzT28dBzP/8aYV9lcH3YyusNjkDXUejTtdiNaCWtrOHvbdQEy9IoURCkXrdSkjV5CIYODDDbLIhp/5Rg=@lists.infradead.org
X-Gm-Message-State: AOJu0YylvWafR8M6iS4b3qCMdbL9Ck+mqOmVtK3vzPXXCetDV/Ez287D
	baTSGKn97FgysjCtsqDi6N0kJuwMLu1BCCWJGUYV6xDBQMwE7nRf
X-Gm-Gg: ASbGncuAzRxd09yP7uQp9WRh/bmLRgZbpaq6wD+7+8QPN6toslcYm8DHEoJDmIyb5rq
	vA+1jK02wEQ6AHe++cRQZ4n3R6KwUZEsZ6ECp6peSNy+kEhCMXYH3P/xRV+W4d0JhTPZZu5RNTX
	ZP1ARFCdqzW1gct5xkGbEneJR4lPTd+zc+CbrcllYYQ9/7Wih88E7bajYAu+NLuWK/mF8LJ3JYR
	cqB8qPkU5lwWDOMPyg3HwiY68PTczSWjoQbTyT7eRh6Wjx9oedHQNRzxAlLMOPzgcLtM9LVnoLX
	0Rk8op5qRkjWNftudUOndXLuLExYO6Prqtp2tlLPym98pHguoYF2aaO2qDcmIsu88g==
X-Google-Smtp-Source: AGHT+IF/CLnoxiVHuh9PWG8WGXhLiWoz1DQBShtf6eNa/Qh4SLnUeeqIbL2Bzlfj9Hx2I5otXfwjrw==
X-Received: by 2002:a05:6a00:3a18:b0:736:69aa:112c with SMTP id d2e1a72fcca58-73fd6df0163mr12454077b3a.9.1745810514895;
        Sun, 27 Apr 2025 20:21:54 -0700 (PDT)
Received: from [192.168.0.69] ([159.196.5.243])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73e25a6a965sm6878299b3a.118.2025.04.27.20.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 20:21:54 -0700 (PDT)
Message-ID: <641c7e8f492196d3ec08e7bd4adf212479a9b966.camel@gmail.com>
Subject: Re: [PATCH v2 1/3] PCI: dw-rockchip: Remove unused
 PCIE_CLIENT_GENERAL_DEBUG
From: Wilfred Mallawa <wilfred.opensource@gmail.com>
To: Hans Zhang <18255117159@163.com>, lpieralisi@kernel.org, kw@linux.com, 
	bhelgaas@google.com, heiko@sntech.de
Cc: manivannan.sadhasivam@linaro.org, robh@kernel.org, jingoohan1@gmail.com,
 	shawn.lin@rock-chips.com, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>
Date: Mon, 28 Apr 2025 13:21:47 +1000
In-Reply-To: <20250423105415.305556-2-18255117159@163.com>
References: <20250423105415.305556-1-18255117159@163.com>
	 <20250423105415.305556-2-18255117159@163.com>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_202156_293162_1520EFDB 
X-CRM114-Status: GOOD (  12.69  )
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

T24gV2VkLCAyMDI1LTA0LTIzIGF0IDE4OjU0ICswODAwLCBIYW5zIFpoYW5nIHdyb3RlOgo+IFRo
ZSBQQ0lFX0NMSUVOVF9HRU5FUkFMX0RFQlVHIHJlZ2lzdGVyIG9mZnNldCBpcyBkZWZpbmVkIGJ1
dCBuZXZlcgo+IHVzZWQgaW4gdGhlIGRyaXZlci4gSXRzIHByZXNlbmNlIGFkZHMgbm9pc2UgdG8g
dGhlIHJlZ2lzdGVyIG1hcCBhbmQKPiBtYXkgbWlzbGVhZCBmdXR1cmUgZGV2ZWxvcGVycy4KPiAK
PiBSZW1vdmUgdGhpcyByZWR1bmRhbnQgZGVmaW5pdGlvbiB0byBrZWVwIHRoZSByZWdpc3RlciBs
aXN0IG1pbmltYWwKPiBhbmQgYWxpZ25lZCB3aXRoIGFjdHVhbCBoYXJkd2FyZSB1c2FnZS4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBIYW5zIFpoYW5nIDwxODI1NTExNzE1OUAxNjMuY29tPgo+IFJldmll
d2VkLWJ5OiBOaWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4KPiAtLS0KPiDCoGRyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8IDEgLQo+IMKgMSBmaWxl
IGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gYi9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBpbmRleCAwZTBjMDliYWZkNjMuLmZkNTgyN2JiZmFl
MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tj
aGlwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlw
LmMKPiBAQCAtNTQsNyArNTQsNiBAQAo+IMKgI2RlZmluZSBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NP
TlRST0wJMHgwCj4gwqAjZGVmaW5lIFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX0xFR0FDWQkweDgK
PiDCoCNkZWZpbmUgUENJRV9DTElFTlRfSU5UUl9NQVNLX0xFR0FDWQkweDFjCj4gLSNkZWZpbmUg
UENJRV9DTElFTlRfR0VORVJBTF9ERUJVRwkweDEwNAo+IMKgI2RlZmluZSBQQ0lFX0NMSUVOVF9I
T1RfUkVTRVRfQ1RSTAkweDE4MAo+IMKgI2RlZmluZSBQQ0lFX0NMSUVOVF9MVFNTTV9TVEFUVVMJ
MHgzMDAKPiDCoCNkZWZpbmUgUENJRV9MVFNTTV9FTkFCTEVfRU5IQU5DRQlCSVQoNCkKClJldmll
d2VkLWJ5OiBXaWxmcmVkIE1hbGxhd2EgPHdpbGZyZWQubWFsbGF3YUB3ZGMuY29tPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
