Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F38EC7115B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 10:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rI/OqoGKdryXYN54vCC3AA+qzJcTzpvuCNTL6cKY6tk=; b=X4no+vr6JW7OqO
	W1in0u+gG+uJp1bLwXq682wx9Y5TdwcIeTeA2YiAjgWJio/FwEfRWCwR7doa9uE0o316SxUd+gRE4
	9jThUaoZGsN6A6oYrBH68AqRgRJjMfs+zFNoUUyt2r5grUU0xWc9BpaybMQ9aNxn3QZqB5taLgavF
	5uE3kJaqQ1Jfa880MARNFr5yaaB2wg4NNXKMzT6AwvfeMJ4o/d8A15elbZCQDr2XZvS7ffXXQf8ql
	pHjVL655ZneBPieYBu/1DEl03hKO7pWribLKQIUhJvVRxBZEVK4Cuk0XvPs79tvh4P9H/+xKGK1XS
	uQto8HqkyTDUrpPD3ohA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSCQC-0000000CkEw-0A1k;
	Thu, 19 Jun 2025 10:23:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSB7u-0000000CX2S-010f
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 09:00:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 716E362A2C
	for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 09:00:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8487C4CEFC
	for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 09:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750323604;
	bh=UzuK/CxyCGnL+YSPUVuW3jK4T0cRHWwLE+0svoU+I9s=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=hbRxkQlRExVDwH79ADkhlXgwcMX3ygDlcbmP6ZXM7dXQNpBpOFxP8MCYW4/6U/9F8
	 n0Oq+kPjOZHzEhc6sLC3FXXA3c/NuLYxyphmSY8nf+gV0lnrMYYLiwa2OeKrZdD2CC
	 GZrDq0MXa4Z0d7ZeSZ5s5vsEyfyX8yiepwCeOul1+WPaTgSgKz13GgDHKUv3bEyv+R
	 RS6L0oORVTLA69sTfvqZJvHzZ+KCaamKmXDG8ir7W0uJkZFB7b/P+ddStsNxHBtmKB
	 O+nf2bfMF0UezscT2RMpPEDT44te82KJWxp8Tvgoyql7A4QlB+EDP70XDhGQfqr967
	 KvAzqsn38gkHQ==
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e812fc35985so491105276.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 02:00:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUghrbwUAh0J4KlhJogVzudpiJdyjxkRRC56aX1zEFpVwWTzhVzEsQ3JtLBi1KTY0/vGQMJlRezWGYBoOMNIQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7sX5nshvGAtwMPcqejT8qz+bXASrSe367bHteFMuuEaC3rmiZ
	Bg7Uwe8YwTSJ9YbpX4lv3HdJQt47rvY4ZfZ7feunD+ZTyoItgSwS4djScIK8meg9FklaRT5U+f4
	Yk+S/CpG6MoTTPjvrT+/Tj/Ic7RhMN0TPOBYv3Ca2VQ==
X-Google-Smtp-Source: AGHT+IFTSpIXWJ8aJgks2cku0velW0M+JCR6Rbfmtd6WsoM033VVzHoiXCwOg94pnYfHO2hy+W/9swsQZRSpK6zIGwQ=
X-Received: by 2002:a05:6902:2613:b0:e82:6c9b:8287 with SMTP id
 3f1490d57ef6-e826c9b85e4mr11134815276.9.1750323604035; Thu, 19 Jun 2025
 02:00:04 -0700 (PDT)
MIME-Version: 1.0
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net> <20250606-6-10-rocket-v7-2-dc16cfe6fe4e@tomeuvizoso.net>
In-Reply-To: <20250606-6-10-rocket-v7-2-dc16cfe6fe4e@tomeuvizoso.net>
From: Robert Foss <rfoss@kernel.org>
Date: Thu, 19 Jun 2025 10:59:53 +0200
X-Gmail-Original-Message-ID: <CAN6tsi4p2wuMVVvQOJ5c6ecT=x2pr2VoZhS4wH27qaR9DptQHA@mail.gmail.com>
X-Gm-Features: AX0GCFskbG-ChYYQk7bGtKWaX4j6fsAKjpFPkM8iQ7QewPkQLLciRbSAzy_fqYo
Message-ID: <CAN6tsi4p2wuMVVvQOJ5c6ecT=x2pr2VoZhS4wH27qaR9DptQHA@mail.gmail.com>
Subject: Re: [PATCH v7 02/10] accel/rocket: Add a new driver for Rockchip's NPU
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, Daniel Stone <daniel@fooishbar.org>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Da Xue <da@libre.computer>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdW4gNiwgMjAyNSBhdCA4OjI54oCvQU0gVG9tZXUgVml6b3NvIDx0b21ldUB0b21l
dXZpem9zby5uZXQ+IHdyb3RlOgo+Cj4gVGhpcyBpbml0aWFsIHZlcnNpb24gc3VwcG9ydHMgdGhl
IE5QVSBhcyBzaGlwcGVkIGluIHRoZSBSSzM1ODggU29DIGFuZAo+IGRlc2NyaWJlZCBpbiB0aGUg
Zmlyc3QgcGFydCBvZiBpdHMgVFJNLCBpbiBDaGFwdGVyIDM2Lgo+Cj4gVGhpcyBOUFUgY29udGFp
bnMgMyBpbmRlcGVuZGVudCBjb3JlcyB0aGF0IHRoZSBkcml2ZXIgY2FuIHN1Ym1pdCBqb2JzCj4g
dG8uCj4KPiBUaGlzIGNvbW1pdCBhZGRzIGp1c3QgaGFyZHdhcmUgaW5pdGlhbGl6YXRpb24gYW5k
IHBvd2VyIG1hbmFnZW1lbnQuCj4KPiB2MjoKPiAtIFNwbGl0IGNvcmVzIGFuZCBJT01NVXMgYXMg
aW5kZXBlbmRlbnQgZGV2aWNlcyAoU2ViYXN0aWFuIFJlaWNoZWwpCj4gLSBBZGQgc29tZSBkb2N1
bWVudGF0aW9uIChKZWZmcmV5IEh1Z28pCj4gLSBCZSBtb3JlIGV4cGxpY2l0IGluIHRoZSBLY29u
ZmlnIGRvY3VtZW50YXRpb24gKEplZmZyZXkgSHVnbykKPiAtIFJlbW92ZSByZXNldHMsIGFzIHRo
ZXNlIGhhdmVuJ3QgYmVlbiBmb3VuZCB1c2VmdWwgc28gZmFyIChaZW5naHVpIFl1KQo+IC0gUmVw
YWNrIHN0cnVjdHMgKEplZmZyZXkgSHVnbykKPiAtIFVzZSBERUZJTkVfRFJNX0FDQ0VMX0ZPUFMg
KEplZmZyZXkgSHVnbykKPiAtIFVzZSBkZXZtX2RybV9kZXZfYWxsb2MgKEplZmZyZXkgSHVnbykK
PiAtIFVzZSBwcm9iZSBsb2cgaGVscGVyIChKZWZmcmV5IEh1Z28pCj4gLSBJbnRyb2R1Y2UgVUFC
SSBoZWFkZXIgaW4gYSBsYXRlciBwYXRjaCAoSmVmZnJleSBIdWdvKQo+Cj4gdjM6Cj4gLSBBZGFw
dCB0byBhIHNwbGl0IG9mIHRoZSByZWdpc3RlciBibG9jayBpbiB0aGUgRFQgYmluZGluZ3MgKE5p
Y29sYXMKPiAgIEZyYXR0YXJvbGkpCj4gLSBNb3ZlIHJlZ2lzdGVycyBoZWFkZXIgdG8gaXRzIG93
biBjb21taXQgKFRob21hcyBaaW1tZXJtYW5uKQo+IC0gTWlzYy4gY2xlYW51cHMgKFRob21hcyBa
aW1tZXJtYW5uIGFuZCBKZWZmIEh1Z28pCj4gLSBNYWtlIHVzZSBvZiBHUEwtMi4wLW9ubHkgZm9y
IHRoZSBjb3B5cmlnaHQgbm90aWNlIChKZWZmIEh1Z28pCj4gLSBQTSBpbXByb3ZlbWVudHMgKE5p
Y29sYXMgRnJhdHRhcm9saSkKPgo+IHY0Ogo+IC0gVXNlIGJ1bGsgY2xrIEFQSSAoS3J6eXN6dG9m
IEtvemxvd3NraSkKPgo+IHY2Ogo+IC0gUmVtb3ZlIG1lbnRpb24gdG8gTlZETEEsIGFzIHRoZSBo
YXJkd2FyZSBpcyBvbmx5IGluY2lkZW50YWxseSByZWxhdGVkCj4gICAoS2V2ZXIgWWFuZykKPiAt
IFVzZSBjYWxsb2MgaW5zdGVhZCBvZiBHRlBfWkVSTyAoSmVmZiBIdWdvKQo+IC0gRXhwbGljaXRs
eSBpbmNsdWRlIGxpbnV4L2NvbnRhaW5lcl9vZi5oIChKZWZmIEh1Z28pCj4gLSBwY2xrIGFuZCBu
cHUgY2xvY2tzIGFyZSBub3cgbmVlZGVkIGJ5IGFsbCBjb3JlcyAoUm9iIEhlcnJpbmcpCj4KPiB2
NzoKPiAtIEFzc2lnbiBpdHMgb3duIElPTU1VIGRvbWFpbiB0byBlYWNoIGNsaWVudCwgZm9yIGlz
b2xhdGlvbiAoRGFuaWVsCj4gICBTdG9uZSBhbmQgUm9iaW4gTXVycGh5KQo+Cj4gU2lnbmVkLW9m
Zi1ieTogVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+CgpSZXZpZXdlZC1ieTog
Um9iZXJ0IEZvc3MgPHJmb3NzQGtlcm5lbC5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
