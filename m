Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EF94C55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 16:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=693VbG9G5XP0Fco/MdaTvJhvECWRkLPQb25auzgVebI=; b=OvxsccxNfs11c2
	DvPzr+NP4YS14QDBFq83PwZOOHYNmdwOaLij1bSqw0BwqUTWKYVYmlRJNYAqAVENkwmpUGknxHwBC
	GELZKQZDsOaijm3Cv/Ir0RcH3aNNKQiK8a78/TxQ5fBaXgR8WkoH15En/mWxvfad7qJ0m7tkhqLzs
	t7UYrRuxFWodJb9PY2EC4DzVUcotkMUKUfE4951ipuOpxck+X/lWluQ0Uh/N0ZVBeqMhnlHB169t5
	sVFqQPHygUL78RvyRGSam5Xk3MPSQpCEl7hyidtPEpWWHRhDorj0cmjB5KbjIWdMQdGB2vrGb8FGb
	kMbn8uJP0alyn5hRgG3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvnH-000000008BN-2rsl;
	Mon, 03 Aug 2026 16:45:39 +0000
Received: from mail-ua1-x92f.google.com ([2607:f8b0:4864:20::92f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvnF-0000000089i-06FJ
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 16:45:38 +0000
Received: by mail-ua1-x92f.google.com with SMTP id a1e0cc1a2514c-963a722ed59so863616241.1
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 09:45:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785775535; cv=none;
        d=google.com; s=arc-20260327;
        b=etPYSQujkauEqlQLnxkgyfpYHjmTA3FZ+1qWG6U842gamikQH8U7ETANsAkV1fhTyT
         +JlpHjqi7p8A078x2whgGT4BDxq5TOxhHGkPYzmz9urQcnkyfeV5dGSSeh9oIG0ITZgA
         njaCVKqlFnkxOk/5+UmlIEhgxW9c5sk6YFIx9vWtemVl69qc5NAiv0INBph1r4U57d0z
         QSHY7sL5tBD4xUXVDVccVbEB7yfmbQKjvSdwsocthMJrira/dh1gm7QrNdWN72xj6AK+
         Dx/ehy8CGwWuosnRIj6DLaP/NBXDq80iSx2HMfve5qP98HUebAGQ71ZGsTwRQBPoLpyO
         nwig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=niqvePJlDSQd28Qyc7y5gE/vwAYMmaOcsvRZCG9PwY8=;
        fh=Z73ZJUDz1zGY7Q4noUWnLEYDsggMRwJwpvCzrw+ghXs=;
        b=JBWl3Ctts1Koa8pMg7xt6IOlZXaqQ2SEz+ZtRS9j28YrrddDcvu24/B4lH+2Bz0E0j
         FU+hlS502sXN/oSRGxAkwU6ml5TJiN2DWWklAtm9jqpHgY6Ok0ownR2Kx5jr3A0uUxyU
         LixSQA5GxjW/5W8rXTfmehOB36QyGiC9OqmwvO528FmMuncJztLBoQ7cdxqzWFq4II69
         wvo00GWxlH4TEvKwac8mapiitGzqgEDPeXuCvHj0sKunXehinwb418oRsjjRp4mcrYh5
         up0k2mD8rj9cEu7z0VodrnXRissKn4dZ6eZVj2D90MjPTMxhcSk/J7h64BVCKy6wOq1K
         up4w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785775535; x=1786380335; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=niqvePJlDSQd28Qyc7y5gE/vwAYMmaOcsvRZCG9PwY8=;
        b=oqUJbiEExevkByzM2cZ3YuQQSEM1oWgWj1wy+XjyuP3jWpdoHKU1a3sA/J4gutpJbT
         9BekyGiuOC8P01sooMoP2NQt4qyTGEl7Q3E24xCSazeDQCCNUKFoLkdV4WSnXXQR3bY6
         sHajmhL38XauKxIVzsRI+Cojhhhx4FpvflnxS901InpDSVTBwBB53qO4RhC+wxB46P+7
         Ys0jJbgNJKK6BFKVcT4WXnirXTU+k2wjmxnk2Qpc0mW6px2xnDrdSbi9G8drF4ffm80F
         bOkQJTiMU4VtsVE1MP9kF1NfGUl18sb+pNwZBJAQXgLeYZIlkrDsMWpsONDK2zxZTQHc
         4q1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785775535; x=1786380335;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=niqvePJlDSQd28Qyc7y5gE/vwAYMmaOcsvRZCG9PwY8=;
        b=TLhDoQ6+MHe1E/XkvUK6xYDZ7CkTmfAogJQtxkF5erjMP11Bi35+2EC4wZ+Kjx+anF
         BM+5nq1zt6SnPx4JGV5xmClh7L8wb3ZQJ4SGS/LFW1jFkLpW5gAjVqp9UDXTjZJFfgIw
         kSdWuUtw3P2dyvI6akDbqIrrHHn/N3zjDGuktSJB1PFhF+aWDSdHaZzURgHfhIXD0q23
         +iF+j1XasDkZvNGmfX4qQMmcxe4kGxKRD0RG8eMa6M4exwQe4umxYq6p245I0yC4XO7a
         C8qNte0l4AQSWUt5Yr2lyCMSurItuX1sr8ALpmpsn88dt77nBajsU2qhZbBaAWQPM+/H
         RfsQ==
X-Forwarded-Encrypted: i=1; AHgh+RqnZpWc3tbg5bnEdhkmZj1VxzuGFSlS23bzptVlpYUbKwGjH8pVMsRmK8BJU84Ai09sR6xl+pcs99peenICaQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxz5VFVuKr+ZN3L8U1I1TYd9FtKYi7+PYXaIjMLjvwSYGXkqNUp
	Wfy2cJjzxVyRt0wu2qToYJMaCoOzXPnU6bUMfMtVlWjhJIjqdCaNYrm/lLZqXJqCwHJi3FB9mno
	fYjEvUYuCF08xi2xccEYJwt9J/Fb9fJo=
X-Gm-Gg: AR+sD12JIfQElGWVBU8AjfFcUaN9IGpZZuVnGcrU+UyHp7fTKdZai+Vf5Ks+3M8eMN/
	A2cUfkVXRJtH3DarPPxU9L9UCh2KNhz/ZBrejtkExa+g0KHO4ArKK7eMUGgl29bN3IFGtmA4YTG
	Kt+ESciw1zypMhq/6fmc8HZXPR+u0zbsLYaY8PWPec5nFHVwgZK6hhG8xIcw0v+11HzkqPwpWzf
	/u77MhasyDmzLqmnxqAbbueMHF23z0ttS2GBTjFTqLEB8EEuI1ZQk9Daj/PeEB+Q9b9ftRVmQ5P
	jqLCbW59IpdNg0t6zVIMUm8E2otDzgY0/xAqH03ZOOdfK9Y5Lt8UAKSuqXZjLNxVUR47hkOBhgO
	6ZoQojYiZfUKJc/Q/1KWfqln2kjsMH/0CzLtVpRNaovN90gLxhRd85dR+uP521JaslUyyEqpssf
	w7ZEVKb8feIhkA68vx89CKJyTr7czkaWQ9uNEO
X-Received: by 2002:a05:6102:5e82:b0:73a:128c:4e3d with SMTP id
 ada2fe7eead31-75b22b6375cmr7983333137.8.1785775535469; Mon, 03 Aug 2026
 09:45:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-8-0a53cd9e21cc@gmail.com> <2c0210b3-2c68-41f1-aa33-3f1693454849@lunn.ch>
In-Reply-To: <2c0210b3-2c68-41f1-aa33-3f1693454849@lunn.ch>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Mon, 3 Aug 2026 10:45:23 -0600
X-Gm-Features: AUfX_myHhqSCOlS18NU3-rnIJB_yJDCs5Z0LNUdIv6o7tNasY8YkhUjPJd2Ilvs
Message-ID: <CADvTj4pfNFVGrQV86T7X+nZQYUamxEYLLWuxVXk=av0da_XocQ@mail.gmail.com>
Subject: Re: [PATCH 08/21] dt-bindings: mfd: x-powers: add AC200
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>, 
	Richard Genoud <richard.genoud@bootlin.com>, Maxime Ripard <mripard@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	mfd@lists.linux.dev, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_094537_071358_91A34D68 
X-CRM114-Status: GOOD (  13.70  )
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

T24gTW9uLCBBdWcgMywgMjAyNiBhdCA3OjE44oCvQU0gQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5u
LmNoPiB3cm90ZToKPgo+ID4gKyAgICAgICAgICAgIGV0aGVybmV0LXBoeS1jb250cm9sIHsKPiA+
ICsgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJ4LXBvd2VycyxhYzIwMC1lcGh5LWN0bCI7
Cj4gPiArICAgICAgICAgICAgICAgIG52bWVtLWNlbGxzID0gPCZlcGh5X2NhbGlicmF0aW9uPjsK
PiA+ICsgICAgICAgICAgICAgICAgbnZtZW0tY2VsbC1uYW1lcyA9ICJjYWxpYnJhdGlvbiI7Cj4g
PiArICAgICAgICAgICAgICAgIHBoeS1tb2RlID0gInJtaWkiOwo+ID4gKyAgICAgICAgICAgIH07
Cj4KPiBXaGF0IGRvIHlvdSBtZWFuIGJ5IGFuIGV0aGVybmV0IFBIWSBjb250cm9sPwo+Cj4gSSBh
c3N1bWUgdGhpcyBpcyBub3QgYW4gYWN0dWFsIEV0aGVybmV0IFBIWSwgYnV0IHNvbWUgY29udHJv
bCBsb2dpYwo+IGFyb3VuZCBpdD8gV2hlcmUgaXMgdGhlIGV0aGVybmV0IFBIWSBpdHNlbGY/CgpD
b3JyZWN0LCB0aGlzIGlzIG5vdCB0aGUgRXRoZXJuZXQgUEhZIGl0c2VsZi4gSXQgaXMgdGhlIHBh
Y2thZ2Utc3BlY2lmaWMKc2lkZWJhbmQgY29udHJvbCBibG9jayB0aGF0IG11c3QgYmUgY29uZmln
dXJlZCBiZWZvcmUgdGhlIG5vcm1hbCBDbGF1c2UgMjIKUEhZIHJlZ2lzdGVycyBiZWNvbWUgdXNh
YmxlLiBGb3IgQUMyMDAsIHRoaXMgY29udHJvbCBibG9jayBpcyBhY2Nlc3NlZAp0aHJvdWdoIHRo
ZSBwYXJlbnQgQUMyMDAgSTJDIHJlZ21hcC4gRm9yIEFDMzAwLCB0aGUgZXF1aXZhbGVudCBjb250
cm9sIGJsb2NrCmlzIGFjY2Vzc2VkIHRocm91Z2ggYSBzZXBhcmF0ZSBub24tUEhZIENsYXVzZSAy
MiBhZGRyZXNzLgoKVGhlIGFjdHVhbCBFdGhlcm5ldCBQSFkgaXMgYSBzZXBhcmF0ZSBkZXZpY2Ug
b24gdGhlIE1BQydzIE1ESU8gYnVzLiBUaGUKc2hhcmVkIFBIWSBkcml2ZXIgZm9yIHRoYXQgZGV2
aWNlIGlzIGFkZGVkIGluIHBhdGNoIDE2OgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
c3VueGkvMjAyNjA4MDItc3VibWl0LWFjeDAwLW9mLWR5bmFtaWMtdjEtdjEtMTYtMGE1M2NkOWUy
MWNjQGdtYWlsLmNvbS8KClRoZSBsYXRlciBib2FyZCBEVFMgcGF0Y2hlcyBpbnN0YW50aWF0ZSBp
dCBhcyBhbiBldGhlcm5ldC1waHkgbm9kZSBiZW5lYXRoCnRoZSBNQUMncyBNRElPIGJ1cyBhbmQg
cmVmZXJlbmNlIHRoZSBhcHByb3ByaWF0ZSBzaWRlYmFuZCBjb250cm9sIHByb3ZpZGVyLgoKPgo+
ICAgICAgICBBbmRyZXcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
