Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C47ECE77182
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 11:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cq1tlLZ+4Ai64GujWcwp+ALgKrKMYhfEIePMnn/dTQE=; b=vuJmU4KCri3TxM
	KuoGmku3hrwwdqFez4kZeFRBGWn8rAvhgeaif03n+LhxNgrJwyOcNR/ZNPR2ONtofnH2/4lmyBpRQ
	Y9wyEXfQmZtCmTiHXjBrabBXZIAZNv5OqgDvWW4F1MhMwdZvy496KHo/RiAWbjwPvuWXgk8yZIQvb
	CNi1ED+rbEz1/kudsAhtBkehHLskmqdRLu2jwobN9YAaaQRNt/Jmee4qfQlsKe8HU0S+LHCXGUFl3
	Q3d8p+4lhKRfBAsSJRmaoFNYKovle4Hkb8945rnC553aSpVwKJZ0wCPYjJa9WINl9b55N61M4/M3Y
	4bAcdvcezcPH2lVX+lUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLhLo-00000000B7d-3xHK;
	Thu, 12 Dec 2024 11:27:24 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLhLm-00000000B5t-1CIS
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Dec 2024 11:27:23 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5d41848901bso948686a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Dec 2024 03:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734002840; x=1734607640; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BqF2Tieb7D67lOICsBmQP287sce+XfAQfH7MOyV9crc=;
        b=ALrB4kRtl/Yeqy9xRAo32Gdb1OqgDHKn9iIK/G07HbshPvNdTG4oO3z/S4XnloAd7z
         M5jZjQuwdjBecd9ZBYUvVevJNPjWGH4ox5XCMn0jejsT4Dw4/SN4oRFozjaTArNqHm1z
         HhlNyQomuxv8BT093Lm0yJZYtgrOgTWpaKD2HDQ5REglpJrfzELLlMieMobXZzep/p8Y
         b4U4I/ANUYe1mU5vOw/wHksrVUkugGjMbYGyoViKegz5kKDpTqoHDljcrgADkQI8N/7z
         F4XgK3TsRzIyZpnHBI+4I/tbIHRoHOs4Ql84TLoolWytIgig83NVmtBUxwBBWApGzu9n
         2sFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734002840; x=1734607640;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BqF2Tieb7D67lOICsBmQP287sce+XfAQfH7MOyV9crc=;
        b=ZmuFYXTsJyW3U6iihk9qMRWMCXmoCnHKQqnWMAJYPZ/wanRcTPhtvWsUssTgle8cjG
         ZRSI1Yi5nJA9h8FxdsqCVZmuBCgzRR3ylRDoSeKmUjrOMHEB8PrcoYLt6P+JKrKpy1dj
         jHx2ZeYIeZjqgaw6R3O3wb2hpQYjrgB+y4/9SVkeZNXaPyLhljP3wJqSjKZGwa9CAsb9
         qap5GK+PjEiTTpQowslHiUAV7cjLc3NlgC/s2jFF6vZT4YfxrPq9qbnWJaKaBgEhRcOY
         ukqsZvNiQVyH+twagZtjuq7C/2NxXVqU6VFZoGoVFewBpCC7r25GQA8za4aX5H7gF2Qt
         Ez8A==
X-Forwarded-Encrypted: i=1; AJvYcCWG1Rf1bTmjgqW3GNxC6Nqhj2c3SG136yaWeQKssGKwNtufmv3sKpcCFfEITJu+n3xy9ePWmVU8yAbOEIWAzw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw33gAWfUIBvLNztB0CKJDRmIC6KUMYzrZgMe/2Da3K3gXjfIaY
	fCuP2GNZQ1ElMTEQFgSPf5pp6WfmPuEadrEZ/yPUM4/Kwbw1NYfYt8tSS6NpMMDzUF9eeaqXR3d
	sLOtlHZBJORfp4BxJjo9BQJKqU8XNLz499/lJRg==
X-Gm-Gg: ASbGncu+rS4UL1mCpfQnEQXrGw6xmditeniVInK9jTlvj7t0oDZatJIJc+jg1u7zET6
	NY5lhKIP4DY39+5sS/643Cv4Ceqg/O0cRiKcvo3g=
X-Google-Smtp-Source: AGHT+IHSocGA17XJXgNRc77fra8QkYZRyTUv7pf/EXG6lM07ihLb0AEq4b28rY2ahXI1ToSkjC7tXsZ2JZaq/zhJemc=
X-Received: by 2002:a05:6402:34d5:b0:5d3:f617:a003 with SMTP id
 4fb4d7f45d1cf-5d4eb599aa0mr763985a12.4.1734002840039; Thu, 12 Dec 2024
 03:27:20 -0800 (PST)
MIME-Version: 1.0
References: <20241211143044.9550-1-sebastian.reichel@collabora.com>
 <20241211143044.9550-4-sebastian.reichel@collabora.com> <CAMdYzYqLq=kSC8fiBapRS_8w0s8PaL9Yd46VgM56YbTEmUG1xA@mail.gmail.com>
 <xe2wqm4ktutycxj7x4rskz4pn4cfmoci6zcgfxecmvc5bu7cqi@mqxi3pnehqq3> <CAMdYzYpDXHtz_Fq5NJXqTdxVTcJcHkjcjU4-J=zwmE0BWmSsNw@mail.gmail.com>
In-Reply-To: <CAMdYzYpDXHtz_Fq5NJXqTdxVTcJcHkjcjU4-J=zwmE0BWmSsNw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 12 Dec 2024 12:26:42 +0100
Message-ID: <CAPDyKFoW5-U8hLcU-sryuMSP5-E2_yudFZ2-wH8-s62jn4qJ8A@mail.gmail.com>
Subject: Re: [PATCH v5 3/7] pmdomain: rockchip: forward rockchip_do_pmu_set_power_domain
 errors
To: Peter Geis <pgwipeout@gmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com, 
	Dragan Simic <dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_032722_401416_91F9618E 
X-CRM114-Status: GOOD (  36.01  )
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

T24gVGh1LCAxMiBEZWMgMjAyNCBhdCAwMDoxMSwgUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWls
LmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIERlYyAxMSwgMjAyNCBhdCAzOjQ24oCvUE0gU2ViYXN0
aWFuIFJlaWNoZWwKPiA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gSGVsbG8gUGV0ZXIsCj4gPgo+ID4gT24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMDI6NTM6
MzRQTSAtMDUwMCwgUGV0ZXIgR2VpcyB3cm90ZToKPiA+ID4gT24gV2VkLCBEZWMgMTEsIDIwMjQg
YXQgOTozMuKAr0FNIFNlYmFzdGlhbiBSZWljaGVsCj4gPiA+IDxzZWJhc3RpYW4ucmVpY2hlbEBj
b2xsYWJvcmEuY29tPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IEN1cnJlbnRseSByb2NrY2hpcF9k
b19wbXVfc2V0X3Bvd2VyX2RvbWFpbiBwcmludHMgYSB3YXJuaW5nIGlmIHRoZXJlCj4gPiA+ID4g
aGF2ZSBiZWVuIGVycm9ycyB0dXJuaW5nIG9uIHRoZSBwb3dlciBkb21haW4sIGJ1dCBpdCBkb2Vz
IG5vdCByZXR1cm4KPiA+ID4gPiBhbnkgZXJyb3JzIGFuZCByb2NrY2hpcF9wZF9wb3dlcigpIHRy
aWVzIHRvIGNvbnRpbnVlIHNldHRpbmcgdXAgdGhlCj4gPiA+ID4gUU9TIHJlZ2lzdGVycy4gVGhp
cyB1c3VhbGx5IHJlc3VsdHMgaW4gYWNjZXNzaW5nIHVucG93ZXJlZCByZWdpc3RlcnMsCj4gPiA+
ID4gd2hpY2ggdHJpZ2dlcnMgYW4gU0Vycm9yIGFuZCBhIGZ1bGwgc3lzdGVtIGhhbmcuCj4gPiA+
ID4KPiA+ID4gPiBUaGlzIGltcHJvdmVzIHRoZSBlcnJvciBoYW5kbGluZyBieSBmb3J3YXJkaW5n
IHRoZSBlcnJvciB0byBhdm9pZAo+ID4gPiA+IGtlcm5lbCBwYW5pY3MuCj4gPiA+Cj4gPiA+IEkg
dGhpbmsgd2Ugc2hvdWxkIG1lcmdlIHlvdXIgcGF0Y2ggaGVyZSB3aXRoIG15IHBhdGNoIGZvciBy
ZXR1cm5pbmcKPiA+ID4gZXJyb3JzIGZyb20gcm9ja2NoaXBfcG11X3NldF9pZGxlX3JlcXVlc3Qg
WzFdLgo+ID4KPiA+IEkgd2lsbCBoYXZlIGEgbG9vay4KPiA+Cj4gPiA+ID4gUmV2aWV3ZWQtYnk6
IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gPiA+ID4gVGVzdGVkLWJ5OiBIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ID4gPiA+IFRlc3RlZC1ieTogQWRyaWFuIExh
cnVtYmUgPGFkcmlhbi5sYXJ1bWJlQGNvbGxhYm9yYS5jb20+ICMgT24gUm9jayA1Qgo+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xs
YWJvcmEuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlw
L3BtLWRvbWFpbnMuYyB8IDM0ICsrKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4gPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPiA+ID4gPgo+
ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMu
YyBiL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jCj4gPiA+ID4gaW5kZXgg
YTE2MWVlMTNjNjMzLi44ZjQ0MGYyODgzZGIgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9w
bWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL3BtZG9t
YWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+ID4gPiA+IEBAIC01MzMsMTYgKzUzMywxNyBAQCBz
dGF0aWMgaW50IHJvY2tjaGlwX3BtdV9kb21haW5fbWVtX3Jlc2V0KHN0cnVjdCByb2NrY2hpcF9w
bV9kb21haW4gKnBkKQo+ID4gPiA+ICAgICAgICAgcmV0dXJuIHJldDsKPiA+ID4gPiAgfQo+ID4g
PiA+Cj4gPiA+ID4gLXN0YXRpYyB2b2lkIHJvY2tjaGlwX2RvX3BtdV9zZXRfcG93ZXJfZG9tYWlu
KHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkLAo+ID4gPiA+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJvb2wgb24pCj4gPiA+ID4gK3N0YXRpYyBpbnQg
cm9ja2NoaXBfZG9fcG11X3NldF9wb3dlcl9kb21haW4oc3RydWN0IHJvY2tjaGlwX3BtX2RvbWFp
biAqcGQsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBib29sIG9uKQo+ID4gPiA+ICB7Cj4gPiA+ID4gICAgICAgICBzdHJ1Y3Qgcm9ja2NoaXBfcG11
ICpwbXUgPSBwZC0+cG11Owo+ID4gPiA+ICAgICAgICAgc3RydWN0IGdlbmVyaWNfcG1fZG9tYWlu
ICpnZW5wZCA9ICZwZC0+Z2VucGQ7Cj4gPiA+ID4gICAgICAgICB1MzIgcGRfcHdyX29mZnNldCA9
IHBkLT5pbmZvLT5wd3Jfb2Zmc2V0Owo+ID4gPiA+ICAgICAgICAgYm9vbCBpc19vbiwgaXNfbWVt
X29uID0gZmFsc2U7Cj4gPiA+ID4gKyAgICAgICBpbnQgcmV0Owo+ID4gPiA+Cj4gPiA+ID4gICAg
ICAgICBpZiAocGQtPmluZm8tPnB3cl9tYXNrID09IDApCj4gPiA+ID4gLSAgICAgICAgICAgICAg
IHJldHVybjsKPiA+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiA+ID4KPiA+ID4g
PiAgICAgICAgIGlmIChvbiAmJiBwZC0+aW5mby0+bWVtX3N0YXR1c19tYXNrKQo+ID4gPiA+ICAg
ICAgICAgICAgICAgICBpc19tZW1fb24gPSByb2NrY2hpcF9wbXVfZG9tYWluX2lzX21lbV9vbihw
ZCk7Cj4gPiA+ID4gQEAgLTU1NywxNiArNTU4LDIxIEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX2Rv
X3BtdV9zZXRfcG93ZXJfZG9tYWluKHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkLAo+ID4g
PiA+Cj4gPiA+ID4gICAgICAgICB3bWIoKTsKPiA+ID4gPgo+ID4gPiA+IC0gICAgICAgaWYgKGlz
X21lbV9vbiAmJiByb2NrY2hpcF9wbXVfZG9tYWluX21lbV9yZXNldChwZCkpCj4gPiA+ID4gLSAg
ICAgICAgICAgICAgIHJldHVybjsKPiA+ID4gPiArICAgICAgIGlmIChpc19tZW1fb24pIHsKPiA+
ID4gPiArICAgICAgICAgICAgICAgcmV0ID0gcm9ja2NoaXBfcG11X2RvbWFpbl9tZW1fcmVzZXQo
cGQpOwo+ID4gPiA+ICsgICAgICAgICAgICAgICBpZiAocmV0KQo+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gKyAgICAgICB9Cj4gPiA+ID4KPiA+ID4g
PiAtICAgICAgIGlmIChyZWFkeF9wb2xsX3RpbWVvdXRfYXRvbWljKHJvY2tjaGlwX3BtdV9kb21h
aW5faXNfb24sIHBkLCBpc19vbiwKPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGlzX29uID09IG9uLCAwLCAxMDAwMCkpIHsKPiA+ID4gPiAtICAgICAgICAgICAg
ICAgZGV2X2VycihwbXUtPmRldiwKPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAiZmFp
bGVkIHRvIHNldCBkb21haW4gJyVzJywgdmFsPSVkXG4iLAo+ID4gPiA+IC0gICAgICAgICAgICAg
ICAgICAgICAgIGdlbnBkLT5uYW1lLCBpc19vbik7Cj4gPiA+ID4gLSAgICAgICAgICAgICAgIHJl
dHVybjsKPiA+ID4gPiArICAgICAgIHJldCA9IHJlYWR4X3BvbGxfdGltZW91dF9hdG9taWMocm9j
a2NoaXBfcG11X2RvbWFpbl9pc19vbiwgcGQsIGlzX29uLAo+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBpc19vbiA9PSBvbiwgMCwgMTAwMDApOwo+ID4gPiA+
ICsgICAgICAgaWYgKHJldCkgewo+ID4gPiA+ICsgICAgICAgICAgICAgICBkZXZfZXJyKHBtdS0+
ZGV2LCAiZmFpbGVkIHRvIHNldCBkb21haW4gJyVzJyAlcywgdmFsPSVkXG4iLAo+ID4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGdlbnBkLT5uYW1lLCBvbiA/ICJvbiIgOiAib2ZmIiwgaXNf
b24pOwo+ID4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ICAgICAgICAg
fQo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIHJldHVybiAwOwo+ID4gPiA+ICB9Cj4gPiA+ID4K
PiA+ID4gPiAgc3RhdGljIGludCByb2NrY2hpcF9wZF9wb3dlcihzdHJ1Y3Qgcm9ja2NoaXBfcG1f
ZG9tYWluICpwZCwgYm9vbCBwb3dlcl9vbikKPiA+ID4gPiBAQCAtNTkyLDcgKzU5OCwxMSBAQCBz
dGF0aWMgaW50IHJvY2tjaGlwX3BkX3Bvd2VyKHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBk
LCBib29sIHBvd2VyX29uKQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlw
X3BtdV9zZXRfaWRsZV9yZXF1ZXN0KHBkLCB0cnVlKTsKPiA+ID4gPiAgICAgICAgICAgICAgICAg
fQo+ID4gPiA+Cj4gPiA+ID4gLSAgICAgICAgICAgICAgIHJvY2tjaGlwX2RvX3BtdV9zZXRfcG93
ZXJfZG9tYWluKHBkLCBwb3dlcl9vbik7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIHJldCA9IHJv
Y2tjaGlwX2RvX3BtdV9zZXRfcG93ZXJfZG9tYWluKHBkLCBwb3dlcl9vbik7Cj4gPiA+ID4gKyAg
ICAgICAgICAgICAgIGlmIChyZXQgPCAwKSB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgY2xrX2J1bGtfZGlzYWJsZShwZC0+bnVtX2Nsa3MsIHBkLT5jbGtzKTsKPiA+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPgo+ID4gPiBMb29raW5nIGF0IGl0
LCB3ZSBzaG91bGRuJ3QgcmV0dXJuIGRpcmVjdGx5IGZyb20gaGVyZSBiZWNhdXNlIHRoZQo+ID4g
PiBtdXRleCBuZXZlciBnZXRzIHVubG9ja2VkLgo+ID4KPiA+IFllcywgd2Ugc2hvdWxkIGRvIHRo
YXQgYWZ0ZXIgcGF0Y2ggMi83IGZyb20gdGhpcyBzZXJpZXMgOikKPgo+IFRoYXQncyBleGNlbGxl
bnQhCj4KPiA+Cj4gPiA+IEluc3RlYWQgb2YgcmVwZWF0aW5nIGNsa19idWxrX2Rpc2FibGUgYW5k
IHJldHVybiByZXQgZm9yIGVhY2ggZmFpbHVyZSwKPiA+ID4gd2UgY2FuIGluaXRpYWxpemUgcmV0
ID0gMCwgaGF2ZSBhIGdvdG86IG91dCBwb2ludGluZyB0bwo+ID4gPiBjbGtfYnVsa19kaXNhYmxl
LCBhbmQgY2hhbmdlIHJldHVybiAwIHRvIHJldHVybiByZXQgYXQgdGhlIGVuZC4KPiA+Cj4gPiBS
aWdodCBub3cgdGhlcmUgaXMgb25seSBhIHNpbmdsZSBjbGtfYnVsa19kaXNhYmxlKCkgaW4gYW4g
ZXJyb3IKPiA+IGNhc2UsIHNvIEkgZGlkIG5vdCB1c2UgdGhlIHR5cGljYWwgZXJyb3IgZ290byBj
aGFpbi4gSSBzdXBwb3NlCj4gPiBpdCBtYWtlcyBhIGxvdCBtb3JlIHNlbnNlIHdpdGggcHJvcGVy
IGVycm9yIGhhbmRsaW5nIGZvciB0aGUgY2FsbHMKPiA+IHRvIHJvY2tjaGlwX3BtdV9zZXRfaWRs
ZV9yZXF1ZXN0KCkuCj4KPiBJZiB5b3UnZCBsaWtlLCBJIGNhbiBiYXNlIG15IHYyIG9uIHRoaXMg
cGF0Y2ggc2VyaWVzIHdpdGggdGhlIGNoYW5nZXMKPiBJJ20gc3VnZ2VzdGluZz8KCkkgbGVhdmUg
eW91IGd1eXMgdG8gZGVjaWRlIHRoZSBiZXN0IHdheSBmb3J3YXJkLCBidXQgcGxlYXNlIGtlZXAg
aW4KbWluZCB0aGF0IGZpeGVzL3N0YWJsZSBwYXRjaGVzIGFyZSBlYXNpZXIgbWFuYWdlZCBpZiB0
aGV5IGFyZSBhcwpzaW1wbGUgYXMgcG9zc2libGUgYW5kIHdpdGhvdXQgcmVseWluZyBvbiBjbGVh
bnVwIHBhdGNoZXMuIEJldHRlciBmaXgKdGhlIHByb2JsZW0gZmlyc3QsIHRoZW4gY2xlYW4gdXAg
dGhlIGNvZGUuCgpLaW5kIHJlZ2FyZHMKVWZmZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
