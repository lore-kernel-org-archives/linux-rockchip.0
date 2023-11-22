Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 421B0C072A2
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 08:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KCB/1m6b+lbarQZihZJy+bybtQDGoo5vnehc9HTMjM=; b=x2Si16G2JpJUVl
	dBg5OZfdQDctP31I2ocO4XyN68YNIS3JIfrwC9v8cvx/1bRx73RcnGxQmbdEgbpVW2pGzov1dSo/7
	wcivbo6WDs8hpDE1/ye6ajMJIT/zwd/UWPBcIWj7G6JQ4zA/iSzOc893P3gZ0oxIdrZ1BsXwq26tN
	QZTWtxsKs89n3t6hxSLsBnPRrHZQn1W+fbVu6cfmRJ5ZqU7lDuBpi6hQWJyvzVgpg7/BK2EAMtId2
	Dw3rDuKMHF+PxVFzZqx96Mu2/N7asEIZGvzTzqOSj5uGJHUq7D/OjTfOLpbdjEy5v5pNBesA77/tY
	0Jfj5587JVejIdzeMXUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5iEU-00104G-2v;
	Wed, 22 Nov 2023 08:05:14 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5iEQ-00101C-35
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Nov 2023 08:05:12 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5094cb3a036so9262679e87.2
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Nov 2023 00:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700640307; x=1701245107; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ghrTaSbGxLK9kxVU7nsSkXTB5ZRHrTPXh4hZLw4lW1o=;
        b=rL+am1SzX4Y9TrIFi2PWS2yKXF+haxwlTuQC8Hr5knNjKcd1LW/BDitUzRW9HJs5vX
         C75KPiEExh6tcsQE0k9KrCsfkKvAy2NBPL4ZnDapRPoZHZKW+xymxTRK97+w2r7Ff+uS
         JwgQHcT01tYlF5scAsuQmb+ASH2r/ppZOyVUuDw5IS5JwjvmuG35x83VWv2ATnEPH4It
         ZWiJr3Y+6NC4eSUJJk2tlMeM8/YTY3XKHC4s34k8JrveWyTM8wpFAHxKuqNPmnN2c8Ya
         Btraq76aJ/LXL4svauutAuSiC4bFpKQCv66KnU89D8xRYoM2f4A+ImM4XOOxx0QkiezL
         qdZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700640307; x=1701245107;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ghrTaSbGxLK9kxVU7nsSkXTB5ZRHrTPXh4hZLw4lW1o=;
        b=jA1Neb2ruUOFB6oIaLdbnwg0WUtEpTYzKTq9mtD3ZyJ33zUc1wwCg6jh58EwAkG5L6
         G+n/YSFn9mZlghE2BtubgirF88ykJyYohgzQyYPpjeaALGOxKS9zp5tShOLx5slUEw9n
         XWcWYtfMygMGLvmxCuddkE4qFsRMgxJl+5hl+I+VZj5VMR9/BnfeE/iLB8JL1RdSMZ7k
         03Y+iMT4W3pUmRlpXMJH0ygxxEDbzTD2bRcXOTa0AmS21Dz+6z8M4mvjPRZfHK1cIoty
         EhackiN8mv3ThNiu+2t9Fg1FebMqY/tF8hsMS9iUAyjC9nZCZAkx8FEZHVHqeb3dj9a4
         z4OQ==
X-Gm-Message-State: AOJu0YzcCXhovdO1YgSPXKyPKLDG5wY7V3zkvL69xKfnBPPEiY+cFe4g
	T5Qs2S4AXiFtDjns6PCJ6BQ45w==
X-Google-Smtp-Source: AGHT+IGSn7B1tdeAC18VFvtXuRhUozBEdZxjJDLizh5cvTQhRHlk6HnCDVb3HF69G+qZZGaY0pwJPA==
X-Received: by 2002:a05:6512:1086:b0:507:bc6b:38a6 with SMTP id j6-20020a056512108600b00507bc6b38a6mr1300437lfg.33.1700640307182;
        Wed, 22 Nov 2023 00:05:07 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id z16-20020adfe550000000b0032db4e660d9sm16411735wrm.56.2023.11.22.00.05.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 00:05:06 -0800 (PST)
Message-ID: <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
Date: Wed, 22 Nov 2023 09:05:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Cc: Andrew Davis <afd@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Heiko Stuebner <heiko@sntech.de>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Michal Simek <michal.simek@amd.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
 Olof Johansson <olof@lixom.net>, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_000511_037011_2DA6EEA4 
X-CRM114-Status: GOOD (  19.27  )
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

T24gMjEvMTEvMjAyMyAxNDo1MCwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+PiArT3JkZXIgb2Yg
Tm9kZXMKPj4gKy0tLS0tLS0tLS0tLS0tCj4+ICsKPj4gKzEuIE5vZGVzIHdpdGhpbiBhbnkgYnVz
LCB0aHVzIHVzaW5nIHVuaXQgYWRkcmVzc2VzIGZvciBjaGlsZHJlbiwgc2hhbGwgYmUKPj4gKyAg
IG9yZGVyZWQgaW5jcmVtZW50YWxseSBieSB1bml0IGFkZHJlc3MuCj4+ICsgICBBbHRlcm5hdGl2
ZWx5IGZvciBzb21lIHN1Yi1hcmNoaXRlY3R1cmVzLCBub2RlcyBvZiB0aGUgc2FtZSB0eXBlIGNh
biBiZQo+PiArICAgZ3JvdXBlZCB0b2dldGhlciAoZS5nLiBhbGwgSTJDIGNvbnRyb2xsZXJzIG9u
ZSBhZnRlciBhbm90aGVyIGV2ZW4gaWYgdGhpcwo+PiArICAgYnJlYWtzIHVuaXQgYWRkcmVzcyBv
cmRlcmluZykuCj4+ICsKPj4gKzIuIE5vZGVzIHdpdGhvdXQgdW5pdCBhZGRyZXNzZXMgc2hvdWxk
IGJlIG9yZGVyZWQgYWxwaGEtbnVtZXJpY2FsbHkgYnkgdGhlIG5vZGUKPj4gKyAgIG5hbWUuICBG
b3IgYSBmZXcgdHlwZXMgb2Ygbm9kZXMsIHRoZXkgY2FuIGJlIG9yZGVyZWQgYnkgdGhlIG1haW4g
cHJvcGVydHkKPj4gKyAgIChlLmcuIHBpbiBjb25maWd1cmF0aW9uIHN0YXRlcyBvcmRlcmVkIGJ5
IHZhbHVlIG9mICJwaW5zIiBwcm9wZXJ0eSkuCj4+ICsKPj4gKzMuIFdoZW4gZXh0ZW5kaW5nIG5v
ZGVzIGluIHRoZSBib2FyZCBEVFMgdmlhICZsYWJlbCwgdGhlIGVudHJpZXMgc2hvdWxkIGJlCj4+
ICsgICBvcmRlcmVkIGFscGhhLW51bWVyaWNhbGx5Lgo+IAo+IEp1c3QgYW4gaWRlYS4gV291bGQg
dGhhdCBtYWtlIChtb3JlKSBzZW5zZSB0byBtYWtlICZsYWJlbC1saWtlIGVudHJpZXMKPiBtYXRj
aCBvcmRlciBvZiBub2RlcyBpbiBpbmNsdWRlZCAuZHRzKGkpPwo+IAo+IEFkdmVudGFnZXM6Cj4g
MS4gV2Uga2VlcCB1bml0IGFkZHJlc3MgaW5jcmVtZW50YWwgb3JkZXIgdGhhdCBpcyB1bmxpa2Vs
eSB0byBjaGFuZ2UKPiAKPiBEaXNhZHZlbnRhZ2VzOgo+IDEuIE1vcmUgZGlmZmljdWx0IHRvIHZl
cmlmeQoKUm9iIGFsc28gcHJvcG9zZWQgdGhpcyBhbmQgSSBiZWxpZXZlIGFib3ZlIGRpc2FkdmFu
dGFnZSBoZXJlIGlzIGNydWNpYWwuCklmIHlvdSBhZGQgbmV3IFNvQyB3aXRoIGJvYXJkIERUUyB5
b3UgYXJlIGZpbmUuIEJ1dCBpZiB5b3UgYWRkIG9ubHkgbmV3CmJvYXJkLCB0aGUgb3JkZXIgb2Yg
ZW50cmllcyBsb29rIHJhbmRvbSBpbiB0aGUgZGlmZiBodW5rLiBSZXZpZXdlciBtdXN0Cm9wZW4g
U29DIERUU0kgdG8gYmUgYWJsZSB0byByZXZpZXcgdGhlIHBhdGNoIHdpdGggYm9hcmQgRFRTLgoK
SWYgcmV2aWV3IGlzIHRyaWNreSBhbmQgd2UgZG8gbm90IGhhdmUgdG9vbCB0byBwZXJmb3JtIGl0
IGF1dG9tYXRpY2FsbHksCkkgYW0gc3VyZSBzdWJtaXNzaW9ucyB3aWxsIGhhdmUgZGlzb3JkZXJl
ZCBib2FyZCBEVFMuCgo+IAo+IAo+PiArRXhhbXBsZTo6Cj4+ICsKPj4gKwkvLyBTb0MgRFRTSQo+
PiArCj4+ICsJLyB7Cj4+ICsJCWNwdXMgewo+PiArCQkJLy8gLi4uCj4+ICsJCX07Cj4+ICsKPj4g
KwkJcHNjaSB7Cj4+ICsJCQkvLyAuLi4KPj4gKwkJfTsKPj4gKwo+PiArCQlzb2NAIHsKPj4gKwkJ
CWRtYTogZG1hLWNvbnRyb2xsZXJAMTAwMDAgewo+PiArCQkJCS8vIC4uLgo+PiArCQkJfTsKPj4g
Kwo+PiArCQkJY2xrOiBjbG9jay1jb250cm9sbGVyQDgwMDAwIHsKPj4gKwkJCQkvLyAuLi4KPj4g
KwkJCX07Cj4+ICsJCX07Cj4+ICsJfTsKPj4gKwo+PiArCS8vIEJvYXJkIERUUwo+PiArCj4+ICsJ
JmNsayB7Cj4+ICsJCS8vIC4uLgo+PiArCX07Cj4+ICsKPj4gKwkmZG1hIHsKPj4gKwkJLy8gLi4u
Cj4+ICsJfTsKPj4gKwo+PiArCj4+ICtPcmRlciBvZiBQcm9wZXJ0aWVzIGluIERldmljZSBOb2Rl
Cj4+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+ICsKPj4gK0ZvbGxvd2lu
ZyBvcmRlciBvZiBwcm9wZXJ0aWVzIGluIGRldmljZSBub2RlcyBpcyBwcmVmZXJyZWQ6Cj4+ICsK
Pj4gKzEuIGNvbXBhdGlibGUKPj4gKzIuIHJlZwo+PiArMy4gcmFuZ2VzCj4+ICs0LiBTdGFuZGFy
ZC9jb21tb24gcHJvcGVydGllcyAoZGVmaW5lZCBieSBjb21tb24gYmluZGluZ3MsIGUuZy4gd2l0
aG91dAo+PiArICAgdmVuZG9yLXByZWZpeGVzKQo+PiArNS4gVmVuZG9yLXNwZWNpZmljIHByb3Bl
cnRpZXMKPj4gKzYuIHN0YXR1cyAoaWYgYXBwbGljYWJsZSkKPj4gKzcuIENoaWxkIG5vZGVzLCB3
aGVyZSBlYWNoIG5vZGUgaXMgcHJlY2VkZWQgd2l0aCBhIGJsYW5rIGxpbmUKPj4gKwo+PiArVGhl
ICJzdGF0dXMiIHByb3BlcnR5IGlzIGJ5IGRlZmF1bHQgIm9rYXkiLCB0aHVzIGl0IGNhbiBiZSBv
bWl0dGVkLgo+IAo+IEkgdGhpbmsgaXQgd291bGQgcmVhbGx5IGhlbHAgdG8gaW5jbHVkZSBwb3Np
dGlvbiBvZiAjYWRkcmVzcy1jZWxscyBhbmQKPiAjc2l6ZS1jZWxscyBoZXJlLiBJbiBzb21lIGZp
bGVzIEkgc2F3IHRoZW0gYWJvdmUgImNvbXBhdGlibGUiIHRoYXQgc2VlbXMKPiB1bmludHVpdGl2
ZS4gU29tZSBwcmVmZXIgcHV0dGluZyB0aGVtIGF0IGVuZCB3aGljaCBJIHRoaW5rIG1ha2VzIHNl
bnNlCj4gYXMgdGhleSBhZmZlY3QgY2hpbGRyZW4gbm9kZXMuCj4gCj4gV2hhdGV2ZXIgeW91IGNo
b29zZSBpdCdkIGJlIGp1c3QgbmljZSB0byBoYXZlIHRoaW5ncyBjb25zaXN0ZW50LgoKVGhpcyBp
cyBhIHN0YW5kYXJkL2NvbW1vbiBwcm9wZXJ0eSwgdGh1cyBpdCBnb2VzIHRvICg0KSBhYm92ZS4K
CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
