Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD952C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 15:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yqJTUiLBTlNaCNuZteZiX6LYwd6h7Uy+PB+aW00jpmQ=; b=27aqzHYopWhJm/
	YuDPuPH2JTilxbKDsMGhGwfPk0FmJ1Mg1etKkEPAW5oF7o54f7voEZZL6LLstc/yan7CcHzGjQuO+
	DMtxIS0w1KvU5BmSqbmnGWFG51Zpj6q7K+suScPLopipc3I+LMlB1O5cmlJUb9nUd9CRglmi+BiaX
	rNjKLuesPeFtxe3rjEI6FH7CrNATMaW7AL45z2XTWa80nWURyXfWXb9Ga3r/Lu5Sc+SEqo23xeSuM
	cNE7l9Tl0pLAeJBCrjsN5ZnjnqbDOFC9T4KkmN3xzINYCrpfeu1aqFoKV/wL/4dH13rbkn+DQti87
	D+fGKOl13CAGINV22TJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o96u9-00B19p-2M; Wed, 06 Jul 2022 15:25:29 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o96u7-00B17m-4P
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 15:25:28 +0000
Received: by mail-lf1-x131.google.com with SMTP id bf9so3285757lfb.13
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 08:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=s2u++J5w4NDwIl2ly2qjEOKSEw7r+aYlZPxk8tDl4yU=;
        b=pk5hd/IvYkLkIbMjLl+3RikyW0xoTset+iQYFryFsW/I+s24lsz9o8Cklus2QbjDrS
         fTLopnC3tP8Tgxb6id5LNbzOlagVM7wajEchHrhxhs4RTGPvA1jvZYuEsKyaMvsJ5lst
         EP4uXSsnokVfUY179M2SKS8ybC4aaKtAPqz1QswivD3/5JXqesOzr72Z4M/0IIT6Nhb2
         RS+nATTSSmsMDcjkBkBjijERiX/tHYUQlIFZaS/lXdiUAyCGf6tRSFEn8/XLan5otBRf
         iOW3EGwwOmL0aWPWKGitff/EIURBYj05PDccP0XqedV5InKTIBYAQjSI0a2fFcZeYiek
         Ih3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=s2u++J5w4NDwIl2ly2qjEOKSEw7r+aYlZPxk8tDl4yU=;
        b=xP/SzPmrxj/5ZdypPoNWNG3TLij7ALDT042B97Bshz9FNga9Wtb4tFRS6dFPExhIcK
         Ysl6er1vLA3CMXDAcYRVHD/x5XGFH5W51jnJEEsL4wBXn/0y/fCJAQa3znKOQs4eSJFw
         TV56Syl9lOXlhFkaquwpFAcxcEqlpn/cGMJrcgCV3SPduYQ/Ks1Kr8ZfhcnShw6dPMbd
         YZIjhpjFq4gRhz4ntMej+ueifpFCnRlK73rlX08qI8KL3wF8CegBFSbXAmx2qbyOcqcO
         ABv3NPE+zcdpOu2kHyksN/L2JrGp5sG8qGpgzdfWlO/F5Btcy/L27751ejQ2lH35/xPl
         UCrw==
X-Gm-Message-State: AJIora8e1bRizj9KaxiYbgmxlMeSlWvplCC5xP2yHWoNXt7zrNhGR6b3
	nIVMTTn8n9fBqVHCGqx823OKHg==
X-Google-Smtp-Source: AGRyM1sl33iwmIsDfZENKyDLnobKwErOZsB1g6zI01WIfhPK+le8wb3cPVwq3Y8t8JUPspB3KmPC/w==
X-Received: by 2002:ac2:4a77:0:b0:484:d52:4e33 with SMTP id q23-20020ac24a77000000b004840d524e33mr5930342lfp.477.1657121123285;
        Wed, 06 Jul 2022 08:25:23 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id z3-20020a19f703000000b0047e789b9700sm6320314lfe.118.2022.07.06.08.25.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 08:25:22 -0700 (PDT)
Message-ID: <3e47b853-bb82-8766-8884-3da931c038a2@linaro.org>
Date: Wed, 6 Jul 2022 17:25:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v8 25/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Content-Language: en-US
To: LABBE Corentin <clabbe@baylibre.com>, Rob Herring <robh@kernel.org>
Cc: john@metanate.com, heiko@sntech.de, p.zabel@pengutronix.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, didi.debian@cknow.org,
 herbert@gondor.apana.org.au, sboyd@kernel.org, mturquette@baylibre.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20220706090412.806101-1-clabbe@baylibre.com>
 <20220706090412.806101-26-clabbe@baylibre.com>
 <1657114144.957232.4099933.nullmailer@robh.at.kernel.org>
 <YsWcGDwPCX+/95i3@Red>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YsWcGDwPCX+/95i3@Red>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_082527_213354_49E1E77A 
X-CRM114-Status: GOOD (  11.34  )
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

T24gMDYvMDcvMjAyMiAxNjoyOCwgTEFCQkUgQ29yZW50aW4gd3JvdGU6Cj4gTGUgV2VkLCBKdWwg
MDYsIDIwMjIgYXQgMDc6Mjk6MDRBTSAtMDYwMCwgUm9iIEhlcnJpbmcgYSDDqWNyaXQgOgo+PiBP
biBXZWQsIDA2IEp1bCAyMDIyIDA5OjA0OjA0ICswMDAwLCBDb3JlbnRpbiBMYWJiZSB3cm90ZToK
Pj4+IFRoZSBsYXRlc3QgYWRkaXRpb24gdG8gdGhlIHJvY2tjaGlwIGNyeXB0byBkcml2ZXIgbmVl
ZCB0byB1cGRhdGUgdGhlCj4+PiBkcml2ZXIgYmluZGluZ3MuCj4+Pgo+Pj4gUmV2aWV3ZWQtYnk6
IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPj4+
IFNpZ25lZC1vZmYtYnk6IENvcmVudGluIExhYmJlIDxjbGFiYmVAYmF5bGlicmUuY29tPgo+Pj4g
LS0tCj4+PiAgLi4uL2NyeXB0by9yb2NrY2hpcCxyazMyODgtY3J5cHRvLnlhbWwgICAgICAgIHwg
ODUgKysrKysrKysrKysrKysrKystLQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA3NyBpbnNlcnRpb25z
KCspLCA4IGRlbGV0aW9ucygtKQo+Pj4KPj4KPj4gTXkgYm90IGZvdW5kIGVycm9ycyBydW5uaW5n
ICdtYWtlIERUX0NIRUNLRVJfRkxBR1M9LW0gZHRfYmluZGluZ19jaGVjaycKPj4gb24geW91ciBw
YXRjaCAoRFRfQ0hFQ0tFUl9GTEFHUyBpcyBuZXcgaW4gdjUuMTMpOgo+Pgo+PiB5YW1sbGludCB3
YXJuaW5ncy9lcnJvcnM6Cj4+Cj4+IGR0c2NoZW1hL2R0YyB3YXJuaW5ncy9lcnJvcnM6Cj4+IC9i
dWlsZHMvcm9iaGVycmluZy9saW51eC1kdC1yZXZpZXcvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2NyeXB0by9yb2NrY2hpcCxyazMyODgtY3J5cHRvLnlhbWw6IGFsbE9mOjA6dGhl
bjpwcm9wZXJ0aWVzOmNsb2NrLW5hbWVzOiAnb25lT2YnIGNvbmRpdGlvbmFsIGZhaWxlZCwgb25l
IG11c3QgYmUgZml4ZWQ6Cj4+IAlbeydjb25zdCc6ICdhY2xrJ30sIHsnY29uc3QnOiAnaGNsayd9
LCB7J2NvbnN0JzogJ3NjbGsnfSwgeydjb25zdCc6ICdhcGJfcGNsayd9XSBpcyB0b28gbG9uZwo+
PiAJW3snY29uc3QnOiAnYWNsayd9LCB7J2NvbnN0JzogJ2hjbGsnfSwgeydjb25zdCc6ICdzY2xr
J30sIHsnY29uc3QnOiAnYXBiX3BjbGsnfV0gaXMgdG9vIHNob3J0Cj4+IAlGYWxzZSBzY2hlbWEg
ZG9lcyBub3QgYWxsb3cgNAo+PiAJMSB3YXMgZXhwZWN0ZWQKPj4gCTQgaXMgZ3JlYXRlciB0aGFu
IHRoZSBtYXhpbXVtIG9mIDIKPj4gCTQgaXMgZ3JlYXRlciB0aGFuIHRoZSBtYXhpbXVtIG9mIDMK
PiAKPiBIZWxsbwo+IAo+IEkgdXBncmFkZWQgdG8gZHQtc2NoZW1hIDIwMjIuMDcgYW5kIGZhaWwg
dG8gcmVwcm9kdWNlIGFsbCBlcnJvcnMuCgpWaXNpYmxlIG9uIG9sZGVyIGR0c2NoZW1hICgyMDIy
LjYuZGV2MTArZ2NkNjRmNzVmZTA5MSksIHZpc2libGUgb24KbmV3ZXN0ICgyMDIyLjcpLgoKRXhh
Y3RseSB0aGUgc2FtZSBlcnJvci4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
