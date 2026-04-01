Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD575D3517D
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 13:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tft8eqc+UnxgkuH2xY/jTpbFHWPNnkeFqsmW3eiylqs=; b=WPq5CZQ7857b77
	ahxDVYke1hLxwhswozxsGflp+bKfeplwcFM1x+mFZEcCown/+KyefPo4wBkpK1053+7nbW7oBKLmp
	DbmHz6rxrOWUErXx6sMwc59+qFqulSotpFuqqCJedS3D3u+LkyMlbOHB2RYGSlx4DtQeYBtwKarEl
	HkSROVmGkw5C/YqGE8Dsow4q+eLahEr9L/8JLr71PTzUAYDh638UKRqpUuWttove69dTCdvTb740F
	DQGcoPn8W1e3albNnOt6oHpUGrWZGLbGgNJolI0nNI3bqqmLT98gdQFu8TrPjc8DaAOGL7wV6tgg3
	d1PX2o5i5SehyDwpkBhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vdl-0000000FJRc-2W3n;
	Wed, 01 Apr 2026 13:29:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vdj-0000000FJR4-3Oqp
	for linux-rockchip@bombadil.infradead.org;
	Wed, 01 Apr 2026 13:29:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=VddJqdW/ivYdJwKAv4x/MZN1YGeGSQIg3wJqceIORIA=; b=C1kjtqpJqoV5e+3XeGFWDWgpOY
	ZlFgv806ogcGKLMwCjnKNeaYFaeMDmK3Dc1ALqZRLe4M/bq/i4cuji6kt0h+vL0+Y7IybXox5KZGe
	PyKdJ+fL9T/cmJKw+FQ4UwxAnQ6nhdkjKPGoF/zIFmwp0Ps8YzUoj+a7vsS7xopLCCllclou9rj27
	2grwT9l4MCCjoMb35mcacSyUxBZtyOceHGcyLHU0ij2BuMrmbOeBn0A7OXFgaQk4NUiboJaq8kYPT
	6tZ7Z/3pB82FGesT4wLpBQ+FcBE8jw7k8Ef1VcARfEy0uO7xYLCrIECETVoKv70O1N3Gs6T+DVoLr
	wGshjxqQ==;
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vdg-00000000Soc-3MGC
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Apr 2026 13:29:46 +0000
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-8a032383008so8158236d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Apr 2026 06:29:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775050183; cv=none;
        d=google.com; s=arc-20240605;
        b=PDov6gULEWmxZ8IXJ1B5nEjDQtDfNVwcb9pMimGWb3eJDNTgQ9zW5Gvv9kgwVarJjC
         QAGImgaf9Aw8o+pO7csi/UtMLmhynNLfOAldlpQ0tJZ1Fa5BlbFFa+ud4oY11Xw6fQqB
         /A2Q+GCIN0IXvkJlkmfg5UgkobDq3cS2jEhTlKWdP+XdEMcPIpHD21K8sCnk6juP0VyM
         0GcxruST5/pVhd7XqT27OYh85Fcfwpcf8xLkkNhcf7+CVQmj7bYSP8Xi2VU3ef2QyP0A
         Pj3/OEJAId42tv2TbmQAZY/4cDZIC1IOiFVooSSeG4UR1qSeDwODmkFzX5wrqvEmwpPT
         mWBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VddJqdW/ivYdJwKAv4x/MZN1YGeGSQIg3wJqceIORIA=;
        fh=j5NEFTpyF8ZcBfYBntCdegzn1F6Qb13dAV1MeNhvy+g=;
        b=RY5XmEmzVRdbmX+ah0qnuVnk1/iSRTu3isrCgdGxKBDuH4D0bYrW3DKsducy/yd+Ic
         T5aifDKfroGZdPh/fJl+4ImHgBnqYu7Uqq9v2jOlW3tqEoXSnNRMrcyjYYGC7otmnhuk
         6Jn3V5Bl+7ClzP772t2cthmCCP+AGVUzXDuN5OSqVWjt/z9GQsYXMom2IuU5ek7qATKR
         XYpiT8tJNJBAFoGZctE0kypIbyw/gJ9ab+buT71R0LdHm0SaYeeibBIcAThK65ykCooH
         ua9DDSadK5+35h0JunHKZtqGpwu4JQH800AzGM7dLpD5w9YdAHYij8vn9rSPyf57DBaL
         KEvg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1775050183; x=1775654983; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VddJqdW/ivYdJwKAv4x/MZN1YGeGSQIg3wJqceIORIA=;
        b=ho72NLrgbW+dBMLbPpl6pRC58LV7+bvnd791F2QfbHDEeu8QW+R9ae0Ap9z93S1zRA
         GGfNxtxGllECOnrtfDTdMy8lB7GaOx0rPEJL7vlM+F2v4auTTYHsef5xS/ysaWHAfO/V
         hxUEcZEM6EBdNE3wdJSksHy2H8xwy9gA/SsJ/rYqsmDPgYgiBRbCxfuqaR9X+EDnsaxC
         J5Amrahi/SOtK0F2mh4Dted6BNXU3cPZqrbYkIKXIaJV9ZZciY5fsMwU3ivqKFMiCR34
         d4Gro6nrTf+1MQUPQ4DKThsg4a9chjSCf+77x9HMpJ9IN/U8+uwtNK3WRwjLxf2idZmd
         j4vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775050183; x=1775654983;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VddJqdW/ivYdJwKAv4x/MZN1YGeGSQIg3wJqceIORIA=;
        b=dalm1/tn0M4GgBpNiU2dXRNJndYSQR1diGr5rrQssvbbSEQwvKXvT15o6GeOto4bpA
         g2zLIBb7YmO38S/t1qLSgAN0HPjPN4m062nCXcdhbeOQKBcEKuP8uZ3BlgoK88GfWwfh
         yqzX9Hdc5UYMM9XBymIJHBbviULyxIiaMi87GBir5QR8qtigoMNs3V+gR532QeESAkX+
         5YiBmItqR3ZD9P3I/0NjkovvMDOOFl7e9sNlMkPEm9ypmjJ3YNEUSoCaBomHA+jt0gr4
         xByfl9ggR8VGOReHfOa4AdL8L0iMPsI67Krr80qkkHSva6wz91M6h7XSIuxyOQjrfeoU
         o7Sg==
X-Forwarded-Encrypted: i=1; AJvYcCX+9wlsGqNStTiI4e8hOR517haFntmlQ/BX+A6rQ/VebytGYEK95cJdp3YSx0oEC15c1I4nSGMTkV6x3x7JvQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxVsB31I8RAaRtKwp4XAmYRN3ObciioYeQ1p/r9NwCgF0rZf+DV
	inYetyk9zFtuPxIw66e0QGF77Dna0PAv5RsbmCbFsDL3jqnRmaj0RykOCzDMH5D7MGG7368l7z1
	oka01MYcYXO4bnlAykhgLtuSe+4eA2OP65y8p966BQQ==
X-Gm-Gg: ATEYQzyAAyVJA10JIXUd2exvIE4toKWSm7RSyFImdTT2it777t4P1FKJ8pJJcaV//k0
	QbWdq5XWEWfHKCekTGKeWRZCMM656nmrPaN+kfuyTrvg2RQeGfAmctaRqMUR04/iAbhqCbkQqAb
	q5mFW7KUM2ChVo4Ckfs2pndB+/qGc7C04/7Rnh4bnOjj+Wbs9izF6TMuJZ4UD89bDnZRomh3S4G
	l+xiGrNpxeqxVyAFfzJJHJ9XU+GGfBnZhOaWB/ra1XKZ4ly2xCgGATm/IHYfId6pJHuuecpsFwc
	wpVf8MxOQkxCRAde3sdXmvHwMmLt7BRIDhQIluwnphb8x36pIG1GRS0giWD1mNY17K/yYq0=
X-Received: by 2002:a05:6214:1304:b0:89a:14c5:f4e with SMTP id
 6a1803df08f44-8a43a273786mr51708376d6.52.1775050182430; Wed, 01 Apr 2026
 06:29:42 -0700 (PDT)
MIME-Version: 1.0
References: <20260401010707.2584962-1-dennis@ausil.us> <20260401010707.2584962-4-dennis@ausil.us>
 <7c4791e9-6621-4afb-a166-55211b18fb08@lunn.ch>
In-Reply-To: <7c4791e9-6621-4afb-a166-55211b18fb08@lunn.ch>
From: Dennis Gilmore <dennis@ausil.us>
Date: Wed, 1 Apr 2026 08:29:31 -0500
X-Gm-Features: AQROBzAu4N-C5ikXx_bUWzY21o8WyoQ0kn_i1gnmUiRPmbCXX-sUt6a9jBTZs-8
Message-ID: <CAABkxwvfCYqN1y+aVUPVP05uzoGNEitC-BVjvAXL8ZPgRHav1g@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Chukun Pan <amadeus@jmu.edu.cn>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, 
	Michael Riesch <michael.riesch@collabora.com>, Mykola Kvach <xakep.amatop@gmail.com>, 
	Jimmy Hon <honyuenkwun@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_142945_149914_E64C2485 
X-CRM114-Status: GOOD (  14.34  )
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

SGkgQW5kcmV3LAoKT24gV2VkLCBBcHIgMSwgMjAyNiBhdCA2OjU24oCvQU0gQW5kcmV3IEx1bm4g
PGFuZHJld0BsdW5uLmNoPiB3cm90ZToKPgo+IE9uIFR1ZSwgTWFyIDMxLCAyMDI2IGF0IDA4OjA3
OjA3UE0gLTA1MDAsIGRlbm5pc0BhdXNpbC51cyB3cm90ZToKPiA+IEZyb206IERlbm5pcyBHaWxt
b3JlIDxkZW5uaXNAYXVzaWwudXM+Cj4gPgo+ID4gQWRkIGRldmljZSB0cmVlIGZvciB0aGUgWHVu
bG9uZyBPcmFuZ2UgUGkgNSBQcm8gKFJLMzU4OFMpLgo+ID4KPiA+IC0gZU1NQyBtb2R1bGUsIHlv
dSBjYW4gb3B0aW9uYWxseSBzb2xkZXIgYSBTUEkgTk9SIGluIHBsYWNlIGFuZCB0dXJuCj4gPiAg
b2ZmIHRoZSBlTU1DCj4gPiAtIFBDSWUtYXR0YWNoZWQgTklDIChwY2llMngxbDEpCj4gPiAtIFBD
SWUgTlZNZSBzbG90IChwY2llMngxbDIpCj4gPiAtIEFQNjI1NiBXaUZpIChCQ000MzQ1Nikgdmlh
IFNESU8gd2l0aCBtbWMtcHdyc2VxCj4gPiAtIEJDTTQzNDVDNSBCbHVldG9vdGgKPiA+IC0gZXM4
Mzg4IGF1ZGlvCj4gPiAtIFVTQiAyLjAgYW5kIFVTQiAzLjAKPgo+IFlvdSBzYWlkIGluIHBhdGNo
IDAvWCB0aGF0IHRoZSBFdGhlcm5ldCBkcml2ZXIgaGFkIGp1c3QgYmVlbgo+IGFjY2VwdGVkLiBT
byBpIHdhcyBleHBlY3RpbmcgYSBub2RlIGZvciBpdCBoZXJlPwo+Cj4gICAgICAgICAgIEFuZHJl
dwoKT24gdGhlIE9yYW5nZSBQaSA1IFBybywgRXRoZXJuZXQgaXMgY29ubmVjdGVkIHRvIFBDSWU7
IHRoZXJlIGlzIG5vCm5lZWQgdG8gZGVmaW5lIGFueXRoaW5nCgpEZW5uaXMKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
