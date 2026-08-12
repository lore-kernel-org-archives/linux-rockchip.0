Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37EC2C5B572
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 12:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGhfFHM5SM7F+GUfktOx82U238ejuzBrI15c7w6lWu0=; b=C9l9xZbptX/P74
	f7Y0rAn+hYrshJi2ytgVmliJ7yLEkcgJQvqiD2FlroekzFvE+PdZnGUVGzOUFVDgrwW9/31nhRzFJ
	AYEAknS+SF83bvCS35GssZ0WSAuKrLkkrIXpze5vmalAIBikwSoSFPg6TqWgr2nZkcAjJ39j7iKpX
	GIfwcNm3bHOCXs2Hd8XguEjzSbjTvb0kMh2YbYQNxjQy0Ywx9x9I3UnUC5C22GrnP+BCquyCup4aW
	o8mHOAWRywoWbAy0NWNggkOfOzCEqfx53rG0GUPS0He0jPJdSUmC1Sly+65P+9rWqJDtWFmDJ6Obr
	1gdLkN5MMwAWp3zSkkEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu80U-0000000GBZb-3NVB;
	Wed, 12 Aug 2026 12:24:30 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu80R-0000000GBXy-045b
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Aug 2026 12:24:29 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-69fdfd98eb8so106222a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Aug 2026 05:24:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786537464; cv=none;
        d=google.com; s=arc-20260327;
        b=LjlCeLzfXE/yebehJWnZTUcWOQHeUOLuJpwHIyfSVOLODgNG+HOZHyXhLJh8Bw6bLg
         bkbMW83felqcLUKXX4DqXeZljdPw7Uxf28KTDpiWwRZlLgD7na73HLMj0z+cPelMqfqL
         117VMDYigb8rDvTWjM4ggfgzm5+A/REgm78Ap2K/OQxO96ZwsITUB8Y8i/BE8TuhfjF4
         I4aLStpKZHVIVyWVD8HRyOBE7azz5sUpbmhhIWkiqG41zlPbIqtKKR8IlQS0G4LtUEJW
         4nZzYHdJKCR2/kYYu1zTWjEiPYHykDuekktnifuCJrlEi8nimvXAcKuwu/xBA+v7xc4n
         5ujA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=k7YkQ+Bc7EQX0qDaijrFEUTuOpQfKm59tZjQohvjtGA=;
        fh=6C8EhGMq7NRcGH6a2+d0zGdyQEspskDA9bbm8JFgZZc=;
        b=Wfpd/lSDQwhbGFisNu6hwfDJ9i7evg+M68FIFAYojli1al4yIg4YNcpeQhInGXjtW0
         upo2VCqVjFc4m0ylI7lU31XektqfirpNpXg0f2wrK772VKfV09ip50dhfJvZ6tj/Mybk
         /NC6DsjgLO9Sk+oYE2wlNpxhNSLSacp5XtpI9iLkkP2KVUyiQVnGorcp3+VGa6GAswuT
         F2eSk1jGSpmypM5UxpGCykHCZVuq4JX/BrWqp/6il7n6Ow1PiwXX1yGQm/AiBgm8Vt77
         Eag/Vh0/F/oJxzcHqtyvLFyOvEdrPmKReIeItvNbX+sQgEeixSwmQoAg/QevueN93dY7
         K0hQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786537464; x=1787142264; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=k7YkQ+Bc7EQX0qDaijrFEUTuOpQfKm59tZjQohvjtGA=;
        b=PtvKqZnb9o8XoDZNysagzjOYIWXibMhv0p1q6ZCe54aXLkyLEWfl3MJRKR/rWajWud
         V3zKxfeR3g4w+JLAE0PC4X6J9hpM71ORWS5S9TGUcdV28WS/MYD+Rwj2yGjkcXf76Ave
         LSZyvp5ywjyUSqaqTCIw43dCHkTq0vZ3o1hFg3HUa5PRkSBNMZ8q9wTviYI2W8y+6h1l
         YxzhzcPqQL7j2rQts9mEEpJlAOXRO8l/U87Gmy4spSmWeCJGAO6qigNOM3z+Dm4jpXq6
         nJ4veKYGYrsZqnrKmFXFIlJ0q8iwEmESDSwqYcYWaWd5UdBT0ldKarcluJ//MQQJwwiu
         O6wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786537464; x=1787142264;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=k7YkQ+Bc7EQX0qDaijrFEUTuOpQfKm59tZjQohvjtGA=;
        b=GT2IDFBdelLk1HKgIax+2xW5eZrq3tbop1U0IvdcR/RZiZT9LIDtg3sOtCGzIQAOfZ
         QXYlDGf9eS4tAyRMb4zgRarps6n8ZAz8H2acwR0OYvpOTvdhvNuTBzc936hT17zjU6Z5
         fXSA4kDCIs8MdPBAGzsHqM+mXQE5fbVY+z7u0pA6NjjebRNO8GSm8RSeBNlkVYKijTZ3
         92EOKB6GXchFQ5jBcB3z2V3rNuDPlz5XI72HeY9KgUIbf/MqtvjtDRok4lfzudh5bERv
         EgInwpuUCaM22W8L4AF6phHsHG7HUsK7dTSKsHF53utScw5PKFY2UBgmw3hweM0WgLSZ
         KHCg==
X-Forwarded-Encrypted: i=1; AHgh+RqTM8l8fFxeAEW7sR06fJq53PBDJkHMp1lUndwfcsKm67ZhQ4Rw0hD46HvHMS2GI8uchQpuMak7fH2Ox8kKfQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywe/Av6irEnGHUUhVoIuGfMd+7Os2AqeWdyLof8Ms67NXxiuGid
	Tg9YZ/OFb5sKXtL2bQzMJf1BFs3lDk0AwjOCKjdvGIlfJHdA633Nm6Lgt3mkrXCcWU3yl74sD75
	qd3K6bs0ggFDCgWFUkPCU01YUYJpQc80=
X-Gm-Gg: AR+sD13kZeQBNcGXvw7rvTl5MxzeaI0fYBzlP12xr1L4+oarmx60DD/SXSGv5uKFGgw
	aBYHz16FgYDIA1kUSTnMAvTU/i8UGjsniZP1rK0djIOCfVDZdEtp2o4cQY8927Afw4pKbHsZO2E
	2mbXwBm9WELZZkGlyMCuIiqfD3rP7hGDQOLM5RB7m9ls+XciXZyr7ll58hKplujNNxTLmy2KX5k
	4N+12bCq4Nw1b3Qww9salR4uNveCwM+z5EbYKXCeRRfltZtcrOLuYSsRwUQmX16Ywe5nkkm24pM
	0upGjPwrqxA0+J86VnD8nZ9RtFEAilJEQOUe0Zvo3QGWkQ==
X-Received: by 2002:a05:6402:5515:b0:6a3:72bc:7bca with SMTP id
 4fb4d7f45d1cf-6a375f517b5mr853527a12.3.1786537463007; Wed, 12 Aug 2026
 05:24:23 -0700 (PDT)
MIME-Version: 1.0
References: <20260810-dcphy-rx-v1-v3-0-a2d25c29adfc@gmail.com>
 <20260810-dcphy-rx-v1-v3-1-a2d25c29adfc@gmail.com> <20260812-refreshing-rampant-gecko-b38ef9@quoll>
In-Reply-To: <20260812-refreshing-rampant-gecko-b38ef9@quoll>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Wed, 12 Aug 2026 20:24:11 +0800
X-Gm-Features: AUfX_mz6P0tpS0X_aTP21idLy0_k0ZDj4Fov-0axes74Vj1me73dhQSiZbhCnY0
Message-ID: <CAPwA33KM-sWkPVrP1h+swLinvrCZHzxPeS7h25KEO87Q_6WZuA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: Add PHY_TYPE_DSI and
 PHY_TYPE_CSI definitions
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_052427_096268_43553826 
X-CRM114-Status: GOOD (  28.31  )
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

VGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKPiBJIHJlYWQgYWJvdmUsIGJ1dCBzdGlsbCBkbyBub3Qg
Z2V0IHdoeSBUWVBFX0RQSFkvQ1BIWSBpcyBub3QgZW5vdWdoLgo+IElzbid0IERQSFkgaW1wbHlp
bmcgaXQgaXMgRFNJPwoKSSBzZWUgeW91ciBwb2ludCwgYW5kIEkgZGlkIG5vdCBleHBsYWluIHRo
aXMgY2xlYXJseSBlbm91Z2ggaW4gdGhlIHByZXZpb3VzCnZlcnNpb24uCgpELVBIWSBvbmx5IGRl
c2NyaWJlcyB0aGUgZWxlY3RyaWNhbCBsYXllciwgYW5kIGJvdGggTUlQSSBEU0kgYW5kIE1JUEkg
Q1NJLTIKY2FuIHJ1biBvbiB0b3Agb2YgaXQuIEEgQ1NJLTIgcmVjZWl2ZXIncyBQSFkgaXMgYSBE
LVBIWSBqdXN0IGFzIG11Y2ggYXMgYQpEU0kgdHJhbnNtaXR0ZXIncyBpcywgc28gUEhZX1RZUEVf
RFBIWSBhbG9uZSBkb2VzIG5vdCB0ZWxsIHVzIHdoaWNoIG9uZSB0aGUKY29uc3VtZXIgaXMgYXNr
aW5nIGZvci4KClRoYXQgaXMgdGhlIHByb2JsZW0gaGVyZS4gVGhlIFJLMzU4OCBEQy1QSFkgZXhw
b3NlcyBib3RoIGEgdHJhbnNtaXR0ZXIgYW5kCmEgcmVjZWl2ZXIgZnJvbSBhIHNpbmdsZSBQSFkg
YmxvY2ssIHdoaWNoIGNhbiBiZSB1c2VkIGJ5IHR3byBpbmRlcGVuZGVudApjb25zdW1lcnMgYXQg
dGhlIHNhbWUgdGltZS4gVGhpcyBpcyBub3QgYSB0aGVvcmV0aWNhbCBjb25jZXJuOiBvbiB0aGlz
CmJvYXJkIGEgRFNJIHBhbmVsIGlzIHNjYW5uaW5nIG91dCB3aGlsZSB0aGUgc2FtZSBQSFkgcmVj
ZWl2ZXMgQ1NJLTIgZnJhbWVzCmZyb20gYSBjYW1lcmEuIFdpdGggb25seSB0aGUgZWxlY3RyaWNh
bCBsYXllciB0byBpZGVudGlmeSB0aGUgUEhZLCBib3RoCmNvbnN1bWVycyB3b3VsZCBlbmQgdXAg
d2l0aCB0aGUgc2FtZSBwaGFuZGxlIGNlbGw6Cgpkc2lAZmRlMjAwMDAgewpwaHlzID0gPCZtaXBp
ZGNwaHkwIFBIWV9UWVBFX0RQSFk+OyAvKiB3YW50cyB0aGUgVFggKi8KfTsKCmNzaTJAZmRkMTAw
MDAgewpwaHlzID0gPCZtaXBpZGNwaHkwIFBIWV9UWVBFX0RQSFk+OyAvKiB3YW50cyB0aGUgUlgg
Ki8KfTsKClRoZXJlIGlzIHRoZW4gbm90aGluZyBpbiAub2ZfeGxhdGUoKSB0byBkaXN0aW5ndWlz
aCB0aGUgdHdvIHJlcXVlc3RzLgoKSSB3aWxsIG1ha2UgdGhpcyBjbGVhcmVyIGluIHRoZSB2NCBj
b21taXQgbWVzc2FnZSBhbmQgaW5jbHVkZSB0aGUgZXhhbXBsZQphYm92ZSBzbyB0aGF0IHRoZSBy
ZWFzb25pbmcgaXMgZWFzaWVyIHRvIGZvbGxvdy4KCkZvciBjb250ZXh0LCB2MiBkZXNjcmliZWQg
dGhlIGRpcmVjdGlvbiB3aXRoIGEgUm9ja2NoaXAtcHJpdmF0ZQpSS19EQ1BIWV9ESVJfKiBlbnVt
LiBNaWNoYWVsIFJpZXNjaCBzdWdnZXN0ZWQgdXNpbmcgZ2VuZXJpYyBjb25zdGFudHMKaW5zdGVh
ZCBbMV0sIGFuZCBWaW5vZCBhZ3JlZWQgWzJdLgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L3IvODJkYTM2MjItOWMzYS00NTRjLTg3YmMtZmI0ZWM3YWRiNjhkQGNvbGxhYm9yYS5jb20KWzJd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvYW5TdXhmZWl0U3FtU0hOckB2YW1hbgoKPiBZb3Vy
IHRhZyBnb2VzIHRoZSBsYXN0LgoKU3VyZSwgSSB3aWxsIGZpeCB0aGlzIGluIHY0LiBUaGUgU2ln
bmVkLW9mZi1ieSB0YWcgd2lsbCBjb21lIGxhc3QsIGFuZCBJCndpbGwgY2hlY2sgdGhlIHdob2xl
IHNlcmllcyBhZ2Fpbi4KCj4gVHdvIHNpbXBsZSBkZWZpbmVzIG5lZWRlZCBDbGF1ZGUuCgpZZXMs
IEkgYWdyZWUgdGhhdCB0aGVzZSB0d28gZGVmaW5lcyB0aGVtc2VsdmVzIGFyZSBzaW1wbGUgYW5k
IGRvIG5vdCByZWFsbHkKbmVlZCBBSSBhc3Npc3RhbmNlLgoKSSBhZGRlZCB0aGUgQXNzaXN0ZWQt
YnkgdGFnIGJlY2F1c2UgSSB1c2VkIEFJIGR1cmluZyB0aGUgZGV2ZWxvcG1lbnQgb2YgdGhlCnNl
cmllcyBhcyBhIHdob2xlLCBpbmNsdWRpbmcgY3Jvc3MtY2hlY2tpbmcgdGhlIGNvZGUsIHdyaXRp
bmcgYWRkaXRpb25hbAp0ZXN0IGNhc2VzLCBhbmQgbG9va2luZyB1cCB0aGUgcmVsZXZhbnQgc2Vj
dGlvbnMgb2YgdGhlIFRSTS4gKEkgY2hlY2tlZCB0aGUKY29ycmVzcG9uZGluZyBzZWN0aW9ucyBp
biB0aGUgVFJNIG15c2VsZiwgcmV2aWV3ZWQgdGhlIHRlc3QgY2FzZXMsIGFuZApyZS1yYW4gdGhl
bSBvbiB0aGUgaGFyZHdhcmUgYmVmb3JlIHNlbmRpbmcgdGhlIHNlcmllcy4pCgpJIGFsc28gY2hl
Y2tlZCB0aGUgY3VycmVudCBtYWlubGluZSBndWlkYW5jZSBpbgpEb2N1bWVudGF0aW9uL3Byb2Nl
c3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCBhbmQKRG9jdW1lbnRhdGlvbi9wcm9jZXNzL2NvZGlu
Zy1hc3Npc3RhbnRzLnJzdC4gU2luY2UgSSB3YXMgbm90IHN1cmUgaG93IG11Y2gKQUkgaW52b2x2
ZW1lbnQgc2hvdWxkIHdhcnJhbnQgdGFnZ2luZyBpbmRpdmlkdWFsIHBhdGNoZXMsIEkgY2hvc2Ug
dG8gbWFyawp0aGUgd2hvbGUgc2VyaWVzIGNvbnNpc3RlbnRseS4KClRoYXQgc2FpZCwgSSBhbSBo
YXBweSB0byBkcm9wIHRoZSB0YWcgZnJvbSB0aGlzIHBhdGNoIGluIHY0IGlmIHlvdSBwcmVmZXIg
LQpJIHdyb3RlIHRoZXNlIHR3byBsaW5lcyBteXNlbGYuCgpUaGFua3MsCkphc29uCgoKS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPiDmlrwgMjAyNuW5tDjmnIgxMuaXpemAseS4
iSDkuIvljYg2OjUx5a+r6YGT77yaCj4KPiBPbiBNb24sIEF1ZyAxMCwgMjAyNiBhdCAwODoxMDow
OVBNICswODAwLCBKYXNvbiBZYW5nIHdyb3RlOgo+ID4gTUlQSSBELVBIWSBhbmQgQy1QSFkgYmxv
Y2tzIGFyZSBpbmNyZWFzaW5nbHkgZGlyZWN0aW9uLWFnbm9zdGljOiB0aGUKPiA+IHNhbWUgUEhZ
IElQIGNhbiBkcml2ZSBhIE1JUEkgRFNJIGRpc3BsYXkgb3IgcmVjZWl2ZSBmcm9tIGEgTUlQSSBD
U0ktMgo+ID4gY2FtZXJhLCBhbmQgY29tYm8gYmxvY2tzIGxpa2UgdGhlIFNhbXN1bmcgSVAgb24g
UkszNTg4IGV4cG9zZSBib3RoCj4gPiBkaXJlY3Rpb25zIHRvIGluZGVwZW5kZW50IGNvbnN1bWVy
cyBhdCB0aGUgc2FtZSB0aW1lLiBBIGJpbmRpbmcgdGhhdAo+ID4gbmVlZHMgdG8gdGVsbCB0aGUg
dHdvIGNvbnN1bWVycyBhcGFydCBoYXMgbm90aGluZyBnZW5lcmljIHRvIHJlYWNoCj4gPiBmb3I6
IG1vc3QgY29uc3RhbnRzIGluIHRoaXMgaGVhZGVyIG5hbWUgYSBwcm90b2NvbCAoUEhZX1RZUEVf
VVNCMywKPiA+IFBIWV9UWVBFX0RQLCAuLi4pLCB3aGlsZSB0aGUgTUlQSSBlbnRyaWVzIG5hbWUg
b25seSB0aGUgZWxlY3RyaWNhbAo+ID4gbGF5ZXIuCj4gPgo+ID4gQWRkIFBIWV9UWVBFX0RTSSBh
bmQgUEhZX1RZUEVfQ1NJIHRvIHNlbGVjdCBhIFBIWSBieSB0aGUgTUlQSQo+ID4gcHJvdG9jb2wg
aXQgc3BlYWtzLCB3aGljaCBhbHNvIGltcGxpZXMgdGhlIGRpcmVjdGlvbi4gVGhleSBkbyBub3QK
PiA+IHJlcGxhY2UgUEhZX1RZUEVfRFBIWS9QSFlfVFlQRV9DUEhZLCB3aGljaCByZW1haW4gdGhl
IHJpZ2h0IGNob2ljZQo+ID4gd2hlcmUgdGhlIGNlbGwgc2VsZWN0cyB0aGUgZWxlY3RyaWNhbCBs
YXllci4gRmlyc3QgdXNlciBpcyB0aGUKPiA+IFJvY2tjaGlwIFJLMzU4OCBNSVBJIERDLVBIWSBi
aW5kaW5nLgo+Cj4gSSByZWFkIGFib3ZlLCBidXQgc3RpbGwgZG8gbm90IGdldCB3aHkgVFlQRV9E
UEhZL0NQSFkgaXMgbm90IGVub3VnaC4KPiBJc24ndCBEUEhZIGltcGx5aW5nIGl0IGlzIERTST8K
Pgo+ID4KPiA+IFN1Z2dlc3RlZC1ieTogTWljaGFlbCBSaWVzY2ggPG1pY2hhZWwucmllc2NoQGNv
bGxhYm9yYS5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBZYW5nIDxqYXNvbjk4MTY2QGdt
YWlsLmNvbT4KPgo+IFlvdXIgdGFnIGdvZXMgdGhlIGxhc3QuCj4KPiA+IEFzc2lzdGVkLWJ5OiBD
bGF1ZGU6Y2xhdWRlLWZhYmxlLTUKPgo+IFR3byBzaW1wbGUgZGVmaW5lcyBuZWVkZWQgQ2xhdWRl
LiBHcmVhdCwgdGhhdCBwcm9iYWJseSBtYWtlcyBBSQo+IGNvbmdsb21lcmF0ZXMgdmVyeSBoYXBw
eSB0aGF0IHdlIGRvIG5vdCB0eXBlIGV2ZW4gdHdvIGxpbmVzIGFueW1vcmUgYW5kCj4gbmVlZCB0
aGVpciByZXNvdXJjZS1odW5ncnkgZGF0YSBjZW50ZXJzIHRvIGRvIHRoYXQgZm9yIHVzLgo+Cj4g
QmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
