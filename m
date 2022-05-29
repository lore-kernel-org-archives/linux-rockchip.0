Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC7A6C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 May 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcxRzSp+xBJP9sZ+/IfjF4sQe317ogDwI2KP8bcbW+I=; b=QPdlCDcPvGXP8o
	D6P+qKO9W+tTlgnI86vhJUkzHFmFHUCI+QMDEShKgYiSeWl4hiXqcfVeTYibLpAhOFHhIaudOCMXH
	xwr5s+AAPdnXLTSCyOdRhynLvWiiMT/EMbYy6iGhKoizY3Kn3zTyuAbepgCBSvQqFU5zv5bq252P4
	fXc9VaXOCeAS7k2bKoRg2MNBINUse4Nz9bUExihNSehzA8Xnd7LsimqBLrClWRQuFfwB8/10v/zgD
	a+pwqGdmia7TYTpxa4vs2hS9Kh5b/EFH55SGXbkxZOMV/jee1YRK/ACCYXNeEnxqVF0KjzTzqHhCB
	pltIQOUHU6an6h9xPQeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvJry-0042V4-9D; Sun, 29 May 2022 14:26:14 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvJrv-0042Tw-3Y
	for linux-rockchip@lists.infradead.org; Sun, 29 May 2022 14:26:12 +0000
Received: by mail-ej1-x634.google.com with SMTP id n10so16567815ejk.5
        for <linux-rockchip@lists.infradead.org>; Sun, 29 May 2022 07:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3JaAWKa1bZRwQXdiutq3KI0xLzzTpwZUulcAkJ3MYjM=;
        b=KRMv70BYNXO5K4g2IQQvfaI/pcabvXgzAfht622ys8tKYzwvf3ofKMlRf6PdjuwS/9
         X5abjnqdqyAcufM080Z4QbIOUIoWwMYVWdWsNwIRmj+tL5LFL+ntX9DgRCQrOs109ovN
         E35I9HBfy6NOdqQFKyX8T7zNFQMUqWGueuOQkQtZE3pEsyVxwFA2ahAmDZReu0fcIqms
         fiu0eK/aDeoFamLT1/pdTcYrp07T+7/9Vv3JtgDsVqMgoMlU9REYuKcL4lsteUnfbh61
         cPqJcPG81LCrK7PoY1jke+x7BjpcoVgO7f9PxmNYBdMewrjn8eBEPidomKsHpNEVoEmn
         bU/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3JaAWKa1bZRwQXdiutq3KI0xLzzTpwZUulcAkJ3MYjM=;
        b=dqFuygUOog528WKiiO2eoCAPkO9RUFTHXJJZI1HJ5nD8c2jRRb9VzZoFKuJOTS3MIR
         unD6ebqxlSX3/KAuBuGfS4vOvsgEO/4xcnzDnbwCsP/FsiVH590D6wNu+S3Kw/Zpm3Yk
         0IeL3KkhQ/hVkw7dZ7rgbMPLPNhUk48hmX8G4tviZRb33xrTNunr0CuGzQBO1qb3MHqj
         wCd6SU1/uuDlsH8SO6Bfx/jRXCeXjXAc0jtyYHhnc+05y6Qy80OvEV6FgG/NAChXCBMI
         lU+IdayTWxoNtG47IrzotaLSd3u2E6cwFPcRrmMOtEiefhLPtD2ZTbX8m26ibSf7vaIT
         lqVQ==
X-Gm-Message-State: AOAM531yHPCEyBpDq8ZN1UtFKBjvK9sXAcFdKGd0nwMMyQ78sWaCrbQ6
	XG1ptq+1jyb9eTtRPNqPCA03JA==
X-Google-Smtp-Source: ABdhPJySVlVvENmtWvnwL1k/sepyDlzyv6YTdAOFbHANvVoWjCkbv8v/KqvZg0t+m68ewWBbun5GaQ==
X-Received: by 2002:a17:907:7256:b0:6ff:2ed0:95d with SMTP id ds22-20020a170907725600b006ff2ed0095dmr12654168ejc.452.1653834369795;
        Sun, 29 May 2022 07:26:09 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id a92-20020a509ee5000000b0042dbc55f6e4sm2231061edf.7.2022.05.29.07.26.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 May 2022 07:26:09 -0700 (PDT)
Message-ID: <8123f029-8d0b-be52-ba8d-8458f424ee32@linaro.org>
Date: Sun, 29 May 2022 16:26:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for Pine64
 PinePhone Pro
Content-Language: en-US
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 Ondrej Jirman <x@xff.cz>, Martijn Braam <martijn@brixit.nl>,
 Ondrej Jirman <megous@megous.com>
References: <20220529031705.278631-1-tom@tom-fitzhenry.me.uk>
 <20220529031705.278631-3-tom@tom-fitzhenry.me.uk>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220529031705.278631-3-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220529_072611_196040_7EC8A6B9 
X-CRM114-Status: GOOD (  19.85  )
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

T24gMjkvMDUvMjAyMiAwNToxNywgVG9tIEZpdHpoZW5yeSB3cm90ZToKPiBUaGlzIGlzIGEgYmFz
aWMgRFQgdGhhdCBpbmNsdWRlcyBvbmx5IGZlYXR1cmVzIHRoYXQgYXJlIGFscmVhZHkKPiBzdXBw
b3J0ZWQgYnkgbWFpbmxpbmUgZHJpdmVycy4KPiAKPiBUZXN0ZWQgdG8gd29yazogYm9vdGluZyBm
cm9tIGVNTUMsIFdpRmksIGNoYXJnaW5nLgo+IAo+IEZ1dHVyZSBwYXRjaGVzIHdpbGwgZmxlc2gg
b3V0IHRoZSBEVC4gU29tZSBjb21wb25lbnRzLCBlLmcuIHRoZSBwYW5lbCwKPiBhcmUgYXdhaXRp
bmcgZHJpdmVyIG1haW5saW5pbmcuCj4gCj4gVGhpcyBpcyBkZXJpdmVkIGZyb20gYSBjb21iaW5h
dGlvbiBvZiBodHRwczovL2dpdGxhYi5jb20vcGluZTY0LW9yZy9saW51eAo+IGFuZCBodHRwczov
L21lZ291cy5jb20vZ2l0L2xpbnV4Lgo+IAo+IGh0dHBzOi8vd2lraS5waW5lNjQub3JnL3dpa2kv
UGluZVBob25lX1Bybwo+IAo+IENvLWRldmVsb3BlZC1ieTogT25kcmVqIEppcm1hbiA8bWVnb3Vz
QG1lZ291cy5jb20+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJy
aXhpdC5ubD4KPiBTaWduZWQtb2ZmLWJ5OiBUb20gRml0emhlbnJ5IDx0b21AdG9tLWZpdHpoZW5y
eS5tZS51az4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAg
ICAgICAgIHwgICAxICsKPiAgLi4uL2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5k
dHMgICAgIHwgOTM5ICsrKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDk0MCBp
bnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cwo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9NYWtlZmlsZQo+IGluZGV4IDRhZTlmMzU0MzRiOC4uYzAwZTc5MjJkOTc0IDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gQEAgLTQxLDYgKzQxLDcgQEAgZHRi
LSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1uYW5vcGktbmVvNC5kdGIKPiAgZHRi
LSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1uYW5vcGktcjRzLmR0Ygo+ICBkdGIt
JChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LW9yYW5nZXBpLmR0Ygo+ICBkdGItJChD
T05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXBpbmVib29rLXByby5kdGIKPiArZHRiLSQo
Q09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1waW5lcGhvbmUtcHJvLmR0Ygo+ICBkdGIt
JChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXB1bWEtaGFpa291LmR0Ygo+ICBkdGIt
JChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvYy1wYy5kdGIKPiAgZHRiLSQoQ09O
RklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1yb2MtcGMtbWV6emFuaW5lLmR0Ygo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJv
LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8u
ZHRzCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLmIxYTQ4NmRi
MWRmZQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cwo+IEBAIC0wLDAgKzEsOTM5IEBACj4gKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ICsvKgo+ICsgKiBDb3B5cmln
aHQgKGMpIDIwMjAgTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+Cj4gKyAqIENvcHly
aWdodCAoYykgMjAyMSBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1Pgo+ICsgKi8K
PiArCj4gKy8vIFBpbmVQaG9uZSBQcm8gZGF0YXNoZWV0OiBodHRwczovL2ZpbGVzLnBpbmU2NC5v
cmcvZG9jL1BpbmVQaG9uZVByby9QaW5lcGhvbmVQcm8tU2NoZW1hdGljLVYxLjAtMjAyMTExMjcu
cGRmCj4gKwo+ICsvZHRzLXYxLzsKPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2dwaW8t
a2V5cy5oPgo+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvbGludXgtZXZlbnQtY29kZXMu
aD4KPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3VzYi9wZC5oPgo+ICsjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvbGVkcy9jb21tb24uaD4KPiArI2luY2x1ZGUgInJrMzM5OS5kdHNpIgo+ICsjaW5jbHVk
ZSAicmszMzk5LW9wcC5kdHNpIgo+ICsKPiArLyB7Cj4gKwltb2RlbCA9ICJQaW5lNjQgUGluZVBo
b25lUHJvIjsKPiArCWNvbXBhdGlibGUgPSAicGluZTY0LHBpbmVwaG9uZS1wcm8iLCAicm9ja2No
aXAscmszMzk5IjsKPiArCj4gKwljaG9zZW4gewo+ICsJCWJvb3RhcmdzID0gImVhcmx5Y29uPXVh
cnQ4MjUwLG1taW8zMiwweGZmMWEwMDAwIjsKCmVhcmx5Y29uIGlzIGRlYnVnZ2luZyBwaWVjZSBz
byBpdCBzaG91bGQgbm90IGJlIGluIGdlbmVyaWMgRFRTLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0
b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
