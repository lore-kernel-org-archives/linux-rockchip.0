Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00071606A31E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 21:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=naoTkRRi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=3RllmQYp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Rp3urxVOdMJEhZOJ+6qnRilMx+zKvw7MRMS+9thqPHU=; b=naoTkRRi2nX9qlJmcbMh3EKvAs
	FPiBJit79BfjOAczhgFyP/gD5fKKh2D8f8T2alOAVRgrmNhGiOvMymXW9HXE3RzKfNRqnihIlaiRt
	lEXMsgsoQImRvnGBvXfKoJ6d+J1ms1gS93iEswb5RMn242qXLPYO+Dp9Xj4+BTwXdkSgfz1OK2Kln
	0k2KKsmCEgD1rZpvIyz5Q9aG54izSFul6zrJt+6cz9gzbRz4iYBi/bcc6SnAsAuPbYzh8yTg/KhKo
	I5lO7o90A2dqyNeTy8qBU8tNDweppbC9SNGfyFElM4R5hlxIa8Tfu6KwXWMuudwfDHVqQoeI3ZD9e
	nUcWy0Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWL0U-0000000BQjT-0J6N;
	Wed, 25 Nov 2026 21:58:26 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWL0Q-0000000BQiY-1qIY
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 21:58:24 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-c506a231b88so856792366b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 13:58:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795643900; cv=none;
        d=google.com; s=arc-20260327;
        b=S8nDV6nGluEf5MdEJ3yrT1RrSGDln9VwQ1pgFOUe+3Yyvv9R6VZosFKSBfweKmdNza
         p/I5ICuHRFkSgD4CPbfVckHjqhzhiiiGTTadbkju3JXheDWNRUEIukVdmddedCSDl9PP
         o9rB8Snv5H3/il0whwBqYPTWfuTS0JxWI9zaDfWXFTu5pYSiaOg7xgHzX2ehEe7mAJ9D
         vCxGJeYhEBPKyB1Pfchun5oTgoquKl/ledKvhCXRtTXdSeYm/+YpvanmLSHsKll3PpR5
         Zpvl6ipLRDXaYrFAoKv/7mQI+4OuseGcFI40qSNKwsFGdBDtW+ZcaJ/FGfVU6fq663Pd
         51Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=C7GLy08/lhflvvblmPf5eQJqkFHdN5psewj5XgAMj1E=;
        fh=QcI4pcuSXFJ1H+lye4UfXZpa7m//+ZZMlOvg2b9nz68=;
        b=ioCBMcpmCBdtrzGeZxVrEpZS8h9Qeo2TeJ+BAXrJ9mn7FWw2Pv6iVwBsOMkrRYQh7o
         tjCVKMAio9vHhdura3ST/svMtPNJ1k/rVAHfLcvSlwf6NkDyUWE1HxmUE5jDMdhsh251
         TopY+Z7wbUNLByR0e13W+KZ4Bg6ZXMtmPS3lTaAzzcblGXS4Jq22lNONAWw4z5nIqYSU
         MxWWuT9V8h0RXfQTmE2d02Vy6Dwe0irJB1ZO938nKvRLsRM3OEtO8tHwf54lGaAGXJBX
         PV5lFCSorjsuzIrP5AkoCnECGo2rmT2mXpCVeRfNARHhms/TIlps8jp+g8cUGCSRYPqW
         3GVA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795643900; x=1796248700; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=C7GLy08/lhflvvblmPf5eQJqkFHdN5psewj5XgAMj1E=;
        b=3RllmQYpw+G1tW/h1Ygawt5ziD7uUtwUvlWpFxu1PX26cUL0LHYRTfwLKGBDImT9iC
         J/CAOaPenZrC+6U7GK2sKFNZLjzBZRtYM9I9ZHikXAJgcx4tp/E9OfZOkU6+M4E1c6MG
         79tWHbOdM5rQ738Kr3KTtDg8wNNBVVi0s2+534a86M/VA2gBl9SL8jjKvC2qEzVxHJnn
         CdH3QhzKA3OcBD6WGbeTDkVxzNUcfacthRp0nZ/1gx79gPJzWfE8vaF5KyhQahlzaF+o
         oD8W2QI+HDRybSnxqwsSPUHd5Vs8duOVB7Y4ODCFRl0/62VB5Ap890EsKZwuclSEdicY
         fj6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795643900; x=1796248700;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=C7GLy08/lhflvvblmPf5eQJqkFHdN5psewj5XgAMj1E=;
        b=HJFadDqIXxbGXXsT1D4IucoRAHwZ5+7/1MAjywvFGUC47LE1f4qOXstbrsYo7A1pMO
         P04vUIaNskpTviiheQVZIy77IUTCb0qNrWI4LIX7vMksAQ4tOWp9aA6iEpCpC7GZ9dIX
         Id2thAzDb+4x4hD4PS7sSp1U7/GXI2Jg4InxI5gsW32nKNIDfu0xkWPoAbwFT5Ww5q5o
         nRkatNDu6YJ8uQkKloEe6bRot6eSOzuqL84NOeru5Lu04O1AEzKcJuZL+THuxCC06wCt
         G572oP4rRbKeA8hXIeLIodxM0LBXDZ5kovkZAk75Vi9OahZP2BELsttNYtKed2/nMj4Z
         QZsg==
X-Forwarded-Encrypted: i=1; AL+hErE/oOBPjUXvZrk5U1bi5xs+nk/PHUsoTdG7xx85mtKJjWQfRFlEgmnQDCGq5SYscKzcXaWkWu+0XyPlNeKDWQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+ZC981t255sebokFDzQ+TpVoAOkTOR9CKRvdYFHk1b1g6eMUJk
	QJ3X8zjVyS5kLNhUKgidmxwIW3NgWdSRzAP66kquLcH6MXlKSBu1pwIfFLyhsCeeKc3KWfIFbQP
	HNF0vh0rbst+MUuSU/rxuldV24SjVt4aUNSMjDCiadw==
X-Gm-Gg: AZFdTZcks/1z2ujEfBX1me/LOOU8cKHdBDTf+0qXCZbUURIQC0o+DQEyJkmvEXiHdtO
	IlZJa/WEWVxxpfxDxCCHOp79ZTKXrZsKtGjcAmxpcuPBLvVFGRjQPwMh+E7g2GcuJBFghfCjG0i
	8Kkje73bjj26+UFvFTwK01QZZc8iilXKT+8OuS7CyU5DCTpteWdUrv02Ufa+MWmbG2tAzm3tezP
	slT/7YY5P/o2H39DWHaCAHU79AOpMU2Qovk/du1TYiCGmo/PuWOGRg4qmA9fJ/7k0LlPI6lb1Dh
	yt7HecsdhwHRXCt9vox/Ou6kcpfoqgZE5WSNrblu8XTXs0YXydRRg6lgGDRy4mh/TMWFVBBuVwb
	KN4QPte7xKSoGjg9tLd7lAqogbCmv661NZR4EYUNtjasDjajUiPYhXj2S7fCTvFQZ4rZr
X-Received: by 2002:a17:906:c114:b0:c51:baf0:f9a with SMTP id
 a640c23a62f3a-c51baf010eemr165270866b.15.1795643900272; Wed, 25 Nov 2026
 13:58:20 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net> <179563805247.3885553.6358930861216631692.b4-ty@b4>
In-Reply-To: <179563805247.3885553.6358930861216631692.b4-ty@b4>
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 26 Nov 2026 01:58:09 +0400
X-Gm-Features: Aa3M54oLnZsGvDIV2wcXPOs8zFTEwAusYc5yVbOMSviur1uF26N0thu0Jxy5z48
Message-ID: <CAKTNdwFrQErYOgG9gnCc3g6JOGoimKa2AOKMs3LAcBVYuDuE0w@mail.gmail.com>
Subject: Re: [PATCH 0/7] arm64: dts: rockchip: Updates to RGMII PHYs on Sige5
 and NanoPi M5
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, John Clark <inindev@gmail.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_135823_029935_C4747063 
X-CRM114-Status: GOOD (  11.23  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSGVpa28sCgpPbiBUaHUsIE5vdiAyNiwgMjAyNiBhdCAxMjoyMeKAr0FNIEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4KPiBPbiBGcmksIDIwIE5vdiAyMDI2IDE0
OjQ4OjA4ICswNDAwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IEJvdGggQXJtU29NIFNpZ2U1
IGFuZCBOYW5vUGkgTTUgYm9hcmRzIHVzZSB0aGUgc2FtZSBSZWFsdGVrIFJHTUlJIFBIWXMKPiA+
IHdoaWNoIGN1cnJlbnRseSBzaGFyZSBhbiBpc3N1ZSBwcmV2ZW50aW5nIHRoZW0gZnJvbSBlbnVt
ZXJhdGlvbiB1bmxlc3MgYW4KPiA+IGVhcmxpZXIgYm9vdCBzdGFnZSBsZWZ0IHRoZW0gb3V0IG9m
IHJlc2V0OiBhdCBwb3dlci1vbiwgdGhlaXIgcmVzZXQgbGluZXMKPiA+IGFyZSBhc3NlcnRlZCwg
c28gdGhleSBjYW5ub3QgYW5zd2VyIGFuIE1ESU8gcHJvYmUuIFVudGlsIHRoZXkgYW5zd2VyLCB0
aGUKPiA+IE9TIGNhbm5vdCBsb29rIHVwIHRoZSBJRCB0byBtYXRjaCBhIGRyaXZlci4gQW5kIHVu
dGlsIHRoZSBPUyBoYXMgYSBkcml2ZXIsCj4gPiBub3RoaW5nIHJlbGVhc2VzIHRoZWlyIHJlc2V0
IGxpbmUuCj4gPgo+ID4gWy4uLl0KPgo+IEFwcGxpZWQsIHRoYW5rcyEKPgo+IFsxLzddIGFybTY0
OiBkdHM6IHJvY2tjaGlwOiBEZXNjcmliZSBOYW5vUGkgTTUgRXRoZXJuZXQgUEhZcyBieSB0aGVp
ciBJRAo+ICAgICAgIGNvbW1pdDogNjkzZTBjNGYwMDM4OWEwOTdkNzEwNTc3ZWQ1YzI0YzRhYzNm
NzVhNwo+IFsyLzddIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBEZXNjcmliZSBTaWdlNSBFdGhlcm5l
dCBQSFlzIGJ5IHRoZWlyIElECj4gICAgICAgY29tbWl0OiA1ZDgzOWFkOTU1M2Y5MGM3MjcxNTdj
NDU0NzFhOTExZjY0Y2QwNjdhCj4gWzMvN10gYXJtNjQ6IGR0czogcm9ja2NoaXA6IERyb3AgTmFu
b1BpIE01IFBIWSByZWZlcmVuY2UgY2xvY2tzCj4gICAgICAgY29tbWl0OiA5YzgzYjUzZTZjODU4
YTlhOGYwMGNhODJlY2QxZjQ2ZDJkNzIzYjcwCj4gWzQvN10gYXJtNjQ6IGR0czogcm9ja2NoaXA6
IEVuYWJsZSBBTERQUyBvbiBOYW5vUGkgTTUgRXRoZXJuZXQgUEhZcwo+ICAgICAgIGNvbW1pdDog
NjIwYWQ1YjA5YmVjNWFiZDgzZDM1YmYyM2MxYWYxZmI2OGVlZDgwYgo+IFs1LzddIGFybTY0OiBk
dHM6IHJvY2tjaGlwOiBFbmFibGUgQUxEUFMgb24gU2lnZTUgRXRoZXJuZXQgUEhZcwo+ICAgICAg
IGNvbW1pdDogZTQ4ZjFkMzA0ZjdiNjliNDdjNmY5OGI3MDFhYTZmOGM4NGZmYmI5YQo+IFs2Lzdd
IGFybTY0OiBkdHM6IHJvY2tjaGlwOiBTaG9ydGVuIE5hbm9QaSBNNSBFdGhlcm5ldCBQSFkgcmVz
ZXQgdG8gZGF0YXNoZWV0IHRpbWluZwo+ICAgICAgIGNvbW1pdDogNWVmYWI5ZTdjMjg0NDhmNjAz
NWU3MjE2MjU1ZjdiNzZiMjhmZjk3Ygo+IFs3LzddIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBTaG9y
dGVuIFNpZ2U1IEV0aGVybmV0IFBIWSByZXNldCB0byBkYXRhc2hlZXQgdGltaW5nCj4gICAgICAg
Y29tbWl0OiBhMmEzOTBlN2ZhOWU3M2ZmMDdkMmE5ZmMwMDIxMTRlMjk5NDgzMjAyCgpXb3VsZCB5
b3UgbWluZCBkcm9wcGluZyB0aGUgbGFzdCB0d28gcGF0Y2hlcyBoZXJlPyBTYXNoaWtvIHBvaW50
ZWQgb3V0CnRoYXQgYSBsYXRlciByZXZpc2lvbiBvZiB0aGUgZGF0YXNoZWV0IHByZXNjcmliZXMg
bG9uZ2VyIHJlc2V0IHRpbWluZ3MKdnMuIHRob3NlIGluIHRoZSByZXZpc2lvbiBJIGhhZCwgYW5k
IHdpdGggdGhvc2UgaW4gbWluZCBpdCdzIG5vdCB3b3J0aAp0aGUgY2h1cm4uCgpUaGUgcmVzdCBz
aG91bGQgYmUgZmluZS4KClRoYW5rcyBhIGxvdCEKCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
