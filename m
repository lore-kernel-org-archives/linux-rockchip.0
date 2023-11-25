Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB3B8C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 18:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzHVeSmMnXxqtOR8UvnShe7FN2YIWTDvK52+Fv8FVcM=; b=URmPe8ChjUG2yv
	WggkkZMtVyDrWkvJDNT3Y8EgSWHcyfrm/ilGslT28moi4Qiolhbw6tZ1SmxFeushlfLTQQe9Yrlg3
	T5ilvY8Vn6rx/8rYioPomnzLMLXOyC9Y0U3ZBRmz67mDzLP5ghcZlzS6ydGGp6bffmB8L7CcQ8yCE
	5EJGRY1vN4yQdmUs4oHtpKeILxN2B0aW3DV65KgpX+rUpt94OWzjzPcbhOG8DiDwaN/nkk7EdzkYm
	Gewp4FilaViFf/b9Iui33UEQDSRXahvoefQjs1OmqoOHc6SpNCm3h4x6j55lU1SSG+FLyVyrrZ5v4
	BfqdIvqVtgkHROPakBhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xe8-009e1P-1v;
	Sat, 25 Nov 2023 18:44:52 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xe4-009dxI-1W
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 18:44:51 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9e1021dbd28so399546066b.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 10:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700937887; x=1701542687; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=apOXTcWKWpkE4SfJHSscK7soaBBzpXCbTsflcfpPDQc=;
        b=Nam9OY3ZMsWic3umPCLRdIUvvZ2XdAxiw5JYxgo1/r/fEkkSZMQ9pP4060M9zh2Psj
         u6U3CLixRJO1kupUXj/Oriz2IVFyxOr/JXhv/3CYCfaRMFuQhhYffK5xchYBBouk2enp
         ADz28YtOQMDUJI9e9MBTtM2Z05CUUW7GKNfOhPv5TqMMkmplQs9O9AWmJFpykDBnVrfh
         w+ykhfC3kit0bMklLYJB/iPYziVLSEh0XWD8bIVhFuQiauuUQratXer+JI+ZP8pellrs
         9eO6wp1JRxxNKqc8Wt39iUD4QiEbnu3ebC+48q+0RhHfEEzt2hLDWUzalzp8Y7g8sx7k
         s5zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700937887; x=1701542687;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=apOXTcWKWpkE4SfJHSscK7soaBBzpXCbTsflcfpPDQc=;
        b=rK6L9E4NjIFPccbq+q7la+QRLuaIYc/PAQmxYH/CQfvgquT+cfcXA/8faHNamx1nfb
         9ES4FnFyBTO/26FVmBrV+LU8345y3jwgo3eSBUhGJB2Rn0zOQE1TNqO6he7MEVyjGI8a
         W291UPQ+yhR8JGmkx8zy2JybHWVdwoULjQ4mxeMCtmzDKYxUDA/mEd8NqUWtw+CKXoBJ
         K/jMnO40wWo4wPexk56eZZkfsWRpPWXNMQtSD7jmuYc6cpDuw7Chz28cvz6Sl6OhMHQ3
         j1L48s8d8ec9oN4KYKvWVW/ssrYVafPc3mR2wks5jGNZVHXe9cT6tOrNV5OrC8pij4Oi
         SxBQ==
X-Gm-Message-State: AOJu0YymE6cU0lWVXjf5mw56OMw2Plghiyozd/FFZXYOZWcLmtbDycpE
	IV6jMVYx+cP3CcuutyTo4DGCBYQ/FRZala/PcB8=
X-Google-Smtp-Source: AGHT+IHlwz8VvgWwvQxrUeBquBYNI5NZjQ1wPyt1NNYIPVrmX83BxuZvWqFF+sXZatesnrPlEjYAYw==
X-Received: by 2002:a17:906:d28b:b0:a00:47fa:2251 with SMTP id ay11-20020a170906d28b00b00a0047fa2251mr5041743ejb.32.1700937886891;
        Sat, 25 Nov 2023 10:44:46 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id mf12-20020a170906cb8c00b009a13fdc139fsm3797155ejb.183.2023.11.25.10.44.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Nov 2023 10:44:46 -0800 (PST)
Message-ID: <89b2f3ae-52df-4304-9e51-5af73d52ea4c@linaro.org>
Date: Sat, 25 Nov 2023 19:44:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: Rob Herring <robh+dt@kernel.org>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Andrew Davis <afd@ti.com>, Arnd Bergmann <arnd@arndb.de>,
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
 <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
 <CAL_JsqL_caP2Adh5ntrHb24sXOY9x=TxvCSnnSCq--rm3B0FoA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAL_JsqL_caP2Adh5ntrHb24sXOY9x=TxvCSnnSCq--rm3B0FoA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_104448_531863_C3477059 
X-CRM114-Status: GOOD (  17.46  )
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

T24gMjIvMTEvMjAyMyAxNTo1NSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gV2VkLCBOb3YgMjIs
IDIwMjMgYXQgMTowNeKAr0FNIEtyenlzenRvZiBLb3psb3dza2kKPiA8a3J6eXN6dG9mLmtvemxv
d3NraUBsaW5hcm8ub3JnPiB3cm90ZToKPj4KPj4gT24gMjEvMTEvMjAyMyAxNDo1MCwgUmFmYcWC
IE1pxYJlY2tpIHdyb3RlOgo+Pj4+ICtPcmRlciBvZiBOb2Rlcwo+Pj4+ICstLS0tLS0tLS0tLS0t
LQo+Pj4+ICsKPj4+PiArMS4gTm9kZXMgd2l0aGluIGFueSBidXMsIHRodXMgdXNpbmcgdW5pdCBh
ZGRyZXNzZXMgZm9yIGNoaWxkcmVuLCBzaGFsbCBiZQo+Pj4+ICsgICBvcmRlcmVkIGluY3JlbWVu
dGFsbHkgYnkgdW5pdCBhZGRyZXNzLgo+Pj4+ICsgICBBbHRlcm5hdGl2ZWx5IGZvciBzb21lIHN1
Yi1hcmNoaXRlY3R1cmVzLCBub2RlcyBvZiB0aGUgc2FtZSB0eXBlIGNhbiBiZQo+Pj4+ICsgICBn
cm91cGVkIHRvZ2V0aGVyIChlLmcuIGFsbCBJMkMgY29udHJvbGxlcnMgb25lIGFmdGVyIGFub3Ro
ZXIgZXZlbiBpZiB0aGlzCj4+Pj4gKyAgIGJyZWFrcyB1bml0IGFkZHJlc3Mgb3JkZXJpbmcpLgo+
Pj4+ICsKPj4+PiArMi4gTm9kZXMgd2l0aG91dCB1bml0IGFkZHJlc3NlcyBzaG91bGQgYmUgb3Jk
ZXJlZCBhbHBoYS1udW1lcmljYWxseSBieSB0aGUgbm9kZQo+Pj4+ICsgICBuYW1lLiAgRm9yIGEg
ZmV3IHR5cGVzIG9mIG5vZGVzLCB0aGV5IGNhbiBiZSBvcmRlcmVkIGJ5IHRoZSBtYWluIHByb3Bl
cnR5Cj4+Pj4gKyAgIChlLmcuIHBpbiBjb25maWd1cmF0aW9uIHN0YXRlcyBvcmRlcmVkIGJ5IHZh
bHVlIG9mICJwaW5zIiBwcm9wZXJ0eSkuCj4+Pj4gKwo+Pj4+ICszLiBXaGVuIGV4dGVuZGluZyBu
b2RlcyBpbiB0aGUgYm9hcmQgRFRTIHZpYSAmbGFiZWwsIHRoZSBlbnRyaWVzIHNob3VsZCBiZQo+
Pj4+ICsgICBvcmRlcmVkIGFscGhhLW51bWVyaWNhbGx5Lgo+Pj4KPj4+IEp1c3QgYW4gaWRlYS4g
V291bGQgdGhhdCBtYWtlIChtb3JlKSBzZW5zZSB0byBtYWtlICZsYWJlbC1saWtlIGVudHJpZXMK
Pj4+IG1hdGNoIG9yZGVyIG9mIG5vZGVzIGluIGluY2x1ZGVkIC5kdHMoaSk/Cj4+Pgo+Pj4gQWR2
ZW50YWdlczoKPj4+IDEuIFdlIGtlZXAgdW5pdCBhZGRyZXNzIGluY3JlbWVudGFsIG9yZGVyIHRo
YXQgaXMgdW5saWtlbHkgdG8gY2hhbmdlCj4+Pgo+Pj4gRGlzYWR2ZW50YWdlczoKPj4+IDEuIE1v
cmUgZGlmZmljdWx0IHRvIHZlcmlmeQo+Pgo+PiBSb2IgYWxzbyBwcm9wb3NlZCB0aGlzIGFuZCBJ
IGJlbGlldmUgYWJvdmUgZGlzYWR2YW50YWdlIGhlcmUgaXMgY3J1Y2lhbC4KPj4gSWYgeW91IGFk
ZCBuZXcgU29DIHdpdGggYm9hcmQgRFRTIHlvdSBhcmUgZmluZS4gQnV0IGlmIHlvdSBhZGQgb25s
eSBuZXcKPj4gYm9hcmQsIHRoZSBvcmRlciBvZiBlbnRyaWVzIGxvb2sgcmFuZG9tIGluIHRoZSBk
aWZmIGh1bmsuIFJldmlld2VyIG11c3QKPj4gb3BlbiBTb0MgRFRTSSB0byBiZSBhYmxlIHRvIHJl
dmlldyB0aGUgcGF0Y2ggd2l0aCBib2FyZCBEVFMuCj4+Cj4+IElmIHJldmlldyBpcyB0cmlja3kg
YW5kIHdlIGRvIG5vdCBoYXZlIHRvb2wgdG8gcGVyZm9ybSBpdCBhdXRvbWF0aWNhbGx5LAo+PiBJ
IGFtIHN1cmUgc3VibWlzc2lvbnMgd2lsbCBoYXZlIGRpc29yZGVyZWQgYm9hcmQgRFRTLgo+IAo+
IEknbSBjZXJ0YWlubHkgaW4gZmF2b3Igb2Ygb25seSAob3IgbW9zdGx5Pykgc3BlY2lmeWluZyB0
aGluZ3Mgd2UgY2FuCj4gY2hlY2sgd2l0aCB0b29scy4gSSBkb24ndCBuZWVkIG1vcmUgdG8gY2hl
Y2sgbWFudWFsbHkuLi4KPiAKPiBJdCB3b3VsZG4ndCBiZSB0b28gaGFyZCB0byBnZXQgcGF0aCBm
cm9tIGxhYmVscy4gZHRjIGdlbmVyYXRlcyB0aGF0Cj4gd2l0aCAtQCBhbHJlYWR5LiBTbyBJIGRv
bid0IGJ1eSAid2UgZG9uJ3QgaGF2ZSBhIHRvb2wiIGlmIGEgdG9vbCB0bwo+IGNoZWNrIHNlZW1z
IGZlYXNpYmxlLgoKT0ssIHRoZW4gdG9vbCBpcyBub3QgYW4gYXJndW1lbnQuIEluIFF1YWxjb21t
IGFuZCBTYW1zdW5nIHdlIGFscmVhZHkgdXNlCmFscGhhYmV0aWNhbCBvcmRlciBpbiBib2FyZCBE
VFMsIHNvIGtlZXBpbmcgdGhhdCBleGlzdGluZyBzdHlsZSBjb3VsZCBiZQphbiBhcmd1bWVudC4g
SSBkb24ndCBoYXZlIHN0cm9uZyBwcmVmZXJlbmNlLCBleGNlcHQgdGhlIG5lZWQgdG8KcmUtc2h1
ZmZsZSBhbGwgRFRTIGZpbGVzIHdoaWNoIHdvdWxkIGJlIGEgcXVpdGUgZGlzYXN0cm91cyBmb3Ig
ZnV0dXJlCnN0YWJsZS1iYWNrcG9ydHMuIEkgY2FuIG1lbnRpb24gYm90aCBzdHlsZXMuCgpCZXN0
IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
