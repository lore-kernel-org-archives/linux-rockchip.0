Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03561CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Aug 2025 21:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WnW/3ThkoT7m6wuEROfyrfKpPSzryI3rr25M5ixM3wU=; b=yy1L0Jc2oBX5ew
	GGm6n6zEOv5wifkKts/hXiNVWN5+GSXiFSAhKcU8AXYkymORWpZjw8Y+6k1opJbw5OjrqS5ic9I2L
	fYzR8smcTP9G+USYpLtrcu7DCIsntskJcwoOyB8Rw4Dc3674iYn4WQXe+PWdXbNXMYU6acHQ23u+Z
	RvTN0RD+oHa8fshZo47ar8yiklxNm5ffD6v8M1ZIiVC4VSiylEK9f/rOv5LNdQJoSBM9NOhjKn9LH
	bjYHR2FPIFTArAB3seHwviUvzCcWV0aZwLjLf8bRS8VLLfrsMx1A7ka6pG6OKYYSRJSAAh4p08HKw
	gOrPzJctrDqpl25WsyMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umfUY-00000000ayU-1pFA;
	Thu, 14 Aug 2025 21:28:10 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umfST-00000000alg-2yHa;
	Thu, 14 Aug 2025 21:26:03 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-afcb7a16441so206836266b.2;
        Thu, 14 Aug 2025 14:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755206760; x=1755811560; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=patX2vIVx2VZdtOMO344MhTz8iIxU1BCXzaQwd8zvfA=;
        b=kmmaua/DEjtrGJXq3DC7N3kn5fhnr7eJHymsEgOfTN+z7PsMI9KQw2eiJTCR7OOUJQ
         oxCm34wNZ7CBpmIP2gJyR4lK+21SkNXVb9z1MWGwXawpsEkFSeRU2BZ78yMaLF9Tpm05
         chpHJtlGmL7JIjLRGQcH6UcQ//DdoQDry4i4nolF7lOQ1Q7h+I1R1s5CwxRcMpQjT5u7
         GwwO0a966+A8aM6DmHBgkFs7WfyXFf3kHNsXfnFSttzy4KX0LQeZE2IzvTqPW/qbkFt1
         EFs1xl7RIJ3QmVQynCx5gAqBnajZJ/QFDgGp6IEz5Dve0nuDursdfub0ej5hX59f4ScU
         VAXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755206760; x=1755811560;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=patX2vIVx2VZdtOMO344MhTz8iIxU1BCXzaQwd8zvfA=;
        b=UYQSShS3r9PjtfcyAgxiGfnDISUSDekm7gaT8pRYTrWjb+VXBxwhy29fEbbzxXZBFZ
         J4tkDNoedCJfzmB94lG8Uv698HxuleGI0wZjtGD3RbwX6pBT5un/4upZVNatTGbDRhYL
         UNZHh8hlF1msMG5WOobawmpzjcp6XbZu5fvH32Jid7dqYCMlhpmxyEelB5UPiJiNOW1v
         VPc2eDkVSMAjVUdXIKfFfqwJu87xex90b2u3zoLSFSjEFKY41GP4kueFLwhtjISSaFhd
         fDUqJL99kMUBlFdY8/KqKOEA9ifApAiI4Vla9Cckcta+KGfxJW2LPO0luNclSlMNxuwM
         nE9w==
X-Forwarded-Encrypted: i=1; AJvYcCUNEjhs82Irz8G03CARJCt6QlJKbHDBshEl7bBsG1pBXVoF6EV9flVCHux55PnZK8F3kLB0TjlI4HC4iPQs5JGV@lists.infradead.org, AJvYcCXGFGeY3+1PVY6O/yHs6FTgzd3qZifM9O0+i15w2he9O9JY7/WS3os+5SQezSb6lPZCbcFwhRGNvG6QpwUA8Z0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNKPb/1XhpA4I8UWN/3MqNA9yppKMDI/pWUgiicsB05/VvZWRf
	2kSnKvNvzZAjIQynl4jDy+0ihAjuoi98Das7AiyjnhzAireJD12Sras=
X-Gm-Gg: ASbGncvBiSS19r/jmczeLib4PsVVhsFEEDVlfgtDS841BX1u1PlUIVIOJZZDDDBhaoM
	WsXp/5R9Fj/HZuSqCV4hiBToMfCqQ0tMjPx5/KKvq87SjNtgvVs8RUXULkn+ijiX+kCKZHga29U
	FH6BnsPWgRSuDFTtBSd912Gfuaym26QVa1cHfn5/HVTAJmy5/S5CQ0E03j9jBZmpfvKkEqwvoTs
	TP4WjkEQhj6tFi39ar16uybLAAkvbwxh4U+2XPujqlulm670EO0pjdYiHD8h27qSXL8+1vVTQWv
	p/fDnEMqXrQubSFdqvdJK49WXgxoHU8l0qeF9IY7gxuqgEw7Ew3/C18Cb+6lqgEGmQ8v+qd+oiX
	OnueOhJwQcytdaJfMEFgF9dtIY9ZLAVxhQLuL6ijSQWRryuqWHk8/ck2ogdzpcqAW0H4s
X-Google-Smtp-Source: AGHT+IGQBAOe9+pUmD246MgUsug2rRdBSlXKtIWuZA7wf0KueWL/EGJK62RMc4Ud1fidFL3HR4xItw==
X-Received: by 2002:a17:907:3ea6:b0:aec:5a33:1549 with SMTP id a640c23a62f3a-afcb98a1765mr452734666b.40.1755206759611;
        Thu, 14 Aug 2025 14:25:59 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f13:8500:a367:e001:3d74:b64a? ([2a02:810b:f13:8500:a367:e001:3d74:b64a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0763d8sm2680294866b.2.2025.08.14.14.25.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 14:25:58 -0700 (PDT)
Message-ID: <09030afe-553d-46d7-bf85-d1c1fa73c352@gmail.com>
Date: Thu, 14 Aug 2025 23:25:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] media: rkvdec: Add HEVC backend
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>, Jonas Karlman <jonas@kwiboo.se>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250810212454.3237486-1-jonas@kwiboo.se>
 <DC0FTXJNW0KB.3I8DLNHJVL21O@cknow.org> <DC0GRKB9V014.1J7A2PO1B7U8H@cknow.org>
 <816fa42715e8bc4bf538371975f97b6d102a74f5.camel@collabora.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <816fa42715e8bc4bf538371975f97b6d102a74f5.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_142601_751224_A107B4B2 
X-CRM114-Status: GOOD (  20.08  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gMTIuMDguMjUgdW0gMTU6Mjcgc2NocmllYiBOaWNvbGFzIER1ZnJlc25lOgo+IExlIG1hcmRp
IDEyIGFvw7t0IDIwMjUgw6AgMTQ6NTUgKzAyMDAsIERpZWRlcmlrIGRlIEhhYXMgYSDDqWNyaXTC
oDoKPj4gSGkgYWdhaW4sCj4+Cj4+IE9uIFR1ZSBBdWcgMTIsIDIwMjUgYXQgMjoxMSBQTSBDRVNU
LCBEaWVkZXJpayBkZSBIYWFzIHdyb3RlOgo+Pj4gT24gU3VuIEF1ZyAxMCwgMjAyNSBhdCAxMToy
NCBQTSBDRVNULCBKb25hcyBLYXJsbWFuIHdyb3RlOgo+Pj4+IFRoaXMgc2VyaWVzIGFkZCBhIEhF
VkMgYmFja2VuZCB0byB0aGUgUm9ja2NoaXAgVmlkZW8gRGVjb2RlciBkcml2ZXIuCj4+Pj4KPj4+
PiBQYXRjaCAxIGFkZCB0aGUgbmV3IEhFVkMgYmFja2VuZC4KPj4+PiBQYXRjaCAyLTMgYWRkIHZh
cmlhbnRzIHN1cHBvcnQgdG8gdGhlIGRyaXZlci4KPj4+PiBQYXRjaCA0IGFkZCBzdXBwb3J0IGZv
ciBhIHJrMzI4OCB2YXJpYW50Lgo+Pj4+IFBhdGNoIDUgYWRkIGEgcmszMzI4IHZhcmlhbnQgdG8g
d29yayBhcm91bmQgaHcgcXVpcmtzLgo+Pj4+IFBhdGNoIDYtNyBhZGQgZGV2aWNlIHRyZWUgbm9k
ZSBmb3IgcmszMjg4Lgo+Pj4KPj4+IEl0IGxvb2tzIGxpa2UgSSBoYWQgYSBwcmV2aW91cyB2ZXJz
aW9uIG9mIGxpbnV4dHYtcmt2ZGVjLWhldmMtdjIgYnJhbmNoCj4+PiBsb2NhbGx5IGFuZCB0aGF0
IGFsc28gaGFkIHRoaXMgY29tbWl0Ogo+Pj4gLSBtZWRpYTogcmt2ZGVjOiBLZWVwIGRlY29kZXIg
Y2xvY2tzIGdhdGVkCj4+Pgo+Pj4gSXMgdGhhdCBvbmUgbm8gbG9uZ2VyIG5lZWRlZC91c2VmdWwv
ZXRjID8KPj4+Cj4+PiBBbmQgJ2NoZXdpdHQnIGFsc28gaGFkIGEgY29tbWl0IHRvIGZpeCA4LzEw
LWJpdCBzZWxlY3Rpb246Cj4+PiBodHRwczovL2dpdGh1Yi5jb20vY2hld2l0dC9saW51eC9jb21t
aXQvNGI5M2IwNWQyY2E2MDhiYzIzZjFkNTJiY2MzMmRmOTI2ZDQzNWM3Ywo+Pj4gIldJUDogbWVk
aWE6IHJrdmRlYzogZml4IDgtYml0LzEwLWJpdCBmb3JtYXQgc2VsZWN0aW9uIgo+Pj4KPj4+IEkg
aGF2ZW4ndCB0cmllZCB0aGF0IG9uZSAoeWV0KSwgYnV0IGRpZMKgIHRyeSBhbiBvdGhlciB2YXJp
YW50IHdpdGgKPj4+IGNoYW5naW5nIHRoZSBvcmRlcmluZyBpbiBya3ZkZWNfaGV2Y19kZWNvZGVk
X2ZtdHMgYnV0IHRoYXQgZGlkbid0IHdvcmsKPj4+IGluIG15IHRlc3RzLiAoQ2FuIG9mYyBiZSBQ
RUJLQUMpCj4+Pgo+Pj4gV291bGQgdGhhdCBiZSB1c2VmdWw/IEkgZG8vZGlkIGhhdmUgY29uc2lz
dGVudCBwcm9ibGVtcyB3aXRoIHBsYXlpbmcKPj4+IDEwLWJpdCBlbmNvZGVkIHZpZGVvIGZpbGVz
Lgo+Pgo+PiBudm0gYWJvdXQgdGhlIDEwLWJpdCBwcm9ibGVtLiBJdCBleGlzdHMsIGJ1dCBpdCdz
IG5vdCByZXN0cmljdGVkIHRvIEhFVkMKPj4gYXMgaXQgYWxzbyBleGlzdHMgd2l0aCB3aXRoIEgu
MjY0IGZpbGVzLgo+IAo+IFRoZSByZWZlcnJlZCBwYXRjaCBpcyBhZ2FpbnN0IHNvbWUgb3V0LWRh
dGVkIGtlcm5lbC4gSW4gbWFpbmxpbmUgbGludXggd2l0aAo+IGhhdmU6Cj4gCj4gCWlmIChzcHMt
PmJpdF9kZXB0aF9sdW1hX21pbnVzOCA9PSAwKSB7Cj4gCQlpZiAoc3BzLT5jaHJvbWFfZm9ybWF0
X2lkYyA9PSAyKQo+IAkJCXJldHVybiBSS1ZERUNfSU1HX0ZNVF80MjJfOEJJVDsKPiAJCWVsc2UK
PiAJCQlyZXR1cm4gUktWREVDX0lNR19GTVRfNDIwXzhCSVQ7Cj4gCX0gZWxzZSBpZiAoc3BzLT5i
aXRfZGVwdGhfbHVtYV9taW51czggPT0gMikgewo+IAkJaWYgKHNwcy0+Y2hyb21hX2Zvcm1hdF9p
ZGMgPT0gMikKPiAJCQlyZXR1cm4gUktWREVDX0lNR19GTVRfNDIyXzEwQklUOwo+IAkJZWxzZQo+
IAkJCXJldHVybiBSS1ZERUNfSU1HX0ZNVF80MjBfMTBCSVQ7Cj4gCX0KPiAKPiBXaGljaCBjb3Zl
cnMgYWxsIGNhc2VzIHN1cHBvcnRlIGJ5IHRoZSBoYXJkd2FyZS4gQ2hld2l0dCBzZWVtIHRvIGFk
ZCBhCj4gcHJldmlvdXNseSBtaXNzaW5nIDEwYml0IGNhc2UsIGFuZCBmb3JjaW5nIGRvd25jb252
ZXJzaW9uIGZyb20gNDIyIHRvIDQyMC4gQQo+IGRvd25jb252ZXJzaW9uIGlzIHNvbWV0aGluZyB0
byBiZSBjaG9zZW4gYW5kIGFwcGxpZWQgYnkgdXNlcnNwYWNlLCB0aGUga2VybmVsCj4gc2hvdWxk
IHBpY2sgYSBub24tZGVzdHJ1Y3RpdmUgZm9ybWF0IGJ5IGRlZmF1bHQuCgpQbGVhc2Ugbm90ZSB0
aGF0IHRoaXMgcGF0Y2ggaXMgY29tcGxldGVseSB1bnJlbGF0ZWQgdG8gdGhpcyBzZXJpZXMsIGFz
IGl0CmlzIGZvciBEZXRsZXYncyBXSVAgcmt2ZGVjMiBkcml2ZXIgWzBdIGFuZCBmb3IgSC4yNjUg
Y29kZWMgb25seSAtIHJrdmRlYzIKc2ltaWxhciB0byBya3ZkZWMoMSkgb25seSBzdXBwb3J0cyBO
VjEyIGFuZCBOVjE1IGZvciBILjI2NSBjb2RlYyBhbmQKcGVyZmVjdGx5IG1hdGNoZXMgd2hhdCBp
cyBkZWZpbmVkIGF0IFsxXS4KClswXSAKaHR0cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9kZXRs
ZXYvbGludXgvLS90cmVlL2FkZC12ZHB1MzgxLWFuZC0zODMtdG8tcmt2ZGVjLXYyClsxXSAKaHR0
cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9kZXRsZXYvbGludXgvLS9ibG9iLzE1MzUyZTI5NWEw
ZDM4YmQwNDUwZjYwOGU3YmJjYmYxNmRmZWZkNmIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9ya3ZkZWMvcmt2ZGVjLmMjTDMzMwoKPiBOaWNvbGFzCj4gCj4+Cj4+IENoZWVycywKPj4g
IMKgIERpZWRlcmlrCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+PiBMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
