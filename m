Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 597B8C05027
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Feb 2023 23:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYELy4zJBejJuWkSCetW0qbclbh1BGK3JE6Sz21/6sQ=; b=HokXr5OzcX1jQ0
	25juokRUEAmL7O7uhOnFLNG/POeYeslZ3AVCeXayKLz5Mk5cNytVu7xbiOk7b7mwOJfOhS8qk6gQa
	Q8WTElMnn039qrOOs7i1OlhmvOj/7RKIVFbZNWE3Acv3AHuQ1fczzKhVl0UBNAXEPsxHV02m+Rp46
	DGBETG4JzqWHGdoGNhXHE57eiRr0Ly0U5XxwisOfH9vssByMx//7x94OPO9rswMWxLav9dfn/1peM
	t+QEO94Q5mDQzYyodOWGlmzsMlSlu95T7RgUXPdK7vrexHoRhp7l0Ja0HrKUBfBPNbmfU+Se46Mty
	LXI9hDtZ67Xobv3bDCzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTAEe-00FxlJ-HO; Fri, 17 Feb 2023 23:33:48 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTAET-00Fxir-LM
	for linux-rockchip@lists.infradead.org; Fri, 17 Feb 2023 23:33:39 +0000
Received: by mail-ed1-x532.google.com with SMTP id er25so9864209edb.6
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Feb 2023 15:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VyCJnKBF9xRPdrA0sJ4+bBFcoXE8pttkRG4G6fKGnFE=;
        b=pS0niakP0qYCqC2MJLnyALz2ZjW/72UI2Q4X0R+oTZAADhujSy/JgqH0txQkKRhuLX
         BMpivIJKHI7oAqy0pJRNq2ORgzZ07Pmdu3bbFO5GxlNvfXWJQB+G4trABc8lyzIxzxE/
         wiZOHmBunQ+4fG3qFe9PKaMmF7bHw3xkrH6SjcyqFyQxSyt1tXHstytima8HK9jybguG
         E4MYux0/t2MjH9dwkkqky+iaf9iksgxrHo8Stg96FM1BwbgsEkg3/EiHKNkdguxBXKZE
         lYeu3/V0n+UUUZ8tWb6cqbQg9YddNZ0YWD5xoNcHfQw/N3+j64lo9lGVhnYeYTeFf4IF
         ut0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VyCJnKBF9xRPdrA0sJ4+bBFcoXE8pttkRG4G6fKGnFE=;
        b=a5cFbg+cV9B+TyhDw24B5y4nQpc+aGFlpSeYN6JcUeKWxoLuMJgk+X5lYR8x06HFQD
         S/j0uskMrcjWO4+TgKAa9RQtP0xJaznXrdIc6sTTbSOSzAaiBFqFrkSMBZG+lm0JxpI3
         3opXdLW0XjQMLftKNf4cYToLr4wSKkWnGaJtnPtGgxqaJs5w/hUX/rRuW1ficXMiEKz0
         k9B/QvF5BaXI2v76Fan7xn+0c3M5eBAMtCu0WOLuFgAJcQnYvS5RSmIizlXktMkDBueP
         LMKlD9F0b6J8mHIfRmQFEiCj9eXMdpBKKIxxeyFdN8pdb+tqvHLg3dOl57hhiHNo460V
         AiWw==
X-Gm-Message-State: AO0yUKX2rwOGurCq9HVsM7614Vv/+vD/xGpHnxKghNS8SN6u34Dc+kmp
	U7oKdxfCtsSYtAuwC8tluZmbWw==
X-Google-Smtp-Source: AK7set+ai0x5njq0qyzxAuo61bXFMSNmeHD/E8IxRrIgjbWcMCG+iNki7n/CF54Mtu1zwb8knZU28A==
X-Received: by 2002:a05:6402:4491:b0:4a3:43c1:843e with SMTP id er17-20020a056402449100b004a343c1843emr6785727edb.18.1676676812552;
        Fri, 17 Feb 2023 15:33:32 -0800 (PST)
Received: from smtpclient.apple (ip5f58e70e.dynamic.kabel-deutschland.de. [95.88.231.14])
        by smtp.gmail.com with ESMTPSA id b16-20020a50b410000000b004adc66c5193sm1437407edh.88.2023.02.17.15.33.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2023 15:33:32 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: [PATCH v5] regulator: core: Resolve supply name earlier to
 prevent double-init
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <CAGETcx__Ez8i9O2O30-Q1R00xOqBjkKMCwt37_AGAQjNvZqpdg@mail.gmail.com>
Date: Sat, 18 Feb 2023 00:33:20 +0100
Cc: Mark Brown <broonie@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 lgirdwood@gmail.com,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 m.reichl@fivetechno.de,
 robin.murphy@arm.com,
 vincent.legoll@gmail.com,
 wens@kernel.org
Message-Id: <B6E001E2-9BCD-420A-B0F6-1495DE46955E@kohlschutter.com>
References: <932DEB17-70FB-4416-80B3-C48A7C31848F@kohlschutter.com>
 <20220825212842.7176-1-christian@kohlschutter.com>
 <CAGETcx__Ez8i9O2O30-Q1R00xOqBjkKMCwt37_AGAQjNvZqpdg@mail.gmail.com>
To: Saravana Kannan <saravanak@google.com>
X-Mailer: Apple Mail (2.3731.400.51.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_153337_707558_685ED783 
X-CRM114-Status: GOOD (  10.97  )
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

T24gMTguIEZlYiAyMDIzLCBhdCAwMDoyMiwgU2FyYXZhbmEgS2FubmFuIDxzYXJhdmFuYWtAZ29v
Z2xlLmNvbT4gd3JvdGU6Cj4gCj4gT24gVGh1LCBBdWcgMjUsIDIwMjIgYXQgMjoyOCBQTSBDaHJp
c3RpYW4gS29obHNjaMO8dHRlcgo+IDxjaHJpc3RpYW5Aa29obHNjaHV0dGVyLmNvbT4gd3JvdGU6
Cj4+IAo+PiBQcmV2aW91c2x5LCBhbiB1bnJlc29sdmVkIHJlZ3VsYXRvciBzdXBwbHkgcmVmZXJl
bmNlIHVwb24gY2FsbGluZwo+PiByZWd1bGF0b3JfcmVnaXN0ZXIgb24gYW4gYWx3YXlzLW9uIG9y
IGJvb3Qtb24gcmVndWxhdG9yIGNhdXNlZAo+PiBzZXRfbWFjaGluZV9jb25zdHJhaW50cyB0byBi
ZSBjYWxsZWQgdHdpY2UuCj4+IAo+PiBUaGlzIGluIHR1cm4gbWF5IGluaXRpYWxpemUgdGhlIHJl
Z3VsYXRvciB0d2ljZSwgbGVhZGluZyB0byB2b2x0YWdlCj4+IGdsaXRjaGVzIHRoYXQgYXJlIHRp
bWluZy1kZXBlbmRlbnQuIEEgc2ltcGxlLCB1bnJlbGF0ZWQgY29uZmlndXJhdGlvbgo+PiBjaGFu
Z2UgbWF5IGJlIGVub3VnaCB0byBoaWRlIHRoaXMgcHJvYmxlbSwgb25seSB0byBiZSBzdXJmYWNl
ZCBieQo+PiBjaGFuY2UuCj4gCj4gSW4geW91ciBjYXNlLCBjYW4geW91IGVsYWJvcmF0ZSB3aGlj
aCBwYXJ0IG9mIHRoZSBjb25zdHJhaW50cy9pbml0Cj4gdHdpY2UgY2F1c2VkIHRoZSBpc3N1ZT8K
PiAKPiBJJ20gdHJ5aW5nIHRvIHNpbXBsaWZ5IHNvbWUgb2YgdGhlIHN1cHBseSByZXNvbHZpbmcg
Y29kZSBhbmQgSSdtCj4gdHJ5aW5nIHRvIG5vdCBicmVhayB5b3VyIHVzZSBjYXNlLgo+IAo+IC1T
YXJhdmFuYQoKSGVyZSdzIGEgd3JpdGUtdXAgb2YgbXkgdXNlIGNhc2UsIGFuZCBob3cgd2UgZ290
IHRvIHRoZSBzb2x1dGlvbjoKaHR0cHM6Ly9rb2hsc2NodWV0dGVyLmdpdGh1Yi5pby9ibG9nL3Bv
c3RzLzIwMjIvMTAvMjgvbGludXgtbmFub3BpLXI0cy8KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
