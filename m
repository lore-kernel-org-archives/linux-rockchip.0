Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42E23CAC5BB
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Sep 2025 03:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yzBzI8dOrBMwdnpybMGi8MKjK9lYrbsJrLpywoW2QRw=; b=MI9vcB9IEJHQa4i9mFhLEQXIiO
	CzSur6strQa7oS7putN7MDY7a/57q3buBxrK1xdAGf5i3EMP7xLprFTOMTLxR7VYvqTN+FWPEyhdR
	0xvPdhnEr7ZWOAjM+zcEniY9Rucdo9JGupmPt6X036D2+wQ+GyzLZuxGaDnXTM+A9z6lyFr6ZShGx
	DbJqRCHTzerXQwMj7k7Bc4yQ/nz8groAqn+e2RjuOcUZAXRS5Bh5s3IbukWfrRHpQszbi4AZiNLya
	np0bkwQGWrvEDkEMaKGmJsMSfxduugkHzfUOgRiovsXfIooSV1Fxuc1jtejJvq8QiL98fYvDojI8K
	q7fcoG8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2iUY-0000000Dgjh-38Vz;
	Sun, 28 Sep 2025 03:54:30 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2iUV-0000000Dggf-2WO9
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Sep 2025 03:54:28 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-77f605f22easo3089522b3a.2
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 20:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759031666; x=1759636466; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l1BNHEetSJWwyWmdZxZ8anoEi5BOLx/1Umxr1Rv4+CE=;
        b=KnnnWU7GRhBCJKw+Igm8Al7AmlAgdTr6XX8S++6Jckocsdiz727Gjn5cPT0cmc7QQw
         gyhr8xhdUzgfjhTbuIzFP8G71WApn51Xw4Efrm9aaKZ4rHTZ8gnNjPTkvGS1PGd/s1rV
         iiBnXbYXDrZpmGXANizbH6uRbxiCvGm9IfXfbjGblE2Dx1kRhUIGDHqDWWzCud/WodOV
         J+uM8QsxQHCbReNtMYoR9Beiet++LgTv/kivbPpd03loIJyoIoEa40biaE8Ciw5FwtNr
         OviCVFQHkPOJTqqvHc8GMmrLJ0fn+BbpqB2kES42+C8JHl+1buqxNRNO/HuZLfkEdpe/
         9FZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759031666; x=1759636466;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l1BNHEetSJWwyWmdZxZ8anoEi5BOLx/1Umxr1Rv4+CE=;
        b=I2CcHiGY+goO7McCoByM1briVEj+9Evthq79ZKJDcki4tbk2jYK74uT6dKk2YaVyC/
         gTX5Z/q0hTTRohbp8fTNCZA8SxR3cz/Zmk1AjGQs1KMXRN7M00iUYKekQkq92d2Nf2sN
         n8JkZhnxqsQAdsDg7FCEH/TikRUX+/3elXcTxFvEkyMweKitJsV/yXd+/louXSEhi8cM
         k6PZbez3FOQxOckjGWbd1HUdc23Om/P32GewRoSrqjKUkpkEbFjO5zEXnyNzU9l4AUOy
         PPfzrq5LnR32tVZgypx1qggJH86cO/0egU6selvOvLdc5SypzBZjrXJ5KTbKWtXX312n
         XFFg==
X-Forwarded-Encrypted: i=1; AJvYcCXx1uHYKF9z0PuO1Y1Eup+lPoNCOsS3LxZed2pYPFs4/ma+aVSfqvNDtIIa9W+2Ow/rginCPIC0+iPVE+km+g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxFMhM7W5zkmiZrbQGXW8QJ4Qfg28b+77xrVJOLJNLYUlDDgnl2
	9KdNqejtGYK9hezdv1B1dsR7/+IlGtYKtNqiT4Mk/igXrQ/0lLOjUGP3
X-Gm-Gg: ASbGnctWZuXTgxOM9XMS7s4H1qym2wRH170+hGvio/ggGrzmlA4C/DdhuzwL/gQy1ta
	GkWpa8Vyo2dLmVh1Z/cHSaPOm/VEFE1Hb2cFQ6s+4f6m6sR1VCVVhiHipCCqW0hbLUqDjdgDnc2
	5PtlRvS/nqixkewDbcHOPYl0fasbmV5WEiWXE5bdQzj2bM3qL1RtIbJYWs7MAecqTEu3XvaykJx
	Z8/dvvdQOwFmKlo1hF4TbFuT7Xr7dpIMlHSQRqGl57lTj+4Ebf8nlJN7V/e6SuM5KvNSgTbsV4c
	AQL/LS1k5FuEULnA6kYB37pHYlRSwD2oktgESKdiMZ5EsT4zpAU7zQCuzrd4oXozkAwOfnRMKcj
	g/0rsMXVejGgd7VXdsHLvCMy13qSnFoePtT+s2rVUzhGmPHI+FILZrEVsqy8/kB5ML7tLkr81R0
	/+9Z8GW13IwKqpv1hJBzUorg==
X-Google-Smtp-Source: AGHT+IHNNiab72Qr90mrD0VFSHKiT7iwH2G/FUkrpdBr28ej5amRG5/YNJ5ToVKe35zmVyUx5bpQbA==
X-Received: by 2002:a05:6a20:734d:b0:2e5:655c:7f8f with SMTP id adf61e73a8af0-2e7d1751cebmr15882160637.46.1759031666372;
        Sat, 27 Sep 2025 20:54:26 -0700 (PDT)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c55752d9sm7979487a12.28.2025.09.27.20.54.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Sep 2025 20:54:26 -0700 (PDT)
Message-ID: <9fb7ac10-3966-4c43-b550-827108bff886@gmail.com>
Date: Sat, 27 Sep 2025 20:54:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] arm64: dts: rk3399-pinephone-pro: Add
 accelerometer sensor support
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250921-ppp_light_accel_mag_vol-down-v2-0-e6bcc6ca74ae@gmail.com>
 <20250921-ppp_light_accel_mag_vol-down-v2-2-e6bcc6ca74ae@gmail.com>
 <5b6ijumsm6bgqymsfc25frqzjlpiryq7iupuk2pokcb6d4bz56@yqrz6j3oj5ga>
 <649ca4a6-3158-4c52-bad3-6c266edd177d@gmail.com>
 <kkxecpaatgeqk7ru4maqtbgftiqmdjjweam2zw6xrvbbzpqy4a@nz6llsm37qdx>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <kkxecpaatgeqk7ru4maqtbgftiqmdjjweam2zw6xrvbbzpqy4a@nz6llsm37qdx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250927_205427_666164_E9194BD1 
X-CRM114-Status: GOOD (  13.74  )
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

SGVsbG8gT25kxZllaiwKCj4gV2VsbCwgaXQncyBub3QgY2xlYXIgdGhpcyB3aWxsIHdvcmsgYXMg
ZXhwZWN0ZWQuIFNvbWVvbmUgc2hvdWxkIGF0IGxlYXN0IHRlc3QgaXQKPiB3aXRoIHNvbWUgd2Vs
bCB3b3JraW5nIHVzZXJzcGFjZSBzZW5zb3IgZnVzaW9uIHByb2dyYW0sIHRoYXQgdXNlcyB0aGlz
Cj4gaW5mb3JtYXRpb24sIChhbG9uZyB3aXRoIHRoZSBtb3VudCBtYXRyaXggZm9yIGFjY2VsZXJv
bWV0ZXIvZ3lybykgZm9yIGVnLgo+IGNvbXBhc3MgZmVhdHVyZSBvciBzb21ldGhpbmcgbGlrZSB0
aGF0LgoKSSdtIG5vdCBhd2FyZSBvZiBhbnkgY29tcGFzcyBhcHAgb24gTGludXggYXQgdGhlIG1v
bWVudAoKCj4gQWxzbyBJIGRvbid0IHNlZSB0aGlzIG1hdHJpeCBpbiB2MyBwYXRjaCBzZXQuCgpo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA5MjEtcHBwX2xpZ2h0X2FjY2VsX21hZ192
b2wtZG93bi12My00LTdhZjY2NTFmNzdlNEBnbWFpbC5jb20vCgorIG1vdW50LW1hdHJpeCA9ICsg
IjAiLCAiMSIsICIwIiwgKyAiMSIsICIwIiwgIjAiLCArICIwIiwgIjAiLCAiLTEiOwoKCj4gRGlk
IHlvdSB0ZXN0IGl0PyBBbnkgc3VnZ2VzdGlvbnMgb24gd2hhdCBwZW9wbGUgYWN0dWxseSB1c2Ug
Zm9yIHNlbnNvciBmdXNpb24gb24KPiBMaW51eD8KClllcCEgSSBkaWQgYnJpZWYgdGVzdGluZywg
YnV0IEkndmUgcHV0IGRldGFpbGVkIHRlc3RpbmcgYmVsb3c6CgpGb3IgdGhlIGFjY2VsZXJvbWV0
ZXIsIHRoZSBzY3JlZW4gb3JpZW50YXRpb24gd29ya3MgY29ycmVjdGx5IG5vdy4gCk9yaWdpbmFs
bHkgd2hlbiB0aWx0aW5nIHRoZSBwcHAgdG8gdGhlIHNpZGUsIHRoZSBzY3JlZW4gd291bGQgcm90
YXRlIHRvIAp0aGUgY29ycmVjdCBzaWRlLiBIb3dldmVyLCB3aGVuIHRoZSBwaG9uZSB3YXMgaGVs
ZCByZWd1bGFybHkgaW4geW91ciAKaGFuZCwgdGhlIHNjcmVlbiB3YXMgdXBzaWRlIGRvd24uIFdp
dGggdGhpcyBwYXRjaCBzZXJpZXMsIGl0IGlzIG5vIApsb25nZXIgdGhlIGNhc2UKCkZvciB0aGUg
bWFnbmV0b21ldGVyLCB0aGUgY29tbWFuZCBJIHJhbiB3YXMKCmBgYAoKIyEvYmluL3NoCgpERVZJ
Q0U9Ii9zeXMvYnVzL2lpby9kZXZpY2VzL2lpbzpkZXZpY2UyIgoKWD0kKGNhdCAkREVWSUNFL2lu
X21hZ25feF9yYXcpClk9JChjYXQgJERFVklDRS9pbl9tYWduX3lfcmF3KQpaPSQoY2F0ICRERVZJ
Q0UvaW5fbWFnbl96X3JhdykKClhfTUlOPSRYOyBYX01BWD0kWApZX01JTj0kWTsgWV9NQVg9JFkK
Wl9NSU49JFo7IFpfTUFYPSRaCgpTVEFSVF9USU1FPSQoZGF0ZSArJXMpCgp3aGlsZSBbICQoKCQo
ZGF0ZSArJXMpIC0gU1RBUlRfVElNRSkpIC1sdCAxMCBdOyBkbwogwqAgwqAgWD0kKGNhdCAkREVW
SUNFL2luX21hZ25feF9yYXcpCiDCoCDCoCBZPSQoY2F0ICRERVZJQ0UvaW5fbWFnbl95X3JhdykK
IMKgIMKgIFo9JChjYXQgJERFVklDRS9pbl9tYWduX3pfcmF3KQoKIMKgIMKgIFsgIiRYIiAtbHQg
IiRYX01JTiIgXSAmJiBYX01JTj0kWAogwqAgwqAgWyAiJFgiIC1ndCAiJFhfTUFYIiBdICYmIFhf
TUFYPSRYCgogwqAgwqAgWyAiJFkiIC1sdCAiJFlfTUlOIiBdICYmIFlfTUlOPSRZCiDCoCDCoCBb
ICIkWSIgLWd0ICIkWV9NQVgiIF0gJiYgWV9NQVg9JFkKCiDCoCDCoCBbICIkWiIgLWx0ICIkWl9N
SU4iIF0gJiYgWl9NSU49JFoKIMKgIMKgIFsgIiRaIiAtZ3QgIiRaX01BWCIgXSAmJiBaX01BWD0k
Wgpkb25lCgplY2hvICJYX01JTjogJFhfTUlOwqAgWF9NQVg6ICRYX01BWCIKZWNobyAiWV9NSU46
ICRZX01JTsKgIFlfTUFYOiAkWV9NQVgiCmVjaG8gIlpfTUlOOiAkWl9NSU7CoCBaX01BWDogJFpf
TUFYIgoKYGBgCgoKVGVzdHM6CgojIHBob25lIG9uIGEgZmxhdCBzdXJmYWNlCgp0b3Agb2YgdGhl
IHBob25lIHBvaW50aW5nIG5vcnRoIGFuZCBib3R0b20gb2YgcGhvbmUgcG9pbnRpbmcgc291dGg6
IHggCihiZXR3ZWVuIC0yMzc5IGFuZCAtMjI2MyksIHkgKGJldHdlZW4gMTA5IGFuZCAyMDcpLCB6
IChiZXR3ZWVuIC0yMzQwIGFuZCAKLTIxMzIpCgp0b3Agb2YgdGhlIHBob25lIHBvaW50aW5nIHNv
dXRoIGFuZCBib3R0b20gb2YgcGhvbmUgcG9pbnRpbmcgbm9ydGg6IHggCihiZXR3ZWVuIC0xMDc5
IGFuZCAtOTU2KSwgeSAoYmV0d2VlbiAtNTQgYW5kIDQ2KSwgeiAoYmV0d2VlbiAtMTgzMSBhbmQg
Ci0xNjIxKQoKdG9wIG9mIHRoZSBwaG9uZSBwb2ludGluZyBlYXN0IGFuZCBib3R0b20gb2YgcGhv
bmUgcG9pbnRpbmcgd2VzdDogeCAKKGJldHdlZW4gLTE1ODcgYW5kIC0xNDczKSwgeSAoYmV0d2Vl
biAtNDQ4IGFuZCAtMzM5KSwgeiAoYmV0d2VlbiAtMTg1MCAKYW5kIC0xNjAyKQoKdG9wIG9mIHRo
ZSBwaG9uZSBwb2ludGluZyB3ZXN0IGFuZCBib3R0b20gb2YgcGhvbmUgcG9pbnRpbmcgZWFzdDog
eCAKKGJldHdlZW4gLTE0MjYgYW5kIC0xMzAwKSwgeSAoYmV0d2VlbiA1NTQgYW5kIDY2MSksIHog
KGJldHdlZW4gLTE5MTcgYW5kIAotMTcwNikKCgojIHRoZSBmb2xsb3dpbmcgdGVzdHMgYXJlIHdo
ZXJlIHRoZSBwaG9uZSBpcyB0aWx0ZWQgYXQgYSA0NSBkZWdyZWUgYW5nbGUgCmFuZCB0aGUgdG9w
IG9mIHBob25lIGlzIHBvaW50aW5nIHVwIHRvIHRoZSBza3k6Cgp0b3Agb2YgdGhlIHBob25lIHBv
aW50aW5nIG5vcnRoIGFuZCBib3R0b20gb2YgcGhvbmUgcG9pbnRpbmcgc291dGg6IHggCihiZXR3
ZWVuIC0xMzAwIGFuZCAtMTE4OSksIHkgKGJldHdlZW4gMTE3IGFuZCAyMjcpLCB6IChiZXR3ZWVu
IC0xODE5IGFuZCAKLTE2MTQpCgp0b3Agb2YgdGhlIHBob25lIHBvaW50aW5nIHNvdXRoIGFuZCBi
b3R0b20gb2YgcGhvbmUgcG9pbnRpbmcgbm9ydGg6IHggCihiZXR3ZWVuIC01MzkgYW5kIC00MjIp
LCB5IChiZXR3ZWVuIDIzIGFuZCAxNDMpLCB6IChiZXR3ZWVuIC0xMTYwIGFuZCAtOTIyKQoKdG9w
IG9mIHRoZSBwaG9uZSBwb2ludGluZyBlYXN0IGFuZCBib3R0b20gb2YgcGhvbmUgcG9pbnRpbmcg
d2VzdDogeCAKKGJldHdlZW4gLTEwMzggYW5kIC05MTUpLCB5IChiZXR3ZWVuIC00MDggYW5kIC0z
MTMpLCB6IChiZXR3ZWVuIC0xNTcwIAphbmQgLTEzNDUpCgp0b3Agb2YgdGhlIHBob25lIHBvaW50
aW5nIHdlc3QgYW5kIGJvdHRvbSBvZiBwaG9uZSBwb2ludGluZyBlYXN0OiB4IAooYmV0d2VlbiAt
OTY1IGFuZCAtODQ5KSwgeSAoYmV0d2VlbiA1NDAgYW5kIDY0MSksIHogKGJldHdlZW4gLTE1NDIg
YW5kIAotMTMzNikKCgojIHRoZSBmb2xsb3dpbmcgdGVzdHMgYXJlIHdoZXJlIHRoZSBwaG9uZSBp
cyB0aWx0ZWQgYXQgYSA0NSBkZWdyZWUgYW5nbGUgCmFuZCB0aGUgdG9wIG9mIHBob25lIGlzIHBv
aW50aW5nIGRvd24gdG8gdGhlIGdyb3VuZDoKCnRvcCBvZiB0aGUgcGhvbmUgcG9pbnRpbmcgbm9y
dGggYW5kIGJvdHRvbSBvZiBwaG9uZSBwb2ludGluZyBzb3V0aDogeCAKKGJldHdlZW4gLTIzNDUg
YW5kIC0yMjM3KSwgeSAoYmV0d2VlbiA4MCBhbmQgMTg5KSwgeiAoYmV0d2VlbiAtMTIwNyBhbmQg
Ci05NzEpCgp0b3Agb2YgdGhlIHBob25lIHBvaW50aW5nIHNvdXRoIGFuZCBib3R0b20gb2YgcGhv
bmUgcG9pbnRpbmcgbm9ydGg6IHggCihiZXR3ZWVuIC0xODA1IGFuZCAtMTY5MSksIHkgKGJldHdl
ZW4gNSBhbmQgMTEyKSwgeiAoYmV0d2VlbiAtMTg5NiBhbmQgCi0xNjUxKQoKdG9wIG9mIHRoZSBw
aG9uZSBwb2ludGluZyBlYXN0IGFuZCBib3R0b20gb2YgcGhvbmUgcG9pbnRpbmcgd2VzdDogeCAK
KGJldHdlZW4gLTIxMjcgYW5kIC0yMDEzKSwgeSAoYmV0d2VlbiA0NjAgYW5kIDU2MyksIHogKGJl
dHdlZW4gLTE2MjEgYW5kIAotMTM3OCkKCnRvcCBvZiB0aGUgcGhvbmUgcG9pbnRpbmcgd2VzdCBh
bmQgYm90dG9tIG9mIHBob25lIHBvaW50aW5nIGVhc3Q6IHggCihiZXR3ZWVuIC0yMTU4IGFuZCAt
MjA1NCksIHkgKGJldHdlZW4gLTM3NiBhbmQgLTI2NCksIHogKGJldHdlZW4gLTE1NDAgCmFuZCAt
MTI2MikKCgpJIHdpbGwgcHV0IG15IHRlc3RpbmcgaW4gdGhlIGNvbW1pdCBpdHNlbGYgbW92aW5n
IGZvcndhcmQKClRoYW5rcywKClJ1ZHJha3NoYQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
