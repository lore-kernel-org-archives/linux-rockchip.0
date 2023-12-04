Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E376EC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 20:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPcvEi4XfnvbbTplviRXq1qqKU0335IK3IziuylVkpg=; b=SDBGvrO5tcuY7X
	1MMVzhwN3Q5v95T1rPiKLCQm+JV331Cp3y+XPJjyS26NnFQfZg9Nrh3KmfkrEWaZCMJ7I7oAAtt7A
	EaEHEMtGqvMwkm1ujsJ56Yl81gnTO6swskE8ep4hsxGaLKuNhNXgH9ymHeFEeNDnA6Uw9Ve0ofnvh
	2KhpRr2/CwZEKNiorZKovSXnjne6etTiQOJVvQ+8HqCjLaqYb1rrrmt2brCpHo1ByJ4Pp99qF+bqe
	U5xXhMkwMhdrciwXBuFBaTghS58vNHyok8N0M+Xg7opYU3QiFxkT2w6qot4WI6i1kGe13axpqlw7s
	bbyk4dS7JfyH2nFChSRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAFVZ-005XtS-28;
	Mon, 04 Dec 2023 20:25:37 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAFVV-005Xsw-23;
	Mon, 04 Dec 2023 20:25:35 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c9f85eff28so29466301fa.3;
        Mon, 04 Dec 2023 12:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701721530; x=1702326330; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O4zwTB/miMPtSWCRzH5LYRAkGFmdPgzBkW3R45x59/A=;
        b=YoCTmZDVz146QDAH6wFrq0GHyeGSw2YwfZjawzjEldvMzYI0ssSZCvCFHrj34/zlGq
         CLgykG6go5zySMbAMQfS+O5EyeAyuBs0Cnl25BmU7fPpzQt0v2ouQ8dt7Tb/DcBYiEu8
         YFyyv6k2QnhO0OcXhOpDzbWMudWo39bHoJT2dwYEk8hgzEyWiGZZnslqQzlJndZWfjJd
         gH2E2w+sg2q9Wlnts9m08cDyA8Oq5exZJT0yjr5tYBG1gtgyP3Zcn6syhlv1H9e8FsQw
         8YyaCDbY9jPVMiuqFIGaDPio5uBBOqvNGT5Q2ADDEg6nYJww4OE9poqo3XlhBhI6niNk
         GHoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701721530; x=1702326330;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O4zwTB/miMPtSWCRzH5LYRAkGFmdPgzBkW3R45x59/A=;
        b=EdIqk84VSR05IEb1fq8poxDU2jMYWmINcK5uATK07s1iPyvd4BVh4dHQmQnu4aCt5X
         eapOGnshdn5G/FV+9a35IbU/zuYcCZldpQwmPhSc4eO6RnLE2BwIEqUQGubQP+9DyO6c
         xfx/3SNAfKVV1MQya9+xwpg8fK+1d3L6+tKUKJbuH5i5geKmpM4i9UwaNI8iPEdVmALc
         uGBpD3C4gHZy+NxJER32d6S+qIU9DmmnHWZBuWr3aLTFn6dHfyvZDoRKD2CIgRyF7Ek+
         KTgGpacqbyW8UQI8W58+nhJf3Z5caR+tOKU+Z8dUXmLVWBxA1cb388Dsjz9ak4vpDJgS
         eSIA==
X-Gm-Message-State: AOJu0Yz5IVxtjXTURUzTD7wtQtoDFPvMmlJykIxmYaeVYmG0K3RAq5Tt
	hKQGMpVbY5F1M8ah0CJCj4E=
X-Google-Smtp-Source: AGHT+IHghfI/wepGC1I4yJLErrynLmDWoNAeInmFJJD7a8PBE9bsHDIMPexR8UEVinabv/Xruuf+Ew==
X-Received: by 2002:a05:6512:2343:b0:50b:fcd6:cb10 with SMTP id p3-20020a056512234300b0050bfcd6cb10mr904083lfu.130.1701721529711;
        Mon, 04 Dec 2023 12:25:29 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id f4-20020a056402150400b0054c9df4317dsm180568edw.7.2023.12.04.12.25.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 12:25:29 -0800 (PST)
Message-ID: <bdda61be-8e02-36f5-6261-37d4b75278ba@gmail.com>
Date: Mon, 4 Dec 2023 21:25:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 3/3] ARM: dts: rockchip: rk3036-kylin: add
 hdmi-connector node
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, heiko@sntech.de, hjc@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
 <f5bc182b-f9b6-26a8-8649-19ce33e3c0e1@gmail.com>
 <447b1bde-584f-4eb4-8bfb-9abd3aa8b6fa@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <447b1bde-584f-4eb4-8bfb-9abd3aa8b6fa@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_122533_692323_CA954337 
X-CRM114-Status: GOOD (  16.01  )
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

SGkgQWxleCwgSGVpa28sCgpPbiAxMi80LzIzIDIwOjEyLCBBbGV4IEJlZSB3cm90ZToKPiBIaSBK
b2hhbiwKPiBBbSAwNC4xMi4yMyB1bSAxODo0MCBzY2hyaWViIEpvaGFuIEpvbmtlcjoKPj4gQWRk
IGhkbWktY29ubmVjdG9yIG5vZGUgdG8gY29tcGx5IHdpdGggdGhlIGlubm9faGRtaSBiaW5kaW5n
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPgo+
PiAtLS0KPj4gwqAgYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LWt5bGluLmR0cyB8
IDE3ICsrKysrKysrKysrKysrKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25z
KCspCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMwMzYt
a3lsaW4uZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LWt5bGluLmR0cwo+
PiBpbmRleCA2N2UxZTA0MTM5ZTcuLmEyMTMzMzNiZTAxMSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9h
cm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LWt5bGluLmR0cwo+PiArKysgYi9hcmNoL2FybS9i
b290L2R0cy9yb2NrY2hpcC9yazMwMzYta3lsaW4uZHRzCj4+IEBAIC0xMyw2ICsxMywxNyBAQCBt
ZW1vcnlANjAwMDAwMDAgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4NjAwMDAwMDAg
MHgyMDAwMDAwMD47Cj4+IMKgwqDCoMKgwqAgfTsKPj4KPj4gK8KgwqDCoCBoZG1pX2NvbjogaGRt
aS1jb24gewo+PiArwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJoZG1pLWNvbm5lY3RvciI7
Cj4+ICvCoMKgwqDCoMKgwqDCoCB0eXBlID0gImMiOwoKCj4gQWNjb3JkaW5nIHRvIFswXSwga3ls
aW4gaGFzIGFuIEEtVHlwZSBIRE1JIHBvcnQgLSBzbyB0aGlzIHNob3VsZCBiZQo+IMKgK8KgwqDC
oMKgwqDCoMKgIHR5cGUgPSAiYSI7Cj4gPiBbMF0gaHR0cDovL3JvY2tjaGlwLndpa2lkb3QuY29t
L2t5bGluCgpOb3Qgc3VyZSBmcm9tIHRoZSB0ZXh0IG9yIGRvIEkgbWlzcyBzb21ldGhpbmcuLi4K
CkkgZGlkIGxvb2sgYXQgdGhhdCBib2FyZCBwaWN0dXJlIGJlZm9yZSBzdWJtaXR0aW5nLgpDYW4g
YmUgd3JvbmcsIGJ1dCB0byBtZSBpdCBsb29rcyBhIHNtYWxsZXIgSERNSSBjb25uZWN0b3IuCgpE
b2VzIGFueW9uZSBoYXZlIGEgS3lsaW4gcGljdHVyZSBmcm9tIGEgZGlmZmVyZW50IGFuZ2xlPwpP
ciByZWZlcmVuY2UgZGVzaWduPwoKRWxzZSBhcHBseSBhbmQgZml4IGxhdGVyPyAoSGVpa28gPykK
TGV0IG1lIGtub3cuCgpKb2hhbgoKPiAKPiBSZWdhcmRzLAo+IEFsZXgKPj4gKwo+PiArwqDCoMKg
wqDCoMKgwqAgcG9ydCB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkbWlfY29uX2luOiBl
bmRwb2ludCB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBv
aW50ID0gPCZoZG1pX291dF9jb24+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+PiAr
wqDCoMKgwqDCoMKgwqAgfTsKPj4gK8KgwqDCoCB9Owo+PiArCj4+IMKgwqDCoMKgwqAgbGVkczog
Z3Bpby1sZWRzIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiZ3Bpby1sZWRz
IjsKPj4KPj4gQEAgLTExMCw2ICsxMjEsMTIgQEAgJmhkbWkgewo+PiDCoMKgwqDCoMKgIHN0YXR1
cyA9ICJva2F5IjsKPj4gwqAgfTsKPj4KPj4gKyZoZG1pX291dCB7Cj4+ICvCoMKgwqAgaGRtaV9v
dXRfY29uOiBlbmRwb2ludCB7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8
JmhkbWlfY29uX2luPjsKPj4gK8KgwqDCoCB9Owo+PiArfTsKPj4gKwo+PiDCoCAmaTJjMSB7Cj4+
IMKgwqDCoMKgwqAgY2xvY2stZnJlcXVlbmN5ID0gPDQwMDAwMD47Cj4+Cj4+IC0tIAo+PiAyLjM5
LjIKPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4+IExpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
