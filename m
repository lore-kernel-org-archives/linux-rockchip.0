Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B37C0CFC273
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 08:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0W29ZxHyvkGZCpc9hPwo9BR7+9pzNXbNb503prKJUg=; b=r+Is0cn2NMJ+Sz
	xJ0RGHBgsncNYouRztIG6Jlyr/NQX2kuD5nniSUAmSyo5OoNBP34l0R+s6HSFbIkvuZblq4S20D4F
	1oeWZ/6gI0p0WUdWljd1rdk/KjmNbSvNFX+Od4ItfL3gbGNllQ5nr8WDsQ5OcryVPvaCLj2x5kIxX
	hXcFxholuoZeiTzn97tWdfpMIn2GilcV8FB3yFWDL4GIfhoRGH9kZnpjS5jojCsqePpvxrAABH8HW
	Jm1+7O4sI1MdkkuCkyaVjIDNAtfUBMQWASbjS3P5HqBGXLF60NKFIv5HLvFWZFYu0IgwW5a70Xxj5
	LeZlGqdt/rAJ2d6wbBPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0cTn-00000007QFz-3crc;
	Tue, 15 Oct 2024 08:00:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bWA-00000007Hms-49Dg;
	Tue, 15 Oct 2024 06:58:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=8O8a/W9BX22xkR7baqN01A7a4KYNQYX8/DGiUlDM8bs=; b=TLkNeuUqew/xdLgmvhpEU0PrQS
	RIRItU1nCFBfhCzP+375gsFP8vU5g/UDem2KX5Q+MFF1EfAO34TGwWl1SDSKQKIkQlSTeXoVqvE6z
	i4B5GZxMZtkwZaaU/cCRAKguFlBiIVj4CJXN20yZ7IFYIDuoRYvQA5tQamLlJgbC9NJxU1BMXw8DL
	wPBLfaewYdv4/kXWxADYQlZE5NDT+35Y9xyrQgLAiJ+m5QLdL63wD476uO1LXNjxy2nDsvvZZdHtL
	jygnoRDpsMnKmHDaZj9tFauTIl2kTfvv/icIfH+fB5GSv4U5bkByHfkKtrLs41yCBpNCYQ+UeE8vg
	4V6l+8/A==;
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bW6-00000006Uqs-0m1L;
	Tue, 15 Oct 2024 06:58:52 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-71e49d5deeeso98718b3a.0;
        Mon, 14 Oct 2024 23:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728975526; x=1729580326; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8O8a/W9BX22xkR7baqN01A7a4KYNQYX8/DGiUlDM8bs=;
        b=GsRuWJfM7vVD5frW1MHjGUabPwQ9PY2D35dCfR3st96wvxDe562sbn2bdQ+fQewG6l
         OGVeD34484891kPORavVtwbIA3uc0TC/OusPF0vJo3QZ/k8XOm6PUcEFLToeLbhAlQbh
         P4Km4WXZouJ7PNjszUV0vEV7hl65p2qL4vKm8Mir2IByGPOk3pRk8cgwtvvF0amEDU6g
         G3OWh8X6DZyQQ4fOI4Rfq1+AHFdXqUeTrIt3EXfT8nUwvM5lBgpTrjH0UK0G9RUqBs4d
         8A/rlzpTzUEvKvFT1cAHFkMzvd/2oV10KUk5ZCArggi/FDt7dQzWAqBJlbcyGy3SR1f9
         INmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728975526; x=1729580326;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8O8a/W9BX22xkR7baqN01A7a4KYNQYX8/DGiUlDM8bs=;
        b=Y8e043hP1YOKqMthCasV/XBiTtlbKR5oBUu6iKck4CMaXboaJS75aFiywZcu+UqyHh
         rdnFiVlSC3u+zwpLXcp23WWiqbwpOpa3hcWWPNEEmkps/QcYe64sSBGWoLOc/xPUOhd6
         0jUuhacmfF6IJWmICSkv3e6dzGF0qvuvaBs68pmxbN47eka60/1kYOLe+a2Z4OzWeyrO
         +FMCd9daVg3WpLgshQDvDp+8Mcy88RcM0ZYAuzvji71aiL/I2mZDhB9dAglVG/SdHfW0
         yuE4iv6LACErMJD2sYcpmUM4WI8uud7oh9tks/EFZXK/nJeM0u1RDAkUMBAX1asUVeoP
         SFTA==
X-Forwarded-Encrypted: i=1; AJvYcCVS6N9pZstNz0Sqfuig6Y3IVMyhqFJZXQSxWnBpq+UOtPs0/4CzEXGPoZCCfBkuioZJ2O78gwZfD5s4QPqGfns6@lists.infradead.org, AJvYcCVkAEtjfFe5tc+uVDyc4rGw91Eu89FyKoHQEvCA6xSH2ORH1KO+6i2YN+F+55aomrNj7BmXLjp1gyxe/vyBcts=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCGh6q3i7ZyPh8hQCe1pakIMS5h7JVjLONHqr0KTeQTLXZvBzw
	jhNZkT9+rmuMESL53ULy3Arg4bBOlTemQlXt47sGvvXErRhqJsB7
X-Google-Smtp-Source: AGHT+IEBqmxJcUAPwc0m9shaSmGmfnJw4762AWitMaevIA/PybZVcHiiqdG350ME7/zXk7SV5l8ICA==
X-Received: by 2002:a05:6a00:4b04:b0:71e:770d:2c00 with SMTP id d2e1a72fcca58-71e770d2fc9mr755063b3a.4.1728975526306;
        Mon, 14 Oct 2024 23:58:46 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7ea9c70590esm638195a12.70.2024.10.14.23.58.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2024 23:58:45 -0700 (PDT)
Message-ID: <31b9d876-3790-4427-a2d0-8e20192744eb@gmail.com>
Date: Tue, 15 Oct 2024 14:58:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: rockchip-naneng-combo: Support rk3576
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, Kever Yang <kever.yang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>
References: <20241015013351.4884-1-frawang.cn@gmail.com>
 <20241015013351.4884-2-frawang.cn@gmail.com> <1981070.PYKUYFuaPT@diego>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <1981070.PYKUYFuaPT@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_075850_792688_855FB10E 
X-CRM114-Status: GOOD (  22.36  )
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

SGkgSGVpa28sCgpPbiAyMDI0LzEwLzE1IDE0OjE1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBI
aSBGcmFuaywKPgo+IEFtIERpZW5zdGFnLCAxNS4gT2t0b2JlciAyMDI0LCAwMzozMzo1MSBDRVNU
IHNjaHJpZWIgRnJhbmsgV2FuZzoKPj4gRnJvbTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2Nr
LWNoaXBzLmNvbT4KPj4KPj4gcGh5MDogcGNpZSwgc2F0YQo+PiBwaHkxOiBwY2llLCBzYXRhLCB1
c2IzCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlw
cy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFdpbGxpYW0gV3UgPHdpbGxpYW0ud3VAcm9jay1jaGlw
cy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEZyYW5rIFdhbmcgPGZyYW5rLndhbmdAcm9jay1jaGlw
cy5jb20+Cj4+IC0tLQo+PiAgIC4uLi9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJw
aHkuYyAgICB8IDIwMiArKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgMjAy
IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLW5hbmVuZy1jb21icGh5LmMKPj4gaW5kZXggMGE5OTg5ZTQxMjM3Li40YzQxMzE3YTgw
NDEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5l
bmctY29tYnBoeS5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1u
YW5lbmctY29tYnBoeS5jCj4+IEBAIC01ODQsNiArNTg1LDIwMyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHJvY2tjaGlwX2NvbWJwaHlfY2ZnIHJrMzU2OF9jb21icGh5X2NmZ3MgPSB7Cj4+ICAgCS5j
b21icGh5X2NmZwk9IHJrMzU2OF9jb21icGh5X2NmZywKPj4gICB9Owo+PiAgIAo+PiArc3RhdGlj
IGludCByazM1NzZfY29tYnBoeV9jZmcoc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfcHJpdiAqcHJp
dikKPj4gK3sKPj4gKwljb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfY29tYnBoeV9ncmZjZmcgKmNmZyA9
IHByaXYtPmNmZy0+Z3JmY2ZnOwo+PiArCXVuc2lnbmVkIGxvbmcgcmF0ZTsKPj4gKwo+PiArCXN3
aXRjaCAocHJpdi0+dHlwZSkgewo+PiArCWNhc2UgUEhZX1RZUEVfUENJRToKPj4gKwkJLyogU2V0
IFNTQyBkb3dud2FyZCBzcHJlYWQgc3BlY3RydW0gKi8KPj4gKwkJcm9ja2NoaXBfY29tYnBoeV91
cGRhdGVsKHByaXYsIEdFTk1BU0soNSwgNCksIEJJVCg0KSwgMHg3Yyk7Cj4gQ2FuIHdlIGdldCBj
b25zdGFudHMgZm9yIHRob3NlIG1hZ2ljIHZhbHVlcyBwbGVhc2U/CgpBaCBvZiBjYXVzZSwgSSB3
aWxsIGFtZW5kIHRoZW0gYW5kIHNlbmQgYSBuZXcgcGF0Y2guCgoKQmVzdCByZWdhcmRzLApGcmFu
awoKCj4gVGhlIGNvbWJvcGh5cyBmb3IgcmszNTY4IGFuZCByazM1ODggZG8gdXNlIGFjdHVhbCBj
b25zdGFudHMgdG8gYXQgbGVhc3QKPiBzb21ld2hhdCBkZXNjcmliZSB3aGF0IGhhcHBlbnMsIHNv
IGl0IHdvdWxkIGJlIHJlYWxseSBuaWNlIGZvciB0aGUgcmszNTc2Cj4gdG8gZG8gdGhpcyBhcyB3
ZWxsLgo+Cj4gU2FtZSBmb3IgdGhlIHJvY2tjaGlwX2NvbWJwaHlfdXBkYXRlbCBhbmQgb3RoZXIg
d3JpdGVsIGNhbGxzIGJlbG93Lgo+Cj4KPj4gKwkJcm9ja2NoaXBfY29tYnBoeV9wYXJhbV93cml0
ZShwcml2LT5waHlfZ3JmLCAmY2ZnLT5jb24wX2Zvcl9wY2llLCB0cnVlKTsKPj4gKwkJcm9ja2No
aXBfY29tYnBoeV9wYXJhbV93cml0ZShwcml2LT5waHlfZ3JmLCAmY2ZnLT5jb24xX2Zvcl9wY2ll
LCB0cnVlKTsKPj4gKwkJcm9ja2NoaXBfY29tYnBoeV9wYXJhbV93cml0ZShwcml2LT5waHlfZ3Jm
LCAmY2ZnLT5jb24yX2Zvcl9wY2llLCB0cnVlKTsKPj4gKwkJcm9ja2NoaXBfY29tYnBoeV9wYXJh
bV93cml0ZShwcml2LT5waHlfZ3JmLCAmY2ZnLT5jb24zX2Zvcl9wY2llLCB0cnVlKTsKPj4gKwkJ
YnJlYWs7Cj4+ICsJY2FzZSBQSFlfVFlQRV9VU0IzOgo+PiArCQkvKiBTZXQgU1NDIGRvd253YXJk
IHNwcmVhZCBzcGVjdHJ1bSAqLwo+PiArCQlyb2NrY2hpcF9jb21icGh5X3VwZGF0ZWwocHJpdiwg
R0VOTUFTSyg1LCA0KSwgQklUKDQpLCAweDdjKTsKPj4gKwo+PiArCQkvKiBFbmFibGUgYWRhcHRp
dmUgQ1RMRSBmb3IgVVNCMy4wIFJ4ICovCj4+ICsJCXJvY2tjaGlwX2NvbWJwaHlfdXBkYXRlbChw
cml2LCBHRU5NQVNLKDAsIDApLCBCSVQoMCksIDB4MzgpOwo+PiArCj4+ICsJCS8qIFNldCBQTEwg
S1ZDTyBmaW5lIHR1bmluZyBzaWduYWxzICovCj4+ICsJCXJvY2tjaGlwX2NvbWJwaHlfdXBkYXRl
bChwcml2LCBHRU5NQVNLKDQsIDIpLCBCSVQoMyksIDB4ODApOwo+PiArCj4+ICsJCS8qIFNldCBQ
TEwgTFBGIFIxIHRvIHN1X3RyaW1bMTA6N109MTAwMSAqLwo+PiArCQl3cml0ZWwoMHg0LCBwcml2
LT5tbWlvICsgKDB4YiA8PCAyKSk7Cj4+ICsKPj4gKwkJLyogU2V0IFBMTCBpbnB1dCBjbG9jayBk
aXZpZGVyIDEvMiAqLwo+PiArCQlyb2NrY2hpcF9jb21icGh5X3VwZGF0ZWwocHJpdiwgR0VOTUFT
Syg3LCA2KSwgQklUKDYpLCAweDE0KTsKPj4gKwo+PiArCQkvKiBTZXQgUExMIGxvb3AgZGl2aWRl
ciAqLwo+PiArCQl3cml0ZWwoMHgzMiwgcHJpdi0+bW1pbyArICgweDExIDw8IDIpKTsKPj4gKwo+
PiArCQkvKiBTZXQgUExMIEtWQ08gdG8gbWluIGFuZCBzZXQgUExMIGNoYXJnZSBwdW1wIGN1cnJl
bnQgdG8gbWF4ICovCj4+ICsJCXdyaXRlbCgweGYwLCBwcml2LT5tbWlvICsgKDB4YSA8PCAyKSk7
Cj4+ICsKPj4gKwkJLyogU2V0IFJ4IHNxdWVsY2ggaW5wdXQgZmlsbGVyIGJhbmR3aWR0aCAqLwo+
PiArCQl3cml0ZWwoMHgwZCwgcHJpdi0+bW1pbyArICgweDE0IDw8IDIpKTsKPj4gKwo+PiArCQly
b2NrY2hpcF9jb21icGh5X3BhcmFtX3dyaXRlKHByaXYtPnBoeV9ncmYsICZjZmctPnBpcGVfdHhj
b21wX3NlbCwgZmFsc2UpOwo+PiArCQlyb2NrY2hpcF9jb21icGh5X3BhcmFtX3dyaXRlKHByaXYt
PnBoeV9ncmYsICZjZmctPnBpcGVfdHhlbGVjX3NlbCwgZmFsc2UpOwo+PiArCQlyb2NrY2hpcF9j
b21icGh5X3BhcmFtX3dyaXRlKHByaXYtPnBoeV9ncmYsICZjZmctPnVzYl9tb2RlX3NldCwgdHJ1
ZSk7Cj4+ICsJCWJyZWFrOwo+PiArCWNhc2UgUEhZX1RZUEVfU0FUQToKPj4gKwkJLyogRW5hYmxl
IGFkYXB0aXZlIENUTEUgZm9yIFNBVEEgUnggKi8KPj4gKwkJcm9ja2NoaXBfY29tYnBoeV91cGRh
dGVsKHByaXYsIEdFTk1BU0soMCwgMCksIEJJVCgwKSwgMHgzOCk7Cj4+ICsKPj4gKwkJLyogU2V0
IHR4X3J0ZXJtID0gNTAgb2htIGFuZCByeF9ydGVybSA9IDQzLjUgb2htICovCj4+ICsJCXdyaXRl
bCgweDhGLCBwcml2LT5tbWlvICsgKDB4MDYgPDwgMikpOwo+PiArCj4+ICsJCXJvY2tjaGlwX2Nv
bWJwaHlfcGFyYW1fd3JpdGUocHJpdi0+cGh5X2dyZiwgJmNmZy0+Y29uMF9mb3Jfc2F0YSwgdHJ1
ZSk7Cj4+ICsJCXJvY2tjaGlwX2NvbWJwaHlfcGFyYW1fd3JpdGUocHJpdi0+cGh5X2dyZiwgJmNm
Zy0+Y29uMV9mb3Jfc2F0YSwgdHJ1ZSk7Cj4+ICsJCXJvY2tjaGlwX2NvbWJwaHlfcGFyYW1fd3Jp
dGUocHJpdi0+cGh5X2dyZiwgJmNmZy0+Y29uMl9mb3Jfc2F0YSwgdHJ1ZSk7Cj4+ICsJCXJvY2tj
aGlwX2NvbWJwaHlfcGFyYW1fd3JpdGUocHJpdi0+cGh5X2dyZiwgJmNmZy0+Y29uM19mb3Jfc2F0
YSwgdHJ1ZSk7Cj4+ICsJCXJvY2tjaGlwX2NvbWJwaHlfcGFyYW1fd3JpdGUocHJpdi0+cGlwZV9n
cmYsICZjZmctPnBpcGVfY29uMF9mb3Jfc2F0YSwgdHJ1ZSk7Cj4+ICsJCXJvY2tjaGlwX2NvbWJw
aHlfcGFyYW1fd3JpdGUocHJpdi0+cGlwZV9ncmYsICZjZmctPnBpcGVfY29uMV9mb3Jfc2F0YSwg
dHJ1ZSk7Cj4+ICsJCWJyZWFrOwo+PiArCWRlZmF1bHQ6Cj4+ICsJCWRldl9lcnIocHJpdi0+ZGV2
LCAiaW5jb21wYXRpYmxlIFBIWSB0eXBlXG4iKTsKPj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsJ
fQo+PiArCj4+ICsJcmF0ZSA9IGNsa19nZXRfcmF0ZShwcml2LT5yZWZjbGspOwo+PiArCj4+ICsJ
c3dpdGNoIChyYXRlKSB7Cj4+ICsJY2FzZSBSRUZfQ0xPQ0tfMjRNSHo6Cj4+ICsJCXJvY2tjaGlw
X2NvbWJwaHlfcGFyYW1fd3JpdGUocHJpdi0+cGh5X2dyZiwgJmNmZy0+cGlwZV9jbGtfMjRtLCB0
cnVlKTsKPj4gKwkJaWYgKHByaXYtPnR5cGUgPT0gUEhZX1RZUEVfVVNCMyB8fCBwcml2LT50eXBl
ID09IFBIWV9UWVBFX1NBVEEpIHsKPj4gKwkJCS8qIFNldCBzc2NfY250Wzk6MF09MDEwMTExMTEw
MSAmIDMxLjVLSHogKi8KPj4gKwkJCXJvY2tjaGlwX2NvbWJwaHlfdXBkYXRlbChwcml2LCBHRU5N
QVNLKDcsIDYpLCBCSVQoNiksIDB4ZSA8PCAyKTsKPj4gKwo+PiArCQkJcm9ja2NoaXBfY29tYnBo
eV91cGRhdGVsKHByaXYsIEdFTk1BU0soNywgMCksIDB4NWYsIDB4ZiA8PCAyKTsKPj4gKwkJfSBl
bHNlIGlmIChwcml2LT50eXBlID09IFBIWV9UWVBFX1BDSUUpIHsKPj4gKwkJCS8qIFBMTCBLVkNP
IHR1bmluZyBmaW5lICovCj4+ICsJCQlyb2NrY2hpcF9jb21icGh5X3VwZGF0ZWwocHJpdiwgR0VO
TUFTSyg0LCAyKSwgMHg0IDw8IDIsIDB4MjAgPDwgMik7Cj4+ICsKPj4gKwkJCS8qIFNldCB1cCBy
eF90cmltICovCj4+ICsJCQl3cml0ZWwoMHgwLCBwcml2LT5tbWlvICsgKDB4MWIgPDwgMikpOwo+
PiArCj4+ICsJCQkvKiBTZXQgdXAgc3VfdHJpbTogVDBfMSAqLwo+PiArCQkJd3JpdGVsKDB4OTAs
IHByaXYtPm1taW8gKyAoMHhhIDw8IDIpKTsKPj4gKwkJCXdyaXRlbCgweDAyLCBwcml2LT5tbWlv
ICsgKDB4YiA8PCAyKSk7Cj4+ICsJCQl3cml0ZWwoMHg1NywgcHJpdi0+bW1pbyArICgweGQgPDwg
MikpOwo+PiArCj4+ICsJCQl3cml0ZWwoMHg1ZiwgcHJpdi0+bW1pbyArICgweGYgPDwgMikpOwo+
IFRoaXMgZG9lcyBpbmNsdWRlcyBib3RoIHRoZSB2YWx1ZSBhcyB3ZWxsIGFzIHRoZSByZWdpc3Rl
ciBhZGRyZXNzZXMsCj4gYmVjYXVzZSBhIGhleC12YWx1ZSB3aXRoIGEgYml0IHNoaWZ0IG1ha2Vz
IHRoYXQgZXZlbiBsZXNzIHJlYWRhYmxlLgo+Cj4gVGhhbmtzIGEgbG90Cj4gSGVpa28KPgo+Cj4+
ICsJCX0KPj4gKwkJYnJlYWs7Cj4+ICsJY2FzZSBSRUZfQ0xPQ0tfMjVNSHo6Cj4+ICsJCXJvY2tj
aGlwX2NvbWJwaHlfcGFyYW1fd3JpdGUocHJpdi0+cGh5X2dyZiwgJmNmZy0+cGlwZV9jbGtfMjVt
LCB0cnVlKTsKPj4gKwkJYnJlYWs7Cj4+ICsJY2FzZSBSRUZfQ0xPQ0tfMTAwTUh6Ogo+PiArCQly
b2NrY2hpcF9jb21icGh5X3BhcmFtX3dyaXRlKHByaXYtPnBoeV9ncmYsICZjZmctPnBpcGVfY2xr
XzEwMG0sIHRydWUpOwo+PiArCQlpZiAocHJpdi0+dHlwZSA9PSBQSFlfVFlQRV9QQ0lFKSB7Cj4+
ICsJCQkvKiBnYXRlX3R4X3Bja19zZWwgbGVuZ3RoIHNlbGVjdCB3b3JrIGZvciBMMVNTICovCj4+
ICsJCQl3cml0ZWwoMHhjMCwgcHJpdi0+bW1pbyArIDB4NzQpOwo+PiArCj4+ICsJCQkvKiBQTEwg
S1ZDTyB0dW5pbmcgZmluZSAqLwo+PiArCQkJcm9ja2NoaXBfY29tYnBoeV91cGRhdGVsKHByaXYs
IEdFTk1BU0soNCwgMiksIDB4NCA8PCAyLCAweDIwIDw8IDIpOwo+PiArCj4+ICsJCQkvKiBTZXQg
dXAgcnhfdHJpbTogUExMIExQRiBDMSA4NXBmIFIxIDEuMjVrb2htICovCj4+ICsJCQl3cml0ZWwo
MHg0YywgcHJpdi0+bW1pbyArICgweDFiIDw8IDIpKTsKPj4gKwo+PiArCQkJLyogU2V0IHVwIHN1
X3RyaW06IFQzX1AxIDY1MG12ICovCj4+ICsJCQl3cml0ZWwoMHg5MCwgcHJpdi0+bW1pbyArICgw
eGEgPDwgMikpOwo+PiArCQkJd3JpdGVsKDB4NDMsIHByaXYtPm1taW8gKyAoMHhiIDw8IDIpKTsK
Pj4gKwkJCXdyaXRlbCgweDg4LCBwcml2LT5tbWlvICsgKDB4YyA8PCAyKSk7Cj4+ICsJCQl3cml0
ZWwoMHg1NiwgcHJpdi0+bW1pbyArICgweGQgPDwgMikpOwo+PiArCQl9IGVsc2UgaWYgKHByaXYt
PnR5cGUgPT0gUEhZX1RZUEVfU0FUQSkgewo+PiArCQkJLyogZG93bndhcmQgc3ByZWFkIHNwZWN0
cnVtICs1MDBwcG0gKi8KPj4gKwkJCXJvY2tjaGlwX2NvbWJwaHlfdXBkYXRlbChwcml2LCBHRU5N
QVNLKDcsIDQpLCAweDUwLCAweDFmIDw8IDIpOwo+PiArCj4+ICsJCQkvKiBzc2MgcHBtIGFkanVz
dCB0byAzNTAwcHBtICovCj4+ICsJCQlyb2NrY2hpcF9jb21icGh5X3VwZGF0ZWwocHJpdiwgR0VO
TUFTSygzLCAwKSwgMHg3LCAweDkgPDwgMik7Cj4+ICsJCX0KPj4gKwkJYnJlYWs7Cj4+ICsJZGVm
YXVsdDoKPj4gKwkJZGV2X2Vycihwcml2LT5kZXYsICJVbnN1cHBvcnRlZCByYXRlOiAlbHVcbiIs
IHJhdGUpOwo+PiArCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwl9Cj4+ICsKPj4gKwlpZiAocHJpdi0+
ZXh0X3JlZmNsaykgewo+PiArCQlyb2NrY2hpcF9jb21icGh5X3BhcmFtX3dyaXRlKHByaXYtPnBo
eV9ncmYsICZjZmctPnBpcGVfY2xrX2V4dCwgdHJ1ZSk7Cj4+ICsJCWlmIChwcml2LT50eXBlID09
IFBIWV9UWVBFX1BDSUUgJiYgcmF0ZSA9PSBSRUZfQ0xPQ0tfMTAwTUh6KSB7Cj4+ICsJCQl3cml0
ZWwoMHgxMCwgcHJpdi0+bW1pbyArICgweDIwIDw8IDIpKTsKPj4gKwo+PiArCQkJd3JpdGVsKDB4
MGMsIHByaXYtPm1taW8gKyAoMHgxYiA8PCAyKSk7Cj4+ICsKPj4gKwkJCS8qIFNldCB1cCBzdV90
cmltOiBUM19QMSA2NTBtdiAqLwo+PiArCQkJd3JpdGVsKDB4OTAsIHByaXYtPm1taW8gKyAoMHhh
IDw8IDIpKTsKPj4gKwkJCXdyaXRlbCgweDQzLCBwcml2LT5tbWlvICsgKDB4YiA8PCAyKSk7Cj4+
ICsJCQl3cml0ZWwoMHg4OCwgcHJpdi0+bW1pbyArICgweGMgPDwgMikpOwo+PiArCQkJd3JpdGVs
KDB4NTYsIHByaXYtPm1taW8gKyAoMHhkIDw8IDIpKTsKPj4gKwkJfQo+PiArCX0KPj4gKwo+PiAr
CWlmIChwcml2LT5lbmFibGVfc3NjKSB7Cj4+ICsJCXJvY2tjaGlwX2NvbWJwaHlfdXBkYXRlbChw
cml2LCBHRU5NQVNLKDQsIDQpLCBCSVQoNCksIDB4NyA8PCAyKTsKPj4gKwo+PiArCQlpZiAocHJp
di0+dHlwZSA9PSBQSFlfVFlQRV9QQ0lFICYmIHJhdGUgPT0gUkVGX0NMT0NLXzI0TUh6KSB7Cj4+
ICsJCQkvKiBYaW4yNE0gVDBfMSA2NTBtViAqLwo+PiArCQkJd3JpdGVsKDB4MDAsIHByaXYtPm1t
aW8gKyAoMHgxMCA8PCAyKSk7Cj4+ICsJCQl3cml0ZWwoMHgzMiwgcHJpdi0+bW1pbyArICgweDEx
IDw8IDIpKTsKPj4gKwkJCXdyaXRlbCgweDAwLCBwcml2LT5tbWlvICsgKDB4MWIgPDwgMikpOwo+
PiArCQkJd3JpdGVsKDB4OTAsIHByaXYtPm1taW8gKyAoMHgwYSA8PCAyKSk7Cj4+ICsJCQl3cml0
ZWwoMHgwMiwgcHJpdi0+bW1pbyArICgweDBiIDw8IDIpKTsKPj4gKwkJCXdyaXRlbCgweDA4LCBw
cml2LT5tbWlvICsgKDB4MGMgPDwgMikpOwo+PiArCQkJd3JpdGVsKDB4NTcsIHByaXYtPm1taW8g
KyAoMHgwZCA8PCAyKSk7Cj4+ICsJCQl3cml0ZWwoMHg0MCwgcHJpdi0+bW1pbyArICgweDBlIDw8
IDIpKTsKPj4gKwkJCXdyaXRlbCgweDVmLCBwcml2LT5tbWlvICsgKDB4MGYgPDwgMikpOwo+PiAr
CQkJd3JpdGVsKDB4MTAsIHByaXYtPm1taW8gKyAoMHgyMCA8PCAyKSk7Cj4+ICsJCX0KPj4gKwl9
Cj4+ICsKPj4gKwlyZXR1cm4gMDsKPj4gK30KPgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
