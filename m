Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8B3DC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 08:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IaNI4Nr04QPDUyxmk56lQJzdxSNyFGfjTkiHlFmh/14=; b=o3NPY4OuhPd25D
	LjnbZ2Z4cP2LtLw4/R1rI8K4ydqTMq/1LoeN4R2EtsV1bdHj/BmujrxsGjONPn28eEpX1ap4/0hGs
	SaOiv0ZxpSn+EZ5vZQJpsEebyrawm/eCcYLVT6hyc2tjZI2q4cWhbNk45GK0J3J4Aq/j+vNd0Y9+F
	klw0A7UCROg4pneC8oGzyEul4cXn4n005pZC/otdrfr612C2Di6kNi/JlRjtJ0rYJ2H5L3bhzNnUK
	/LrqkC3kV+v00ZXmcDqjjqITYLf30IY0GZAK3Grg5NRjYy9uQdPZtwHDEMMBDVEJxUjtEL2Q2qyq3
	3TfAJTHFUaQw/19Ld89Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8dC0-0056oc-9m; Fri, 23 Dec 2022 08:14:12 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8dBU-0056cZ-0C
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 08:13:42 +0000
Received: by mail-lf1-x12f.google.com with SMTP id z26so6152040lfu.8
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Dec 2022 00:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TA2BGY1wVbwWPsphtJ+F62BTUuCaxa/hXodpbqAoUoI=;
        b=d/a80LWvYTRczqijfxBvEDPt0xWxyz9N8w1KXKV7H4QjGxooMX8h47gUEqN6IDpFSI
         gEORAgoBVQaqmoPC0KIN6MzPb4FigxrWezf0Cq4bn25HPgT76ANTo/EioqwS56UVbXUc
         Sjpzs34frIei8M6O6iuIXDaNebMBZ7aC0gaBW+obV0ee38CWocKEKCfHCbVfqpXtqULv
         paLbL81UMvTNd7m1hwx+6K6FzoKMB5ECNYXvt3u0w6FkSMoa0KHFUa8L2c5MU0h6wLyC
         IsZIhCuKEeu6MSlK+K4N1Y6wvdejBo5AWxckjqbx7CWCR+1ruRnRReeleuQTFfcaC1mq
         gCmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TA2BGY1wVbwWPsphtJ+F62BTUuCaxa/hXodpbqAoUoI=;
        b=spIke5VmSCTdZIcc0BK74IwD7eOhd+rmZ+54ljfVWcUyLFHl45NC5aHsx/YWEoC5Vs
         +utGsMWdiugDiptuME4OaPQNbTrs0MsmZdD8FO+bOsQaZumb9zJ5f+E+nHg8mOE4j6Mw
         QFVD2nveNbaFkVfEu2pTFx6u0LT3kluKkSsresTqE0S/nzVWjJbv5MgYg5n3X+eCamPx
         NRrs0oA085381IO6UXkH4jn8s3fuM8Hdw4dyRL+37uq6pe5YTgGYgsb5tXuTp64AlFrK
         k2MistqREhHp9EOy7LUUclpuwwiKLOTZ9I5p4Iavo1RmGWHc5gv5aMVl3xRNYHNn7ANN
         YS9g==
X-Gm-Message-State: AFqh2kprgJZefd71X2OgFGtFhZkVV6ALYVMCJ68fU/ncQ4io8/tHMuHw
	3uPKjplQtJobzjNIlh/txwL/HA==
X-Google-Smtp-Source: AMrXdXssGFk983o11wyLQ7fcGYNFhp/dqGFKrBxt7YAFhJJbiLMZVXeG6Ipt+ZYEUn0GjY+xWaa7fw==
X-Received: by 2002:a05:6512:2216:b0:4b5:959f:6498 with SMTP id h22-20020a056512221600b004b5959f6498mr3100804lfu.62.1671783214357;
        Fri, 23 Dec 2022 00:13:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z21-20020a196515000000b004b4bab7d5a9sm428412lfb.46.2022.12.23.00.13.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 00:13:33 -0800 (PST)
Message-ID: <a73d99fb-0d47-ad93-27e2-9b51dba4b824@linaro.org>
Date: Fri, 23 Dec 2022 09:13:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 4/4] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
Content-Language: en-US
To: Javier Martinez Canillas <javierm@redhat.com>,
 linux-kernel@vger.kernel.org
Cc: Ondrej Jirman <megi@xff.cz>, Robert Mader <robert.mader@posteo.de>,
 Peter Robinson <pbrobinson@gmail.com>, =?UTF-8?Q?Kamil_Trzci=c5=84ski?=
 <ayufan@ayufan.eu>, Martijn Braam <martijn@brixit.nl>,
 Caleb Connolly <kc@postmarketos.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20221222223830.2494900-1-javierm@redhat.com>
 <20221222223830.2494900-5-javierm@redhat.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221222223830.2494900-5-javierm@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_001340_104099_BA2205EC 
X-CRM114-Status: GOOD (  14.36  )
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

T24gMjIvMTIvMjAyMiAyMzozOCwgSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIHdyb3RlOgo+IEZy
b206IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+IAo+IFRoZSBwaG9uZSdzIGRpc3BsYXkg
aXMgdXNpbmcgSGFubnN0YXIgTENEIHBhbmVsLCBhbmQgR29vZGl4IGJhc2VkCj4gdG91Y2hzY3Jl
ZW4uIFN1cHBvcnQgaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4
ZmYuY3o+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5u
bD4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5ubD4KPiBD
by1kZXZlbG9wZWQtYnk6IEthbWlsIFRyemNpxYRza2kgPGF5dWZhbkBheXVmYW4uZXU+Cj4gU2ln
bmVkLW9mZi1ieTogS2FtaWwgVHJ6Y2nFhHNraSA8YXl1ZmFuQGF5dWZhbi5ldT4KPiBTaWduZWQt
b2ZmLWJ5OiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMgPGphdmllcm1AcmVkaGF0LmNvbT4KPiAt
LS0KPiAKPiAgLi4uL2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMgICAgIHwg
MTI0ICsrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTI0IGluc2VydGlvbnMo
KykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cGluZXBob25lLXByby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1w
aW5lcGhvbmUtcHJvLmR0cwo+IGluZGV4IDBlNDQ0MmI1OWE1NS4uYTA0MzlhNjAzOTVlIDEwMDY0
NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1w
cm8uZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBo
b25lLXByby5kdHMKPiBAQCAtMjksNiArMjksMTIgQEAgY2hvc2VuIHsKPiAgCQlzdGRvdXQtcGF0
aCA9ICJzZXJpYWwyOjE1MDAwMDBuOCI7Cj4gIAl9Owo+ICAKPiArCWJhY2tsaWdodDogYmFja2xp
Z2h0IHsKPiArCQljb21wYXRpYmxlID0gInB3bS1iYWNrbGlnaHQiOwo+ICsJCXB3bXMgPSA8JnB3
bTAgMCAxMDAwMDAwIDA+Owo+ICsJCXB3bS1kZWxheS11cyA9IDwxMDAwMD47Cj4gKwl9Owo+ICsK
PiAgCWdwaW8ta2V5cyB7Cj4gIAkJY29tcGF0aWJsZSA9ICJncGlvLWtleXMiOwo+ICAJCXBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gQEAgLTgxLDYgKzg3LDMyIEBAIHZjYzF2OF9jb2RlYzog
dmNjMXY4LWNvZGVjLXJlZ3VsYXRvciB7Cj4gIAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8
MTgwMDAwMD47Cj4gIAkJdmluLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4gIAl9Owo+ICsKPiAr
CS8qIE1JUEkgRFNJIHBhbmVsIDEuOHYgc3VwcGx5ICovCj4gKwl2Y2MxdjhfbGNkOiB2Y2Mxdjgt
bGNkIHsKCk5vZGUgbmFtZXMgc2hvdWxkIGJlIGdlbmVyaWMsIHNvIHJlZ3VsYXRvciBzdWZmaXgg
b3IgcHJlZml4IChsb29rcyBsaWtlCm90aGVyIG5vZGVzIGFscmVhZHkgdXNlIHN1ZmZpeCkKCmh0
dHBzOi8vZGV2aWNldHJlZS1zcGVjaWZpY2F0aW9uLnJlYWR0aGVkb2NzLmlvL2VuL2xhdGVzdC9j
aGFwdGVyMi1kZXZpY2V0cmVlLWJhc2ljcy5odG1sI2dlbmVyaWMtbmFtZXMtcmVjb21tZW5kYXRp
b24KCj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ICsJCWVuYWJsZS1hY3Rp
dmUtaGlnaDsKPiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MxdjhfbGNkIjsKPiArCQlyZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9s
dCA9IDwxODAwMDAwPjsKPiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPiArCQlncGlv
ID0gPCZncGlvMyBSS19QQTUgR1BJT19BQ1RJVkVfSElHSD47Cj4gKwkJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8JmRpc3BsYXlfcHdyZW4xPjsKPiArCX07Cj4g
Kwo+ICsJLyogTUlQSSBEU0kgcGFuZWwgMi44diBzdXBwbHkgKi8KPiArCXZjYzJ2OF9sY2Q6IHZj
YzJ2OC1sY2QgewoKTm9kZSBuYW1lcyBzaG91bGQgYmUgZ2VuZXJpYy4KaHR0cHM6Ly9kZXZpY2V0
cmVlLXNwZWNpZmljYXRpb24ucmVhZHRoZWRvY3MuaW8vZW4vbGF0ZXN0L2NoYXB0ZXIyLWRldmlj
ZXRyZWUtYmFzaWNzLmh0bWwjZ2VuZXJpYy1uYW1lcy1yZWNvbW1lbmRhdGlvbgoKQmVzdCByZWdh
cmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
