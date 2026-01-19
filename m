Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC8EED29C58
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 18:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Suh6qY8bAlJ4L/nqc7yMsAE9FaDJQHikfcj3QDEAhQc=; b=bcwRaZ6B52OKQ5
	wK6MTquE5DwawHyAjzTc6uSoCS7XDrf8mh7wEljpDpJTbcreNFi++06nFX8kaMNjbjCdJ7x2VoumF
	8ypuH5O6skxewdrCFihyfTA/xRvlLj/hOPLBgV35dQo4F5gJQ8pMw5ElJw4nz41k6PNd8XMn/rK2X
	hCFhb3ailZHJzJ5H2XP5lU01NoB1CwzwxltWu561t4X+oIa4xCQyi7VwhbUZPIrxLlSP+QUu7h1Xq
	o0EJVLRC90OVmbbk5VKOBJSGnM1hg3Zysy1sECZbmvXRnTCMONRF2ErGjOijmBj1K1+AGAZPH10VX
	SxUL9LjtucoEiJyJzqxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhti3-00000002gnJ-3KpX;
	Mon, 19 Jan 2026 18:10:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhti2-00000002gmw-46kS
	for linux-rockchip@bombadil.infradead.org;
	Mon, 19 Jan 2026 18:10:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=k/iFQ+cGrDnzb99VgFwhl/BYFJFd6sdYEbVS6eQMIFs=; b=YJQmx4r2/PeXAnS6QJgy27zeLH
	4XJBtqP8sIOTc4YOhCOofmwN6pI1nFqNflrRwAHQ4RLwKTWAMpa5ZXswGR46Mr43hzj0uKef195Ki
	9jQ6tubZRGENQQnVy7cezSuA1L6yv4SqsPhXYzdXAhzeB/XaA6oGLBs65OE46fQNreYRJwmpl3Sug
	MzxZvMFseZwY4uAl4PjdFjEV45uH4hw1QqelN78yGgJlODrfd65GfeTW8E5NBq6uTnTOCZntFzXge
	hO5eAuHs2IYUe0Jgu9E7nodtSMVdUZOM4YiRadR9uR9MoCa5qvALIJLCfDlB9ctIag4hWJWmpYbVn
	QXxDJFxQ==;
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhthz-0000000CkgO-0wuV
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jan 2026 18:10:37 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b87f30a6858so7690966b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 10:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768846233; x=1769451033; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k/iFQ+cGrDnzb99VgFwhl/BYFJFd6sdYEbVS6eQMIFs=;
        b=P3jrrHnhy5Q8CRIf17FdU5ruMu0b6549E4miCJCSYgueXqxXSQ+Dk1wReCjXgQdk0v
         IaLvLiW+HpAW6DAQvvUpfxmOX/9KoC/TppzttDIimGQ6e6MWYMR6W1Blapi0e7NsUJl6
         dx7YwAC13wCQqJoKYXDkpQ2uj4W0TyZp4iIVgQdu02Twgwr4KMS75gMKfUE+q5sqnTYP
         RaVZghEkU2nVN41KgBRtKRWMPk/5UOU15/US7gyD+aCXZuLVY96gMlLYD/U73O6H4Y67
         8lglum63EmW19DXOylyVZ1GocQ0251u569CjEfP3zzwiUjW6V/nRKRGZY8aEb1TgoQ+Z
         DVrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768846233; x=1769451033;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k/iFQ+cGrDnzb99VgFwhl/BYFJFd6sdYEbVS6eQMIFs=;
        b=LjE1Di0KygrllSlW+3W5JrwoeA7jB+V3fD33OXgJzNPmZvVto8oMQzfG6li7AKa0/U
         aGLZ5f7bgm3f4tglHq5txJRpBu2CO9vqwC93uHcJv7C9BNsT/1Tz8ciyoG92YyI1YY6Q
         LBCOhl4gludusUHylVt4yFZj4l6noHp5XRyNMhOdr+Xeo5UTW28dbhmfWRt5ObRulhSV
         IeWq+98giVwtaF9hlgGtE8ONNQJywwVpMxGs2Ll+I6+/GuzgIBzzez9w4MzXuOY0f7po
         DMD3B8BsdN0JO+Cbl8GKWLF2EctpgwxP4ZorAxap1cFYCMu+wLkfBW6CCPJrivxaLCwN
         qb9w==
X-Forwarded-Encrypted: i=1; AJvYcCXszCwQoRUh/G5+8jWxD5lE7no1mmYs5skyZ65KWC6jUC/zZ8sxUGjicJzWEaXjo46xQNkRwS2mDKjpuFnX+Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzskJEOI1WiQ+i6ToQrJtyDhfX/bQYvNiGPGzLuIM+GAbA7ucqx
	SQ9ecVL/KckKvMlw2k1CyxfncJLJ2A+OywKzhwGza0lWZ2qnhUVWl/N0
X-Gm-Gg: AZuq6aKNir0j1anjkFrQzK1uN3S/Yov2IDt0EAN6+LwTNuljpMcwBZdFd9Mmpz7pnck
	1koOf25IDZMYRwkwcZBnF6UkAdZdnlCF5GfR2BLK24SGqEnj1wx6aXwKXYyowDnyuWe6pMfhi2W
	rjaEH7jLCABO/jPAIAdC/srtwzSJMfEEFxgUiD6P0zHG6jnUjF5iWT12fzEuBFcyKyd5AdEz/DM
	+VFi7Ab2KMPbfRfS066lMrlmp8sU0TqKnKc32xy/GsmK5o9x7GtLFMHtVGQZIUKRhkrx6GXHTUJ
	DFgxyxtsHVF+/vrKYoa9Qko6Yqns9AF8WWOt+Hd4Bd7W4XmrwRLyU11bweW6QII3a9/Moa+pwQc
	fL3rpP88Dom/LzfikaPpe11CBOIytx1Xvgyn3XrTdAd/30oRmmiW1V3w0RKYkzcgFGKXkPtbEz0
	+IaW9gUg6U3KAFp7gk0jxuF16ywVmhXyS3whI3CTd9zEKFwTZAxA==
X-Received: by 2002:a17:907:7b93:b0:b87:301f:6172 with SMTP id a640c23a62f3a-b879323cac9mr694566866b.6.1768846232600;
        Mon, 19 Jan 2026 10:10:32 -0800 (PST)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959fb973sm1141170966b.53.2026.01.19.10.10.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 10:10:31 -0800 (PST)
Message-ID: <e4ebdde6-4073-4dd6-aef2-abf2c293a48d@gmail.com>
Date: Mon, 19 Jan 2026 19:10:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] ARM: dts: rockchip: rk3036: remove mshc aliases
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 heiko@sntech.de
References: <c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com>
 <c4c17773-1146-4db9-bf2f-a7500a8bd734@rock-chips.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <c4c17773-1146-4db9-bf2f-a7500a8bd734@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_181035_317360_3DD1281F 
X-CRM114-Status: GOOD (  18.08  )
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

CgpPbiAxLzE5LzI2IDA4OjA4LCBTaGF3biBMaW4gd3JvdGU6Cj4gSGkgSm9oYW4sCj4gCj4g5Zyo
IDIwMjYvMDEvMTcg5pif5pyf5YWtIDU6MDUsIEpvaGFuIEpvbmtlciDlhpnpgZM6Cj4+IFRoZSB1
c2Ugb2YgbXNoYyBhbGlhc2VzIGlzIGRlcHJlY2F0ZWQgZm9yIHNvbWUgd2hpbGUsCj4+IHNvIHJl
bW92ZSB0aGVtIGZyb20gdGhlIHJrMzAzNi5kdHNpIGZpbGUuCj4+Cj4gCgo+IEkgbm90aWNlZCB0
aGF0IHRoZSBhbGlhcyBwcm9wZXJ0eSBpcyBzdGlsbCBsaXN0ZWQgaW4gdGhlCj4gZG9jdW1lbnRh
dGlvblsxXS4gQ291bGQgeW91IHBsZWFzZSBzaGFyZSB3aGVyZSBpdCBoYXMgYmVlbiBmb3JtYWxs
eQo+IG1hcmtlZCBhcyBkZXByZWNhdGVkPyBJIG1heSBoYXZlIG1pc3NlZCB0aGUgdXBkYXRlLgo+
IAo+IFsxXSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tYy1jb250cm9s
bGVyLnlhbWwKCk1zaGMgYWxpYXNlcyBkcml2ZXIgc3VwcG9ydCB3YXMgaW50cm9kdWNlZCAyMDE4
IGluIGR3X21tYy5jIG9ubHkgYW5kIGJlZm9yZSB0aGF0IGEgdW5kb2N1bWVudGVkIGNvcHkgcGFz
dGUgZW50ZXJlZCBzb21laG93IGludG8gZHRzaSBmaWxlcy4KVGhlIG1tYy1jb250cm9sbGVyLnlh
bWwgZmlsZSBjaGFuZ2UgaW4gMjAyMCBtZW50aW9ucyBhIGZpeGVkIGluZGV4IG1tY04gZm9ybWF0
LgpBIGdlbmVyaWMgYWxpYXMgbmFtZSAibW1jIiBpcyBub3cgcHJlZmVycmVkIGluc3RlYWQgb2Yg
YSAibXNoYyIgZHJpdmVyIHNwZWNpZmljLgoKQXMgc3VnZ2VzdGVkIGJ5IEFybmQgQmVyZ21hbm4g
YW5kIG90aGVycywgdGhlIG5ld2x5IGFkZGVkIG1tYyBhbGlhc2VzCnNob3VsZCBiZSBib2FyZCBz
cGVjaWZpYwoKRGlzY3Vzc2lvbnMgYWJvdXQgUm9ja2NoaXAgYWxpYXNlcyBzdGFydGVkIGFyb3Vu
ZCAyMDIxCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwL0NBSzhQM2EzX3VP
MjNZMHR5ZmRoMjZ0bUNWY3lwNlhNK3VyMFdVZDRraEdVb0JiMzJId0BtYWlsLmdtYWlsLmNvbS8j
dAoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL0NBUER5S0ZwMXpNQlVmSzdMdGVXMHlFZlRw
cXRVK1ArRXliTHNKQkZ4X3I1NEh3RmRNZ0BtYWlsLmdtYWlsLmNvbS8KCltQQVRDSCAwLzRdIG1t
YzogZHdfbW1jOiBzdGFydCBkZXByZWNhdGluZyBtc2hjTiBhbGlhc2VzCmh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjExMTI0MTg0NjAzLjM4OTcyNDUtMS1qb2huQG1l
dGFuYXRlLmNvbS8KPT09PQoKTm92IDI0LCAyMDE1CkFSTTogZHRzOiByb2NrY2hpcDogYWRkIGNv
cmUgcmszMDM2IGR0c2kKaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1pdC9m
YWVhMDk4ZTE4MDg3MjllNDc4NWNkYmEzYTNmYzUyZmFlNDlmMWFiCgpEZWMgMTksIDIwMTUKQVJN
OiBkdHM6IHJvY2tjaGlwOiBhZGQgdGhlIHNkaW8vc2RtbWMgbm9kZSBmb3IgcmszMDM2Cmh0dHBz
Oi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9jb21taXQvMTg3ZDc5NjdhNWVlNjMwYWUwNjJm
YjU0MzY1NWU1OWQyZjBmOTFmYgoKPT09PQoKRmViIDI3LCAyMDE4Cm1tYzogZHdfbW1jOiBGYWN0
b3Igb3V0IGR3X21jaV9pbml0X3Nsb3RfY2FwcwpodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMv
bGludXgvY29tbWl0L2E0ZmFhNDkyOWVkM2JlMTVlMmQ1MDBkMjQwNWY5OTJmNmRlZGM4ZWIKCj09
PT0KClNlcCA3LCAyMDIwCmR0LWJpbmRpbmdzOiBtbWM6IGRvY3VtZW50IGFsaWFzIHN1cHBvcnQK
aHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1pdC8xNzk2MTY0ZmFjN2UzNDhm
NzRhMGYxZjFjYWU5OTViMjJkMDAyMzE1CgpTZXAgNywgMjAyMAptbWM6IGNvcmU6IEFsbG93IHNl
dHRpbmcgc2xvdCBpbmRleCB2aWEgZGV2aWNlIHRyZWUgYWxpYXMKaHR0cHM6Ly9naXRodWIuY29t
L3RvcnZhbGRzL2xpbnV4L2NvbW1pdC9mYTJkMGFhOTY5NDFlOGRjMzQ3ZTQ5YTA0Yzc1NDY4ZTMw
MDJlZTIwCgo+IAo+PiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwu
Y29tPgo+PiAtLS0KPj4gwqAgYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LmR0c2kg
fCAzIC0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi5kdHNpIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LmR0c2kKPj4gaW5kZXggZmNhMjFlYmIyMjRiLi43OGFm
YWU0MmY4YjIgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAz
Ni5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi5kdHNpCj4+
IEBAIC0yMyw5ICsyMyw2IEBAIGFsaWFzZXMgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaTJjMCA9
ICZpMmMwOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaTJjMSA9ICZpMmMxOwo+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgaTJjMiA9ICZpMmMyOwo+PiAtwqDCoMKgwqDCoMKgwqAgbXNoYzAgPSAmZW1tYzsK
Pj4gLcKgwqDCoMKgwqDCoMKgIG1zaGMxID0gJnNkbW1jOwo+PiAtwqDCoMKgwqDCoMKgwqAgbXNo
YzIgPSAmc2RpbzsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHNlcmlhbDAgPSAmdWFydDA7Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCBzZXJpYWwxID0gJnVhcnQxOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
c2VyaWFsMiA9ICZ1YXJ0MjsKPj4gLS0gCj4+IDIuMzkuNQo+Pgo+Pgo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKPj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4+Cj4g
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
