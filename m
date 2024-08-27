Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B443C54736
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 19:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iAcWd0YwM3wA0Z3Fl1tNfPRGSWZM6yOLNoWuMxha+mQ=; b=FGbuVQUyH92U3H
	vtNOwWKn/OwxyMTooQwH12dWR18f/jiQS7EzT/uCQbALxmIFhaCLyzOS19x7iGr+2v3lfpFer/g5K
	MugAjHj2ZWN8QOM2skI5OWgqmyaYaPOPqUIQynwhTCcw8mZkvmmRRJ/m1W3a5TB9CgW//TlHqglUk
	OksmDLNN7qa9BzTKqDfPwzdPH5rym9dNF9NWy1rAiD/5SbmztsVI+sNXXCB80jm0KHE6+zJQd+xWb
	98BB7zfC8lzXWWHllXzfGoVLHDDtRAjlHDjsmiORNWMaRx67Oouyt9qP6Eu4z+BDXspLEwEWwi5O/
	P0ANznSjFHRRtz4eO84w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj21b-0000000Ceyp-0qbc;
	Tue, 27 Aug 2024 19:38:43 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj21Y-0000000Cey8-0wbv;
	Tue, 27 Aug 2024 19:38:41 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-2d427fb7c92so4338844a91.1;
        Tue, 27 Aug 2024 12:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724787519; x=1725392319; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=oVOXvpyxwdjOnesfGfT0Q7QN6OLcbJzHuSO6UMrackY=;
        b=cb6NuHKp2ijFCPN03PEh5x67UbvIzEazOOy80J+CgTA9cWlhNIQ26213mc2910Fctl
         d4r1IlXLlM9HIfgwlPUvRxsUpwTXth1fqH4lITqn8os6vxn9c12c+NcHhEqzxdEY5kEf
         IdCzPyJiKvtBY22SYqNRx7HKXJZforPK20G8KughXYnjhunnToE/DeHi245KZR4u336i
         Y5L9BFimR8UNHtgp3A6o9s8wn4kxjXJDlLFtVz9hSdblv1G8xehY9KbeerEIEIRoeEO7
         faVsppAZpLZx6hh0zSHBfJHtbzuUj3yzYQwiTpuAYIH8YTjL9B1OCb+TbGpodauLZdTG
         yHlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724787519; x=1725392319;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oVOXvpyxwdjOnesfGfT0Q7QN6OLcbJzHuSO6UMrackY=;
        b=FINkujQO933vbENQAVcp3Gz9yQX+o4KrZO68TDSwsF3Mw+64IhymENu1e7FKidI8Ob
         oE+GgDf30AHFbKRQk3XkMVrOm4QfzUj7F3QthrTIprkBDk+1pfI82Yntf5QlWx/8RIVM
         Q+9NputQWn8YzUNlz03EjKAqiXWGJXm9vsOoO6hto6uRjeDzM9Sioes7locSFa4PCnZo
         8WynlgfjbRpadl+VJA0SN6pdJErl/h110Bb2AJnKYQajcSkBUX0k6Obefld3wKZZD10j
         jA4LupVfHyz9c28/mNuGaV2Sau9x+bHWMvce4YO0ck6ARK/iwNuKvnhzezKVKxGNScCo
         osMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUx/0ib6xYAib4FiyD/XsEIBR/FSPbsryV9gldNtaG+PDBcP0tR8oSq+ycMu6u3WojcfSY5nGH7cb+BJv072ao7@lists.infradead.org, AJvYcCWAiNhPb3qOeJ3XVIhLO1gSGq/OV+4kXhc4C3U79GGUe1yxTRs2V+7eXxssWXlXhsFTCq0z/VXJnhYXo2Y8MfA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8V8F2lv1j7JJNwWsipPiF3gtW+5z1/tkXgxbNBVHZBPrpWBPL
	fEYE3JfaD5cKPJEqEipoC9q+EUBR18KDXZp2P8XWtafAsqqqZTn5
X-Google-Smtp-Source: AGHT+IFjNqODR2yVRuTuQyHMcuWfTgB8LTsosBTWw0X6poYpFrx4jThi3iXVZldpKoOk5Dlv8j+37w==
X-Received: by 2002:a17:90a:564c:b0:2d8:40be:263a with SMTP id 98e67ed59e1d1-2d840be26b5mr824041a91.34.1724787519426;
        Tue, 27 Aug 2024 12:38:39 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d5eb8cf61bsm15010475a91.9.2024.08.27.12.38.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 12:38:38 -0700 (PDT)
Message-ID: <5254cf14-65d1-4ffa-a1fb-265a51dda37d@roeck-us.net>
Date: Tue, 27 Aug 2024 12:38:35 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/12] dt-bindings: watchdog: Add rockchip,rk3576-wdt
 compatible
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Andi Shyti <andi.shyti@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Lee Jones <lee@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Mark Brown <broonie@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Chris Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Tim Lunn <tim@feathertop.org>, Chukun Pan <amadeus@jmu.edu.cn>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Ondrej Jirman <megi@xff.cz>, Michael Riesch <michael.riesch@wolfvision.net>,
 Jimmy Hon <honyuenkwun@gmail.com>, Alexey Charkov <alchark@gmail.com>,
 Elon Zhang <zhangzj@rock-chips.com>, Elaine Zhang
 <zhangqing@rock-chips.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 Jisheng Zhang <jszhang@kernel.org>, Jamie Iles <jamie@jamieiles.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-i2c@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-watchdog@vger.kernel.org,
 kernel@collabora.com
References: <20240823150057.56141-1-detlev.casanova@collabora.com>
 <20240823150057.56141-10-detlev.casanova@collabora.com>
 <612a447c-8a74-48c1-8470-280dddca8d19@roeck-us.net>
 <3262963.l52yBJDM9G@diego>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <3262963.l52yBJDM9G@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_123840_286677_36F72443 
X-CRM114-Status: GOOD (  14.80  )
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

T24gOC8yNy8yNCAwMDoyMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgR3VlbnRlciwKPiAK
PiBBbSBTYW1zdGFnLCAyNC4gQXVndXN0IDIwMjQsIDE4OjQ0OjI5IENFU1Qgc2NocmllYiBHdWVu
dGVyIFJvZWNrOgo+PiBPbiBGcmksIEF1ZyAyMywgMjAyNCBhdCAxMDo1MjozNkFNIC0wNDAwLCBE
ZXRsZXYgQ2FzYW5vdmEgd3JvdGU6Cj4+PiBJdCBpcyBjb21wYXRpYmxlIHdpdGggdGhlIG90aGVy
IHJvY2tjaGlwIFNvQ3MuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRGV0bGV2IENhc2Fub3ZhIDxk
ZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4KPj4KPj4gQWNrZWQtYnk6IEd1ZW50ZXIgUm9l
Y2sgPGxpbnV4QHJvZWNrLXVzLm5ldD4KPiAKPiBGb3IgbXkgdW5kZXJzdGFuZGluZywgZG9lcyB0
aGlzIEFjayBtZWFuIHlvdSBleHBlY3QgdGhlIHBhdGNoIHRvIGdvIGluCj4gd2l0aCB0aGUgb3Ro
ZXIgcGF0Y2hlcz8KPiAKWWVzCgo+IEJlY2F1c2UgaW4gdGhlb3J5IHRoaXMgcGF0Y2ggY291bGQg
YWxzbyBiZSBwaWNrZWQgYW5kIGdvIHRocm91Z2ggdGhlCj4gd2F0Y2hkb2cgdHJlZSwgc2ltaWxh
ciB0byBob3cgdGhlIHNhcmFkYyBiaW5kaW5nIHdlbnQgaW50byB0aGUKPiBpaW8gdHJlZSBhbHJl
YWR5Lgo+IAoKSSB0aG91Z2h0IGl0IHdhcyBhbGwgc3VwcG9zZWQgdG8gYmUgcHVzaGVkIHRvZ2V0
aGVyLgoKR3VlbnRlcgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
