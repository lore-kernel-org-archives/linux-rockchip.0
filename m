Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF40606A323
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 17:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fQaAMlxP;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=nQBpIvu4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=svIKwVsGWJn2j4JDA6vpY/TwAMW3L1+9j+aS2+eU0gk=; b=fQaAMlxPCUkouDJpVgYkJk2PJf
	I2G1cHEAGss/optI7U3t1JeRf0SR8b13fmUAukCAUSovPd8xdBtrO+kAqYiHA8TBZz4EQ/X+Z0I1+
	l7yfoxlaFuiM707two8+HaUn6d7GqsV5Taup9m74UBLbqd9Q4Zq0F4mQvH+022rZhR0vp+wteiZ69
	dGq4mq61AdXH3AqjVQQAyf/10U+L9pJZA5T/EgqaW/jSWA9K55BkHC6WJDHm7IY7D9wmr9DRISFrZ
	FfNrG20BiCyJLSaeP0/T3fbkq4nTWNy8RSfTqkXWNJ6IioDrrY15mxvFkfWKGGTPu6aVvCpCMojKL
	cbivO8vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJwL4-0000000EZJ9-1bza;
	Thu, 22 Oct 2026 17:12:26 +0000
Received: from mail-ej2-x09.google.com ([2a00:1450:4864:34::9])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJwL1-0000000EZHz-2wOo
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Oct 2026 17:12:25 +0000
Received: by mail-ej2-x09.google.com with SMTP id a640c23a62f3a-c3ff043bce9so1255366b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Oct 2026 10:12:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792689141; cv=none;
        d=google.com; s=arc-20260327;
        b=WRIzZ3cNXIF3xmXYCLpvap7jHhz/XRv4oZXy5R9V2+JwZhkg0yeFVAw0kTS5XH3A0J
         K5PDNTcrLnQyK0/zoY5Ir0dN0pHd3r7qXAJudujUwdPIbsgadrF4BUi6DAhMT78S6TyA
         tR/7gS40mshQ2VUn96OVkQyE+GCf+x8jx7WIeOSkvv34FaRAyDO2MuEwUfiF2F+ENsJe
         Oxh6DUAZuN27DIQjbYN4YnKkvkFF4CDwJFXeCMj1QDxn0QcZqyjiv1yfMafRfpdG6DCe
         Hmc/4vxKfxM1BTEbzztjlSbl+ARReAeWKoByBaFM272jfHPYb21BcbDqWS7+Gzyta689
         3uYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=hs6z4qUCneEFm9kHDK24+LRTeO4FQK/dQ4HNM7ckJB8=;
        fh=fJ2ENw8l9NU3oSt+ZrigfnS7SCG3x55o5oDU6BIwGew=;
        b=pa7IUB2un0nzFKw/1hDP0vHGLjxJq0BuaLUl7T5cZTFTqXb6QdgC8uyWXIaQuFeEGa
         dX5y4JR05EggktgDCYisPws7xv700mQ+ZU1VDJ6e36VX215kn5NvMSixJ28FE9rHX9SQ
         nJ7VfZtMD/JBNuVKKV+QkE8HFMdOdYBAthfrrgoDE6DKiNFssXcLaW6bBYz5mzplRWB0
         NL0OKbSdGkau+/MfwmUx+3EVUviP761I3mBJpSIg/Bl7RpHxid3brLfCwHacDWRuzW1X
         /e5VHyD93t1mc08bRcfsGDwE01VcmtEPLF+ysBm+hWUaLYkifaOI4pdChNi4J8v3bl8Q
         r7Jg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792689141; x=1793293941; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=hs6z4qUCneEFm9kHDK24+LRTeO4FQK/dQ4HNM7ckJB8=;
        b=nQBpIvu4uZjGf75T7E4EvexMQRjh+7xLzVCMuIz8xI1P0eHe0LRCl5NqQbPx9br8I/
         zfNiQ+KC8NXcwBEzelwVuL5b08VyUEMVdNbLD9N2CVXbh9Cq+k0DNVlTE5WxRULu+67D
         taUfwExLeRbWPjrUE3RpX9XrPzV6lt5Vf3aD/PE64ZFVKlGJybo44+gui1zo4pIYbF9C
         wsyfOqBqllMaYy0DS1kJcL8tK9R3sHjrj+wZnXHHXXkaGCjrGpIsR5dA2CXxptMqhIZh
         /IX/3r0zolfovG7FnvsWHp1iJOELJBEt2Y59oSskaoa1PIwbk2BM2gv1o1GlPpiNkYl8
         j/qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792689141; x=1793293941;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hs6z4qUCneEFm9kHDK24+LRTeO4FQK/dQ4HNM7ckJB8=;
        b=dZfgrF/1vZWpRNXx/jxnHQxc7grLk/CvXpfwkDOMq4TfYGlcvDJXmaTnIOcOCbQQpU
         Hfqcgg7/eSMNqRTa26+MzpOd7zGwDW0lPBc2t3LIDaepgy+ogYadmHfAVWsGG/UhE321
         bU/AhgF2nhwAHEqQ870nmwXTfFtbBmtjcVrD/0zuSPgehfJHInVQH8oZBnduFKPEM8S7
         3q/+n7ES2HZ54PlkhkPBZvnzLvJK/vwWZL54IBeh3nbdG5hG9Fb+6WDr46H2CBK+A8vE
         oRZfTNdSdD80tmV/ictQhCLwmTQu9zsAVHiofa8BBQWdjut/vHYKZhkAoQ02Jm3jsIl6
         pKhw==
X-Forwarded-Encrypted: i=1; AKwUvByiyfm0GXRGOsRfOnibXXzgysvJdJ6cAAbSA0UHz5ZjpER1VKjGPEDnEEtu8zw0iVQBvLj2+lYM08ZnHn3jOA==@lists.infradead.org
X-Gm-Message-State: AFq9FYI1KKSoOYUFJwwgXAyc7qflsZ9X7Vwm+kWi3/B4+XW0WJaRoYgW
	z9TL6jQ8S9eNMcY1IPlLy+FdS1hbCxAHRWUZg7REB2jitwza1ydVWZrpzWtHXQSOcAinfQGLiKj
	r2b4by6mcKeZz9ozCPw2mpElWQEuCZPU=
X-Gm-Gg: AYBFou2G5mnycp8Wx7XcDMOlJI53MqZziPKYAhUPgiJykLGpSzS3LnhHdJtuN+g54Q5
	VecPRfN1krkrzm9+aXaifoID6H6W0kMXBeFWtBsAEp/Ef2JObB+GKuz/xubIiWy5RGrSFhosmkX
	ljZShcBmf8mGQD79ZVq9y32VV73UYj2dP7g6eu4jDDKkJnarMSVRiCuhKPe4V0gwhbgJEgNm++C
	U9OW+I1PV0RagQNKmQc4qcRbtYQ9R5rEnrC7+HsJZIWmClRAk7gD6ljMPExjHmV1VEr/pHblBhR
	O2hu/EiRKUm+gFsh27eLt/5YCIZS7Cwzn0n29gasoK4kEowpLjtsCyaggOsbHsOwE7Q8msZA3Dl
	ZnV/N7uxVI4vaCq5X3lzQIQzbkWiSeRNsiUrUI1wGHz3INnCs+KbtU63P8don
X-Received: by 2002:a17:907:1c95:b0:c26:19de:9aec with SMTP id
 a640c23a62f3a-c4679b577d3mr599686166b.43.1792689140926; Thu, 22 Oct 2026
 10:12:20 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261022025844.150320-1-coiaprant@gmail.com> <20261022025844.150320-4-coiaprant@gmail.com>
 <e7f68299-1c0d-4b0f-948b-4835086c0df8@lunn.ch>
In-Reply-To: <e7f68299-1c0d-4b0f-948b-4835086c0df8@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Fri, 23 Oct 2026 01:12:07 +0800
X-Gm-Features: AclHuK9Aw-1KGTe0rcDr7TiLvHCZz-VKOsYzCIMnUV4-DQLpiOO8Gle6TTGKUh8
Message-ID: <CALj3r0gMA45HG2khs2SyehftU5KAHR5i7__CKXSZR8GSE1Q19A@mail.gmail.com>
Subject: Re: [PATCH v11 3/3] arm64: dts: rockchip: rk3568-photonicat: enable
 SGMII LAN port
To: Andrew Lunn <andrew@lunn.ch>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_101223_819564_82604BCF 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI25bm0MTDmnIgyM+aXpeWRqOS6lCAw
MDo1OOWGmemBk++8mgo+Cj4gPiArICAgICBzZ21paV9waHk6IGV0aGVybmV0LXBoeUAzIHsKPiA+
ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWVlZTgwMi4zLWMyMiI7
Cj4gPiArICAgICAgICAgICAgIHJlZyA9IDwweDM+Owo+ID4gKyAgICAgICAgICAgICBtYXgtc3Bl
ZWQgPSA8MTAwMD47Cj4KPiBQb2ludGxlc3MuIFNHTUlJIGNhbm5vdCBkbyBmYXN0ZXIsIHNvIHRo
ZXJlIGlzIG5vIG5lZWQgdG8gbGltaXQgaXQuCj4KPiAgICAgICAgIEFuZHJldwoKSGkgQW5kcmV3
LAoKUmlnaHQsIFNHTUlJIHRvcHMgb3V0IGF0IDEwMDBNYnBzIGFueXdheS4gRHJvcHBpbmcgbWF4
LXNwZWVkLgoKQ29pYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
