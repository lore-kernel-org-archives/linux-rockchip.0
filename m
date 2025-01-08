Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08F7EE77188
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 15:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9L3NpBCB8nMyhNl5OB0q3urrF0NYqnZig9ORmJJ26rw=; b=lIG0rth60bXsnY
	ebQkAcC0yVoyDM5FkcYFyUJk+D/7IzdppbuDwMKMUBlhqVCgWKzfMEf4Uf/PkIPX83QY7XbqIIdsn
	szKFavCZ1FyV0ueYL4FKgf+vXlx9e1qc6Yox4s2XqqG7fNXkcwg4S+qtQJqizslVxv1tUl+ZapCYh
	Wk9ikDXPlW1z+jf6lIRxgLSIXL4h1fIWjAvyQmIR6e+hSTGmBc8YD9jmvZDKR5qa4Y2W1YM43Z6xl
	HsIgQrWG6taYgbHgnahJwwltUtsoTlUQEtwX8QHet/TebdMMPRFtAqAptv2NklwlI9W97/tsnNl5s
	hQc82ZPgSuQJYnHwdzzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVY2O-00000008ykL-3kSo;
	Wed, 08 Jan 2025 15:32:04 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVY19-00000008ybh-3OnX;
	Wed, 08 Jan 2025 15:30:49 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-467a3f1e667so99361201cf.0;
        Wed, 08 Jan 2025 07:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736350246; x=1736955046; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YrhJ08F+g99/pDpHcc0SfE5usAMSb6pyknS9o1Vrtpc=;
        b=Smfd0mx1/O/ZFW/3Be8NCH8Mdp1PT+svuaCYIbErg/1fj9PFoizHnS6D07tkRu7BZm
         JwYtTMD5zmkvvAosAWicplhVH0tC7CjsKL2Fzn1aFjNRemSb1LR2R6Vo0TwIQUNPKjEb
         +h9D4bba2/PoSSA70rS+AcME5jVwnql6yNafJcD2+y+MDgeJYwC59S6nToLbXZSC9Tpf
         h6aLajT0CFjiWwUMQ6hB+wNgO7/Ebcoh8j8uhNnuQpUxhVbruDWGaZL1bDgnb01gh0oP
         veVXm2aiWbJY7oxey9fpW+oGJAfajfwpcQ0tLoNsSTRKSK3sfnosC6IzoVK8WPskE6hA
         e/og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736350246; x=1736955046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YrhJ08F+g99/pDpHcc0SfE5usAMSb6pyknS9o1Vrtpc=;
        b=rxFMywgdWfD1p69K2qbKX4l6p5EU5YxlVNCbImUztq0F2rqy/4YF2DdbCznsQaooMx
         vKijWV/OIbij2QLxSOnpIixyZSFmM+dT+aX8yF4v+Mf91FKU2YjjkAv1Tc2VEbmx1fyD
         i6u0/PENRBRd5NyECvPBWeQ3Rdaoja5zdIE59PpkDvatB8ss3KfDHrRK4dRCRzH/lug7
         sfTMhl/fIImfzrIHdgxXZ4QEAGsD0kJR1kAUJGcSjOmHcJFuaKRrFqzH3Z6v8/Letifi
         2BYt1KpwSuzluf7SaMqPINHWxOiyjV0oN5sr+L9rafpMUjddFxwd8+3SYtv4xk6QfBsW
         VBvg==
X-Forwarded-Encrypted: i=1; AJvYcCVaUdglFfdNq1kt540g0UBCGDY0oTwUFJlrzE//97yzj1weJkYXhtwbgM8TYxu1pzvFbd7tSQ2cPe27XNfJ5/jO@lists.infradead.org, AJvYcCX0ZquPhmHq8QEnxgpZqO4/zX2AvtvQe4hLO42XN5iEmcSbl/7pChfgZdv2ve9k1KHFlr+zZlz0Wl0gcNJt8iU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzFx/nQP1n+qb59G9L2haa8RxltOlG5Dag6Kkuiod9PvxZcHN6O
	hVXif0beOBGp/J9zx2ov4cqBdIxZo7pxlsbC23iLKa+6dOu4q9ZwWzrrLd3OxoEe0wVj0khRf28
	Ck4qiSkPl3q9Aiz0COqOIze74tz4=
X-Gm-Gg: ASbGncuEV5XTDOXA8GZC6G18AqYVvU6uMdVsWfEiW+yXaEQOmzW10sabY6IeMtSw3P6
	pRRlzdDLJpN8CZOpp5LEA2QR6l+fBTOrr/vsBvp2Lf0Arb9VIkA==
X-Google-Smtp-Source: AGHT+IFKoNRB02f9LEFBsjP1jngmLgnZ+gqmlVlhb4sD5ormVLieH9nwZeRMYU+GK1pDFpGelYsoVARAQOsSY3XSoak=
X-Received: by 2002:a05:622a:144e:b0:467:81ef:1953 with SMTP id
 d75a77b69052e-46c71079ec7mr43270661cf.7.1736350246055; Wed, 08 Jan 2025
 07:30:46 -0800 (PST)
MIME-Version: 1.0
References: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
 <20250108-rk3588-h96-max-v58-v2-2-522301b905d6@gmail.com> <1950286.IobQ9Gjlxr@diego>
In-Reply-To: <1950286.IobQ9Gjlxr@diego>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 8 Jan 2025 19:30:35 +0400
X-Gm-Features: AbW1kvbaSD6420vb9Z-krZSCK7YnPn-rkLl-OwWfP77vCyeVbOh_HhHdHm1BmrY
Message-ID: <CABjd4Yy4Qd1rD43u3B-s=HxVBnaQt7fSgP9NFY2YeY0eKMESvQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add SPDIF nodes to RK3588(s)
 device trees
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_073047_849155_E725A3E0 
X-CRM114-Status: GOOD (  17.79  )
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

T24gV2VkLCBKYW4gOCwgMjAyNSBhdCAyOjAx4oCvUE0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSBBbGV4ZXksCj4KPiBBbSBNaXR0d29jaCwgOC4gSmFudWFy
IDIwMjUsIDEwOjA5OjA3IENFVCBzY2hyaWViIEFsZXhleSBDaGFya292Ogo+ID4gUkszNTg4cyBo
YXMgZm91ciBTUERJRiB0cmFuc21pdHRlcnMsIGFuZCB0aGUgZnVsbCBSSzM1ODggaGFzIHNpeC4K
PiA+IFRoZXkgYXJlIGZ1bGx5IGNvbXBhdGlibGUgdG8gUkszNTY4IG9uZXMuIEFkZCByZXNwZWN0
aXZlIG5vZGVzCj4gPiB0byAuZHRzaSBmaWxlcy4KPgo+IFdoaWxlIGl0IG1heSBzZWVtIHRoYXQg
d2F5LCB3ZSBzdGlsbCB3YW50IHNvYy1zcGVjaWZpYyBjb21wYXRpYmxlcywKPiB0byBmdXR1cmUt
cHJvb2YgdGhpcy4KPgo+IEkuZS4gZ29pbmcgdGhlIHRoZQo+ICAgICAgICAgY29tcGF0aWJsZSA9
ICJyb2NrY2hpcCxyazM1ODgtc3BkaWYiLCAicm9ja2NoaXAscmszNTY4LXNwZGlmIjsKPiB3YXks
IHNvIHRoYXQgbm93IHRoaW5ncyBjYW4ganVzdCBtYXRjaCBhZ2FpbnN0IHRoZSByazM1NjgsIGJ1
dCBpZiBzb21lCj4gZmF1bHQgZW1lcmdlcyBsYXRlciBvbiB0aGUgY29kZSBjYW4gYmUgZml4ZWQg
d2l0aCB0aGUgRFQgc3RheWluZyBqdXN0Cj4gY29tcGF0aWJsZS4KPgo+IFRoZSBzcGRpZiBhbHNv
IGhhcyBhbiBleGFtcGxlIGFscmVhZHkgZm9yIGFsbCB0aGUgc3BkaWYgdmFyaWFudHMgdGhhdCBh
cmUKPiBjb21wYXRpYmxlIHRvIHRoZSByazMwNjYgWzNdLCBzbyBpdCdkIG5lZWQgYW5vdGhlciAi
aXRlbXMiIGJsb2NrIGZvciB0aGluZ3MKPiBiZWluZyBjb21wYXRpYmxlIHdpdGggdGhlIHJrMzU2
OC4KCkhtbSwgaWYgd2UgYXJlIHRvIGJlbGlldmUgdGhlIGRyaXZlciAoWzRdLCBbNV0pLCB0aGV5
IGFyZSBhbGwgdGhlIHNhbWUKYXMgdGhlIGdvb2Qgb2xkIFJLMzM2Niwgd2hpY2ggaW4gdHVybiBp
cyBzb2Z0d2FyZSBjb21wYXRpYmxlIHRvIHRoZQpnb29kIG9sZCBSSzMwNjYuIFNhbWUgc2VlbXMg
dG8gYXBwbHkgdG8gUkszNTc2LCBnaXZlbiB0aGF0IGl0cyBjdXJyZW50Ci5kdHNpIGp1c3QgcmVm
ZXJlbmNlcyB0aGUgInJvY2tjaGlwLHJrMzU2OC1zcGRpZiIgY29tcGF0aWJsZS4KCkRvZXMgaXQg
bWVhbiB0aGF0IHRoZSBiaW5kaW5nIG5lZWRzIHRvIGJlIHJlc3RydWN0dXJlZCBzbyB0aGF0IHRo
ZQpyZXF1aXJlZCBmYWxsYmFjayBjb21wYXRpYmxlICgicm9ja2NoaXAscmszMDY2LXNwZGlmIikg
YXBwbGllcyB0byBhbGwKdmFyaWFudHM/IE9yIHNoYWxsIHRoZSBleGlzdGluZyBvbmVzIGJlIGxl
ZnQgYWxvbmUsIGFuZCBqdXN0IFJLMzU4OAphbmQgUkszNTc2IGFkZGVkIGluc2lkZSB0aGF0ICJp
dGVtcyIgYmxvY2s/CgpUaGFua3MgYSBsb3QsCkFsZXhleQoKWzRdIGh0dHBzOi8vZ2l0aHViLmNv
bS9yb2NrY2hpcC1saW51eC9rZXJuZWwvYmxvYi9kZXZlbG9wLTUuMTAvc291bmQvc29jL3JvY2tj
aGlwL3JvY2tjaGlwX3NwZGlmLmMKWzVdIGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51
eC9ibG9iL21hc3Rlci9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfc3BkaWYuYwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
