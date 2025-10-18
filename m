Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E118ECCD184
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Oct 2025 12:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EL96U2fkU6tNF/MX8/PcvAJQAYJjVJusDPfvtQJdk7o=; b=yWOHVHRP7gxSiW
	ZOuHkiY4eivZ3XnjnxzIi1GwH6b9Tfaewnd9/qpuUdxqwTg1l62/ebGJOp5jP5FGPdISyGJl659ZQ
	eA6IqqJ/zX/r/Z6W5IoEJl+iYV4BnDGP3TX8pVYsdC/IVFW2O5EBe84OpZhklNNhJ7RauRWZew/6P
	AZyDp0fFaPhiZZkZJlwlCSwKPkzwaFmXHRsWkPMSl3MmKN3/ibgYwJUUouxgQxU8lKzKGpJnizbSN
	P0vHzP2RG/VbPntlJnsesEX5/mdpG4roYhOAQoKHfMulKh9SguTEmPiotm5MLjearAkuRUxONH3dx
	bKKaOt+e26xpw7ePv1cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vA5pm-00000009tmo-3RmW;
	Sat, 18 Oct 2025 12:14:54 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vA5pj-00000009tlo-3C3I
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Oct 2025 12:14:53 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-b5e19810703so426778366b.2
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Oct 2025 05:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760789689; x=1761394489; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ufOkjl+qPiRtshghurKtqky4g5561TsZhHIpMFstA/A=;
        b=MjGjdlCLIhZLFBwdwaWi1RHJFYXEVittTHEZFjgyrhJ5qA1FMabcKb5m5c+lYOadA7
         Ex07zatuPurxEYzeRU7jh70E08T8exQHV8brEheYJn92jfKgykqh19BuWLv+Z9yMSXNq
         1oXVMVDVVFES2r2curBXqKvJnwmXxZXImxMXdrgz6wO3vSrgk4FzNYXfgRuTqgKK+l0P
         akKj3iQFZnIIsVg1AAAOyxXQRz6B9jXBwqSxhXi7JHOUnzG7NePzrO9rAvbopLDFs2nf
         q3Ll/RpwK6IiuTJnTV81rVbenvRZNxI715L9bVci5LvKZD6yuUetrnF9SUX8BXIBhABv
         VRPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760789689; x=1761394489;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ufOkjl+qPiRtshghurKtqky4g5561TsZhHIpMFstA/A=;
        b=igu46p4OmGYWvUDWp482/S0CHTLHQAY4bjJz1sflbZhttdIbnOrknape+QLZ3sZm6O
         CZF5aSRWvFjBSkHlnG4TCb5kIXmdfOkUpmg+vcxa0oBhXWL2yWB+CJm14zrlfchgAAOv
         DeT1v80xehc1ffUurfl1YP1OZOkVI7dZGT0Y/5Pyap1L1yDQnj9UWrtBZJ8uvBSYIMbY
         +j9+tGce/6mHuecKhAZ3l8fYLLxOV+wTZie7udytC4BSw68NrClg+pAMcJLkzDqn0r7P
         YOJLhPxiDoIPi6CnJ2SIf9A/zoSu/wt/Vsk6QMpwQbPLVZyQbiBh5Bo59OSBoakISjbG
         MEqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXG8PhIJgahYwfJlHUbqDgDxaSP9tw4FqwFV07zBlG2dhfoiksCQuZAGffRyIK+dJ9Copp2X/Cd/wDYbTygzw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjV7VztyECPrfWjSjAjrMfNpC9HqZ+N704MIXa6ia78SIx8mRp
	ecF/NgnPal7Elw3KCUZ6GWvQvBMYwIxz8XgQaLyNJMhW4QMcA8zRnWOV
X-Gm-Gg: ASbGnctproTV/AbOIVPVRqR5aEjN8JQ+SbZVrLxhRleG3y/yX3sfHEhtTHBh8HT3t3L
	jismA5P/+3MCCnoVCwBwxSZxVIMKCvsB9GlecIyqxI2trgRNUUeDi3nC5yIzYJGO2r6FUxtxOFw
	WRDTjtqi7o7hRW3pC8SyL8iLvUGadNISM3lC0hJbc4/lDD4Q9uKIDYhgE2kti1YcO8Q/g+o+F7W
	mea/8kb/MFSejbIdOAHf/yjdr1mB42qsk8rifhRZuIhx8Xp0cqF2VSiSH6GACnL1Zx2q9pZPsHz
	kJ31RFfO50sb6JTUd7K5c0hT3SxH4herkDTt976iCkdIo4NPOXaTVEq7Gv5Y3EGWUtEpGCXiMnU
	Pz7vcJ5RHYJT/Tz+9BoCjckl9GcxKOBxsxJUz1FrKVu0ukPJ9My9nTlPmZeaCvCDQ9A4EskUSZz
	XxCDe8B3UcgjiKXaS2VbypYGERRviIJJQYDBdHIyw3Gx+wI70Z7aYWA1nqOvLdKkepuhAg7ml0h
	OPaea6s+EYT
X-Google-Smtp-Source: AGHT+IGBPsSaJcR0ev47Hb3xPBn0QIJdrD4FfY6KddrSOXRmNh4o7RZCBMe0k/WnE7eQQbehnrN6qA==
X-Received: by 2002:a17:907:2685:b0:b45:60ad:daf9 with SMTP id a640c23a62f3a-b647254f6bdmr770989466b.3.1760789689192;
        Sat, 18 Oct 2025 05:14:49 -0700 (PDT)
Received: from ?IPV6:2a02:8010:6606:0:8c72:1dd5:7473:88ff? ([2a02:8010:6606:0:8c72:1dd5:7473:88ff])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65ebc42963sm223334266b.77.2025.10.18.05.14.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Oct 2025 05:14:48 -0700 (PDT)
Message-ID: <b22425c3-01e0-4d2e-bf78-5db884d4ec38@gmail.com>
Date: Sat, 18 Oct 2025 13:14:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
To: Dragan Simic <dsimic@manjaro.org>, Jimmy Hon <honyuenkwun@gmail.com>
Cc: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Grzegorz Sterniczuk <grzegorz@sternicz.uk>, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251017073954.130710-1-cnsztl@gmail.com>
 <7f0b1747-87eb-0b0b-6fb0-304811a4be21@manjaro.org>
 <d9d14ce2-2e65-422e-95fb-eb30b128ad90@gmail.com>
 <41154cde-a447-0707-4387-cd3dca90b97d@manjaro.org>
 <CALWfF7K0=J3E-zr41wV-28+SCFkT_so55Aee8BvQsB4KJZy6YQ@mail.gmail.com>
 <47931e9e-09db-3909-4531-dae6869171d7@manjaro.org>
Content-Language: en-GB
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <47931e9e-09db-3909-4531-dae6869171d7@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251018_051451_828867_CA9D0EF6 
X-CRM114-Status: GOOD (  35.91  )
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

SGkgRHJhZ2FuLAoKT24gMTgvMTAvMjAyNSAwOTozMCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhl
bGxvIEppbW15LAo+IAo+IE9uIFNhdHVyZGF5LCBPY3RvYmVyIDE4LCAyMDI1IDAyOjQyIENFU1Qs
IEppbW15IEhvbiA8aG9ueXVlbmt3dW5AZ21haWwuY29tPiB3cm90ZToKPj4gT24gRnJpLCBPY3Qg
MTcsIDIwMjUgYXQgMTA6MTXigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4g
d3JvdGU6Cj4+PiBPbiBGcmlkYXksIE9jdG9iZXIgMTcsIDIwMjUgMTQ6MDggQ0VTVCwgVGlhbmxp
bmcgU2hlbiA8Y25zenRsQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pj4gT24gMjAyNS8xMC8xNyAxODoy
NSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+Pj4+PiBPbiBGcmlkYXksIE9jdG9iZXIgMTcsIDIwMjUg
MDk6MzkgQ0VTVCwgVGlhbmxpbmcgU2hlbiA8Y25zenRsQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pj4+
PiBGcm9tOiBHcnplZ29yeiBTdGVybmljenVrIDxncnplZ29yekBzdGVybmljei51az4KPj4+Pj4+
Cj4+Pj4+PiBTb21lIE5hbm9QQy1UNiBib2FyZHMgd2l0aCBBM0E0NDQgZU1NQyBjaGlwcyBleHBl
cmllbmNlIEkvTyBlcnJvcnMgYW5kCj4+Pj4+PiBjb3JydXB0aW9uIHdoZW4gdXNpbmcgSFM0MDAg
bW9kZS4gRG93bmdyYWRlIHRvIEhTMjAwIG1vZGUgdG8gZW5zdXJlCj4+Pj4+PiBzdGFibGUgb3Bl
cmF0aW9uLgo+Pj4+Pgo+Pj4+PiBDb3VsZCB5b3UsIHBsZWFzZSwgcHJvdmlkZSBtb3JlIGRldGFp
bHMgYWJvdXQgdGhlIHRyb3VibGVzb21lIGVNTUMKPj4+Pj4gY2hpcCB0aGF0IGdldHMgaWRlbnRp
ZmllZCBhcyBBM0E0NDQsIGkuZS4gd2hhdCdzIHRoZSBhY3R1YWwgYnJhbmQKPj4+Pj4gYW5kIG1v
ZGVsPyAgTWF5YmUgeW91IGNvdWxkIHNlbmQgYSBwaWN0dXJlIG9mIGl0PyAgSXQgbWlnaHQgYWxz
bwo+Pj4+PiBoZWxwIGlmIHlvdSdkIHNlbmQgdGhlIGNvbnRlbnRzIG9mICIvc3lzL2NsYXNzL2Js
b2NrL21tY2Jsa1gvZGV2aWNlCj4+Pj4+IC9tYW5maWQiIGZyb20geW91ciBib2FyZCAod2hlcmUg
IlgiIHNob3VsZCBlcXVhbCB0d28pLgo+Pj4+Cj4+Pj4gVW5mb3J0dW5hdGVseSBJIGRvbid0IGhh
dmUgdGhpcyBib2FyZCBub3IgdGhpcyBlTU1DIGNoaXAuCj4+Pj4gSSBnb3QgdGhlIGNoaXAgbW9k
ZWwgZnJvbSBteSBmcmllbmQsIGl0J3MgRk9SRVNFRSBGRU1ETk4yNTZHLUEzQTQ0LAo+Pj4+IG1h
bmZpZCBpcyAweDAwMDBkNi4KPj4+Cj4+PiBUaGFua3MgZm9yIHJlc3BvbmRpbmcgYW5kIHByb3Zp
ZGluZyB0aGUgZGV0YWlscyBzbyBxdWlja2x5IQo+Pj4KPj4+Pj4gSSdtIGFza2luZyBmb3IgdGhh
dCBiZWNhdXNlIEknZCBsaWtlIHRvIHJlc2VhcmNoIGl0IGEgYml0IGZ1cnRoZXIsCj4+Pj4+IGlm
IHBvc3NpYmxlLCBiZWNhdXNlIHNvbWUgb3RoZXIgZU1NQyBjaGlwcyB0aGF0IGFyZSBhbHNvIGZv
dW5kIG9uCj4+Pj4+IHRoZSBOYW5vUGMtVDYgc2VlbSB0byB3b3JrIGZpbmUgaW4gSFM0MDAgbW9k
ZS4gWzFdICBJdCBtYXkgYmUgdGhhdAo+Pj4+PiB0aGUgQTNBNDQ0IGNoaXAgaGFzIHNvbWUgaXNz
dWVzIHdpdGggdGhlIEhTNDAwIG1vZGUgb24gaXRzIG93biwKPj4+Pj4gaS5lLiB0aGUgb2JzZXJ2
ZWQgaXNzdWVzIG1heSBub3QgYmUgY2F1c2VkIGJ5IHRoZSBib2FyZC4KPj4+Pgo+Pj4+IFllcywg
aXQgc2hvdWxkIGJlIGNhdXNlZCBieSB0aGlzIGVNTUMgY2hpcC4KPj4+Cj4+PiBJJ2Qgc3VnZ2Vz
dCB0aGF0IHdlIG1vdmUgZm9yd2FyZCBieSAicXVpcmtpbmcgb2ZmIiB0aGUgSFM0MDAgbW9kZQo+
Pj4gZm9yIHRoZSBGRU1ETk4yNTZHLUEzQTQ0IGVNTUMgY2hpcCBpbiB0aGUgTU1DIGRyaXZlcnMs
IGluc3RlYWQgb2YKPj4+IGRvd25ncmFkaW5nIHRoZSBzcGVlZCBvZiB0aGUgc2RoY2kgaW50ZXJm
YWNlIG9uIHRoZSBOYW5vUEMtVDYuCj4+Pgo+Pj4gVGhhdCB3YXksIHRoZSBvdGhlciBzaW1pbGFy
IEZvcmVzZWUgZU1NQyBjaGlwIHRoYXQncyBhbHNvIGZvdW5kCj4+PiBvbiBOYW5vUEMtVDYgYm9h
cmRzLCBGRU1ETk4yNTZHLUEzQTU2NCwgd2lsbCBjb250aW51ZSB0byB3b3JrIGluCj4+PiB0aGUg
ZmFzdGVyIEhTNDAwIG1vZGUsIHdoaWxlIHRoZSB0cm91Ymxlc29tZSBBM0E0NCB2YXJpYW50IHdp
bGwKPj4+IGJlIGRvd25ncmFkZWQgdG8gdGhlIEhTMjAwIGdsb2JhbGx5IGZvciBldmVyeW9uZSdz
IGJlbmVmaXQuICBJdCdzCj4+PiBxdWl0ZSB1bmxpa2VseSB0aGF0IHRoZSBBM0E0NCB2YXJpYW50
IGZhaWxzIHRvIHdvcmsgcmVsaWFibGUgaW4KPj4+IEhTNDAwIG1vZGUgb24gdGhlIE5hbm9QQy1U
NiBvbmx5LCBzbyBxdWlya2luZyBpdCBvZmYgaW4gdGhlIE1NQwo+Pj4gZHJpdmVycyBzaG91bGQg
YmUgYSBzYW5lIGFuZCBzYWZlIGNob2ljZS4KPj4+Cj4+PiBJZiB5b3UgYWdyZWUgd2l0aCBkcm9w
cGluZyB0aGlzIHBhdGNoLCBJJ2xsIGJlIG1vcmUgdGhhbiBoYXBweQo+Pj4gdG8gaW1wbGVtZW50
IHRoaXMgSFMyMDAgcXVpcmsgaW4gdGhlIE1NQyBkcml2ZXJzLgo+Pj4KPj4+IEFzIGEgbm90ZSwg
RkVNRE5OMjU2Ry1BM0E0NCBpcyBmb3VuZCBpbiB0aGUgUm9ja2NoaXAgUXVhbGlmaWVkCj4+PiBl
TU1DIFN1cHBvcnQgTGlzdCB2MS44NCwgWzJdIGJ1dCB0aGUgZXZpZGVuY2Ugc2F5cyB0aGUgb3Bw
b3NpdGUsCj4+PiBzbyB3ZSBzaG91bGQgcmVhY3QgYXBwcm9wcmlhdGVseSBieSBhZGRpbmcgdGhp
cyBxdWlyay4KPj4KPj4gV2hlbiBhZGRpbmcgdGhlIHF1aXJrIGZvciB0aGUgQTNBNDQsIGNhbiB3
ZSBsb3dlciB0aGUgbWF4IGZyZXF1ZW5jeQo+PiBhbmQga2VlcCB0aGUgSFM0MDAgbW9kZSBpbnN0
ZWFkPwo+PiBUaGF0J3Mgd2hhdCB0aGUgRmVkb3JhIGZvbGtzIGZvdW5kIHdvcmtzIFszXS4gVGhl
cmUncyBtb3JlIHRlc3QKPj4gcmVzdWx0cyBpbiBBcm1iaWFuIFs0XQo+IAo+IEFyZSB0aGVyZSBh
bnkgSS9PIHBlcmZvcm1hbmNlIHRlc3RzIHRoYXQgd291bGQgcHJvdmUgdGhhdCBsb3dlcmluZwo+
IHRoZSBIUzQwMCBmcmVxdWVuY3kgdG8gMTUwIE1IeiBlbmRzIHVwIHdvcmtpbmcgc2lnbmlmaWNh
bnRseSBmYXN0ZXIKPiB0aGFuIGRyb3BwaW5nIHRoZSBlTU1DIGNoaXAgdG8gSFMyMDAgbW9kZT8K
PiAKPiBJJ20gYXNraW5nIHRoYXQgYmVjYXVzZSBsb3dlcmluZyB0aGUgZnJlcXVlbmN5IGxvb2tz
IG11Y2ggbW9yZSBsaWtlCj4gdGhlcmUncyBzb21lIGlzc3VlIHdpdGggdGhlIGJvYXJkLCByYXRo
ZXIgdGhhbiB0aGUgaXNzdWUgYmVpbmcgdGhlCj4gZU1NQyBjaGlwJ3Mgc3VwcG9ydCBmb3IgSFM0
MDAgbW9kZS4gIFRodXMsIGEgcXVpcmsgdGhhdCB3b3VsZCBsb3dlcgo+IHRoZSBIUzQwMCBtb2Rl
IGZyZXF1ZW5jeSB3b3VsZCBsaWtlbHkgYmUgZnJvd25lZCB1cG9uIGFuZCByZWplY3RlZCwKPiB3
aGlsZSBhIHF1aXJrIHRoYXQgcHV0cyB0aGUgY2hpcCBpbnRvIEhTMjAwIG1vZGUgaXMgbXVjaCBj
bGVhbmVyCj4gYW5kIGhhcyBtdWNoIGhpZ2hlciBjaGFuY2VzIHRvIGJlIGFjY2VwdGVkLgoKSSBh
bHNvIGhhdmUgdGhlIE5hbm9QQy1UNiB3aXRoIG9uZSBvZiB0aGUgQTNBNDQ0IGVNTUNzIHdoaWNo
IHN1ZmZlcnMKZnJvbSBJL08gZXJyb3JzIGluIHRoZSBkZWZhdWx0IEhTNDAwIG1vZGUuIFRoZXNl
IGFyZSBpdHMgZGV0YWlscyBpbgovc3lzL2Jsb2NrL21tY2JsazAvZGV2aWNlLzoKbWFuZmlkOiAw
eDAwMDBkNgpvZW1pZDogMHgwMTAzCm5hbWU6IEEzQTQ0NApmd3JldjogMHgxMTAwMDAwMDAwMDAw
MDAwCmh3cmV2OiAweDAKcmV2OiAweDgKCkkgd2Fzbid0IHN1cmUgaWYgSSB3YXMganVzdCB1bmx1
Y2t5IHRvIGdldCBhIGZhdWx0eSBjaGlwLCBidXQgc2VlaW5nCnRoaXMgdGhyZWFkIGl0IHNlZW1z
IGxpa2UgYSB3aWRlciBpc3N1ZS4gT24gbXkgYm9hcmQsIGxpbWl0aW5nIGl0IHRvCkhTMjAwIG1v
ZGUgZ2V0cyByaWQgb2YgdGhlIEkvTyBlcnJvcnMsIGFuZCBpdCBzZWVtcyB0aGF0IGxvd2VyaW5n
CnRoZSBmcmVxdWVuY3kgdG8gMTUwTUh6IGFsc28gYXZvaWRzIEkvTyBlcnJvcnMuCgpJIGRpZCBh
IHF1aWNrIHVuc2NpZW50aWZpYyB0ZXN0IHdpdGggZmlvOyBIUzQwMCBFbmhhbmNlZCBTdHJvYmUg
bW9kZQp3aXRoIGEgMTUwTUh6IGNsb2NrIGdpdmVzIHNsaWdodGx5IGJldHRlciBwZXJmb3JtYW5j
ZSB0aGFuIEhTMjAwOgoKSFMyMDAgbW9kZToKcmVhZDogSU9QUz02OTcsIEJXPTQzLjZNaUIvcwp3
cml0ZTogSU9QUz02OTcsIEJXPTQzLjZNaUIvcwoKSFM0MDAgbW9kZSB3aXRoIDE1ME1IeiBjbG9j
azoKcmVhZDogSU9QUz04MDUsIEJXPTUwLjNNaUIvcwp3cml0ZTogSU9QUz03OTksIEJXPTUwLjBN
aUIvcwoKc28gZnJvbSBteSBwZXJzcGVjdGl2ZSwgbGltaXRpbmcgdGhlIGZyZXF1ZW5jeSB3b3Vs
ZCBiZSBhIGJldHRlciBmaXgKdGhhbiBkaXNhYmxpbmcgSFM0MDAgZW50aXJlbHkuCgpJdCBjb3Vs
ZCBhbHNvIGJlIG9mIGludGVyZXN0IHRoYXQgdGhlIGNsb2NrIHVzZWQgYXBwYXJlbnRseSBjYW4n
dApwcm92aWRlIGFuIGV4YWN0IDIwME1IeiwgZS5nLiBpbiBIUzIwMCBtb2RlOgoKcm9vdEB0Njp+
IyBjYXQgL3N5cy9rZXJuZWwvZGVidWcvbW1jMC9pb3MKY2xvY2s6CQkyMDAwMDAwMDAgSHoKYWN0
dWFsIGNsb2NrOgkxODc1MDAwMDAgSHoKdmRkOgkJMTggKDMuMCB+IDMuMSBWKQpidXMgbW9kZToJ
MiAocHVzaC1wdWxsKQpjaGlwIHNlbGVjdDoJMCAoZG9uJ3QgY2FyZSkKcG93ZXIgbW9kZToJMiAo
b24pCmJ1cyB3aWR0aDoJMyAoOCBiaXRzKQp0aW1pbmcgc3BlYzoJOSAobW1jIEhTMjAwKQpzaWdu
YWwgdm9sdGFnZToJMSAoMS44MCBWKQpkcml2ZXIgdHlwZToJMCAoZHJpdmVyIHR5cGUgQikKCj4g
V2l0aCBhbGwgdGhhdCBpbiBtaW5kLCBpZiB0aGUgcmVzdWx0aW5nIEkvTyBwZXJmb3JtYW5jZSBk
aWZmZXJlbmNlCj4gYmV0d2VlbiAxNTAgTUh6IEhTNDAwIGFuZCBIUzIwMCBpcyB3aXRoaW4gMTUt
MjAlIG9yIHNvLCBJJ2QgaGlnaGx5Cj4gcmVjb21tZW5kIHRoYXQgd2Ugc3RpbGwgZ28gd2l0aCB0
aGUgSFMyMDAgcXVpcmsuICBJdCBhbHNvIGxlYXZlcwo+IHVzIHdpdGggYSBuaWNlIHNhZmV0eSBt
YXJnaW4sIHdoaWNoIGlzIGFsd2F5cyBnb29kIHRvIGhhdmUgd2hlbgo+IHN1Y2ggaGFyZHdhcmUg
aW5zdGFiaWxpdHkgaXNzdWVzIGFyZSB3b3JrZWQgYXJvdW5kIGluIHNvZnR3YXJlLAo+IHVubGVz
cyBkZXRhaWxlZCBleWUgZGlhZ3JhbXMsIHByb3RvY29sIGR1bXBzIGFuZCB3aGF0bm90IGNhbiBi
ZQo+IHB1bGxlZCBhbmQgYW5hbHl6ZWQsIGluIHdoaWNoIGNhc2UgdGhlIHJlc3VsdGluZyBzYWZl
dHkgbWFyZ2luCj4gY2FuIGJlIG11Y2ggc2xpbW1lci4KPiAKPiBJZGVhbGx5LCB3ZSdkIGhhdmUg
YSBjb21wbGV0ZWx5IGRpZmZlcmVudCBib2FyZCB3aXRoIHRoZSBzYW1lCj4gRm9yZXNlZSBGRU1E
Tk4yNTZHLUEzQTQ0IGVNTUMgY2hpcCB0byB0ZXN0IGhvdyByZWxpYWJseSBpdHMgSFM0MDAKPiBt
b2RlIHdvcmtzIHRoZXJlLCB0byBzZWUgaXMgaXQgcmVhbGx5IHVwIHRvIHRoaXMgZU1NQyBjaGlw
IG9yIHVwCj4gdG8gdGhlIGJvYXJkIGRlc2lnbiwgYnV0IEknbSBhZnJhaWQgd2UgZG9uJ3QgaGF2
ZSB0aGF0IChlYXNpbHkpCj4gYXZhaWxhYmxlLCBzbyB0aGUgb25seSByZW1haW5pbmcgb3B0aW9u
IGlzIHRvIHdvcmsgd2l0aCB3aGF0J3MKPiBhY3R1YWxseSBhdmFpbGFibGUsIHdoaWNoIGluZXZp
dGFibHkgbGVhZHMgdG8gYSBjZXJ0YWluIGFtb3VudAo+IG9mIGd1ZXNzd29yayBhbmQgc29tZSBj
b21wcm9taXNlcy4KPiAKPj4+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0
L2lzc3Vlcy8xODg0NAo+Pj4gWzJdIGh0dHBzOi8vZGwucmFkeGEuY29tL3JvY2s1L2h3L1JLZU1N
Q1N1cHBvcnRMaXN0JTIwVmVyMS44NF8yMDI0MDgxNS5wZGYKPj4gWzNdIGh0dHBzOi8vbGlzdHMu
ZmVkb3JhcHJvamVjdC5vcmcvYXJjaGl2ZXMvbGlzdC9rZXJuZWxAbGlzdHMuZmVkb3JhcHJvamVj
dC5vcmcvdGhyZWFkL01DU0RZRFFWT1hTNUFaTUtBN0xMWTRRWDdKWEJXUENBLwo+PiBbNF0gaHR0
cHM6Ly9naXRodWIuY29tL2FybWJpYW4vYnVpbGQvcHVsbC84NzM2I2lzc3VlY29tbWVudC0zMzg3
NzYwNTM2CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
