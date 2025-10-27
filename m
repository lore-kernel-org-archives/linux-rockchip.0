Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8B8BCCF9EB
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 19:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAEjAbmGaceaAYIDWYA3GXxQklSS95OHHqdsu8bQOjs=; b=hMo95NUmYsnwZf
	B9OYNrStFWDPleMX4dvVjW7yrWjW4wdu18Dw5g5R+YaJCGT1y3J0VY2i50DtEitoT6+KUumk1hB5z
	AVj6Gj91wOoFvmsm/64ZdH0Cn6Dg183kODgtggXd6pcskluDvx3Cuf8vdkTXjQ2qoqbiK6sm0WFAn
	8i3BamzaFBMVuZdVRm7K3pNL+zK+TuswdqaCtiyxj06iB8ALNUYxd3YMTO2PYnAbvZoYj6AiR3zIc
	jFfn4z280fTw89KCoPDDONbgO+dsQosOBS7TY3tHNK8L3VuKh2OqvACWbQjyX3mZajEO2pZ162mFy
	7QPycC3Z4eKa2lmp4g8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSaT-0000000Ecsd-2bGL;
	Mon, 27 Oct 2025 19:09:01 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSaP-0000000EcrD-3v0S
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 19:08:59 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-470ffbf2150so36203115e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Oct 2025 12:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761592136; x=1762196936; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xrrBuaV/kWzQy3h0bP5iIsIcB+cyHk6dwoM0ppsVeCg=;
        b=csF94MjvZ2bjHCBrJaawUDv/f83lC0zZp0Zf50acIlUs3mzu/FIv4zGHxKcIJLijWo
         GnX+Gs5J2Sg88oj5N96zdXaX3FOdRyCqu54D/ghrNVL9i9buqZxqBT1uweiTLS/uOk08
         L8lsujl+tW3pb+NnGyxfaq1yAvu9lYOopUnmbjpZEf8b51EBxWc+fi6akgegi6ArvM28
         onTovrL0vJVlw1d/jj/biKvgeYxQ77WA2u1RdL5Cc/prLMSbejXrCXmi8R985QWguyWr
         LWFSN2pNKaaDIW68T99v92NSvbqQRrsiay771yD1WD1X1vpe3iNKULh0LdzbBgfq/6ez
         yrkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761592136; x=1762196936;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xrrBuaV/kWzQy3h0bP5iIsIcB+cyHk6dwoM0ppsVeCg=;
        b=dNyx6sVNyojI32sPPoiaUBUMH51ld/DD71JVC0WAJE01D1MI7BTH5di/qm9r0o+CrR
         t6snthYWMlrJ0oyAd2SwTdwvDptiscOILxIs9EQ5KBxwexG8kbxV7HdchFntsbdroqd0
         ZGLZSlM6P/R8OygoOWmfhb/TIcPkIdTjzn0YP4P5/I740pUFtl4KnxkoRLA1Wz4yiKKz
         LnOUjIpwTm78n13D7n4/HtaowlsKH5OllzZqAIR/I+GWzXbh4pfUmULTi+AT6Kj2NR6w
         zRn8uRm6TLqXbEkeewSMQOm/F2BVyn2gPRUYtfIFO8M+Gv/HI8umJV8d4RS9wSPY5ppJ
         9+hw==
X-Forwarded-Encrypted: i=1; AJvYcCU/WWrB2aQDltaBRi8U89LADT9aIaK0UxPw0kJkcIIil2yAfy5i/gn1X7NxA+OaYZob05LOGLDIMyDgZRJpLg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzQZ95rNuqSHjpqpKBWeBAen9EBGtHYhc8lvrcVzSeFJGRPUEdP
	2D5MBcu30Br25v/KbqFdibHnTxqfnsnCMYU//kkUhjGn2BIe+GIiJSZI
X-Gm-Gg: ASbGncugVyd49u4l9Hd9zlwkURv3Mc3ORAIxQ6FQY/3S4cbhpyfM48YF1KkOC7L937z
	xfyny77pIHV4dltTV4d7R3YUkwLQOncq7oarNsDExl6zkUVDqT2E4d6253hGn4LNTqh9n/CpvlG
	oJepNFtDfn3WG7W5yv1USQhSoajBHmfi+27Awv6lt/adIW2gcTnOXsiZlVkRsMGpBwfV9bA48AO
	xZTyviDcGwhwO5D4We/oEVIN7smKpuQqwF8W5vExi5w4ScISgS5hbRKLMnEoq3vUFL9Ho0DJ97w
	W1KS9pU69usJ0WXVFcvw7L1TwW2L26z89td0TrpaiI6k/o4GLV8RPITcZh2OoST0jXNTdjtG+EE
	LmY4SWBdIBKCTibMbEsITjJPmWaxOb4Iu8TT16UQKad71738PavPhpXZ9vK7kVpLfvFG2on/DIE
	EdllmZGdoC4AI6n+MUlLTmrX8PhRb9MTqJBzrZ7px5l/k3T9KcA0W6xToMmkXUTPwaUT4CtMIGt
	NtRXkpIh3zYpNcldyfF
X-Google-Smtp-Source: AGHT+IHQpujKOrXJVzT+iAH4rHZKqaP7yZUXY5b+4r1SO7Gypfz170ZMy3c7//TDLo+TKI0txclzNA==
X-Received: by 2002:a05:600c:871b:b0:45f:29eb:2148 with SMTP id 5b1f17b1804b1-47718d7bfa0mr665135e9.7.1761592136000;
        Mon, 27 Oct 2025 12:08:56 -0700 (PDT)
Received: from ?IPV6:2a02:8010:6606:0:1cb3:1c74:2f0b:e9ac? ([2a02:8010:6606:0:1cb3:1c74:2f0b:e9ac])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477184e4006sm2064515e9.5.2025.10.27.12.08.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 12:08:55 -0700 (PDT)
Message-ID: <d583ee43-38c4-40fb-b33b-ce3153c9723b@gmail.com>
Date: Mon, 27 Oct 2025 19:08:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: pwm-fan overlay for NanoPC-T6
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251026194858.92461-1-sigmaris@gmail.com>
 <CABjd4YxsfxwEbic8QEabX1h9j0B3DBw9LWwctJx7SzdvXZdDhA@mail.gmail.com>
Content-Language: en-GB
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <CABjd4YxsfxwEbic8QEabX1h9j0B3DBw9LWwctJx7SzdvXZdDhA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_120857_993528_49E0E5BA 
X-CRM114-Status: GOOD (  19.17  )
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

T24gMjcvMTAvMjAyNSAwOToxNCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gSGkgSHVnaCwKPiAK
PiBPbiBNb24sIE9jdCAyNywgMjAyNSBhdCAxOjA54oCvUE0gSHVnaCBDb2xlLUJha2VyIDxzaWdt
YXJpc0BnbWFpbC5jb20+IHdyb3RlOgo+Pgo+PiBGcmllbmRseUVMRUMgb2ZmZXJzIGFuIG9wdGlv
bmFsIGhlYXRzaW5rIGFuZCBmYW4gYWRkb24gZm9yIHRoZSBOYW5vUEMtVDYKPj4gYW5kIFQ2IExU
Uy4gQWRkIGFuIG92ZXJsYXkgd2hpY2ggY2FuIGJlIGFwcGxpZWQgaWYgdGhlIGZhbiBpcyBmaXR0
ZWQgYW5kCj4+IGNvbmZpZ3VyZXMgdGhlIGZhbiBhcyBhbiBhY3RpdmUgY29vbGluZyBkZXZpY2Ug
Zm9yIHRoZSBTb0MgcGFja2FnZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSHVnaCBDb2xlLUJha2Vy
IDxzaWdtYXJpc0BnbWFpbC5jb20+Cj4+IC0tLQo+PiBGcmllbmRseUVMRUMgaGVhdHNpbmsgd2l0
aCBmYW4gYWRkb246Cj4+IGh0dHBzOi8vd3d3LmZyaWVuZGx5ZWxlYy5jb20vaW5kZXgucGhwP3Jv
dXRlPXByb2R1Y3QvcHJvZHVjdCZwcm9kdWN0X2lkPTMwNQo+PiBWZW5kb3IgRFQgd2l0aCB0cmlw
IHBvaW50cyBhbmQgUFdNIGR1dHkgY3ljbGUgdmFsdWVzOgo+PiBodHRwczovL2dpdGh1Yi5jb20v
ZnJpZW5kbHlhcm0va2VybmVsLXJvY2tjaGlwL2Jsb2IvNDk0NDYwMjU0MGI2MmY1YWFkMTM5ZmU2
MDJhNzZjZjdjMzE3NjEyOC9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5v
cGk2LXJldjAxLmR0cyNMNzUtTDkwCgpIaSBBbGV4ZXksCgo+IElzIHRoZXJlIGFueSBkb3duc2lk
ZSB0byBlbmFibGluZyB0aGlzIHVuY29uZGl0aW9uYWxseSBpbiB0aGUgYm9hcmQKPiAuZHRzPwoK
T25seSB0aGF0IGl0IGdvZXMgYWdhaW5zdCB0aGUgcHJpbmNpcGxlIHRoYXQgdGhlIERUIHNob3Vs
ZCBkZXNjcmliZSB0aGUKaGFyZHdhcmU7IHRoZSBib2FyZCAuZHRzIHdvdWxkIGRlc2NyaWJlIGEg
Y29vbGluZyBkZXZpY2UgdGhhdCBkb2Vzbid0CmFjdHVhbGx5IGV4aXN0IG9uIHRoZSBiYXNlIGJv
YXJkLgoKSSBndWVzcyB0aGVuIGluIHRoZW9yeSwgYW4gT1MgbWlnaHQgYWxsb3cgdGhlIFNvQyB0
byByZWFjaCB1bmRlc2lyYWJseSBoaWdoCnRlbXBlcmF0dXJlcyBpZiBpdCdzIHJlbHlpbmcgb24g
dGhlIG5vbmV4aXN0ZW50IGZhbiB0byBjb29sIGl0IGRvd24uIEJ1dCBJCmRvbid0IHRoaW5rIHRo
aXMgd291bGQgYmUgYW4gaXNzdWUgb24gTGludXgsIGF0IGxlYXN0LCBpbiBwcmFjdGljZS4KCj4g
T3ZlcmxheXMgcmVxdWlyZSBtb3JlIHVzZXIgY29uZmlndXJhdGlvbiwgYW5kIG5vdCBhbGwKPiBi
b290bG9hZGVycyBzdXBwb3J0IHRoZW0gZGlyZWN0bHkgKGUuZy4gc3lzdGVtZC1ib290IHVzZXJz
IHdvdWxkCj4gc3RydWdnbGUpLiBDb21waWxpbmcgd2l0aCBvdmVybGF5cyBlbmFibGVkIGFsc28g
bWFrZXMgLmR0YidzIGEgbG90Cj4gbGFyZ2VyIGR1ZSB0byBhZGRlZCBzeW1ib2xzIGluZm9ybWF0
aW9uLgoKTm93YWRheXMgKG9uIERlYmlhbiBhdCBsZWFzdCkgdXNpbmcgb3ZlcmxheXMgaXMgcHJl
dHR5IGVhc3ksIEknbSB1c2luZyB0aGUKdS1ib290LW1lbnUgcGFja2FnZSBpbiBEZWJpYW4sIEkg
anVzdCBjb3B5IHRoZSBvdmVybGF5KHMpIHRvIC9ib290L2R0Ym8vIGFuZAppdCBkZXRlY3RzIHRo
ZW0gYXV0b21hdGljYWxseSBhbmQgYWRkcyB0aGVtIHRvIGV4dGxpbnV4LmNvbmYgZm9yIHUtYm9v
dCB0bwphcHBseS4KCkNvdWxkbid0IHN5c3RlbWQtYm9vdCB1c2VycyBqdXN0IHVzZSByazM1ODgt
bmFub3BjLXQ2LShsdHMtKXdpdGgtZmFuLmR0YiBhcwp0aGVpciBzaW5nbGUgRFQgdG8gbG9hZCwg
aWYgaXQgZG9lc24ndCBzdXBwb3J0IGFwcGx5aW5nIG92ZXJsYXlzIGFuZCB0aGV5CndhbnQgdG8g
dXNlIHRoZSBmYW4gYWRkb24/CgpGV0lXLCBJIGhhdmVuJ3Qgbm90aWNlZCBhbnkgcHJvYmxlbXMg
d2l0aCBoYXZpbmcgYSBsYXJnZXIgLmR0YiAodXNpbmcgbWFpbmxpbmUKVS1Cb290IHRvIGxvYWQg
aXQpIGFuZCBzZXZlcmFsIG90aGVyIFJLMzU4OCBib2FyZHMgYXJlIGFsc28gY29tcGlsZWQgd2l0
aApzeW1ib2xzIGVuYWJsZWQgYWxyZWFkeSwgYW5kIEkgaGF2ZW4ndCBzZWVuIGFueSBpc3N1ZXMg
cmVwb3J0ZWQgd2l0aCB0aGVtLgoKQmVzdCByZWdhcmRzLApIdWdoCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
