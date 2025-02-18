Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27763C021AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 20:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dc8+mmpDZwYvbZlc/amt4qG5XvBdCgd7Dh26TNO2EAw=; b=ZFg1VyUJFmRuvY
	cc336WGuULlZTiwJTsBpj25obw63devKhE3LXV9kpfWI6jyB041UnWQxl6S9Wo9Jpy92THWkqPT+0
	8NlTiq8wS0ZJBzX+QFMbNshAxExWSe9lLcP6Pyn4US9+WdsDWsZl7vxaUXzfkyoPl5gyXQCYkJcoD
	ErPjF2p5YMR7BQvVwEF/gLGSxIhz9QjGgDEwQVCFFqikaqJU6RS20hBtyOzHPpUrZv81rH6dPVuV2
	ITXYCrs19KHgzx1gaYlJeyCxI5dnwmNFtcjbmvTN2fc+2G9rioRSHG5R0dsk+qoWBy48usat8a18x
	Ej0nU6cDPqpxlA7dwz3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkU3n-00000009jPp-3ET4;
	Tue, 18 Feb 2025 20:19:15 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkTVR-00000009cyD-1AnV
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Feb 2025 19:43:46 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4393dc02b78so40047695e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Feb 2025 11:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739907823; x=1740512623; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t6NET/R65D4fhygY4ZNz4mV2mBN1Fn/fSAZnL4GhO6k=;
        b=BQjmN69IAcPxSqT8FfxAoIayMEAvuDWKBkuJgsSpbyeebPJ3nbBlnYBtu/fH9WcSOV
         5Jdu9utW+htPWnmNJkiUbrcI8+bLKBqqwIxaSTPrgQzz/gheU5ZYuub0s0nz1WAcxp/m
         +qhZtu47WjBuWm5U7IJGDO8WzIEtnAIT/cBJMzDvTyejTuSi9Esgs03YM6Gcr8n4q8Z/
         B9CJ5LpGl7pRReM99iTEjmrV2YbWgqRNF2CgIR6F/FlKJ/hIJVkIf1GmySdzZ/v2fgt0
         vlIuZvXYBRlxim5jp+Ym69vUQCvjtFcwX6dpuV+KYOebR5g5TKj6rr21Fv47PJjQeaT8
         26eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739907823; x=1740512623;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t6NET/R65D4fhygY4ZNz4mV2mBN1Fn/fSAZnL4GhO6k=;
        b=feYcLHs/XWiFBj1EYA9vebRtXUcEliPP7TxrCwCoWQb2HzKcIBi9wihvx1nVtPZMo3
         dnN6Ton9k6sm04ypv6lZX/RDeuSvP93jAe7ZanRzRjfjYGpA3wWvRnaaoSe+Obdxqb7/
         8S/5+e5mzhJmMaOrW3S0GN2g9xrAltSuFc7U2F067qXk9i97xM8JHxANpj+0TOPNMM41
         Kikr9OP9xmOnWQwh2GgIJnvBCbJzuxbJIXaN8v4+8iFP4OLlM/u5iLIxUslnvkzkg+dg
         MPn8SYSgEj29Y+VlMxg/aZ7pdknX1tutRFBZChdgwEuoQFgSPdT+/nqGiZiEjrB2zyNK
         XqLQ==
X-Gm-Message-State: AOJu0YzgX9kjiD+gGF0gA5YTq2jcz06ScZJkXiE1SplIYBM9RNSsdst2
	HjtAMht+7cyGm0u90BmkLvTaqQZqQCORSartTOJOjNOy/QhZtT6gU5QJn+doshiO53DoTFO9pnp
	eBHk=
X-Gm-Gg: ASbGnct8w9GU5knsdw8Rae0dLJSqnyl0Hd83BAKSvPoZajeng/MLuYq4zahr4trG8wA
	kmxAGnYYFv/PDUBq2egiybMjKVSO+G6CBo1UbKTl6YZ358hD1dpMV8YcKNAEmcMySucHt2oL6E+
	avN21VbZBA9sTEUm0qJMxLRsSi9wxi3h0/1Db5Uztv77BeMpLz84rnORcGNUEa3iu9tipwxO6lF
	/LpEMUKTk419Dz9Z0ghsLiMj+kzgvswYtGK9ILMNA3LKnn81uRCMoODedmfisxCGuz9LzzvTgxD
	f3wodNoc9hh6DM6QXkY6yf3fmpXD0rUlfB8/H+OxSbaXR1acsJANKsw=
X-Google-Smtp-Source: AGHT+IE0UW/mzN+qXiFnRcnySUoZloCoBhk1jxMNyKm7/6Uvfk8YLL036J9/dJuG/NFnq4RdsX52mw==
X-Received: by 2002:a05:600c:3b0e:b0:439:987c:2309 with SMTP id 5b1f17b1804b1-439987c256dmr19864515e9.27.1739907823188;
        Tue, 18 Feb 2025 11:43:43 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4395a055910sm190528525e9.9.2025.02.18.11.43.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 11:43:42 -0800 (PST)
Message-ID: <e36a5771-d277-41d3-af9c-c5841c4060a2@linaro.org>
Date: Tue, 18 Feb 2025 20:43:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] thermal: rockchip: Support the rk3562 SoC in thermal
 driver
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Shaohan Yao <shaohan.yao@rock-chips.com>, linux-pm@vger.kernel.org,
 Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 Zhang Rui <rui.zhang@intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-arm-kernel@lists.infradead.org
References: <20241224094015.3816301-1-kever.yang@rock-chips.com>
 <20241224094015.3816301-2-kever.yang@rock-chips.com>
 <7f17cc55-a741-4bb8-9513-0580ca6fedd3@linaro.org> <17758610.geO5KgaWL5@diego>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <17758610.geO5KgaWL5@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_114345_328971_832B4AB4 
X-CRM114-Status: GOOD (  16.95  )
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

T24gMTEvMDIvMjAyNSAxMToxOSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGV5IERhbmllbCwK
PiAKPiBBbSBEaWVuc3RhZywgMTEuIEZlYnJ1YXIgMjAyNSwgMTA6MzY6MDkgTUVaIHNjaHJpZWIg
RGFuaWVsIExlemNhbm86Cj4+IE9uIDI0LzEyLzIwMjQgMTA6NDAsIEtldmVyIFlhbmcgd3JvdGU6
Cj4+PiBGcm9tOiBTaGFvaGFuIFlhbyA8c2hhb2hhbi55YW9Acm9jay1jaGlwcy5jb20+Cj4+Pgo+
Pj4gVGhlcmUgYXJlIG9uZSBUZW1wZXJhdHVyZSBTZW5zb3Igb24gcmszNTYyLCBjaGFubmVsIDAg
aXMgZm9yIGNoaXAuCj4+Cj4+IEEgYml0IHN0aW5neSBpbiB0ZXJtcyBvZiBkZXNjcmlwdGlvbiwg
bm8gPwo+Pgo+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogU2hhb2hhbiBZYW8gPHNoYW9oYW4ueWFvQHJv
Y2stY2hpcHMuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0By
b2NrLWNoaXBzLmNvbT4KPiBbLi4uXQo+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgdHNhZGNfdGFi
bGUgcmszNTYyX2NvZGVfdGFibGVbXSA9IHsKPj4+ICsJezAsIC00MDAwMH0sCj4+PiArCXsxNDE5
LCAtNDAwMDB9LAo+Pj4gKwl7MTQyOCwgLTM1MDAwfSwKPj4+ICsJezE0MzYsIC0zMDAwMH0sCj4+
PiArCXsxNDQ1LCAtMjUwMDB9LAo+Pj4gKwl7MTQ1MywgLTIwMDAwfSwKPj4+ICsJezE0NjIsIC0x
NTAwMH0sCj4+PiArCXsxNDcwLCAtMTAwMDB9LAo+Pj4gKwl7MTQ3OSwgLTUwMDB9LAo+Pj4gKwl7
MTQ4NywgMH0sCj4+PiArCXsxNDk2LCA1MDAwfSwKPj4+ICsJezE1MDQsIDEwMDAwfSwKPj4+ICsJ
ezE1MTIsIDE1MDAwfSwKPj4+ICsJezE1MjEsIDIwMDAwfSwKPj4+ICsJezE1MjksIDI1MDAwfSwK
Pj4+ICsJezE1MzgsIDMwMDAwfSwKPj4+ICsJezE1NDYsIDM1MDAwfSwKPj4+ICsJezE1NTUsIDQw
MDAwfSwKPj4+ICsJezE1NjMsIDQ1MDAwfSwKPj4+ICsJezE1NzIsIDUwMDAwfSwKPj4+ICsJezE1
ODAsIDU1MDAwfSwKPj4+ICsJezE1ODksIDYwMDAwfSwKPj4+ICsJezE1OTgsIDY1MDAwfSwKPj4+
ICsJezE2MDYsIDcwMDAwfSwKPj4+ICsJezE2MTUsIDc1MDAwfSwKPj4+ICsJezE2MjMsIDgwMDAw
fSwKPj4+ICsJezE2MzIsIDg1MDAwfSwKPj4+ICsJezE2NDAsIDkwMDAwfSwKPj4+ICsJezE2NDgs
IDk1MDAwfSwKPj4+ICsJezE2NTcsIDEwMDAwMH0sCj4+PiArCXsxNjY2LCAxMDUwMDB9LAo+Pj4g
Kwl7MTY3NCwgMTEwMDAwfSwKPj4+ICsJezE2ODIsIDExNTAwMH0sCj4+PiArCXsxNjkxLCAxMjAw
MDB9LAo+Pj4gKwl7MTY5OSwgMTI1MDAwfSwKPj4+ICsJe1RTQURDVjJfREFUQV9NQVNLLCAxMjUw
MDB9LAo+Pj4gK307Cj4+Cj4+IE1heSBiZSBpdCBpcyB0aW1lIHRvIG9wdGltaXplIGFsbCB0aGVz
ZSB0YWJsZXMgb3V0IG9mIHRoZSBtZW1vcnkgZHJpdmVyPwo+Pgo+PiBJdCBpcyB0aGUgOXRoIHRh
YmxlIGludHJvZHVjZWQuCj4gCj4ganVzdCB0byBzZWUgaWYgd2UgdGhpbmsgZGlmZmVyZW50bHks
IHdoYXQgZG8geW91IGhhdmUgaW4gbWluZD8KPiAKPiBGb3IgbWUgdGhlIGFkYy10by10ZW1wZXJh
dHVyZSBjb252ZXJzaW9uIF9pc18gcGFydCBvZiB0aGUgaHctYmxvY2sgaXRzZWxmLAo+IHNvIHNo
b3VsZCBsaWtlbHkgbm90IHNwaWxsIGludG8gdGhlIGRldmljZXRyZWUsIGJ1dCB5b3UncmUgcmln
aHQsIGRlZmluaW5nCj4gYSBiaWcgdGFibGUgZm9yIGVhY2ggc29jIGFsc28gaXNuJ3QgcmVhbGx5
IGdyZWF0Lgo+IAo+IEZvciB0aGUgcmszNTYyIGluIHF1ZXN0aW9uLCB0aGUgc3RlcHBpbmcgc2Vl
bXMgdG8gYmUgOCw5LDgsOSwuLi4uCj4gd2hlcmUgZm9yIHRoZSByazM1NjggdGhlIHZhbHVlIHN0
ZXBwaW5nIHNlZW1zIHRvIGJlIDMyLDM2LDMyLDM2LC4uLgo+IGFuZCBpdCBsb29rcyBzaW1pbGFy
IGZvciB0aGUgb3RoZXIgc29jcyB0b28sIHdpdGggdGhlIGRyaXZlciBpcyBhbHJlYWR5Cj4gaW50
ZXJwb2xhdGluZyBiZXR3ZWVuIHZhbHVlcyBpdCBzZWVtcy4KPiAKPiBTbyBldmVuIGp1c3QgaGFs
dmluZyAob3IgbW9yZSkgYWxsIHRoZSBiaWcgdGFibGVzIChkcm9wcGluZyBldmVyeSBzZWNvbmQK
PiBlbnRyeSBmb3IgZXhhbXBsZSkgc2hvdWxkIG5vdCByZWFsbHkgbG9vc2UgdXMgcmVhbCBncmFu
dWxhcml0eS4KCkl0IGNhbiBiZSBqdXN0IGEgZm9ybXVsYSB0byBiZSByZXVzZWQgaW4gdGhlIGFk
Y190b190ZW1wLCB0ZW1wX3RvX2FkYyBvciAKcHJlY29tcHV0ZSB0aGUgdGFibGUgZnJvbSB0aGUg
Zm9ybXVsYToKCkZvciBpbnN0YW5jZSB0aGUgZm9sbG93aW5nIGZvcm11bGFzOgoKcmszNTg4X2Nv
ZGVfdGFibGU6CgoJeSA9ICgoeF4yICsgMjMzMTV4IC0gNTk0OTMwMCkgKiAxMDApIC8gMjQ1NwoK
cmszNTY4X2NvZGVfdGFibGU6CgoJeSA9ICgoeF4yIC0gMjY2MHggKyAxNTQ3NzEyKSAqIDYyNSkg
LyAyNDQ4CgpldGMgLi4uCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8
aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8v
dHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
