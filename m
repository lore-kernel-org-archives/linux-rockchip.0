Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92796C83F27
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 09:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4JD2HHujKSZzieRQIhUzorAJCYE9dJQBstD8anyhcBY=; b=vE+BM/f3Ch7fGc
	G8CKeUtia+qIdYU5PSf4Jw5eUIccjyBE6l9ghpBs5HuejMK7hPivDQKb5MUXFUouE1yghFliacYHg
	Y9NedbnivTeXb1RLILhRD17daOzCyKlfEApPikrVeVCjZvPRDl56rC3LFcmjU8IlxUVYzMa5Zkjuw
	Xa3EnzeY+SPaRVXx1VtePOlryAEMHlV5OaxG0hXu7YuOk0VmRDgcZFkdnMKQyihhe84UE20aU8d0P
	7HUBjCPAGJCFiPyl/7AV+BmNnaFkCZXZgwv8XCxbtDhUzQ+hEdMVwgH0QLE9zmT3WY8UwKIlxr1im
	bsCHU0wVeg6qS1S0g8gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubbz9-00000004gCr-0Yeb;
	Tue, 15 Jul 2025 09:30:03 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubbH2-00000004Z33-1yYB
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Jul 2025 08:44:30 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-45611a6a706so11643415e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 01:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1752569067; x=1753173867; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rSGZSSlB/QxFa/UIskXnTJDNRmVg7hZJaIFbY9WQ+pg=;
        b=DEG8gYjbYu6d2GXuR/mudwP47UQygy5o4Fi+H0pa8Wrg2o/fM0sIdVU2Hr70O4RH0y
         wayzjQz6+Mub9/Fe7QeVy3E0JhwbirT7RypX/I8BnpSSMeSW8XZqaH/bPbDBAN954lIu
         dmelsDyjXOPrzdk1uepGpnLJ2bqdA/mWAq2X2DvyiXF+VOmkcynzWaQ5qwkN4UqVGJXT
         OuFmVp2s6o8va8Fvj4eE2OoTfiX0B3zmdb+LSP3c09iQmmkOoDbPHLJHYPg+1qZ/BZwO
         MYpENbSBEZ0qSgH9MzUSxSLBlIaF4/uBmscr5TK09WWgg3aVgN6g7JYt8Rfzicnz8RMx
         wQpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752569067; x=1753173867;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rSGZSSlB/QxFa/UIskXnTJDNRmVg7hZJaIFbY9WQ+pg=;
        b=EFvjhtY9ZX/xnw7m9ML20ra9aJc7YeyR6REvZUuFxttgTyxrfJs4Ke38w9tn67c96b
         cNScl9IonqzZbNYTvIivNCXZ7xqVTh2rfBxXev1oeQ7v+HUyqmRJhFVHmzVS/Hqk0BT+
         nkhSaXIDrdI0SDQM+bfSoR2jqDrrc/QAq5yuaFFcW0z1G5RC5SnpuR2t3gfwjblavQl8
         iwea/HArAxBQZG8LDavgiLAX2UtUaK3ZOE1oQwqlYQyTJkc9lU+ea7IMrZ+59NHC1FfN
         u1u3ceVek4kQtUO8cHu9g/n39cFefTekzD9Rm+f6a9OB6QhCJQNeUoifPEuvBvjOIP2G
         rxOA==
X-Forwarded-Encrypted: i=1; AJvYcCW8P2YOFTL3oeBPBaoAR1KhTMMEsQYidr0AVHPoLUWwbJj2drljeZf/10KivA1jXyilKaL/0L91umf89l/FWw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywt5Uu5BradIYCM5DM7mUT0uF2sBjIyvlxI03Hv0UBJf8wxbr8c
	mCaJg52jugVhOdNyfAlHm5O2d7JB4fryN97Ebo85mKwunr8vmsyCa3IO+YAElKmQX6oK4V28PCy
	X0qrS
X-Gm-Gg: ASbGncsij9DihoAa7KHopiJH0hAi0plCUv1cN4FMXbXXbIou4IexNoUJPe8fOh5v31H
	ghElHumM30noRLn+A4LyQornbKhhOVVG+0ThQ959LLZZ0TP1nyhY9rcWpBgMCZbOj7fhyduLUTI
	eaZf7nceV2QT6QCklYxPmXLH/7tUHBn3NnqDqw5ew8+oqrkIECWh1YK1c14F4mmENLEmfxeqw6G
	GhVmtTNkSoJ6EGI4vXF4g3dGGP8H6jV/ZjXug5C1s96lMYYrIYbyEzxdvY+bQejhPA1cpKYGmEe
	JJeVX7cRNHjPY2Jbki1fuCSs0MURyzzfvi3HG8TslnPWqX3VBMS/3P/aHUD9IIIN42vRCXMO4RC
	gT83R5aCMV6Xs5hD402IyNWAyMfzVYGiq0j6FBQknB8aKw2XFyA==
X-Google-Smtp-Source: AGHT+IEu+0abe3QFF+6GpjwHRm7nUBjoQyslnkX4QSlsoLp6aauYwVDq2uqTnMhucJ4Y+zSEQbd11w==
X-Received: by 2002:a05:6000:25f5:b0:3b5:d726:b7c with SMTP id ffacd0b85a97d-3b5f18ea7cfmr13533811f8f.40.1752569066591;
        Tue, 15 Jul 2025 01:44:26 -0700 (PDT)
Received: from ?IPV6:2403:580d:fda1::299? (2403-580d-fda1--299.ip6.aussiebb.net. [2403:580d:fda1::299])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c9242c430sm780958a91.1.2025.07.15.01.44.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 01:44:26 -0700 (PDT)
Message-ID: <f33da910-7e83-40a0-bfcd-a6131a356358@suse.com>
Date: Tue, 15 Jul 2025 18:14:21 +0930
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: PWM fan control not working with Rock5B and upstream kernel
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <e9ddcc05-e6db-49b0-aad6-c7873c38c427@suse.com>
 <5271313.GXAFRqVoOG@workhorse>
Content-Language: en-US
From: Qu Wenruo <wqu@suse.com>
Autocrypt: addr=wqu@suse.com; keydata=
 xsBNBFnVga8BCACyhFP3ExcTIuB73jDIBA/vSoYcTyysFQzPvez64TUSCv1SgXEByR7fju3o
 8RfaWuHCnkkea5luuTZMqfgTXrun2dqNVYDNOV6RIVrc4YuG20yhC1epnV55fJCThqij0MRL
 1NxPKXIlEdHvN0Kov3CtWA+R1iNN0RCeVun7rmOrrjBK573aWC5sgP7YsBOLK79H3tmUtz6b
 9Imuj0ZyEsa76Xg9PX9Hn2myKj1hfWGS+5og9Va4hrwQC8ipjXik6NKR5GDV+hOZkktU81G5
 gkQtGB9jOAYRs86QG/b7PtIlbd3+pppT0gaS+wvwMs8cuNG+Pu6KO1oC4jgdseFLu7NpABEB
 AAHNGFF1IFdlbnJ1byA8d3F1QHN1c2UuY29tPsLAlAQTAQgAPgIbAwULCQgHAgYVCAkKCwIE
 FgIDAQIeAQIXgBYhBC3fcuWlpVuonapC4cI9kfOhJf6oBQJnEXVgBQkQ/lqxAAoJEMI9kfOh
 Jf6o+jIH/2KhFmyOw4XWAYbnnijuYqb/obGae8HhcJO2KIGcxbsinK+KQFTSZnkFxnbsQ+VY
 fvtWBHGt8WfHcNmfjdejmy9si2jyy8smQV2jiB60a8iqQXGmsrkuR+AM2V360oEbMF3gVvim
 2VSX2IiW9KERuhifjseNV1HLk0SHw5NnXiWh1THTqtvFFY+CwnLN2GqiMaSLF6gATW05/sEd
 V17MdI1z4+WSk7D57FlLjp50F3ow2WJtXwG8yG8d6S40dytZpH9iFuk12Sbg7lrtQxPPOIEU
 rpmZLfCNJJoZj603613w/M8EiZw6MohzikTWcFc55RLYJPBWQ+9puZtx1DopW2jOwE0EWdWB
 rwEIAKpT62HgSzL9zwGe+WIUCMB+nOEjXAfvoUPUwk+YCEDcOdfkkM5FyBoJs8TCEuPXGXBO
 Cl5P5B8OYYnkHkGWutAVlUTV8KESOIm/KJIA7jJA+Ss9VhMjtePfgWexw+P8itFRSRrrwyUf
 E+0WcAevblUi45LjWWZgpg3A80tHP0iToOZ5MbdYk7YFBE29cDSleskfV80ZKxFv6koQocq0
 vXzTfHvXNDELAuH7Ms/WJcdUzmPyBf3Oq6mKBBH8J6XZc9LjjNZwNbyvsHSrV5bgmu/THX2n
 g/3be+iqf6OggCiy3I1NSMJ5KtR0q2H2Nx2Vqb1fYPOID8McMV9Ll6rh8S8AEQEAAcLAfAQY
 AQgAJgIbDBYhBC3fcuWlpVuonapC4cI9kfOhJf6oBQJnEXWBBQkQ/lrSAAoJEMI9kfOhJf6o
 cakH+QHwDszsoYvmrNq36MFGgvAHRjdlrHRBa4A1V1kzd4kOUokongcrOOgHY9yfglcvZqlJ
 qfa4l+1oxs1BvCi29psteQTtw+memmcGruKi+YHD7793zNCMtAtYidDmQ2pWaLfqSaryjlzR
 /3tBWMyvIeWZKURnZbBzWRREB7iWxEbZ014B3gICqZPDRwwitHpH8Om3eZr7ygZck6bBa4MU
 o1XgbZcspyCGqu1xF/bMAY2iCDcq6ULKQceuKkbeQ8qxvt9hVxJC2W3lHq8dlK1pkHPDg9wO
 JoAXek8MF37R8gpLoGWl41FIUb3hFiu3zhDDvslYM4BmzI18QgQTQnotJH8=
In-Reply-To: <5271313.GXAFRqVoOG@workhorse>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_014428_515028_30FDBD1A 
X-CRM114-Status: GOOD (  31.27  )
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

CgrlnKggMjAyNS83LzE1IDE3OjE5LCBOaWNvbGFzIEZyYXR0YXJvbGkg5YaZ6YGTOgo+IE9uIFR1
ZXNkYXksIDE1IEp1bHkgMjAyNSAwNjoxMDo0NSBDZW50cmFsIEV1cm9wZWFuIFN1bW1lciBUaW1l
IFF1IFdlbnJ1byB3cm90ZToKPj4gSGksCj4+Cj4+IE15IFJvY2s1QiBib2FyZCBpcyBydW5uaW5n
IGVkay1yazM1ODggZmlybXdhcmUgYW5kIChhbG1vc3QpIHVwc3RyZWFtCj4+IGtlcm5lbCAoNi4x
NC42IGtlcm5lbCBmcm9tIEFyY2hsaW51eEFSTSksIHVzaW5nIHVwc3RyZWFtIGR0YnMgKHRoZQo+
PiBmaXJtd2FyZSBpcyBhbHNvIHN3aXRjaGVkIHRvIGRldmljZS10cmVlIGJvb3QgbW9kZSkKPiAK
PiBDb25zaWRlciB1c2luZyBtYWlubGluZSB1LWJvb3QgaW5zdGVhZC4gSSB0aGluayB0aGUgb25s
eSBvbmVzIHdobwo+IGluc2lzdCBvbiBlZGsyIGZvcmtzIGFyZSB0aGUgQlNEIHBlb3BsZSwgYXMg
dGhleSBkb24ndCB3YW50IHRvCj4gd3JpdGUgZGV2aWNlIGRyaXZlcnMuIExpbnV4IGhhcyBkcml2
ZXJzLCBzbyBpbnZlbnRpbmcgVUVGSSBhYnN0cmFjdGlvbnMKPiBmb3IgdGhpbmdzIHByb2JhYmx5
IG9ubHkgbWFrZXMgeW91ciBleHBlcmllbmNlIHdvcnNlLgoKV2VsbCwgaGF2aW5nIHNvbWV0aGlu
ZyBtb3JlIHVzZXItZnJpZW5kbHkgYW5kIG1vcmUgc2ltaWxhciB0byBhIAp0cmFkaXRpb25hbCBQ
QyBzZXR1cCBpcyBkZWZpbml0ZWx5IG1vcmUgYXR0cmFjdGl2ZSB0byBlbmQgdXNlcnMuCgo+IAo+
IEtlcm5lbCA2LjE0IGlzIGFsc28gcXVpdGUgYSBiaXQgYmVoaW5kIGFuZCBub3Qgc3VwcG9ydGVk
IGJ5IHVwc3RyZWFtLAo+IHlvdSdsbCBsaWtlbHkgaGF2ZSBhIGJldHRlciBleHBlcmllbmNlIGNv
bXBpbGluZyBhIGtlcm5lbCB5b3Vyc2VsZgo+IHVzaW5nIGRlZmNvbmZpZyBhcyB0aGUgYmFzZS4g
QUxBUk0gbGlrZXMgdG8gcm9sbCBkaWNlIHdoZW4gaXQgY29tZXMgdG8KPiB0aGVpciBrZXJuZWwg
Y29uZmlnIGFuZCB0aGVuIG5vdCB1cGRhdGUgdGhlaXIga2VybmVscyBmb3IgaGFsZiBhIHllYXIu
CgpUaGFua2Z1bGx5IHRoZSBsYXRlc3Qgb25lIGlzIDYuMTUuNiwgYW5kIHVuZm9ydHVuYXRlbHkg
aXQgZG9lc24ndCBtYWtlIGEgCmRpZmZlcmVuY2UuCgpJJ20gZmluZSBjb21waWxpbmcga2VybmVs
cyBmb3IgbXkgVk1zIHRvIHJ1biB0ZXN0cywgYnV0IGZvciB0aGUgaG9zdCBJJ2QgCmxlYXZlIHRo
aXMgYXMgdGhlIGxhc3QgcmVzb3J0IG1ldGhvZC4KCkknbGwgdHJ5IHRoZSBVYm9vdCBpZiByZXF1
aXJlZCwgYnV0IG5vIHByZS1jb21waWxlZCB1cHN0cmVhbSBvbmUgaXMgbm90IApyZWFsbHkgaW52
aXRpbmcgZW5kIHVzZXJzLgoKPiAKPj4KPj4gQmVmb3JlIHRoYXQgSSdtIHVzaW5nIEFDUEkgbW9k
ZSB0aHVzIG5vIFBNVyBzdXBwb3J0LCBidXQgdGhlIGZpcm13YXJlJ3MKPj4gZmFuIGNvbnRyb2wg
aXMgd29ya2luZyBwcm9wZXJseSBhbHRob3VnaCBydW5uaW5nIGF0IGEgZml4ZWQgcnBtIHNldHRp
bmcuCj4+Cj4+IEJ1dCBhZnRlciBzd2l0Y2hpbmcgdG8gdGhlIHVwc3RyZWFtIGtlcm5lbCBhbmQg
ZGV2aWNlLXRyZWUgbW9kZSwgdGhlIHB3bQo+PiBmYW4gY29udHJvbCBuZXZlciB3b3Jrcy4KPiAK
PiBDaGVjayAvc3lzL2NsYXNzL3B3bSwgZXhwb3J0IHRoZSBwd20gYXNzb2NpYXRlZCB3aXRoIHRo
ZSBmYW4gaW4gdGhlIERULAo+IHRoZW4gbWFudWFsbHkgc2V0IGEgcGVyaW9kIGFuZCBkdXR5IGN5
Y2xlIHRoYXQgY29ycmVzcG9uZHMgdG8gYSBwZXJpb2QKPiB0aGUgZmFuIHN1cHBvcnRzLiBJZiBp
dCBkb2Vzbid0IHNwaW4sIHRoZW4gdGhlIHByb2JsZW0gaXMgbGlrZWx5IHRoYXQKPiB0aGVyZSBp
cyBhIGRpc2Nvbm5lY3QgYmV0d2VlbiB3aGF0IExpbnV4IHRoaW5rcyB0aGUgUFdNIHNpZ25hbCBp
cyBhbmQKPiB3aGF0IGl0IGFjdHVhbGx5IGlzLgoKTWluZCB0byBleHBsYWluIGl0IGEgbGl0dGxl
IG1vcmU/CgpOb3QgYW4gZXhwZXJ0IG9uIGRldmljZS10cmVlLCBJIG5vcm1hbGx5IHVzZSB0aGUg
Ym9hcmQganVzdCBhcyBhIApoZWFkbGVzcyBWTSBob3N0LgoKPiAKPiBJJ20gZ3Vlc3NpbmcgdGhl
IHByb2JsZW0gaGVyZSBpcyB0aGF0IHlvdXIgZmlybXdhcmUgb2YgY2hvaWNlIGxlYXZlcwo+IHRo
ZSBjbG9jayB0cmVlIGluIGEgYml0IG9mIGEgc3RhdGUsIGFuZCB0aGUgUFdNIGlzIGNsb2NrZWQg
ZnJvbQo+IHNvbWV0aGluZyB0aGF0J3MgaW5jb3JyZWN0LiBJZiBpdCdzIG5vdCB0aGUgcmlnaHQg
Y2xvY2sgcGVyaW9kIGZvcgo+IHRoZSBmYW4sIGl0IHdvbid0IHNwaW4uCgpCdXQgbXkgYm9vdGxv
YWRlciAoc3lzdGVtZC1ib290KSBpcyBleHBsaWNpdGx5IGxvYWRpbmcgdGhlIGR0Yiwgbm90IApy
ZWFsbHkgcmVseWluZyBvbiB0aGUgb25lIHByb3ZpZGVkIGJ5IHRoZSBmaXJtd2FyZS4KCk9yIHRo
YXQgaXMgbm90IHJlYWxseSBlbm91Z2ggZm9yIHRoaXMgY2FzZT8KClRoYW5rcywKUXUKCj4gCj4g
QSBsb2dpYyBhbmFseXplciB3b3VsZCBiZSBhYmxlIHRvIHRlbGwgeW91IGRlZmluaXRpdmVseSB3
aGV0aGVyIHRoYXQncwo+IHRoZSBjYXNlLgo+IAo+Pgo+PiBgc2Vuc29yc2AgY29tbWFuZCBkZXRl
Y3RzIHRoZSBmYW4sIGFuZCB0aGUgcHdtIHNlZW1zIHRvIHByb3Blcmx5Cj4+IGZvbGxvd2luZyB0
aGUgdGVtcGVyYXR1cmUsIGJ1dCB0aGUgcGh5c2ljYWwgZmFuIGp1c3QgZG8gbm90IHNwaW4gYXQg
YWxsOgo+Pgo+PiBjZW50ZXJfdGhlcm1hbC12aXJ0dWFsLTAKPj4gQWRhcHRlcjogVmlydHVhbCBk
ZXZpY2UKPj4gdGVtcDE6ICAgICAgICArODAuNMKwQwo+Pgo+PiBiaWdjb3JlMl90aGVybWFsLXZp
cnR1YWwtMAo+PiBBZGFwdGVyOiBWaXJ0dWFsIGRldmljZQo+PiB0ZW1wMTogICAgICAgICs4NC4x
wrBDCj4+Cj4+IHBhY2thZ2VfdGhlcm1hbC12aXJ0dWFsLTAKPj4gQWRhcHRlcjogVmlydHVhbCBk
ZXZpY2UKPj4gdGVtcDE6ICAgICAgICArODEuM8KwQwo+Pgo+PiBwd21mYW4taXNhLTAwMDAKPj4g
QWRhcHRlcjogSVNBIGFkYXB0ZXIKPj4gcHdtMTogICAgICAgICAgICAxMjglICBNQU5VQUwgQ09O
VFJPTCA8PDwKPj4KPj4gZ3B1X3RoZXJtYWwtdmlydHVhbC0wCj4+IEFkYXB0ZXI6IFZpcnR1YWwg
ZGV2aWNlCj4+IHRlbXAxOiAgICAgICAgKzc5LjXCsEMKPj4KPj4gbGl0dGxlY29yZV90aGVybWFs
LXZpcnR1YWwtMAo+PiBBZGFwdGVyOiBWaXJ0dWFsIGRldmljZQo+PiB0ZW1wMTogICAgICAgICs4
Mi4ywrBDCj4+Cj4+IGJpZ2NvcmUwX3RoZXJtYWwtdmlydHVhbC0wCj4+IEFkYXB0ZXI6IFZpcnR1
YWwgZGV2aWNlCj4+IHRlbXAxOiAgICAgICAgKzgzLjLCsEMKPj4KPj4KPj4gSSdtIHdvbmRlcmlu
ZyBpcyB0aGlzIGEgYnVnIGluIHRoZSB1cHN0cmVhbSBQV00gY29kZSBvciBzb21ldGhpbmcgZWxz
ZQo+PiBpcyBtaXNzaW5nIHByZXZlbnRpbmcgdGhlIGZhbiBmcm9tIHdvcmtpbmcgcHJvcGVybHku
Cj4gCj4gVGhlIHVwc3RyZWFtIFBXTSBjb2RlIGRlZmluaXRlbHkgd29ya3MsIGFuZCBoYXMgd29y
a2VkIGZvciBldmVyeQo+IFJvY2tjaGlwIGRldmljZSBzbyBmYXIuIFRoZSBQV00gZmFuIG9uIG15
IFJPQ0sgNUIgKG1haW5saW5lIHUtYm9vdCwKPiBtYWlubGluZSBrZXJuZWwsIG1haW5saW5lIFRG
LUEpIHdvcmtzIGp1c3QgZmluZS4KPiAKPj4KPj4gVGhhbmtzLAo+PiBRdQo+Pgo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKPj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cj4+Cj4gCj4gCj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
