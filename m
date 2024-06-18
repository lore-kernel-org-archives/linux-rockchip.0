Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E6A6C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 17:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=juyDMGRVm/+SahGtRZ5jnSfngSAqIAOeE4JX8yg8Aq8=; b=fr8d7w9YcDozHV
	4fbHtTOb/5n9F/y1SPLLISzWWD1DAls7TezttG9UiBEMh/xrxx+Lk/RzJCeFJQFrJ2QLtcoWiNCZH
	U9W65ZvSNO3MRRXBrQ9Rhg2LfIDJDmVp0JM7YvTBjjZ2id4LvBtICgcIcKxJ0wCsPqkH63uH895sN
	Z/tuZ24t+8TGPvcxW9/fPkPpLn4GTAwWiFeB6B37N3ybQt6QJ0N3COl7+InYh2Xfl0EeXxu1LpabC
	8Aw2ArM7CAUDlqJRC/XdmAQbpDxxRfcJPg+efS9BCw1zub+kNXXiOWkW+3WQxBO/L3MPYkZFImKhA
	pbe/YbZVgVa5yZAko6tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJcfk-0000000G2Ay-1bJP;
	Tue, 18 Jun 2024 17:31:08 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJcfc-0000000G28Q-42G4;
	Tue, 18 Jun 2024 17:31:02 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1f44b5b9de6so45373315ad.3;
        Tue, 18 Jun 2024 10:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718731860; x=1719336660; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=UqTJDZYhzctseuzM+3YsX5BOkVLM074JPBaxMv1BDQE=;
        b=LgKRdyCBvfvKu1tP+lTC5qUJ6eFM1CBsxjkjK0ZU9yHFqAFgmlhCT5X9U6QhBOZWRU
         3fki9eigcZeea8OhpFLprX9B6diJLj+t1gGPhGcpRfDV0HMgbFWSMSNtDSKOGoNcpfyd
         20HVQ8dKgYfa3VIlIz7Qij4BVONqwGS0WKwm9HtDSl4haUkjNt6PzRlkaRgoGcvPc2o4
         lIAYK95cDUQIGkuRUQlSt3GTsD2qz+b0w54U4+d5qYav8JPDC4E144rAmiuqikNlpfaL
         LoB4k4ALgyarp4bBzfLpsHL6PvxwPhWKqhgp8XbqW5bmiCdgDsL1lDKHFZ8GyesuPJ2M
         2i5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718731860; x=1719336660;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UqTJDZYhzctseuzM+3YsX5BOkVLM074JPBaxMv1BDQE=;
        b=CJ8xwvqRIf4ml8anIVOjg2HYTq+n8cgVCfH11bqB/1W2i0vdV6pwg5Q/qlzDVCgwqa
         stmlF+GGKL261cJXhUj9j6tHrZO5vjsA5Sodo8tJ3vz0qg181tWFZkCMS58GRVZ9XurM
         unmdwDH54sPFnbvxkgnkGQ1ofsc30x6FCoGC3xYYsY8Mhf6CQ/o30iWBlDvgnRAZgFbk
         KnMmP6NGhOLTEoLB/FdBdefz8F2PSUEazizQMvXBRMz1A9Lu7G+KZSahDqrjuf5DiJuC
         bGulIjYqkw0jTErka3Sls73of3lDBBKJFe3WnUK8Yzq2yIoWO/Xa7EHbBCH3TRT9jJDy
         Orvw==
X-Forwarded-Encrypted: i=1; AJvYcCWpbF3zm0ywKRoipa3Uc3S9uMoxTTfyj8DHfzDh+YuEyjJq5lAbQkANu62VE5I3isTgfn3/SFWlW4SK8scAYu+vWaPOK5VT4ZJA6Tsr8P4dAwcEDcCa7B5Id+pqiLCAocYhomlQFo/PZ4hzVPus4iGpg8ZbYAGVe3g=
X-Gm-Message-State: AOJu0Ywu6CNmM+pEZ03YWmxBvT3oRhGhK33Zz/4eK266dxNqbOhdnXFO
	pA+601wkGrbpe+Gt4JU3HHw8J/SSOiUXweZu6SJ7tz4mAGRrop9v
X-Google-Smtp-Source: AGHT+IGeAc3WdegYMc0Mx5MrWrXzd451ZIZm/yAoTLvtjgaxjUYBHwS/1UOR//L9zLk8emheL+QD3w==
X-Received: by 2002:a17:903:2449:b0:1f7:3332:65d9 with SMTP id d9443c01a7336-1f9aa3afacbmr3944675ad.9.1718731859905;
        Tue, 18 Jun 2024 10:30:59 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855ee8004sm100201725ad.121.2024.06.18.10.30.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 10:30:58 -0700 (PDT)
Message-ID: <c2803eed-b4f4-44cf-a7f7-9557d05e798e@roeck-us.net>
Date: Tue, 18 Jun 2024 10:30:56 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/9] Add Mule MFD support
To: Quentin Schulz <quentin.schulz@cherry.de>,
 Farouk Bouabid <farouk.bouabid@cherry.de>, Jean Delvare <jdelvare@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Peter Rosin <peda@axentia.se>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240618-dev-mule-i2c-mux-v4-0-5462d28354c8@cherry.de>
 <fdeea79f-4568-4e70-9b49-0c02abc91170@roeck-us.net>
 <4f92528b-8311-4c0b-998b-f0221d7bd474@cherry.de>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <4f92528b-8311-4c0b-998b-f0221d7bd474@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_103101_027767_C30F2BEA 
X-CRM114-Status: GOOD (  21.08  )
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

T24gNi8xOC8yNCAwOTo1MSwgUXVlbnRpbiBTY2h1bHogd3JvdGU6Cj4gSGkgR3VlbnRlciwKPiAK
PiBPbiA2LzE4LzI0IDY6MjkgUE0sIEd1ZW50ZXIgUm9lY2sgd3JvdGU6Cj4+IE9uIDYvMTgvMjQg
MDk6MDYsIEZhcm91ayBCb3VhYmlkIHdyb3RlOgo+Pj4gTXVsZSBpcyBhbiBNQ1UgdGhhdCBlbXVs
YXRlcyBhIHNldCBvZiBJMkMgZGV2aWNlcyB3aGljaCBhcmUgcmVhY2hhYmxlCj4+PiB0aHJvdWdo
IGFuIEkyQy1tdXguCj4+Pgo+Pj4gVGhlIG11eCBhbmQgYW1jNjgyMSBjb21iaW5lZCBtYWtlIHRo
ZSBNdWxlIG11bHRpLWZ1bmN0aW9uIGRldmljZSAoQDB4MTgpCj4+Pgo+Pgo+PiBJIGRvbid0IHRo
aW5rIHRoYXQgaXMgYXBwcm9wcmlhdGUuIFRob3NlIGRldmljZXMgc2hvdWxkIGFsbCBoYXZlIHNl
cGFyYXRlCj4+IGRldmljZXRyZWUgZW50cmllcyBhbmQgYmUgbW9kZWxlZCBhcyBpbmRpdmlkdWFs
IGkyYyBkZXZpY2VzLgo+Pgo+IAo+IEkgdGhpbmsgdGhlcmUgaXMgYSBtaXN1bmRlcnN0YW5kaW5n
IGFyb3VuZCB0aGUgd29yZGluZy4gVGhleSBhbGwgaGF2ZSBzZXBhcmF0ZSBkZXZpY2V0cmVlIGVu
dHJpZXMgYW5kIHRoZXkgYWxsIGFyZSBpbmRpdmlkdWFsIGkyYyBkZXZpY2VzIChmcm9tIHRoZSBQ
b1Ygb2YgdGhlIGtlcm5lbCwgdGhleSBhbGwgYXJlIGVtdWxhdGVkIHdpdGhpbiB0aGUgc2FtZSBN
Q1UpLgo+IAo+IC0gQU1DNjgyMSBvbiBhZGRyZXNzIDB4MTggZm9yIHJlZ2lzdGVycyBmcm9tIDB4
MDAgdG8gMHhmZS4KPiAtIE11eCAocGFnaW5nLCBob3dldmVyIHlvdSB3YW50IHRvIGNhbGwgaXQp
IG9uIGFkZHJlc3MgMHgxOCBmb3IgcmVnaXN0ZXIgMHhmZi4KPiAKPiBOb3RlIHRoYXQgQU1DNjgy
MSBpcyAqKmVtdWxhdGVkKiogaW4gdGhlIE1DVSBzbyB0aGlzIGlzIG5vdCBzb21lIEhXIHRyaWNr
ZXJ5IGhlcmUuCj4gCj4gVGhpcyBNQ1UgYWxzbyBlbXVsYXRlcyBJU0wxMjA4IG9uIDB4NmYsIGFz
IHdlbGwgYXMgYSBQV00gY29udHJvbGxlciAobWVyZ2UgcmVxdWVzdCBwZW5kaW5nKSBhbmQgdHdv
IHNtYWxsIEFUMjQgInByb3RvY29sIiBFRVBST01zLCBvbiB0aGF0IHNhbWUgYWRkcmVzcy4gVGhv
c2UgYXJlIGJlaGluZCBhIHBhZ2luZy9tdXhpbmcgbWVjaGFuaXNtLiBZb3UgYWNjZXNzIElTTDEy
MDggdGhyb3VnaCBwYWdlIDAsIFBXTSBjb250cm9sbGVyIHRocm91Z2ggcGFnZSAxLCBldGMuLi4K
PiAKPiBTbyBiYXNpY2FsbHksIHRoZSBwb2ludCBpczoKPiAtIDB4MTggb24gaTJjIGlzIG5vdyBN
RkQgTXVsZQo+ICDCoCAtIHR3byBwbGF0Zm9ybSBkZXZpY2VzIGJlaGluZCBNRkQgPSBBTUM2ODIx
IChyZWcgMHgwMCB0byAweGZlKSArIE11eCAocmVnIDB4ZmYpCj4gLSAweDZmIGZvciBkZXZpY2Vz
ICJiZWhpbmQiIHRoZSBNdXgKPiAgwqAgLSBwYWdlIDAgZm9yIGRldmljZSBiZWhpbmQgYWRhcHRl
ciAwCj4gIMKgIC0gcGFnZSAxIGZvciBkZXZpY2UgYmVoaW5kIGFkYXB0ZXIgMQo+ICDCoCAtIC4u
Lgo+IAo+IEFsbCBvZiB0aGUgYWJvdmUgYXJlIHBhcnQgb2YgdGhlIHNhbWUgTUNVLgo+IAo+IE11
bGUgTUZEIGlzIGEgc2ltcGxlLW1mZC1pMmMgZGV2aWNlIHdpdGggaXRzIG93biBkZXZpY2V0cmVl
IGVudHJ5Lgo+IENoaWxkIG5vZGVzIG9mIHRoZSBNdWxlIE1GRCBhcmUgQU1DNjgyMSBhcyBhIHBs
YXRmb3JtIGRldmljZSAoYnV0IG9wZXJhdGVzIG92ZXIgaTJjKSBhbmQgTXVsZSBNdXguIFRoYXQn
cyB3aGF0IHdhcyBtZWFudCBhcyAiVGhlIG11eCBhbmQgYW1jNjgyMSBjb21iaW5lZCBtYWtlIHRo
ZSBNdWxlIG11bHRpLWZ1bmN0aW9uIGRldmljZSAoQDB4MTgpIi4KPiAKPiBUaGUgTXVsZSBNdXgg
dGhlbiBjcmVhdGVzIE4gaTJjIGFkYXB0ZXJzIHJlcHJlc2VudGluZyB0aGUgbXV4L3BhZ2VzLCBh
bGwgb2YgdGhvc2UgYmVpbmcgcmVwcmVzZW50ZWQgaW4gRFQuIEVhY2ggb2YgdGhvc2UgaGF2ZSBv
bmUgZGV2aWNlIG9uIGFkZHJlc3MgMHg2ZiwgYWxsIHJlcHJlc2VudGVkIGluIERUIGFzIHdlbGwu
Cj4gCj4gTm90aGluZyBoaWRkZW4gb3IgaGFyZGNvZGVkLCBldmVyeXRoaW5nIGluIERULgo+IAo+
IERpZCBJIG1pc3Mgc29tZXRoaW5nIGhlcmU/Cj4gCgpJZiBpdCBpcyBwcm9wZXJseSBkZWZpbmVk
IGluIGRldmljZXRyZWUsIHRoZSBlbXVsYXRlZCBBTUM2ODIxIHNob3VsZCBiZQphbiBpMmMgZGV2
aWNlLCBwb3NzaWJseSBzaXR0aW5nIGJlaGluZCBhbiBpMmMgbXVsdGlwbGV4ZXIsIG5vdCBhCnBs
YXRmb3JtIGRldmljZS4KCkd1ZW50ZXIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
