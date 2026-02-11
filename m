Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C50C7E9E2E4
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Feb 2026 11:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48q2P+yphu+BvlpRL3DZ/muVjD74cQAmVKQ87j/86qg=; b=HGynenf9aR/7pd
	jhwRfxlrCTMLh4S15tj4jFTluktdmDOiIfxuC/B2klz0GymatQU+n2sKgm8qKZtMcGLle8nrJkSot
	AaPEzqszBjYJsweVyzelPBuUKLc2RvCe5CvakhlimiESoStVI6GGO4tbtpMsmWgUlbcwbBoyIHGD5
	56+cAih7MF1uNDWKAkzq9VedZMpYO6RDz7XU43/NckAb1JVn7QxACgoQ87jxaCTGhhfaZl9GCalh3
	eb7KIoEb9kRFZO6q6XukEmg4pjZvoUJ+yJD1Lo4wc4m9ZrguUrjMFdhTTGB8PlVuXAKdo33bGQAWL
	5EqxG9EOQrn71/MkEoFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq80G-00000000Y2a-2Z7m;
	Wed, 11 Feb 2026 11:03:28 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq80D-00000000Y1N-2tdm
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Feb 2026 11:03:26 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-385e7cafef9so59205891fa.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Feb 2026 03:03:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770807803; cv=none;
        d=google.com; s=arc-20240605;
        b=QGnwkyBOa9aPUKSeQ3wOJ07LVm7JYrv0khDCOGnPh8pZsJO2jlv56eYuGlOZqJqpJt
         3j9Q3/sPncIrSo09DwUFWmuEWDQVwvb4ghCMewgIWGccvvFzZl9jA8vbIeR5DEasfwHI
         BfPWW+FDFOLpLQsxkG8DOey7NCLyd0lQNzeLeKEUWuxcmnINh/0ITzM+7YPF7r/H+XYV
         U0ho1W1JQN1SKTobEo9ZheEOYjjYO5Sq4Iqrs1S8nh+3y7KG34wRRpyMW1Qr2/qDkxcE
         H9dVxryGfgMev6kBj132aAMkmUqneikWjtu9YFv4BekKNPZEwCHN3IEWkG2XHB2lQ4hK
         0K6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=joAf094Ek7cks9iYuW58qsdNETj0QSxANlo+wmVWO6Y=;
        fh=siIL5TlzmbDPQSdCPf5kDU1lx6Qo30ZHHhy6LoYDv9I=;
        b=YyW8RcfdV5GMYVd8OBpXXXEg9SP+dA3vPZSBTxNseGkhQ2VAkYGjOFl4yH5oFbIKpL
         f56NVvuKM8TcRFVOnzjmGTn4Kj6x8kQNNFqVYDYfsVObYNg5lSwJ6btzPWqmL3NSKfos
         9kFAkz3SieNdp3fIibUSedtlpLW9LuOoer2c/q+dLfqPeEZF9hH/V5b6N18gBHAowrY0
         j/k6g50pwjahTZxzk0Dp1cfYR5/r+8WtUa9FmhcfQ7EdgCAVf3Od8zBVRw2nljMrxwBC
         VI4hKfTIrk405uZHqV2z4UdvpjLwA2/fCYyzNVOzCKAsk5hp9UYjJmlvEkOyg7V+CmMd
         8ltg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770807803; x=1771412603; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=joAf094Ek7cks9iYuW58qsdNETj0QSxANlo+wmVWO6Y=;
        b=BZxka2pJkrVKvzH/g4AQbpfIfxmpouLmJwulFjtCoBiRo9vu/oRuI86XYGfqEM5DdC
         OrvxGw+JOPbrnI8DWkhpvFh0drSbACS2pcbokfqJT2by0+ktJ8rZxPgy5NxHIUuAKsj4
         KbNagACZ5Gfl7wDg9JothSF2UCtOtFu0NWNtIFTDKCw/XgSd37NggjUtUe6PwdpePNKm
         3bjeiKRSm1LxjskabVKn2RuBzrmISCMKhafqfbNVlwkPCbBhhvt5m8vyTY94/pJsQF/8
         OSPuxFNbDDRblYu+nP2A7kHhhHaypHyoXr2Kz0fruf9nbUdzwaufR2oIJ1i8Z9bfJLag
         vtaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770807803; x=1771412603;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=joAf094Ek7cks9iYuW58qsdNETj0QSxANlo+wmVWO6Y=;
        b=B2D7apXZEULlnat7MXMh0xeW++e8zSlqmCrQu5xiMhu3PIPs1cO7QwMd1wKkwn+DzG
         5n49rxVTwpm/sXz/HhUSaULT4LhvZRosRFiMmjpGvwnChbYUDJ8WFOqqOmEuB15iJgzH
         UtikD3mQryCrVXUec6qd3SzTavcwv0IWKBzUQkryi3BHxsddHxANyYfkU2YNgvUS6d4z
         HbKZiqUVcl8QXFqSS1pcM++2WdRXY2ZKh4RV8j79grSCSU04nxcwxmd0pzNMipjvh0Zo
         MZpZnRlFR5z+mAt/R0AsUuQ0w0pKjOM85QRhnYy9ehuZLQopDBi4fNojXUpnNhlHY0xt
         VFRw==
X-Forwarded-Encrypted: i=1; AJvYcCUj6TvcwIc9suzncWXER9PBp4RizEgZTp29l8P0yMnOp4OkLgmzmJkhowNwi05dB0ibQB0kFXzvbgD27mZXyA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzn0Pk+iNqAzYwBOxZRKO6rhMzM3d6R8vgGLy7A6Sgj9+aStev+
	eAd/GeUB0bLrRmtIfVH5qACoVmZ2fy5hYoJU8TNOaKhgyn1R/Iw9jzqFeXIFUM/nMWvuAG5ugGY
	/IsHgvyIeO9wiDvp1lTno+3maxIGYN4k=
X-Gm-Gg: AZuq6aKfSg+o2+21Ljl0NAp1CN6/PPcJ3oWHUs2guzndHI+j1oc0W8ZpaEI1nGcVL12
	BDXr96syVeGgHDGz8NySWuO3sEXprKQ6gMMnmAueVtNdrhe20bKrYbpz/QKtzhhqqvr75AHnAfe
	oB0VyoP0NV9sOcj8v/K13R5EsdbtCt3x5gUh2hXMiVT5KIVGe1Vn0nfNS+ZSeYNwg5n7DLIjXw0
	6vHqFfDWVXxxt4x0nPNdTPFbX40BamrNlYR8QaoG4b5L6a2F4RJWZH39fGS7HektE9UuhANiDaA
	Js8d9R7aRReNkext/z1n7oWyv5D+QbxIrPTGYPw=
X-Received: by 2002:a05:651c:31cd:b0:385:da28:1e2a with SMTP id
 38308e7fff4ca-3870707374amr4155731fa.24.1770807803205; Wed, 11 Feb 2026
 03:03:23 -0800 (PST)
MIME-Version: 1.0
References: <20260210144845.317048-1-festevam@gmail.com> <20260210144845.317048-4-festevam@gmail.com>
 <a8c1bac7-9f67-4476-81ad-5271ff239b91@kwiboo.se>
In-Reply-To: <a8c1bac7-9f67-4476-81ad-5271ff239b91@kwiboo.se>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 11 Feb 2026 08:03:11 -0300
X-Gm-Features: AZwV_QgqxfUGnyoRhdf_YqJ-RqLp0HuIvNPBxSjq0yImj1idIOnISKGQVva2ko4
Message-ID: <CAOMZO5DJGQVOL4D4WWopduodedExMG-O65E1AzdXDQDWMP8A1Q@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
To: Jonas Karlman <jonas@kwiboo.se>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Fabio Estevam <festevam@nabladev.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_030325_745457_21A0DE49 
X-CRM114-Status: UNSURE (   7.90  )
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

SGkgSm9uYXMsCgpPbiBUdWUsIEZlYiAxMCwgMjAyNiBhdCAxOjUz4oCvUE0gSm9uYXMgS2FybG1h
biA8am9uYXNAa3dpYm9vLnNlPiB3cm90ZToKCj4gbml0OiBJcyBydjExMDNiIG5lZWRlZCBpbiBh
bGwgdGhyZWUgY29tcGF0aWJsZSBzdHJpbmdzPyBUaGUgbGFzdCBvbmUgaXMKPiBhbHJlYWR5IHBv
aW50aW5nIG91dCB0aGF0IHRoaXMgaXMgdGhlIHJ2MTEwM2Igc29jLCBhbHNvIHRoZSBvdGhlciBP
bmlvbgo+IE9tZWdhIGJvYXJkcyBpbi10cmVlIHVzZSBvbmlvbixvbWVnYSBhbmQgb25pb24sb21l
Z2EyKy4KCkFsbCB0aGUgYm9hcmRzIGluc2lkZSBhcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9N
YWtlZmlsZSBzdGFydCB3aXRoCnRoZSBTb0MgbmFtZSwgc28gSSBwcmVmZXIgdG8gYmUgY29uc2lz
dGVudC4KCkkgaGF2ZSBhZGRyZXNzZWQgYWxsIG9mIHRoZSBvdGhlciBmZWVkYmFjayB5b3UgZ2F2
ZSBtZSBhbmQgc2VudCBhIHY0LgoKVGhhbmtzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
