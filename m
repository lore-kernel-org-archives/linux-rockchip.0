Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33BBC10775E1
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 16:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZEtSn5kOIqBh2gHA8EI5vfZgsSoJw2/W30IO+fuO54=; b=eWG+TgXkPfaTs5
	qW3FkAee71CjZiKWVLjbowK3uGwUNlzyPfB/tR5dLv+C4OMLap9bOF/Dv5czO+O5ZmTVyly6OZV0g
	5LljZ97ccJJFi4lrPboDYKi6kQ2xcUhClAVfnDsz55hYNGfaYHfRZVxcAe/ah+Jz18oxOn76cyDQ/
	MIt+nmD/+8ZjAGPvk3hbjkRlRD+qe4qemoO2TelLEldERVVEAcbHSImEVS7XrvBOzj8JkIotZqw1i
	bWEBqw3LZNV/Gvm0dpgi1GcSGvTr/pO0b51pf2y1sPKuxrAc0f3AFEcikBx7i13u8F5qDTdWFHoNR
	+c9CtQ34GJCEr029ZtFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2u8F-000000090Oj-3gx2;
	Wed, 18 Mar 2026 16:52:31 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2u8D-000000090Nw-2Odj
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Mar 2026 16:52:30 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-b97b30fa5e5so2568666b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Mar 2026 09:52:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773852747; cv=none;
        d=google.com; s=arc-20240605;
        b=JXRPBfQWpHdELZVtCNOOKueZSN83VT9sUapky1CoitZoZnGMMqzFmqKUg687A95H0r
         qN18KNsF0yE8MXNo+aeCt6l3FXMefvo5H/8sj5WxKwnH9M8t87RErq7BAcefegrw7pyf
         RVF/rXJvp4GKgxdX2ewezGCjXXQ8cLdjorCfIxzj0PMngWnDJ5g0BDU4FYDsr/DXlGbg
         OYSEgBA2pZWsfrs+Ocg6oy4t+98ZNdDeHyuRyZN8Zf3oUJ1/7xM38AiE8tavt3l+1jY/
         u8kNTFDpwDhxbKr6H3SqHZzMrEIenviEPDn5hXIYtr8ypqEnypk3ipx6gvPtNnOhzz00
         dyNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=n8s0iyx5Up+axNLd5N4vYWUUxP+7s5+5idq+mXMf/gI=;
        fh=TY4n+IPOWqgLa2z0YeXa2396qQlByPbnEXw1mvju8n0=;
        b=dZJIHRK7WLKEsj7Vo9Qg22tqI6b9dTVjxYhwY3zZW82t9TPi9ZAoNeog6F9Z2TMmRq
         H0hu4jhh3Kgb2UTkuA1AFxd9sHE412pa9pAC0BQEZ8kcb3JLdmwJUteYHtJjToZDd9Sn
         JY9ANWmppGQZ/8Pbxst+np4tx/l+1LSjDX9VESEN3UVoBdEvw/D8cv3iNbPHqnOKq3JO
         eV4P/7NKr0dvo5kA5nmtAeVceqtiylGdJlDsNSNIDDimn7w1fCF5mySj0UCarwenOVa/
         FRiOYLwqQot83E5s92vGZn3woZFx0h/Dx7S0ZfLOepvq6pccSg64j7ATwRQa3+W4obNW
         2qCg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773852747; x=1774457547; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n8s0iyx5Up+axNLd5N4vYWUUxP+7s5+5idq+mXMf/gI=;
        b=Y8AZ+b+i2FJdC2n5Xf5Jiv9843adCoyYCuxNKWUnxMynGs9/KGy6DDuXrVX7BQG6Ap
         Xi+bZZd96I/YqHJtFHqMl2teVnD0AP+PhncaZ47bJej2um8PnF5OUMg+z8Sxvw8Z/6Uo
         ITdFWkqryNsaJfn1YbAwUKna6X7NLiPInMonMai16obnf6McW60BNIvyUu+rtl3GYSM9
         2kHDg/HxcWIM5Uk7Xpz6CFeT4G039WIbP6IlB6VW6ZvhKDtseKb+WZVkIuAfuNDnYm6w
         Ph3bxxPcuCaYsJHn097iKlx7uK62KYxhrpipZUDgIcCr8isOpkZW4G/k6+1NoH+Vtlad
         uQ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773852747; x=1774457547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n8s0iyx5Up+axNLd5N4vYWUUxP+7s5+5idq+mXMf/gI=;
        b=M6RVT+biOyym2feYUSZ4PxsJmzHcM1fVXM/8+OK5j8V2yplW6BsRNzVVxwO+P8KGYW
         Ru6bDiG6sPJ5pUj5wnrW2enA0XFDF7f+YeqFgx4ZQ143sSf+tsDJ6ZeIN8NBzO4Xhuxj
         muddX6m4aVZ0rBkg0XAxYttzUGgZ/9qeEncyus35IrbFJ3DClT635DuVBIBSRv+qMjph
         RQl32+kpvR2VkVuC4UtWXPwTvNHyjihYNifmxFtrQiv4hxGGAUWYD3nB3xHCODplM2FE
         rXtkkBUG2oFZZRd57Ul3ws2zlkIa1Io5i5CgzjojYO8f7TfdZLFOuNrkEK29PDoYsrAa
         2rog==
X-Forwarded-Encrypted: i=1; AJvYcCWtxSb66UBKLBHR3RgoQ9S2YLiLSKImK+WCNrff28cGcM9qUjqast+MAD/wZpDjtCYTNB4gd7Kjy/UBmPboag==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8wfEP/dnnDTpDgMel+wKuJRwq8/untFbtoX0kwIZCEXjXnvIL
	1rMlO1ngERZCqWUERCh4x17IpIQct2ere6UUiyS+z/8AFrt1LCYwMxpLYuaGD9Szz5Ao8tiFFEF
	tlZouLgng6DXEIGf7XE1Z6tmIUKa2MZ3fUPXZnAxprQ==
X-Gm-Gg: ATEYQzzHHfqkjqNtd3loMCfQaVAV3sAQjp5+0WYt1P3toNmZkGdki/sIByKFSuOcBPK
	sUv6hYs8sg25dYn7ciHT9DW3y0/hLz1xdDAQs+Eee6BgRla664ZiaSHKKzhh52owUw92zr5jrqd
	U1LZ9VicDqOUX6AbOzweW4R3wL5akBtfQo0hideYj4gv32m+Cj1D5QoXh7WMGNahqGUsV1InR/V
	Duzv6zNXnuPCGjJFO49213DHvg55VhBbeL6zZIH8CLxgw1CDunqkiQqc8PAyGXSyzkpu/w80RP0
	y2TwrJc=
X-Received: by 2002:a17:907:268c:b0:b87:7485:b4a8 with SMTP id
 a640c23a62f3a-b97f437c5e0mr269129266b.0.1773852747057; Wed, 18 Mar 2026
 09:52:27 -0700 (PDT)
MIME-Version: 1.0
References: <20260318-sai-slot-width-v1-1-1f68186f71e3@flipper.net> <339ebaa9-9642-4716-bca7-6a32a135124a@sirena.org.uk>
In-Reply-To: <339ebaa9-9642-4716-bca7-6a32a135124a@sirena.org.uk>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 18 Mar 2026 20:52:16 +0400
X-Gm-Features: AaiRm53s1de568Rl6WcWFL_NmD36Tc9G63SkTCGabmNWoWncrHCvYMTyZ7Db36c
Message-ID: <CAKTNdwF9JRW7PjqnZwmvp_X5UjjJ023tBzFY7yCSnCJH5W6q-w@mail.gmail.com>
Subject: Re: [PATCH] ASoC: rockchip: rockchip_sai: Set slot width for non-TDM mode
To: Mark Brown <broonie@kernel.org>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, 
	Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org, 
	linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_095229_621080_C31D51CF 
X-CRM114-Status: GOOD (  10.35  )
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

T24gV2VkLCBNYXIgMTgsIDIwMjYgYXQgODoxN+KAr1BNIE1hcmsgQnJvd24gPGJyb29uaWVAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1hciAxOCwgMjAyNiBhdCAwNjo1MDoyNVBNICsw
NDAwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPgo+ID4gICAgICAgcmVnbWFwX3VwZGF0ZV9iaXRz
KHNhaS0+cmVnbWFwLCByZWcsIFNBSV9YQ1JfVkRXX01BU0sgfCBTQUlfWENSX0NTUl9NQVNLLCB2
YWwpOwo+ID4KPiA+ICsgICAgIGlmICghc2FpLT5pc190ZG0pCj4gPiArICAgICAgICAgICAgIHJl
Z21hcF91cGRhdGVfYml0cyhzYWktPnJlZ21hcCwgcmVnLCBTQUlfWENSX1NCV19NQVNLLAo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU0FJX1hDUl9TQlcocGFyYW1zX3BoeXNp
Y2FsX3dpZHRoKHBhcmFtcykpKTsKPiA+ICsKPgo+IFdoYXQgaGFwcGVucyBpZiBwbGF5YmFjayBh
bmQgY2FwdHVyZSBoYXZlIGRpZmZlcmVudCB3aWR0aHM/ICBJIHdvbmRlciBpZgo+IGZvcmNpbmcg
YSBURE0gY29uZmlndXJhdGlvbiB3aXRoIHRoZSBhZmZlY3RlZCBDT0RFQ3Mgd291bGQgYmUgZWFz
aWVyLgoKUGxheWJhY2sgYW5kIGNhcHR1cmUgZ28gdG8gZGlmZmVyZW50ICJyZWciIGVhY2gsIGFu
ZCBlYWNoIGhhcyBhIHNsb3QKd2lkdGggZmllbGQuIFRoZSBjb3JyZWN0ICJyZWciIGZvciB0aGUg
c3RyZWFtIGlzIHNlbGVjdGVkIDUwIGxpbmVzIHVwCmluIHRoZSBzYW1lIGZ1bmN0aW9uLiBTbyB0
aGV5IHNob3VsZG4ndCByZWFsbHkgZ2V0IGluIGVhY2ggb3RoZXIncwp3YXksIGZyb20gd2hhdCBJ
IGNhbiB0ZWxsLgoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
