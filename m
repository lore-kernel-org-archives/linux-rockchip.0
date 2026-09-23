Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A6A0C982FA
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 12:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KewXYypIehDFTbKWocoFsfPbc4dixC0f3wQ6p6S+b6w=; b=LCCW2WL+sN0sjn
	C4UXrYVNyR4ddA0pX3xAuI0escJ6DLy4x1coqVmkC479TSWaQWiEHDb4oO0A45lq+3uXtc5Qwdtdq
	h8ywHjoPf+Ow5CeV1LGocfeB/sv6ag2BaWPrL1Y8M80OxIfOEFhHe7IHxWvEzrypskkenIKaZR4C8
	n+osRgSQ6NBVM1k4P84zJI6pcZFveub4swndN7PsuB2ZvBXGLfdfsZANP5QRxnNvrHPPzn5Uk7uPb
	HzHBbk78CNonBOghIlb5LNBJSkJ20GxPLeLWpA5U5613C/u0+kpALd7LAOiK9V2B+MBEr5vAm0j5V
	zsBX2uNu0Q1MFrPwEvaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9M8E-00000008FkS-2mSS;
	Wed, 23 Sep 2026 12:31:26 +0000
Received: from mail-ej2-x06.google.com ([2a00:1450:4864:34::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9M8B-00000008FjI-0KjZ
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 12:31:24 +0000
Received: by mail-ej2-x06.google.com with SMTP id a640c23a62f3a-c29440ee0e7so49826166b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 05:31:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790166681; cv=none;
        d=google.com; s=arc-20260327;
        b=ewzwmHX8WJVM+V8Dv4PRjXmhZz6AjGHrXTLcwvDfQ3zo/8tGZz5CBn1Lrn3vH0UV6t
         YByD5fTbf9mKUIJwieGvEkX8WYcbnGcDYyO0mbHhbWOMoC4T1/Y/3DvnWmmaTpWbm5AG
         j784gdNnrWMtMEtgSZ6vb+Hcz366bEdCLtem6Vk/JafVlX5CFTfVCHCH5dCGWb+dgKf4
         Z6+53VYNb1+oXTSWNU2JNDsdgNl35S95fyJl3NdkVV6pDQJBfLyYffUnWtTQcAw5d48A
         NF3hc2Y4vQaIiHaX8Xvkity2nP4ickPlvsPeuqnoiENiH4egtCU1NwZMUbNwnnxD0r++
         931A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=geosNIRimRwfO8HRfTW0XaPt8QyFJOsPlxIx1190dzs=;
        fh=RPUB9Ag8PfZ4MyoW754JMaYuYwb0S5FPw6LRMjqfJPk=;
        b=bGxltgTk7l4JTmPePd3svfaSx0MZkrr/3tPcarO9ONa/fgH+RL5uemZqBH0If0l3Aa
         V7JYqnRZ/KTAG5O2Wfkmdg/BZ4dYcRBxQP/A25udaz8yWf4j93j7hHWr77tLSUWFmZEK
         f5NRUL5eGhY6xW9/6rZ/m8kEPvy3iC9RgfK0ebp1C+MJNJnAtWtM7fGAhqAJuLotc7Bi
         QvbQ1cpfLVWg38vEikBqzEy6J8WYkSy1HJtAI4nDGo2Xm4NXNl26RoV9C1dKoZYW+S+O
         Z1zbkg4IUYArMqV4ttutjrwh+j0TGY07UWT1VuYzv84hPQFWhytB2qf7o/t0479JOuLi
         rDGw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790166681; x=1790771481; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=geosNIRimRwfO8HRfTW0XaPt8QyFJOsPlxIx1190dzs=;
        b=HCbX8XuzyJqhRBx34xXQjl5y+II/z1ZIY3ZNomC/aXjLkTOJMTTocveCnwwiKatgEn
         nSfGl+t1OE0rz8JK2pai5j2DenKZwPNIfDh9JYGH6D5jqwBnPg5PZKGkcJNvK6sj3F5+
         YDh4z2j2BJ4QO1yGDNO/JudHNC+KIlBNtVX5wegcgSnV68mzSGF/pDXF/awek1iq39Xk
         GCPABGbNI/YsRUxlGbyLmIwVWmuu+DFGBOWgcxXdfd3m9g2/CJAB/OnAhrhzAYX8/GEk
         IqIi+mQuN7PMLf7KPGzMTtIQSh4NabVu7GwRWZqLnSNEZ+ENVXjpkFqIYaOitkxDM12S
         RBaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790166681; x=1790771481;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=geosNIRimRwfO8HRfTW0XaPt8QyFJOsPlxIx1190dzs=;
        b=d3X1rGO0TOu3106Ml0ju3aRv8CclpHBEqYv1vU+kcZAWBmYsfDXTQkI4Y+Epn2ogz3
         kM9MoCVmOszqEd6iXHmxnvv2692QzFO38WnKvZ5Q4Jp/ri5I0YcACZm94qU9hycFam6I
         OBDUx1iaqcCPEWr+B9f1lFyFjW5a+npCTtfecvDM4mblNzhNTAMUwr6qcsNi99uFqkDH
         0knJVLH5V1lXa+xFa8Vwnm9S8uUf/MDs1saQ1X5PQeoAl7L5gx4T1KS1PJ8hly/my0hr
         GspP+/hMSUGub7oBMf9C9uGFKesjn/QrGJEv5uXydLyF0z8xNonrxrGtNXl2iFs8bff9
         DShQ==
X-Forwarded-Encrypted: i=1; AKwUvBxopg0UNDk6B/IJM4TxXKtl4WppnPwQAIXDqPoHbdW2MOiUuZqdUzzDXkSK5VkGLRxFJiQNq3ikv53JmL/lqw==@lists.infradead.org
X-Gm-Message-State: AFuF++mglUXdHwhsjaVoRpXQR9h/gLFGhh1TRBORt82wOzHKEwnLIruT
	DolTB8eNoZ2z6tI4q9X9i+6nJd4wtof+IRhh//FlvsddSy5MvXBAEpRQf8RA58eqmex8t1iioSz
	kb7NS2utvKiLwa9V4KXEePDq+7lHP71o=
X-Gm-Gg: AYBFou0h1DXJfTvY0jmLLnGAcItcRdkI3cIsMERwToIkh89RfQ4GLQkYyAtmZZqhnyi
	iC6g+BzZMzO1WGf9SPJqEA+uVmW+VZZBvlNRuzrkvtjIWkpUY3DpzorPKXFrHXoB5fgfjntjK9I
	4pJ6q8CKyjByiuJVMANpTxPZMu/4vX8ZxMLyXQmGjtpOpAe06rcOTJSjdgtW30MvsNxhovU7wyi
	EAoCe/r8hlJWh5DOHGoxjAdZuQpxyls5q5tfbSHeDhYU2Kb2GfSu/39L2WPL5ymJocDQp5uSw8V
	yY6RcY8SOQEFN7alrimZ1DWRHSt12lSwoFvW7KxebIGRSA/4eAeGqWjJNk9oJgaTCWFTMA==
X-Received: by 2002:a17:907:a312:b0:c29:f5d8:9c6b with SMTP id
 a640c23a62f3a-c2aadc48e63mr193301966b.26.1790166680835; Wed, 23 Sep 2026
 05:31:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260919174223.2356964-1-coiaprant@gmail.com> <20260922191758.2730da7a@kernel.org>
In-Reply-To: <20260922191758.2730da7a@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 23 Sep 2026 20:31:08 +0800
X-Gm-Features: AclHuK-NKWB18tJ6bEfQMpRWykl2_zQElAqMu29cCy0C8SHDtVbj2c6Zd_8DHvQ
Message-ID: <CALj3r0gPjraK9wy_WbTkeYD1OK_HhSeMi8bDmk03gOVJUb825g@mail.gmail.com>
Subject: Re: [PATCH net] net: ethernet: stmmac: dwmac-rk: fix bulk clock leak
 when the PHY clock fails
To: Jakub Kicinski <kuba@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_053123_248516_51003E70 
X-CRM114-Status: UNSURE (   8.30  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDnmnIgyM+aXpeWRqOS4
iSAxMDoxOOWGmemBk++8mgo+Cj4gT24gU3VuLCAyMCBTZXAgMjAyNiAwMTo0MjoyMyArMDgwMCBD
b2lhIFByYW50IHdyb3RlOgo+ID4gICAgICAgICAgICAgICAgICAgICAgIGlmIChyZXQpCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShi
c3BfcHJpdi0+bnVtX2Nsa3MsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBic3BfcHJpdi0+Y2xrcyk7Cj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIH0K
Pgo+IE1pc3NpbmcgYSBicmFja2V0LCBFQlVJTEQuIEkgYWxtb3N0IGFwcHJlY2lhdGUgc2VlaW5n
IGEgaHVtYW4gZXJyb3IgbGlrZQo+IHRoaXMgdGhlc2UgZGF5cyA6KQo+IC0tCj4gcHctYm90OiBj
cgoKVGhhdCdzIHdoYXQgSSBnZXQgZm9yIGhpdHRpbmcgc2VuZCB3aGlsZSBteSBicmFpbiB3YXMg
RUJVU1kuIFdpbGwgZml4CmFuZCByZXBvc3Qgc2hvcnRseS4KCkNvaWEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
