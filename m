Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20DC3CF9C69
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Sep 2024 01:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCW8Ayz7Vk7Esuitz2zP+YMHxD9Nghtwd51nV8CgCug=; b=3LWxdHvBT7H+1C
	eGHKSxq/6o6vKNu7FKwhkF1YR8By59WRVjT3HV5hOaJ+jfuJC2GAOuISI1zycrv0AFTtl1wVV9Bpi
	ExBznCb9960Obr1EGOevdu4Y7jB13gMV7Hm+YxzG2hnWgDnAxChfPhwc6ou2waeV8baoHQ5La+r0g
	o08W5g6C5g8Jc3rurkBitZwV89eU5TTQszyQF9n+OH5XEoF2GxMC8sDyECDEYIRnnEWBJyJxCc9QU
	uMudX4o7mzsjbqa381BOByi4lDxEmFXWE8y7dHLJOt/d6cBTcogYp6O2Fa6QHsgTQ1wJa73KCAASb
	1s9SvNOQSq0uzADPQ5Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stH4M-00000003lFC-27LZ;
	Wed, 25 Sep 2024 01:43:54 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stH3C-00000003l7X-25mE;
	Wed, 25 Sep 2024 01:42:43 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2d8a9a15a7fso1171234a91.0;
        Tue, 24 Sep 2024 18:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727228561; x=1727833361; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GcWVN5jq5I86+F+azhdXxblU0W/zeOeflgS1enKCNA8=;
        b=YUIJf/D7kHUC76woMSGHOWRiFQLxeM99uSePRwEkm0zrGOZxyDEBHwYI4yxl+J4Sxl
         vsFjFTUnFiHe6ZrENd3XERNAjIaW3Rh3ATmC17K2q3S2fEKD4inmjk5WVcLBd+Zfyqxd
         VZR7LPkXAP2C8sjdIHKbHPFRq08pQKofMXmI4FkageEBgPRxK6hpE31lqZxywsFy7QxU
         fHHFZKK9wSKTGhcZzSakK9DQETJULhfJe9Uc9WEa7KqaDnuktwk6s6Rb2qgSok6ByI8n
         kkHPuPX660mxs7QO9qtCh+UUlPIhF5lL/s1eEdoOLBumeNFaUQksHbg+f3dShSaE04af
         P6nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727228561; x=1727833361;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GcWVN5jq5I86+F+azhdXxblU0W/zeOeflgS1enKCNA8=;
        b=aQj6+aN2jpEnfLdVb9AfYL5sKunULQ6P7Ek9yiHDGE79UL0f23AxCKOjV9VduPdK+S
         ZM3KXVMaCu/qgaBaE5sL8mAz/IvXO2FLeIS/unsBlZ+UZu0kgpTiK02z6hUzgIlEqLWU
         JLcxrllyT3vvA51ub1yJiFaiY6HzQQj/4xO27LuM/d5xMQc26A9pFhljQce0nBNvO5g3
         uSHASlO6ITBPrO7Wox6JSlyuvYHxxye/rPyiolq5AILqldk/5+GHH/1EeEp9DBu/1c9W
         fmJ03JuARZXXLaT4Fzq6glZjK9HDhHGfqyOR601Rx+NXaZWSgHkAo7c0zojZ9E+fqcDb
         m6uw==
X-Forwarded-Encrypted: i=1; AJvYcCW/WMKr5qfe6fP0T9k+WBJaaccLaTV/vYKZmg6lcmdphkswUftpVtswx2lZ1aqcOdbH+rVzPfyVBZbA+TJEBTs=@lists.infradead.org, AJvYcCWRh2wLd7tnL8cpx7570IFu0G96WbtaoAFPWIUIBquN3+sBJU5F8u2rayCbyPBpR1S73hljv/cSMxAjm1zEnaoK@lists.infradead.org
X-Gm-Message-State: AOJu0YzPKZdI78k4EFiyCQnM1ERQAL81MNe3JzrrqR0/5FGURJz+f7eS
	KjaJ+OyMENqB1TmfQXXC23yYBnGl703b54+c5XTThJ+yZXhCoxB0
X-Google-Smtp-Source: AGHT+IFqIBT66TkyL0J2QfmtEOX6F9Je5mvlnxVw4zEkidcGIvNVdjtGkMa+udbesxpclhLKmHCHiA==
X-Received: by 2002:a17:903:110c:b0:207:14b3:10f0 with SMTP id d9443c01a7336-20afc6427e0mr6506155ad.14.1727228561153;
        Tue, 24 Sep 2024 18:42:41 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20af18572bdsm15396675ad.248.2024.09.24.18.42.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2024 18:42:40 -0700 (PDT)
Message-ID: <29d80d30-dcbf-4fe1-b7aa-3f8c46fee714@gmail.com>
Date: Wed, 25 Sep 2024 09:42:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: rockchip: inno-usb2: Add usb2 phys support
 for rk3576
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
References: <20240924085510.20863-1-frawang.cn@gmail.com>
 <20240924085510.20863-2-frawang.cn@gmail.com> <15288441.JCcGWNJJiE@phil>
From: frawang <frawang.cn@gmail.com>
In-Reply-To: <15288441.JCcGWNJJiE@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_184242_558470_E544C54D 
X-CRM114-Status: GOOD (  20.69  )
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

SGkgSGVpa28sCgpPbiAyMDI0LzkvMjQgMTg6MDEsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEFt
IERpZW5zdGFnLCAyNC4gU2VwdGVtYmVyIDIwMjQsIDEwOjU1OjEwIENFU1Qgc2NocmllYiBGcmFu
ayBXYW5nOgo+PiBGcm9tOiBXaWxsaWFtIFd1IDx3aWxsaWFtLnd1QHJvY2stY2hpcHMuY29tPgo+
Pgo+PiBUaGUgUkszNTc2IFNvQyBoYXMgdHdvIGluZGVwZW5kZW50IFVTQjIuMCBQSFlzLCBhbmQK
Pj4gZWFjaCBQSFkgaGFzIG9uZSBwb3J0Lgo+IENhbiB5b3UgcGxlYXNlIHNwbGl0IHRoZSBjb250
ZW50IGludG8gImNvbnZlcnRpbmcgdG8gY2xrX2J1bGsiIChzZWUKPiBhZGRpdGlvbmFsIGNvbW1l
bnQgYmVsb3cpIGFuZCAiYWRkIHJrMzU3NiIgcGxlYXNlPwo+Cj4gVGhhdCB3b3VsZCBtYWtlIHRo
ZSBwYXRjaCBhIGxvdCBjbGVhbmVyLgoKT0ssIEkgc2hhbGwgYW1lbmQgaW4gdGhlIG5leHQgcGF0
Y2guCgo+Cj4+IEBAIC0zNzYsNiArMzc4LDcgQEAgcm9ja2NoaXBfdXNiMnBoeV9jbGs0ODBtX3Jl
Z2lzdGVyKHN0cnVjdCByb2NrY2hpcF91c2IycGh5ICpycGh5KQo+PiAgIHsKPj4gICAJc3RydWN0
IGRldmljZV9ub2RlICpub2RlID0gcnBoeS0+ZGV2LT5vZl9ub2RlOwo+PiAgIAlzdHJ1Y3QgY2xr
X2luaXRfZGF0YSBpbml0Owo+PiArCXN0cnVjdCBjbGsgKnJlZmNsayA9IG9mX2Nsa19nZXRfYnlf
bmFtZShub2RlLCAicGh5Y2xrIik7Cj4gRG9lc24ndCB0aGlzIGNyZWF0ZSBhbiBpbWJhbGFuY2Ug
LSB3aXRoIHRoZSBtaXNzaW5nIHB1dD8KPiBJIHRoaW5rIGlkZWFsbHkganVzdCBkZWZpbmUgY2xr
X2J1bGtfZGF0YSBzdHJ1Y3RzIGZvciB0aGUKPiAxLWNsb2NrIGFuZCAzLWNsb2NrIHZhcmlhbnQs
IGF0dGFjaCB0aGF0IHRvIHRoZSBkZXZpY2UtZGF0YQo+IGFuZCB0aGVuIHVzZSB0aGUgcmVndWxh
ciBkZXZtX2Nsa19idWxrX2dldCA/Cj4KPiBUaGF0IHdheSB5b3UgY2FuIHRoZW4gcmV0cmlldmUg
dGhlIGNsb2NrIGZyb20gdGhhdCBzdHJ1Y3Q/CgpIb3cgYWJvdXQga2VlcCB0aGUgY2xrX2J1bGtf
ZGF0YSBhbmQgbnVtX2Nsa3MgbWVtYmVyIGluIHJvY2tjaGlwX3VzYjJwaHkgCnN0cnVjdHMsIGFu
ZCByZXRyaWV2ZSB0aGUgY2xvY2sgYnkgImNsa3MuaWQiIGhlcmU/Ckp1c3QgbGlrZSB0aGUgZm9s
bG93aW5nIGNvZGVzLgoKQEAgLTM3OCw4ICszNzgsOSBAQCByb2NrY2hpcF91c2IycGh5X2NsazQ4
MG1fcmVnaXN0ZXIoc3RydWN0IApyb2NrY2hpcF91c2IycGh5ICpycGh5KQogwqB7CiDCoMKgwqDC
oMKgwqDCoCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBycGh5LT5kZXYtPm9mX25vZGU7CiDC
oMKgwqDCoMKgwqDCoCBzdHJ1Y3QgY2xrX2luaXRfZGF0YSBpbml0OwotwqDCoMKgwqDCoMKgIHN0
cnVjdCBjbGsgKnJlZmNsayA9IG9mX2Nsa19nZXRfYnlfbmFtZShub2RlLCAicGh5Y2xrIik7CivC
oMKgwqDCoMKgwqAgc3RydWN0IGNsayAqcmVmY2xrID0gTlVMTDsKIMKgwqDCoMKgwqDCoMKgIGNv
bnN0IGNoYXIgKmNsa19uYW1lOworwqDCoMKgwqDCoMKgIGludCBpOwogwqDCoMKgwqDCoMKgwqAg
aW50IHJldCA9IDA7CgogwqDCoMKgwqDCoMKgwqAgaW5pdC5mbGFncyA9IDA7CkBAIC0zODksNiAr
MzkwLDEzIEBAIHJvY2tjaGlwX3VzYjJwaHlfY2xrNDgwbV9yZWdpc3RlcihzdHJ1Y3QgCnJvY2tj
aGlwX3VzYjJwaHkgKnJwaHkpCiDCoMKgwqDCoMKgwqDCoCAvKiBvcHRpb25hbCBvdmVycmlkZSBv
ZiB0aGUgY2xvY2tuYW1lICovCiDCoMKgwqDCoMKgwqDCoCBvZl9wcm9wZXJ0eV9yZWFkX3N0cmlu
Zyhub2RlLCAiY2xvY2stb3V0cHV0LW5hbWVzIiwgJmluaXQubmFtZSk7CgorwqDCoMKgwqDCoMKg
IGZvciAoaSA9IDA7IGkgPCBycGh5LT5udW1fY2xrczsgaSsrKSB7CivCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGlmICghc3RybmNtcChycGh5LT5jbGtzW2ldLmlkLCAicGh5Y2xrIiwgNikp
IHsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZmNsayA9
IHJwaHktPmNsa3NbaV0uY2xrOworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgYnJlYWs7CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KK8KgwqDCoMKg
wqDCoCB9CisKCkJSLgpGcmFuawoKPgo+IFRoYW5rcwo+IEhlaWtvCj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
