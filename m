Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D814CC5B572
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2026 20:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUCZd+BrgWZ464ABwOIKa073NkjccMcEu3BYsFEuc7g=; b=YP5oauMJz2G+F7
	B/3Yrm3xlUkPvEjMdrc44ovgrw2Tq+nP9+1SBH7B+6eFAISucy5gt6l4Llcl2QeV491B8Q4gYjS6y
	8HP1sF6dH1RgxHrkQJGX69+qVzSuNGDNWEBUV6Zyt69UMYi2NUS9xwqGTSNhqDRJ7a1EnBFlevhGV
	iaw9ZsOKxwmoZu2bBxP/d2O6Wp+WtXycF2ThpsVXNec7Bf6WLvKwtqk9waHwgyGhSsQ7hyL5D3IaA
	y9lRfAyTmphEbGynLPmlIYrgrVaXwXVeZgQUBzYOnUn2SABRaUpwu4M4fc3Dv7Ykm47fUHGXzhwgx
	kWcyW2kJEENmkRVCBcWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvhQ4-000000054RT-2ZSF;
	Sun, 16 Aug 2026 20:25:24 +0000
Received: from mail-yx1-xb12d.google.com ([2607:f8b0:4864:20::b12d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvhQ1-000000054QY-2oOf
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Aug 2026 20:25:23 +0000
Received: by mail-yx1-xb12d.google.com with SMTP id 956f58d0204a3-669bcef451aso285692d50.2
        for <linux-rockchip@lists.infradead.org>; Sun, 16 Aug 2026 13:25:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786911920; cv=none;
        d=google.com; s=arc-20260327;
        b=MoaNzFHiCItNQ8DgZ7pzICvtoQ/uj7ngiKKygRUWAV3uWlNovELkAkMfIVcIAc7rGx
         1oXoGZWcM3swBEIgfFg6oQrzl8Y902CxYGYMSUTHA7d5ApXBuByC20YoquCSGguxrcL/
         jVI8Z6TpYDbO9jTlqFVjIB/QE9YyhY79LOcbzWd7k52kutBGG/J38ieGdrnvBykqd9OV
         3pW0tm4hkaN14AqyjpPVwBwmwTfmh/T5GZQ3NsTOBPR42hTHtylH+1JpZ+AOmENSu7Ge
         3WLjJcDY0WNov/IT8JI7JeRjBpbXtrDGLxegYy09/BtuuHwV8MqFlTiNC4BY067lcKoO
         aNHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pG9a6R2lI8zBUJdzvIIYffn5eO9OTw8/lShO/60FBpw=;
        fh=++02KfVF9qpkGrMjRWEVHi5yWYtV+BSxdkjcaz0LL8k=;
        b=nZnl2HY/YZCAiSAeMQsHR2/2iydWRdmh56Lf0uZgD8yY4rSzczHIO0sjBhMu/HSQ46
         KgLgXpq5Ctp4unx1W6KI3HNfAjZtjNbaFEg9YsQpKvf0e467/Z37H2o6eXaXI8q0KogM
         YHlIiRzLrLJcIXHUsSim0whenzRFGhaNFzEaiwt7tr8WF0V/+O0UqNGlYqo94JF6vnGV
         sN5BgIK/wxopNYIC8HNW2kGTXcLUaP0wAcFytxvA9+7GWhdxWN8ssjSGx8NQdABKyKL/
         NklSLZ1UnWP8rd79zPHAERU9Oe6hodF8gEeH1oUrdlNBFgnyCNH4b0Ty6tNVBioYtWBD
         V01w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786911920; x=1787516720; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=pG9a6R2lI8zBUJdzvIIYffn5eO9OTw8/lShO/60FBpw=;
        b=h0qUwzLEGYS2NB/4zroLbzS26PtcVyIHTGWOV7fYLkrysj+D9ckk5NXXZmRfWpJ345
         LtxQag0PEue5tZjescwA3HxEOL9gzULIPsl3GrVsNr3RUuK1zY392u3m2sUpmXq8leIr
         l1AYbkBFA/o9NKlaZltXExvbqAp+2uUZf3jeejHw24agRdM2N5uBhYTfrAUqUt7XuLgB
         tk+RVG2SCpuqEnOr1mZynR6TVPVtrgyImMk2wEScaH+ft0hCYUfUN4fAscxGBC47B6Dj
         +mswPXtDAVSTaEk/QDNI9cDNRGtCnV2IWN3cpkj95SqLobRpQtQGD+DDH3DXC6tZrQjQ
         Oczw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786911920; x=1787516720;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pG9a6R2lI8zBUJdzvIIYffn5eO9OTw8/lShO/60FBpw=;
        b=j3TdrMClE414EC521aisxEUvALkdlBZEbkwg9KBVscyM9/oYd2hWl4BfoRiDG6G9Z6
         GJi1D15k32nHBGXELWWQgxuEsEV1d69cZzVqlFErNrshl2NI156sZynze2xteftbRwo1
         s/YN1OmS1pBr4ZRvXTzUx0bDpbha29KdNlBV7YASeYW8fiFAAcSVZvVMvKPqH5OcmU9q
         5Jlw6Wj1OyTMasUGAifn8oDyYWDnSGmrN3zmyxw9aolwxGjA+SRtnUeF3ZVohoEpXDoG
         gDFprDygzbeU32Ih9XqDjZBtbn3pK/3e7gmedrOahtEcArb6I0X4R+ANTtTePBQxADQH
         1yFg==
X-Forwarded-Encrypted: i=1; AHgh+RqxG+040QJSDMCi62H6AGovxnlxy52JQRcp/Ecssh1aN2Dx33Cv6YVgA4wkRO40oy7qPOZBptW6nzzeMSvSUA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7jyiSUcclF56AsFwhftkFY3Pg4mitp0diSuX6NmzVdI0hCk8L
	9nAx1PD71bVPV8dwHv/Cdd0nBsBZXoWIiyQ0/lCNYZSF32iytdt5MlBVEers1s4ytoSQJtc3dfj
	ICqZVbLMct8QM8aFyPF+ABq7pmFzMsqluW2RMCFA=
X-Gm-Gg: AR+sD10pqgn7a0qote/6jMPE2KihBaYKmhg0sBQdpfSVwU+yfCKtj11MQJ4wHLIJmIs
	jPF4EynnXOrwQaZAqLy93zY6vXsOCh3CE0EijnNZGJSGSK2QcJ9Zw/3GWFhUuG26IPK653AWsMV
	teNCKYceTz5xPva1PU4Mcp3Ff7W4FQ8j0rxGSmcb5tM/3+QHH2N13VAzJuFjbE+6DICO2tfkn6w
	oLrZRpw68w2wW4EYOkgz6ou6AhuKKzstDdyIS3pS+LsLReisMolBrmXLxVKDZlTfqeJLwwcVwQ5
	0iasNIjXLPMST4PtcZAIUyMvbTXINBEP2kopr4r/J8NsqYnSc3b/Kv0gai/ZFSYn0Ao9C59Q6vv
	D
X-Received: by 2002:a05:690c:6d89:b0:820:100e:1abb with SMTP id
 00721157ae682-83713764b12mr81554827b3.4.1786911920200; Sun, 16 Aug 2026
 13:25:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAEWPSH54fhzKEYR1cgTskNgKryDEMaZOY1y5aFdKQQyzfKbYfg@mail.gmail.com>
 <20260816195837.497735-1-gahing@gahingwoo.com>
In-Reply-To: <20260816195837.497735-1-gahing@gahingwoo.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Sun, 16 Aug 2026 22:25:07 +0200
X-Gm-Features: AcwNN1Wl390p4y87UVjUoqPILRXDJMOlLHfhAU7h4LLl0DQ3-Pk8Q_Wr5x1SlpE
Message-ID: <CAEWPSH7ETfw2TDjUfOvcVtDm19FC43x2vP=Lh7m+XPOGptnPWA@mail.gmail.com>
Subject: Re: [PATCH v7 08/10] accel/rocket: add RK3576 NPU (RKNN) support
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, chaoyi.chen@rock-chips.com, 
	alchark@flipper.net, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_132521_735112_186AF276 
X-CRM114-Status: GOOD (  33.12  )
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

SGkgSmlheGluZywKCllvdXIgY29udjJkLWNhbCByZXN1bHQgbWFkZSBtZSBjdXJpb3VzIHdoZXRo
ZXIgdGhlIGNsYW1wIGlzIGEgcHJvcGVydHkgb2YKdGhlIFJLTk4gb3V0cHV0IHN0YWdlIGluIGdl
bmVyYWwsIHNvIEkgYnVpbHQgdGhlIHNhbWUgc2hhcGUgaGVyZTogMXgxCmNvbnYsIDY0IGlucHV0
IGNoYW5uZWxzLCA4eDggc3VyZmFjZSwgdWludDgsIG91dF96cCAxMjgsIG5vIGZ1c2VkCmFjdGl2
YXRpb24gLSBhbmQgY29tcGFyZWQgYWdhaW5zdCBib3RoIHJlZmVyZW5jZXMuIE9uIFJLMzU4OCB0
aGUgYW5zd2VyCmlzIHRoZSBvcHBvc2l0ZSBvZiB5b3Vycy4KCiAgb3V0cHV0IGNoYW5uZWxzICAg
IHZzIHJhdyBDUFUgICAgICAgICAgICAgIHZzIG1heChjcHUsIG91dF96cCkKICAgNTYgICAgICAg
ICAgICAgICAgNTYgb2YgNTYgKDQ3IGV4YWN0KSAgICAgIDAgb2YgNTYKICAxMjggICAgICAgICAg
ICAgICAxMjggb2YgMTI4ICgxMTMgZXhhY3QpICAgIDYgb2YgMTI4CgpNYXhkaWZmIGFnYWluc3Qg
dGhlIHJhdyByZWZlcmVuY2UgaXMgMSBpbiBib3RoIGNhc2VzOyBhZ2FpbnN0IHRoZSBjbGFtcGVk
CnJlZmVyZW5jZSBpdCBpcyAxMjguIFdoZXJlIHRoZSByYXcgcmVmZXJlbmNlIGZhbGxzIGJlbG93
IHRoZSB6ZXJvIHBvaW50LAp0aGUgaGFyZHdhcmUgb3V0cHV0IHNwYW5zIDAuLjEyNyByYXRoZXIg
dGhhbiBzaXR0aW5nIGF0IDEyOCwgYW5kIG9ubHkKMC42LTAuOCUgb2YgaGFyZHdhcmUgdmFsdWVz
IGxhbmQgZXhhY3RseSBvbiB0aGUgemVybyBwb2ludCwgd2hpY2ggaXMKYWJvdXQgd2hhdCB0aGUg
ZGlzdHJpYnV0aW9uIGdpdmVzIHlvdSBieSBjaGFuY2UuCgpTbyBSSzM1ODggZG9lcyBub3QgY2xh
bXAgYXQgdGhlIG91dHB1dCB6ZXJvIHBvaW50LCBhbmQgdGhlIGNsYW1wIHlvdSBhcmUKc2VlaW5n
IGlzIG5vdCBzb21ldGhpbmcgdGhlIERQVSBvdXRwdXQgc3RhZ2UgZG9lcyBldmVyeXdoZXJlLiBU
aGF0IGlzIG9uZQptb3JlIHRoaW5nIGl0IGlzIG5vdCwgYW5kIEkgdGhpbmsgaXQgaXMgdGhlIGV4
cGVuc2l2ZSBvbmUgdG8gcnVsZSBvdXQgYnkKaW5zcGVjdGlvbi4KClRocmVlIGNvbnRyb2xzLCBz
aW5jZSBhICJoYXJkd2FyZSBlcXVhbHMgQ1BVIiByZXN1bHQgaXMgZXhhY3RseSB3aGF0IGEKc2ls
ZW50IGRlbGVnYXRlIGZhbGxiYWNrIHdvdWxkIGFsc28gcHJvZHVjZToKCiAgLSB0aGUgcGVyLWNv
cmUgTlBVIGludGVycnVwdCBjb3VudGVycyBhZHZhbmNlIGJ5IG9uZSBwZXIgcnVuLCBzbyB0aGUK
ICAgIGpvYiBkaWQgcmVhY2ggdGhlIGhhcmR3YXJlCiAgLSAxNSBvZiB0aGUgMTI4IGNoYW5uZWxz
IGRpZmZlciBmcm9tIHRoZSBDUFUgYnkgb25lLCB3aGljaCBhIENQVQogICAgZmFsbGJhY2sgY291
bGQgbm90IHByb2R1Y2UgLSBpdCB3b3VsZCBiZSBiaXQtaWRlbnRpY2FsCiAgLSA0NiUgKG9jPTEy
OCkgYW5kIDU5JSAob2M9NTYpIG9mIHRoZSByYXcgcmVmZXJlbmNlIGxpZXMgYmVsb3cgdGhlIHpl
cm8KICAgIHBvaW50LCBzbyB0aGVyZSB3YXMgc29tZXRoaW5nIGZvciBhIGNsYW1wIHRvIHJlbW92
ZQoKT25lIHRoaW5nIEkgY2Fubm90IHRlbGwgZnJvbSBoZXJlOiB3aGV0aGVyIHRoZSBkaWZmZXJl
bmNlIGlzIHRoZSBzaWxpY29uCm9yIHRoZSB1c2Vyc3BhY2UgcGF0aC4gTXkgcnVucyBhcmUgdXBz
dHJlYW0gTWVzYSBtYWluIHdpdGggbm8gUkszNTc2CnBhdGNoZXMsIGFuZCB5b3VycyBhcmUgeW91
ciB3b3JraW5nIHRyZWUsIHNvIHRoZSB0d28gZGlmZmVyIGluIG1vcmUgdGhhbgp0aGUgU29DLiBJ
ZiB5b3Ugc3RpbGwgaGF2ZSB0aGUgUkszNTc2IGJvYXJkIG9uIGEgc3RvY2sgdXBzdHJlYW0gTWVz
YSwgdGhlCnNhbWUgc2hhcGUgdGhlcmUgd291bGQgc2VwYXJhdGUgdGhvc2UgdHdvIGV4cGxhbmF0
aW9ucyAtIGFuZCBpZiBpdCB0dXJucwpvdXQgdG8gYmUgdXNlcnNwYWNlIHJhdGhlciB0aGFuIHNp
bGljb24sIHRoYXQgaXMgYSBtdWNoIGVhc2llciBidWcgdG8KZmluZCB0aGFuIGEgaGFyZHdhcmUg
b25lLgoKWWVzIHRvIHRoZSA4OCBhbmQgMTIwIHN3ZWVwIG9uIFJLMzU3NiwgYW5kIHRoYW5rIHlv
dSBmb3Igb2ZmZXJpbmcgaXQuIElmCnRoZSB0b2dnbGUgZm9sbG93cyB0aGUgc2FtZSBydWxlIGF0
IHRob3NlIGNvdW50cyBJIGNhbiByZS1ydW4gdGhlIFJLMzU4OApzaWRlIHdpdGggdGhlIGZvcmNl
ZCBjb25zdGFudCBmb3Igc3ltbWV0cnksIHNvIHdlIHdvdWxkIGhhdmUgYm90aCBmb3JtcwpvbiBi
b3RoIFNvQ3MgYXQgZm91ciBjaGFubmVsIGNvdW50cy4KCkJlc3QgcmVnYXJkcywKSWdvcgoKCk9u
IFN1biwgQXVnIDE2LCAyMDI2IGF0IDk6NTjigK9QTSBKaWF4aW5nIEh1IDxnYWhpbmdAZ2FoaW5n
d29vLmNvbT4gd3JvdGU6Cj4KPiBIaSBJZ29yLAo+Cj4gWW91IGFyZSByaWdodCB0aGF0IGl0IGlz
IGZpdHRlZCwgYW5kIGRlY29kaW5nIGl0IGFnYWluc3QgcmVnaXN0ZXJzLnhtbCB3YXMKPiB3b3J0
aCBtb3JlIHRoYW4gdGhlIGZpdCB3YXMuIEkgaGFkIGJlZW4gdHJlYXRpbmcgdGhvc2UgdHdvIHdv
cmRzIGFzIG9wYXF1ZQo+IGNvbnN0YW50cyBhbmQgY29tcGFyaW5nIHByZWRpY2F0ZXMsIHdoZW4g
dGhlIHRoaW5nIHRoYXQgdmFyaWVzIGlzIG9uZSBiaXQuCj4KPiBZb3VyIHJlYWRpbmcgYWxzbyBu
YW1lZCBhbiBleHBlcmltZW50IEkgaGFkIG5ldmVyIHJ1bi4gRXZlcnkgbWVhc3VyZW1lbnQgdGhp
cwo+IGJvYXJkIGhhcyBwcm9kdWNlZCB3YXMgb2YgdGhlIHZhbHVlIG15IHByZWRpY2F0ZSBoYXBw
ZW5zIHRvIGVtaXQsIHNvIDE2IGFuZCA0MQo+IG91dHB1dCBjaGFubmVscyBoYWQgb25seSBldmVy
IHJ1biB3aXRoIFNJWkVfRV8yIDAsIGFuZCA1NiwgNjQgYW5kIDEyOCBvbmx5IHdpdGgKPiAxLiBU
aGUgY2VsbCBub2JvZHkgaGFkIGZpbGxlZCBpbiB3YXMgU0laRV9FXzIgMSBhdCB0aGUgc21hbGwg
Y291bnRzLiBGb3JjaW5nCj4gdGhlIGNvbnN0YW50IGZpbGxzIGl0Lgo+Cj4gICBvdXRwdXQgY2hh
bm5lbHMgICAgcHJlZGljYXRlICAgICBmb3JjZWQgU0laRV9FXzIgMQo+ICAgIDE2ICAgICAgICAg
ICAgICAgIDE2IG9mIDE2ICAgICAgTlBVIGpvYiB0aW1lZCBvdXQsIDAgb2YgMTYKPiAgICA0MSAg
ICAgICAgICAgICAgICA0MSBvZiA0MSAgICAgIDAgb2YgNDEKPiAgICA1NiAgICAgICAgICAgICAg
ICA1NiBvZiA1NiAgICAgIDU2IG9mIDU2Cj4gICAxMjggICAgICAgICAgICAgIDEyOCBvZiAxMjgg
ICAgMTI4IG9mIDEyOAo+Cj4gU28gZWFjaCBmb3JtIGZhaWxzIG9uIHRoZSBzaGFwZXMgdGhlIG90
aGVyIGhhbmRsZXMsIHdoaWNoIG1ha2VzIGl0IGEgdHdvIHNpZGVkCj4gbWVhc3VyZW1lbnQgcmF0
aGVyIHRoYW4gdGhlIG9uZSBzaWRlZCBmaXQgaXQgc3RhcnRlZCBhcy4gVGFrZW4gd2l0aCB5b3Vy
IFJLMzU4OAo+IHJlc3VsdCwgUkszNTg4IGRvZXMgbm90IG5lZWQgdGhlIHRvZ2dsZSBhbmQgUksz
NTc2IGRvZXMsIGFuZCB3aGF0IHRoZSB0b2dnbGUKPiBzZWxlY3RzIGlzIFNJWkVfRV8yIHJhdGhl
ciB0aGFuIGFueXRoaW5nIGFib3V0IHRoZSBjaGFubmVsIGNvdW50IGFzIHN1Y2guIEkKPiB3aWxs
IHdyaXRlIGl0IHRoYXQgd2F5LCBhcyB0aGUgZmllbGQgd2l0aCBhIHJlYXNvbiwgcmF0aGVyIHRo
YW4gYXMgYSBtb2R1bG8gb3IKPiBhIHBhcml0eSBvZiBzb21ldGhpbmcuCj4KPiBUaGUgb3RoZXIg
Yml0cyB5b3UgZmxhZ2dlZCBJIGNhbm5vdCBkZWZlbmQgeWV0LiBSR1BfQ05URVIgOCwgT1dfU1JD
IDEgYW5kIHRoZQo+IHR3byBpbiB0aGUgcmVzZXJ2ZWQgcmFuZ2UgY2FtZSBmcm9tIHZlbmRvciBj
YXB0dXJlcyBhbmQgaGF2ZSBuZXZlciBiZWVuIHZhcmllZAo+IG9uZSBhdCBhIHRpbWUuIFRoYXQg
aXMgYSBzd2VlcCB0aGlzIGJvYXJkIGNhbiBydW4gYW5kIEkgd2lsbCBkbyBpdCBiZWZvcmUgdGhl
Cj4gTWVzYSBzZXJpZXMgZ29lcyBvdXQsIHNpbmNlIGEgdmFsdWUgbm9ib2R5IGNhbiBleHBsYWlu
IGlzIGEgdmFsdWUgbm9ib2R5IHNob3VsZAo+IGJlIGFza2VkIHRvIHJldmlldy4KPgo+IE9uIHRo
ZSB1bmNsYW1wZWQgcmVmZXJlbmNlLCB0aGFuayB5b3UgZm9yIHVzaW5nIGl0LiBJdCBjaGFuZ2Vk
IHdoYXQgSSB0aG91Z2h0IEkKPiBoYWQgaGVyZSBhcyB3ZWxsLiBUaGUgY2xhbXAgaXMgb25seSBm
cmVlIHdoZXJlIHRoZSBxdWFudGlzZWQgb3V0cHV0IHJhbmdlCj4gc3RhcnRzIGF0IHplcm8sIGFu
ZCBvbiBhIG1pZGRsZSB6ZXJvIHBvaW50IGxheWVyIGl0IHJld3JpdGVzIGFib3V0IGhhbGYgdGhl
Cj4gc3VyZmFjZS4gY29udjJkLWNhbCBpcyBvdXRfenAgMTI4IHdpdGggbm8gZnVzZWQgYWN0aXZh
dGlvbiwgYW5kIGFnYWluc3QgdGhlCj4gdW5jbGFtcGVkIG91dHB1dCBpdCBpcyAwIG9mIDEyOCBj
aGFubmVscyByYXRoZXIgdGhhbiAxMjggb2YgMTI4LCB3aXRoIHRoZQo+IGhhcmR3YXJlIGVxdWFs
IHRvIG1heChjcHUsIG91dF96cCkgdG8gd2l0aGluIG9uZSBldmVyeXdoZXJlLiBXaGVyZSB0aGF0
IGNsYW1wCj4gY29tZXMgZnJvbSBpcyBzdGlsbCBvcGVuLiBJdCBpcyBub3QgdGhlIG91dHB1dCBv
ZmZzZXQsIG5vdCB0aGUgQlMgYmxvY2ssIG5vdAo+IGFueSByZWdpc3RlciBpbiB0aGUgc3RyZWFt
LCBhbmQgbm90IHRoZSBjb2VmZmljaWVudCByZWNvcmRzLCBhbGwgZm91ciBtZWFzdXJlZAo+IHJh
dGhlciB0aGFuIGFyZ3VlZC4KPgo+IElmIHlvdSB3YW50IGFub3RoZXIgc2hhcGUsIGFuIG91dHB1
dCBjaGFubmVsIGNvdW50IG9mIDg4IG9yIDEyMCBvbiBSSzM1NzYgd291bGQKPiB0ZWxsIHVzIHdo
ZXRoZXIgdGhlIHRvZ2dsZSBmb2xsb3dzIHRoZSBzYW1lIHJ1bGUgdXAgdGhlcmUsIGFuZCB0aG9z
ZSBhcmUgZXhhY3RseQo+IHRoZSBjb3VudHMgeW91IGFscmVhZHkgaGF2ZSBvbiB0aGUgb3RoZXIg
U29DLgo+Cj4gSmlheGluZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
