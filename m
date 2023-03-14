Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39782C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 06:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6+FTe5AGINh9Jfxu4O18pN+2G/6byhkskjQtnYK4uY=; b=ntIybLAwSw3MRJ
	EoLGxueSSU2/LRPTx/2HYMvdi9Mko51nFub+T5FfyKn73UOCtrg8lxr0I1SvjNlwjLc2Y5+LQXOZC
	fl/zDMrDxM3dEsjL2f5hd2T5c8qDqVZLAD3tGYAP8ArJBU2esJ2qmrscRQzyZbhu1XBstraO92H9D
	VY862OmqBgHdDyll76zUNLF9aiGPy8M6CeIdijnNJEu6i8EyvnEtwkQ3dol9VcnYmzUDwlqIxuxQV
	FuLipxT3uBFrCjkt0i54BldBw8NAz+/LEvd9jA0NJAbswbcgHBcXM7P5Geq2z4hq2yartGP9Uw4Ly
	9/gDcrdhInAgEr3xqTeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbyOS-009Djk-QF; Tue, 14 Mar 2023 06:44:21 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbyOI-009Dej-4Z
	for linux-rockchip@lists.infradead.org; Tue, 14 Mar 2023 06:44:13 +0000
Received: by mail-ed1-x535.google.com with SMTP id eh3so1884563edb.11
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Mar 2023 23:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678776246;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ywYOZ5xavYpSTwwK3MKmIMTU02VHQ/B9GtHWgy6KTX8=;
        b=uXHuxUk4Ph5GaJtGImjU5sOLPpUpmyg+IeXbihQoUaQvNqXPZZ/sm4Q2Vxj6ib+3/2
         1fva5zlyckAvafDJSuPIDw4St4PqkNptcTg4nFNZi2/UoQNCCQ3lMykAClp4djHY2/Fi
         1lp4qsiP44ansKGJjjON4ooAibBFH027xwBgnU9EDCPCSg9Hb8br9zVPx+TGJ6iUAhf5
         quMWLMl3P+NGzQqETsicJKBo70LvQBFTp5zVUhG9laNfPWbwxob1W68n3PMaSpgZFXNJ
         M0D4UIbfYpYe0HKOe3RZTPpme1zJ5nmlfKF6tFr83YteoKtKE2W2hkMDiE676jPR9iN4
         qY+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678776246;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ywYOZ5xavYpSTwwK3MKmIMTU02VHQ/B9GtHWgy6KTX8=;
        b=IeFwGaxl78cc73VBA7TTLLGk0tutWJ4PUvG0Wto/gGh6yvokeyRWrYD1A5JJZY9Im/
         IpRmAkYwQk5Mz/m0R+l0nj6qIU+u2WrmEfrfnFGDA81BbQPstbVvuxXz0NqEFwGGfAwZ
         DWeOQq1R8TeUwkHmnPDlvxLQhI3xKT2w+ZLsPK0yrep3qPYDg6+H/kWPKHu+HwoTICeF
         HWvSB4Yr+kdcMhVCpXu+3yGOxivAeG23i2RPASSLtXg8gD4ikbATlFbDLJe4yszJ7CRU
         NhdHiljvk2j7hdE0qpxMI0zFnPCAyy6eLktHXIdU9uiBNEQQ0yd3HL2Pz7BXLfv1AAs+
         WidQ==
X-Gm-Message-State: AO0yUKXeZYTPTdYLPTs9wepA85gntia0THoKP4jGlhgKCxMup7h8rArn
	2PkRgUYO4kPDUtUvLMMVf6zSCg==
X-Google-Smtp-Source: AK7set/lGrzwqGMnZcc9hOtrqzElAVLxHouwR7z35GXn+LIVsVf8yT4Tu11j95hcquGFYNTL6/qGJQ==
X-Received: by 2002:aa7:dbca:0:b0:4af:7bdc:188e with SMTP id v10-20020aa7dbca000000b004af7bdc188emr14135915edt.16.1678776246217;
        Mon, 13 Mar 2023 23:44:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6932:5570:6254:9edd? ([2a02:810d:15c0:828:6932:5570:6254:9edd])
        by smtp.gmail.com with ESMTPSA id y97-20020a50bb6a000000b004c19f1891fasm521575ede.59.2023.03.13.23.44.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 23:44:05 -0700 (PDT)
Message-ID: <ed293caf-e787-a29e-f1c5-bdcaf1aa483a@linaro.org>
Date: Tue, 14 Mar 2023 07:44:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 01/16] spi: armada-3700: Drop of_match_ptr for ID table
To: Mark Brown <broonie@kernel.org>
Cc: Kamal Dasu <kdasu.kdev@gmail.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>,
 Andi Shyti <andi@etezian.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
 <7a65d775-cf07-4393-8b10-2cef4d5266ab@sirena.org.uk>
 <08e98d1d-e79b-fe7e-0d59-827f72277fc5@linaro.org>
 <9bf3dd37-71c2-4118-a8da-40e656b42d10@sirena.org.uk>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9bf3dd37-71c2-4118-a8da-40e656b42d10@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_234410_361032_9834BAB0 
X-CRM114-Status: GOOD (  22.72  )
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

T24gMTMvMDMvMjAyMyAyMDoyMiwgTWFyayBCcm93biB3cm90ZToKPiBPbiBNb24sIE1hciAxMywg
MjAyMyBhdCAwNzozOTo0NVBNICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBP
biAxMy8wMy8yMDIzIDE0OjU1LCBNYXJrIEJyb3duIHdyb3RlOgo+Pj4gT24gRnJpLCBNYXIgMTAs
IDIwMjMgYXQgMTE6Mjg6NDJQTSArMDEwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiAK
Pj4+PiAgIGRyaXZlcnMvc3BpL3NwaS1hcm1hZGEtMzcwMC5jOjgwNzozNDogZXJyb3I6IOKAmGEz
NzAwX3NwaV9kdF9pZHPigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNv
bnN0LXZhcmlhYmxlPV0KPiAKPj4+IEl0IHdvdWxkIGJlIG11Y2ggYmV0dGVyIHRvIGZpeCBvZl9t
YXRjaF9wdHIoKSBhbmQvb3IgdGhlIG1vZHVsZSBzdHVmZgo+Pj4gdGhhdCBhbHNvIHJlZmVyZW5j
ZXMgdGhlIG1hdGNoIHRhYmxlIGhlcmUuCj4gCj4+IFdoeT8gVGhlIHJlY29tbWVuZGF0aW9uIGlz
IGluIGdlbmVyYWwgbm90IHRvIHVzZSBvZl9tYXRjaF9wdHIsIGJlY2F1c2UKPj4gdGhlcmUgYXJl
IGxpdHRsZSBiZW5lZml0cyBidXQgaXQgZGlzYWJsZXMgbWF0Y2hpbmcgdmlhIFBSUDAwMDEuIEpv
bmF0aGFuCj4+IGluIHBhcmFsbGVsIHRocmVhZCBleHBsaWNpdGx5IHNhaWQgb2ZfbWF0Y2hfcHRy
IHNob3VsZCBkaXNhcHBlYXIgYW5kIGhlCj4+IGlzIG5vdCBhY2NlcHRpbmcgYW55IG5ldyBjb2Rl
IHdpdGggaXQuIEFuZCBpbiBnZW5lcmFsIGhlIGlzIHJpZ2h0Lgo+IAo+IElmIHRoYXQncyB0aGUg
Y2FzZSB0aGVuIHdoeSBhcmUgeW91IGFkZGluZyBtYXliZSB1bnVzZWQgYW5ub3RhdGlvbnMgZm9y
Cj4gaGFsZiB0aGUgZHJpdmVycyByYXRoZXIgdGhhbiByZW1vdmluZyB0aGVpciBvZl9tYXRjaF9w
dHIoKSB1c2FnZXM/Cj4gVGhlcmUgZG9lc24ndCBzZWVtIHRvIGJlIGFueSBsb2dpYyBoZXJlLCBp
dCdzIGp1c3QgcmFuZG9tbHkgbWFraW5nCj4gY2hhbmdlcyBhcyBmYXIgYXMgSSBjYW4gdGVsbC4K
ClRoZXNlIGFyZSBub3QgcmFuZG9tIGJ1dCBkZXBlbmQgb24gd2hldGhlciBPRiBpcyB0aGUgb25s
eSBtYXRjaGluZwptZXRob2Qgb3Igb25lIG9mIGZldy4gQWx0aG91Z2ggZm9yIElJTyBhbGwgb2Yg
bXkgcGF0Y2hlcyB3b3VsZCBiZQpkcm9wcGluZyB0aGUgb2ZfbWF0Y2hfcHRyLi4uIEZvciBzb21l
IGNhc2VzIGluIG90aGVyIHBhdGNoc2V0cyBJIGFkZGVkCl9fbWF5YmVfdW51c2VkIGFsc28gYmVj
YXVzZSBvZl9tYXRjaF9ub2RlKCksIHdoZW4gdGhlIHRhYmxlIGlzIG5vdCB1c2VkCmluIGRyaXZl
ciBvZl9tYXRjaF90YWJsZS4KCj4gCj4gVGhlIFBSUDAwMDEgc3R1ZmYgaXNuJ3QgYW4gaXNzdWUs
IG9mX21hdGNoX3B0cigpIGNhbiBqdXN0IGJlIGNoYW5nZWQgdG8KPiBkbyB0aGUgcmlnaHQgdGhp
bmcgZm9yIENPTkZJR19BQ1BJLgoKVGhhdCdzIGFjdHVhbGx5IGludGVyZXN0aW5nIGlkZWEsIGtp
bmQgb2Ygb2J2aW91cyBzbyBJIHdvbmRlciB3aHkgaXQKd2Fzbid0IGRvbmUgbGlrZSB0aGlzIGlu
IHRoZSBmaXJzdCBwbGFjZSBpbiA4ODZjYTg4YmU2YjMgKCJBQ1BJIC8gYnVzOgpSZXNwZWN0IFBS
UDAwMDEgd2hlbiByZXRyaWV2aW5nIGRldmljZSBtYXRjaCBkYXRhIikuIE1heWJlIG5vdCB0bwpw
b3B1bGF0ZSBPRiBkZXZpY2UgSUQgdGFibGVzIGZvciB0aGUgQUNQSSBzeXN0ZW1zIHdoaWNoIGRv
IG5vdCBjYXJlCmFib3V0IFBSUDAwMDE/CgoKPiAgSXQgZG9lc24ndCBidXkgdXMgaHVnZSBhbW91
bnRzIGJ1dAo+IGl0IGFsc28gY29zdHMgdXMgdmVyeSBsaXR0bGUgYW5kIG1heSBiZSB1c2VmdWwg
aW4gZnV0dXJlLiAgV2hlbiB0aGVyZSdzCj4gbWlzc2luZyBhbm5vdGF0aW9ucyBpdCdzIG5vdCBj
YXVzaW5nIGlzc3VlcyBmb3IgcHJhY3RpY2FsIGNvbmZpZ3VyYXRpb25zCj4gYXMgZmFyIGFzIEkg
Y2FuIHRlbGwsIGFuZCBpZiB0aGUgbWFjcm8gd2VyZSB1cGRhdGVkIGZvciBDT05GSUdfQUNQSSBp
dCdkCj4gYmUgZXZlbiBsZXNzIG9mIGFuIGlzc3VlLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
