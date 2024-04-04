Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0950DCD1284
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 08:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qpF+6xfbwd8ErF2lMIBxgpqvSqWwNZ7ZortD0uNjiU=; b=xVcY19f0VDTb+U
	gLsmiRKeIddZLtjUzKdRMAwr8jKz5kFS7MI6Vu9Pkcx5jwGr2wkxqt32qmonFxf0aPlRKqyqmawd4
	x3xu3miwSMSo2RmR6wZgbT78F41iK9zYZrZuhHysidQeztQmderIpvONyu2CPiSgQJzGygSvQyDdx
	2UNnf/vJWOk4f2tos7ykiLLWJldzrly9WhCXdt4kc4r5LKnY9mvF3FzMe2e71Jnh6TZ+mu6dm8c+Y
	3UnXMDrbixXDohbZARCDRuYr2ChM34RKQitfIZqKWogcmwgo1YHY3jY/wINwPdBUdlbwpqvqmF7NW
	fMQeTP+o4/NoBE+cFBkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsIMt-00000001pSZ-3aiB;
	Thu, 04 Apr 2024 08:22:43 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsIMp-00000001pQB-2nYi
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 08:22:41 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-56e1baf0380so563766a12.3
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Apr 2024 01:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712218956; x=1712823756; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=k/cXtGay1SI65avew/G0uaOFb7xUGQaVzPwzbwy7NxI=;
        b=lJOfjhOlxfq5h7/FfAl7BnSIiOOIHo6KDSJ4GUiz7qPeGuK7jlCd0WmOM75zTOGnDF
         eIhKD/A1CmQP5mtaI9xLsJ1Dh7d3+8wYmo/9wNCooR5GghVuh+z6QpEV39cTXBeIQfjN
         GEs0lb6H1XiiyVaPwdyEt1QN3u1TkvFU6hfF2MPTd2gtVvh0LOPC0wW49F9amgsrte4l
         Ns/xQcBMRSCKqXTLDgxJ2jv/7vlezGXLzEUvncXj1BXXLBGRJcFjo1ZuIdIY5m9yhMyu
         05gcqShEdIiwhCrfCus/wYUKrW6i4ixdkavNnkFewVnFvnrnvHs/KRMglGQqhzUBJdHX
         abtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712218956; x=1712823756;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k/cXtGay1SI65avew/G0uaOFb7xUGQaVzPwzbwy7NxI=;
        b=URSJu0/VeOEmiXvd62j2oIf0zq3sbVD1mHjPKbUIRmJir3IzM3wIRJBEQBZJt2mBXu
         kU9r0CEShf56gC1W3s3BHrcCbCF3qbtKBkD9ozHSRk/nJCnREfYo/Ts2z0teL/5VvTWc
         DEnQAbgma+3BZdE2rBTGLSiXgOd/tWOoX9KOPwh5DaLoa6HPEuTtuB82whV/50uSIrmu
         S5Risu5w1ZZryHK8hqVjQY9nLbwwUB1g0Jua1gI1CWClyG7bAbzqezwmm2bVwRpHxcvv
         /XBLGy/roie4DR0LWj9Ikob/CQEA8oNsZ2PzQSfPAw7kWZF9aeO3aPiyurJrKxL4K0fW
         ZAsg==
X-Forwarded-Encrypted: i=1; AJvYcCVBlhCYhF/JmD/qNzZWu2QMUpZqAetcAPble6e3fWHIS47D/ru3U11KTCwlC9hS7u5o2qvLEWFmwFyKt/I6z0IgbXq123b+c97rRTaWOPVCCfcS
X-Gm-Message-State: AOJu0Yxw/1LTg8Q9CKn3p5GoB7+NvllcRUE3YnRJPGEQCoxdzksUf8LF
	q/dOEkKSkFwTJSvFrJ+Bb0UgarSqgBDdFLIbSIV8Q+v2JP9kIxU3f3Q08/1Ecno=
X-Google-Smtp-Source: AGHT+IE7fdBtqZdr9n6gEQqkZlKXIXE8WOy361QrMMoxAL4AZ/RrHX0sFZT5pxcAdX5m4n+u9wvtyg==
X-Received: by 2002:a50:9b1c:0:b0:56d:ece8:a5e8 with SMTP id o28-20020a509b1c000000b0056dece8a5e8mr1254028edi.14.1712218956619;
        Thu, 04 Apr 2024 01:22:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id h13-20020a0564020e0d00b0056de7bee45bsm2989461edh.18.2024.04.04.01.22.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Apr 2024 01:22:36 -0700 (PDT)
Message-ID: <d7fc172f-68f8-4689-a69e-e45b2392b43e@linaro.org>
Date: Thu, 4 Apr 2024 10:22:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] Add Synopsys DesignWare HDMI RX Controller
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Shreeya Patel <shreeya.patel@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 shawn.wen@rock-chips.com, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm@lists.infradead.org
References: <20240327225057.672304-1-shreeya.patel@collabora.com>
 <3049149.687JKscXgg@diego> <c790c8ba-a9bd-4820-8084-1294e5e523d9@linaro.org>
 <28071718.gRfpFWEtPU@diego>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <28071718.gRfpFWEtPU@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_012239_771266_69CD4FC5 
X-CRM114-Status: GOOD (  15.61  )
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

T24gMDQvMDQvMjAyNCAxMDoxOSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRG9ubmVyc3Rh
ZywgNC4gQXByaWwgMjAyNCwgMDg6MTU6NTAgQ0VTVCBzY2hyaWViIEtyenlzenRvZiBLb3psb3dz
a2k6Cj4+IE9uIDA0LzA0LzIwMjQgMDA6NDgsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+Pj4gQW0g
TWl0dHdvY2gsIDMuIEFwcmlsIDIwMjQsIDEzOjI0OjA1IENFU1Qgc2NocmllYiBLcnp5c3p0b2Yg
S296bG93c2tpOgo+Pj4+IE9uIDAzLzA0LzIwMjQgMTM6MjAsIFNocmVleWEgUGF0ZWwgd3JvdGU6
Cj4+Pj4+IE9uIFdlZG5lc2RheSwgQXByaWwgMDMsIDIwMjQgMTU6NTEgSVNULCBLcnp5c3p0b2Yg
S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Pj4+Pgo+
Pj4+Pj4gT24gMDMvMDQvMjAyNCAxMToyNCwgU2hyZWV5YSBQYXRlbCB3cm90ZToKPj4+Pj4+PiBP
biBUaHVyc2RheSwgTWFyY2ggMjgsIDIwMjQgMDQ6MjAgSVNULCBTaHJlZXlhIFBhdGVsIDxzaHJl
ZXlhLnBhdGVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoaXMgc2Vy
aWVzIGltcGxlbWVudHMgc3VwcG9ydCBmb3IgdGhlIFN5bm9wc3lzIERlc2lnbldhcmUKPj4+Pj4+
Pj4gSERNSSBSWCBDb250cm9sbGVyLCBiZWluZyBjb21wbGlhbnQgd2l0aCBzdGFuZGFyZCBIRE1J
IDEuNGIKPj4+Pj4+Pj4gYW5kIEhETUkgMi4wLgo+Pj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gSGkg
TWF1cm8gYW5kIEhhbnMsCj4+Pj4+Pj4KPj4+Pj4+PiBJIGhhdmVuJ3QgcmVjZWl2ZWQgYW55IHJl
dmlld3Mgc28gZmFyLiBIZW5jZSwgdGhpcyBpcyBqdXN0IGEgZ2VudGxlIHJlbWluZGVyIHRvIHJl
dmlldyB0aGlzIHBhdGNoIHNlcmllcy4KPj4+Pj4+Cj4+Pj4+PiBXaHkgZGlkIHlvdSBwdXQgY2xr
IGNoYW5nZXMgaGVyZT8gVGhlc2UgZ28gdmlhIGRpZmZlcmVudCBzdWJzeXN0ZW0uIFRoYXQKPj4+
Pj4+IG1pZ2h0IGJlIG9uZSBvZiBvYnN0YWNsZXMgZm9yIHlvdXIgcGF0Y2hzZXQuCj4+Pj4+Pgo+
Pj4+Pgo+Pj4+PiBJIGFkZGVkIGNsb2NrIGNoYW5nZXMgaW4gdGhpcyBwYXRjaCBzZXJpZXMgYmVj
YXVzZSBIRE1JUlggZHJpdmVyIGRlcGVuZHMgb24gaXQuCj4+Pj4+IEkgdGhvdWdodCBpdCBpcyB3
cm9uZyB0byBzZW5kIHRoZSBkcml2ZXIgcGF0Y2hlcyB3aGljaCBkb24ndCBldmVuIGNvbXBpbGU/
Cj4+Pj4KPj4+PiBIbSwgd2h5IEhETUlSWCBkcml2ZXIgZGVwZW5kcyBvbiBjbG9jaz8gSG93PyBU
aGlzIHNvdW5kcyByZWFsbHkgd3JvbmcuCj4+Pj4gUGxlYXNlIGdldCBpdCByZXZpZXdlZCBpbnRl
cm5hbGx5IGZpcnN0Lgo+Pj4KPj4+IEZvciB0aGUgY2hhbmdlIGluIHF1ZXN0aW9uLCB0aGUgY2xv
Y2sgY29udHJvbGxlciBvbiB0aGUgc29jIGFsc28gaGFuZGxlcwo+Pj4gdGhlIHJlc2V0IGNvbnRy
b2xzIChoZW5jZSBpdHMgbmFtZSBDUlUsIGNsb2NrLWFuZC1yZXNldC11bml0KSAuCj4+Pgo+Pj4g
VGhlcmUgYXJlIGF0IGxlYXN0IDY2MCByZXNldCBsaW5lcyBpbiB0aGUgdW5pdCBhbmQgaXQgc2Vl
bXMgdGhlIGhkbWktcnggb25lCj4+PiB3YXMgb3Zlcmxvb2tlZCBvbiB0aGUgaW5pdGlhbCBzdWJt
aXNzaW9uLCBoZW5jZSBwYXRjaGVzIDErMiBhZGQgdGhlCj4+PiByZXNldC1saW5lLgo+Pj4KPj4+
IE9mIGNvdXJzZSwgaGVyZSBvbmx5IHRoZSAiYXJtNjQ6IGR0czoiIHBhdGNoIGRlcGVuZHMgb24g
dGhlIGNsb2NrCj4+PiBjaGFuZ2UsIGlzIGl0IHJlZmVyZW5jZXMgdGhlIG5ldyByZXNldC1pZC4K
Pj4KPj4gV2FpdCwgdGhhdCdzIGV4cGVjdGVkLCBidXQgaXQgaXMgbm90IHdoYXQgd2FzIHdyaXR0
ZW4uIENsYWltIHdhcyBIRE1JUlgKPj4gZHJpdmVyIGRlcGVuZHMgKmJ1aWxkIHRpbWUqICgiZG9u
J3QgZXZlbiBjb21waWxlIikuCj4gCj4gVHJ5aW5nIHRvIGRvIGEgZnVsbCBidWlsZCAoa2VybmVs
ICsgZHRzKSB3aWxsIGZhaWwsIGJlY2F1c2UgdGhlIHRoZQo+IGRldmljZS10cmVlIHBhdGNoIHJl
ZmVyZW5jZXMgdGhlIG5ld2x5IGFkZGVkIHJlc2V0LWlkIC4KPiAKPiBTbyB5b3UgZW5kIHVwIHdp
dGggYSBkdGMgZXJyb3IuIFNhbWUgd2l0aCB0aGUgYmluZGluZy4KCldoaWNoIGlzIHF1aXRlIGV4
cGVjdGVkLCBub3RoaW5nIHNwZWNpYWwsIG1vc3QgcGF0Y2hzZXRzIGhhdmUgZXhhY3RseQp0aGUg
c2FtZSBkZXBlbmRlbmN5LiBJdCdzIG5vdCBhIEhETUlSWCBkcml2ZXIgZGVwZW5kZW5jeS4gSXQn
cyBEVFMgYW5kCmNsb2NrIHByb3ZpZGVyIG9uIHRoZSBiaW5kaW5nIGhlYWRlciwgbm90IGNsb2Nr
IGNvbnN1bWVyLgoKV2Ugc29sdmVkIGl0IG1hbnkgdGltZXMgYW5kIGRpZmZlcmVudCBTb0Mgc3Vi
c3lzdGVtcyBoYXZlIHRoZWlyIG93bgpndWlkZWxpbmVzLiBQdXR0aW5nIGhlcmUgbWVkaWEgaXMg
bm90IHRoZSByaWdodCBhcHByb2FjaCBhbmQgbm90IGp1c3RpZmllZC4KCkJlc3QgcmVnYXJkcywK
S3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
