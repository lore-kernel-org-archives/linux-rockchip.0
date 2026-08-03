Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0622FC55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 21:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+N2HFkkbXn6ppVN3Hzc9uTJGPLCXaSo7ywCHCOG2ejU=; b=rRJferOKTPL3p7
	vSo+FDJNYpQ+zOGQewaF+kefFGHQybDW6vIgIODd72vgVoLnrjGb4ZTgy4cjumzG+Fqr/VbDqKguI
	g7KGMdsGwUE8g3y6cx16y2OEaRrewtuypafQ5iO6Tcdg+8QFVshOzdD3KHIShmSEjEIAo3L/X+Ar4
	aW6N4RB0pTMaG6ClFU5gLQXv0IKtdAK7opvusDSBBnYm2XNFo0D8HTGprNJocK0iaJJmNiUISUbJf
	GP0dKzgDVtrPpO//cXkHVlZS3VFBcPnXB0/mUAGapMXLKjXg6i238i9zTHkugHx6QGgkeyftReJqU
	HxwagpTvarB3ekNHfTUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr0Iz-00000000YDm-08G0;
	Mon, 03 Aug 2026 21:34:41 +0000
Received: from mail-ua1-x92c.google.com ([2607:f8b0:4864:20::92c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr0Iv-00000000YCu-0WOr
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 21:34:39 +0000
Received: by mail-ua1-x92c.google.com with SMTP id a1e0cc1a2514c-969524c1a63so2563464241.0
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 14:34:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785792876; cv=none;
        d=google.com; s=arc-20260327;
        b=r0wfQpfndmifCmp0RwsrU3L0Q7+s0tUNIQZIx4WmPVQHEVDmH+RzZAWzwUo4tIdqp1
         Y7O/s3yKZzzfuDGHFO/thsdSZnc+r3QaRbm/Z41FfpxJoBqFyZjJBZZaZZi2MWuHNZE0
         MFpqJRzCpl9pyNFgzdl0YJctgs71YipKfV7sqfcP6jT0CIdqD2iwMtCRDCu54ZN2MQBu
         mqxzxEr4t7R+rUsahfjj2sPLHqBIldgnImmgQ7BnaAW3jdojnkmZsL4RIJE8ba0GlkVx
         +hqUffB/MVP6/cAwHcdOSUGnLm/DbPmwvNkiMSG56n0tSxTbT3hJocEnVcF3uDKk11mp
         EiAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jrCpdiSBc0sqoht3jRVlLKndiJ6qMGmFxu9cVzHBY9o=;
        fh=pq8On1UV6G2AoKqb+Em5oNRDsgbAIek/s1+ShVduue0=;
        b=PDFwJhEmmT+1vyvO7rrtxtqurPqOc3+LCyU6B5bJL4hMzwy6TwWhy44v3zewsQFjkw
         Zc2YVFCaydPPk9gjfthaACv4St0Y8K6FXOF2V2t9wfMW8cqyfyUWKzXlwV3vgL0JIwD5
         vJaHselZzoNzDwnTu9UY/qlJT7p438ueYBGBNgzT3F66b3NEzxJ4vdu8kHxXtmOfiwk/
         I0inlXpEf48RtHD8whZuKPbOvDs9BRNJw1/G0/TU+tToBdDjvIIukIWQhxTuDlioZ7RX
         CR9tZoQaz1LLoA+zT0XSB8fH2rhFZ02UG2OONXzp0ebjGLIoB8JMEJCprrPG/hS5tT6B
         3GRQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785792876; x=1786397676; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=jrCpdiSBc0sqoht3jRVlLKndiJ6qMGmFxu9cVzHBY9o=;
        b=Uwv0dOgH6JtLXftr6XTMdfrrtzdSLFpZPHVC51afVywOcrUTsymUdHMlFRhMmLRGV4
         hoIJRlz1ZX60L7qMc9h/hY7//DU4rFoVOafhwf0As6USpK3ACDFMMh9lfb8FGg1AEK+t
         NWRYVy3Ym/kJ1LBfcymj6E1jydMP5j4ZY1HeJVsdJazCAz4bruqa3J4W1VU9UsN19FTs
         Rv3gWgacW57l45Yz5xc2a0/QA9mqVO4UGyM4NvygcJ9BT7yj/lMjrpp5QSAsZbrwlJGB
         Yzb21XHoVLyvyqeGt0FJbG0zWvqQchM8W8k1/TiQbcMmNQ6qP0T7QUt9Y7iCGnP8z49G
         UtHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785792876; x=1786397676;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jrCpdiSBc0sqoht3jRVlLKndiJ6qMGmFxu9cVzHBY9o=;
        b=fNySIKxskHID87HSNnLlLguaIkxP5rgsj7NJC+Nem/wJWl8un3hTu/qmcF8mb+qte1
         gF3o/dLiTvx5fHS0dLX16XD0xMP+Td5xKaj7EH7WBVX9uUE0J9sPcJPGVwcLa/+S1P1V
         TwZxOpd0rOFQuZtfKCIe7UKOgTAOIKf4oqaJErAH5j9rQVB3jFiQodLlFSzII2EbGqjM
         45dZ24FkFmYT3PhoDuCrxY1OCic/hTJCmgTkTjhnx6Qq/5ClMhJhesOHIqUwEMX52Q7P
         2u5HNezR0Ev9njmFnw4eHkFhPb/UeWZks8VOW4xB8oFkW10BWam2amEFuSwqX9x5Y5ZI
         p65Q==
X-Forwarded-Encrypted: i=1; AHgh+RozHXCIBL2eiFrKkHjzMKQlCcXmbMKMO5cwQa7kbyhfQvcWKveHmEO85GEbHqdYNmC62Ol6WfLgHaPllfxjlw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1t54/pGGlZ84UtazGnbATuEr47PwVyXVt4iA7pVWQASzgZife
	c5DdZmrH2qApoDkOe7q1n5MBd0GMDVC3AlCzkagpZ8+/Lpq2cp98IA11gOahK3ANHF0qRq83TJT
	bIXNBLEQnFuo6bCoj6p8gBNrhyexmngU=
X-Gm-Gg: AR+sD117N44s9JlxKdkA+y3DzoAuWyC+wD5xDdlfNeuaAsL7xZTtjmkixvwTZ1Yz7kr
	7GR0Mkwf54ynKsurx4A/bYcitKTV1wuOufrXQitWAqEsc77mWB1srl+M/lYkNCn/vauy07B6Fvr
	nlWZkS85eA1iOsFsSTEI0pY9DHkBsqQlaUioZ14/d109jruQpIzVjTufXXK84CHI80K+ioGJIe/
	LogAs9ZEu61EuV0cyCLS7jXGiWjdFQxIwgv1uxg2KpZvsyhkZ7pfbY2doQ0vSdeOv3UK/fk2djJ
	5h1tzUQ05ce6AT3xmLj/ZPOCGgPfembQZoqb5WijycNTWN6Y8uLJG8qra5+bSby9hP44Gk9djSv
	tHx3pemFpedz41tb6Il5wSXHkNoE/qIeOsUJPCVHZ8gAJF51YZpMqScgSYZvODIP7PsPy99lPAD
	diSUP+Y+2EpnSN+a0mJPJOGgz3Vzbfb95eFVv0UwogF2y2Rfw=
X-Received: by 2002:a05:6102:c08:b0:74c:7fd8:73eb with SMTP id
 ada2fe7eead31-75b2196451emr9291357137.1.1785792875669; Mon, 03 Aug 2026
 14:34:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-8-0a53cd9e21cc@gmail.com>
 <f2cc3c90-060f-40c1-a55e-e2ed91e65487@kernel.org> <CADvTj4q7HnOYJZE-M070-1npEdne__Ct5D9FeUNVVXa8Bsm7qQ@mail.gmail.com>
 <e198e8fa-6c5e-4c8d-a4de-d8bb25aab0bd@kernel.org>
In-Reply-To: <e198e8fa-6c5e-4c8d-a4de-d8bb25aab0bd@kernel.org>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Mon, 3 Aug 2026 15:34:23 -0600
X-Gm-Features: AUfX_mz0nFlKIv_Mdqu5KdrEqoS_kIvG6t--sSCBfp69bBMk1YT6VypHPp03QP4
Message-ID: <CADvTj4rjXGgF2d9Xm6TmeS2LwaM+O2wFFH=rGLA32y+aMk2KOg@mail.gmail.com>
Subject: Re: [PATCH 08/21] dt-bindings: mfd: x-powers: add AC200
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>, 
	Richard Genoud <richard.genoud@bootlin.com>, Maxime Ripard <mripard@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	mfd@lists.linux.dev, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_143437_213709_1991286F 
X-CRM114-Status: GOOD (  14.36  )
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

T24gTW9uLCBBdWcgMywgMjAyNiBhdCAyOjIw4oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDAzLzA4LzIwMjYgMDk6NTQsIEphbWVzIEhpbGxp
YXJkIHdyb3RlOgo+ID4gT24gTW9uLCBBdWcgMywgMjAyNiBhdCAxOjA34oCvQU0gS3J6eXN6dG9m
IEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPiB3cm90ZToKPiA+Pgo+ID4+IE9uIDAzLzA4LzIw
MjYgMDc6MTQsIEphbWVzIEhpbGxpYXJkIHdyb3RlOgo+ID4+PiBUaGUgQUMyMDAgaXMgYW4gSTJD
LWNvbnRyb2xsZWQgbWl4ZWQtc2lnbmFsIGNvbXBhbmlvbiBJQyBjb250YWluaW5nCj4gPj4+IGF1
ZGlvLCB2aWRlbywgUlRDIGFuZCBGYXN0IEV0aGVybmV0IFBIWSBmdW5jdGlvbnMuCj4gPj4KPiA+
PiBUaGlzIGZhaWxzIHdoZW4gYXBwbGllZCwgYmVjYXVzZSB5b3UgZGlkIG5vdCBleHBsYWluIHRo
ZQo+ID4+IGRlcGVuZGVuY2llcy9tZXJnaW5nIG9mIHRoaXMgcGF0Y2hzZXQuCj4gPj4KPiA+PiBU
aGlzIGlzIFRIRSBNT1NUIGltcG9ydGFudCBpbmZvcm1hdGlvbiBvZiBjb3ZlciBsZXR0ZXIuIFRo
ZSBmaXJzdCB0aGluZwo+ID4+IHRvIGV4cGxhaW4uCj4gPgo+ID4gSSBkaWQgbWVudGlvbiBpbiB0
aGUgY292ZXIgbGV0dGVyIHRoYXQgdGhlIHB3bSBzZXJpZXMgaXMgYSBkZXBlbmRlbmN5Ogo+ID4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNzAzMTUyMjE1LjE5Mjg1OS0xLXJpY2hh
cmQuZ2Vub3VkQGJvb3RsaW4uY29tLwo+Cj4gQXBwbHkgdGhpcyBwYXRjaCBhbmQgdGVzdC4KPgoK
SG93IHdlcmUgeW91IGFwcGx5aW5nIHRoZSBzZXJpZXM/CgpJIG5vdGljZWQgc2FzaGlrbyB3YXMg
YWxzbyBmYWlsaW5nIHRvIGFwcGx5IHRoZSBzZXJpZXM6Cmh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDgwMi1zdWJtaXQtYWN4MDAtb2YtZHluYW1pYy12MS12MS0wLTBhNTNjZDll
MjFjYyU0MGdtYWlsLmNvbQoKQnV0IHRoYXQgYXBwZWFyZWQgdG8gYmUgZHVlIHRvIHNhc2hpa28g
bWlzc2luZyBkZXBlbmRlbmN5IHJlc29sdXRpb24sCkkgd2VudCBhaGVhZCBhbmQgY3JlYXRlZCBh
IFBSIHRoYXQgc2hvdWxkIGhvcGVmdWxseSBmaXggdGhhdDoKaHR0cHM6Ly9naXRodWIuY29tL3Nh
c2hpa28tZGV2L3Nhc2hpa28vcHVsbC8zODkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
