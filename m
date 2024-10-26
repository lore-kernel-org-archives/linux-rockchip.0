Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBB2CD10C06
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 20:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qh8XiaLDWctHvFyu9uyJF5piaH+diAQA7RAxJbTirIo=; b=tqddJNKxSviCpT
	8ZnZ+BI0cbsGoYTqyb9q40r6tQtg8VvBDMueBOAVpp3RYtGCI8V2AFmSPDgZ526QsABB0OOiqcyf0
	YNJkexr15kT0TAo6s3xW2wywLM0IWhA7TQ8kTtrEy8+Z/lwCavxGuYmyLWugXbDKjHVKjQLN+BuFh
	NYo+ujRht3nOKXhQ/EI8rOBbfNEJ0HvsmFeHHYh7N3VpWpVBt2Vj1SFkJ4sHTngoYHdXD75c2df/O
	IF0lz6+X0gZ3gKe0A1i28O0z6CvkPx57nA3jNFuXwkVXTAUf+pzt7vSqdj3UeHS0WkD4h/loh4ZIB
	C320ivo0m2zKkRQBwZrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4nUO-00000007CWG-1ywU;
	Sat, 26 Oct 2024 20:34:24 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4nPZ-00000007BqG-1oN0
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 20:29:27 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-431695fa98bso30162795e9.3
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 13:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729974563; x=1730579363; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YO2ddyshVst8NJYtI/EAzfckbEmlN4LfkO5anVtPkmk=;
        b=l50zswFKCZzcxwA04Ewcy+r8dzUH5ff/v/f+TOtkh0C1IG2g6Kca2Uny59vh0kMVUx
         B9nv+KI0yvCH2YMMg/1NTVC2oFZ/C9LIQhvzEQ77d6mVx4vLS9dmpDpej7wDfV7glyPq
         +mkYqyTRp2FDYvAz7CDh8Hs7v8pW0x56O9sFOiulk9gZwN3YTsc2pbGpnquWW4LVlpkP
         cbWcmilvtq6r9W/ZFRvpn/mIESblxnh9geelgUBIKG86v23rQi25fx9Vps5My7Wf01DR
         CUbMccWuXIaiHC6G8uYLbBpeVUsXEivFKW+LyWNlhnGPcL/JCxp4Lo4tGIfrhW/puOgh
         MpQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729974563; x=1730579363;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YO2ddyshVst8NJYtI/EAzfckbEmlN4LfkO5anVtPkmk=;
        b=fWwzCSZrbIRx47LdMyZwqfVZAIDGbpImVQje8bLrfaKYx53DXlPeHv+9KBwzg/qoV0
         ngZm182TK1/1Iwr8RtlOFWIxJ4B2zUOwqeIFanCaLvJMP46xkH0T28Tgh4m4f5kHC6ZI
         GdYxRClC9pPLlS4pEj66nyZ1iTZeViMmFwzc23lgo9qSO9qGkRFp0vaUMQj/ZOh3y8jO
         8K/gVH4Zca+pVh3P/IuQc3J/a64twZpngM9a4zUHxJEsIj5BplpPO7n0StO8oi3mJAj9
         uXyEkLf+mWAKK8+nU40K/3MJujosUPJWF5pP558cYBu7aioGjRi6GTiZMF8yAwRxMgic
         cRpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZfStpkjT5zvEnzubcA+DLC1a/JNTqq60AQDoDVqhm/tR9PFl2IQk+niWnPU75ftv37zniKgGTEFLql7ogAw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2bAShmXjFWpHoSEzURA6uUH3NKYKkhaNMauVQgPLMNbLPL26o
	svsSy26tjD8f49QZ3rXWP1LSvqvUzo7a1HxQPVqQFeCAKvk2pRYcac1R5u2PC6z+9GWu/MaDCWS
	eLsYmlfC/6lbgLYfUSh/z8IMBaZZt+pqFFYlaeQ==
X-Google-Smtp-Source: AGHT+IEsRgVE85BaNb9YJ04VUlctDEU3HUMSSq2Vt1eZJlxtsd/vnjU7wMlXCcO7O7fixsirRMq9EVef5YiwH9eF12M=
X-Received: by 2002:adf:ae1a:0:b0:37d:4cd6:6f2f with SMTP id
 ffacd0b85a97d-380610f7ecbmr2989767f8f.3.1729974563096; Sat, 26 Oct 2024
 13:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <20241026100310.52679-1-honyuenkwun@gmail.com> <20241026100310.52679-6-honyuenkwun@gmail.com>
In-Reply-To: <20241026100310.52679-6-honyuenkwun@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sat, 26 Oct 2024 15:29:11 -0500
Message-ID: <CALWfF7JJ+2Zz6UmSzVzoyxhaE-S81_5qADgskNg3vZYaHwhgVA@mail.gmail.com>
Subject: Re: [PATCH 05/15] arm64: dts: rockchip: add PCIe network controller
 to opi5max
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, 
	Ondrej Jirman <megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_132926_165940_2F5A31C5 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
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

T24gU2F0LCBPY3QgMjYsIDIwMjQgYXQgNTowM+KAr0FNIEppbW15IEhvbiA8aG9ueXVlbmt3dW5A
Z21haWwuY29tPiB3cm90ZToKPgo+ICsgICAgICAgLyogcGNpZSBldGguIG5vdCBhIHJlYWwgcmVn
dWxhdG9yLiAzM1ZBVVggKi8KPiArICAgICAgIHZjY18zdjNfYXV4OiB2Y2MtM3YzLWF1eC1yZWd1
bGF0b3Igewo+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7
Cj4gKyAgICAgICAgICAgICAgIC8qIEV0aGVybmV0X3Bvd2VyX2VuICovCj4gKyAgICAgICAgICAg
ICAgIGdwaW9zID0gPCZncGlvMCBSS19QRDMgR1BJT19BQ1RJVkVfTE9XPjsKPiArICAgICAgICAg
ICAgICAgcmVndWxhdG9yLW5hbWUgPSAiMzN2YXV4IjsKPiArICAgICAgICAgICAgICAgcmVndWxh
dG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ICsgICAgICAgICAgICAgICBzdGFydHVwLWRl
bGF5LXVzID0gPDUwMDAwPjsKPiArICAgICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjXzN2
M19zMz47Cj4gKyAgICAgICB9Owo+ICsKV2hhdCdzIHRoZSBiZXN0IHdheSB0byB0cmVhdCB0aGlz
PyBJbiB0aGUgc2NoZW1hdGljIFsxXSBwYWdlIDIxLCBpdApkb2Vzbid0IGxvb2sgbGlrZSBhIG5v
cm1hbCByZWd1bGF0b3Igd2l0aCBJTiwgVk9VVCwgYW5kIEVOIHBpbnMuCgpBdCBsZWFzdCB0aGUg
T1BJNU1heCBzY2hlbWF0aWMgbWVudGlvbnMgaG93IHRoZSAzM1ZBVVggYW5kCkV0aGVybmV0X3Bv
d2VyX2VuIHBpbiBhcmUgY29ubmVjdGVkLgpUaGUgT1BJNVBsdXMgc2NoZW1hdGljIGRvZXNuJ3Qg
bWVudGlvbiB3aGVyZSB0aGUgRXRoZXJuZXRfcG93ZXJfZW4gcGluCmdvZXMuIEhvd2V2ZXIsIGl0
J3MgbW9kZWxlZCBpbiB0aGUgbWFpbmxpbmUgRFRTIGFzIGEgcmVndWxhdG9yLiBbMl0KClJlZ2Fy
ZGluZyB0aGUgbmFtZSwgSSBjYW4ndCBoYXZlIHRoZSBub2RlIGlkIGNhbGxlZCAiMzN2YXV4Iiwg
c28Kd2hhdCdzIHRoZSBhbHRlcm5hdGl2ZS4gU2hvdWxkIEkgdXNlIHZjYzN2M19wY2llX2V0aCBs
aWtlIHRoZQpPUEk1UGx1cz8KClsxXSBodHRwOi8vd3d3Lm9yYW5nZXBpLm9yZy9odG1sL2hhcmRX
YXJlL2NvbXB1dGVyQW5kTWljcm9jb250cm9sbGVycy9zZXJ2aWNlLWFuZC1zdXBwb3J0L09yYW5n
ZS1QaS01LU1heC5odG1sClsyXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzI24xNzkKCkppbW15CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
