Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E41DAC3ABD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 16:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYB17gK/T5ySbzBjGMF9ZPe3FGFtGoMm31nGQbEXKX4=; b=0i1kKATLnop5j6
	Ny8W9FEUmubDW7TLaRKE+pN0Ddx9631ppUusfbYWjbR2U1kyrBxf5mtYf0OpVVwZYypRpMI1HMG7t
	BMDjBfZy1WeTIV0J/ER21/VnTjh/sGxfIIbjLU6qXRhWfbtLa2TEyZBU0p61O62cqKagD9OXiypd3
	w6FXTt4D3b502QnsFbygpNOcMe2dgQxDcrC9KNm2m7mgpi/gXK9ZEOmin88+hgHWVKUTNh0jXC+kF
	EkaJNP+iM87vkQ9mPXrmoCICxPQ4CAGyOiV6IuVeeHoPPDkqgcngolTFChDhmNDHtirb0FjOjAigJ
	rkOCW7WXFWnOzR1ImOqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFEfY-0000000Fgfx-06MN;
	Wed, 14 May 2025 16:09:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFDsa-0000000FYv3-0v8G
	for linux-rockchip@bombadil.infradead.org;
	Wed, 14 May 2025 15:18:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=hDddi59QfQosyfazvmWzWcoS6I1hEYTqzvGT0OXdo3s=; b=Y6e4fAE9TqUypcwp1tfLgfL7v7
	2z3hcmRXDuSMRdXd8Kutdkr9S+WiEZQaUDZcZjhymB4FYGa/aRbIfJd1MmV2jCVOQc5VTYYfGVx4g
	q2I507HFNrnYy4unFYjLDOBgmx/eOLUy/gM6Zx9i72ZeFrl2p7iPeZTvXuddVDBmaHcFKzFmWhr7a
	qadgJhG8jF1gD/2nb6Wodjb6lb8HtVwybjfffxC8kKHD5frCyzDXmEd/IcbjyuVCZA7xGX8NPYn8e
	4V/J1qo3SiDRPrkCP4Il1PyrQndybr0Hb5/MtDsQtlRtkIxTAbl8m+u1qC0melrUA+ta1LuGeICl0
	Bj/zRhqQ==;
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uFDsW-0000000HESk-1oF5
	for linux-rockchip@lists.infradead.org;
	Wed, 14 May 2025 15:18:42 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-708ac7dfc19so62099067b3.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 May 2025 08:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1747235917; x=1747840717; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hDddi59QfQosyfazvmWzWcoS6I1hEYTqzvGT0OXdo3s=;
        b=G0QG5HBIf7QJSKrTbGSUvZa2ea4CzI/nDvfQKnFlLK/dMYpJgDWrrbOyzpXGaMLVuV
         9PiHab8cHqhpl/69vEaiA4CfsqYw/n6q+BWw7FHeeWfgZ8doiYJUsHUjpiVtuYcCvDu2
         ZAiFjIkHrvRhQxwfGzMiaU1LHK7RtBzvI+Fsj8F0NFWQcAW5jM/zremoMeFq9Uu2aHwX
         CeXataAAkw4JwBi4Rj4e0DD1PeMKB0Fl4rcqBOa89VQCLRLe+C9ZK0juT+Qo7ldANQro
         0+ZLFWYzrali9yKGBFZemiu0zj/uVM3BWgE74wW/G+fZGxEnI+yV+gJCi9PvmQiRK+MC
         XbSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747235917; x=1747840717;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hDddi59QfQosyfazvmWzWcoS6I1hEYTqzvGT0OXdo3s=;
        b=cti0ha69BYxISJ9kuDmfI88sVe3Wa22oiNZdAzkdUkgV2oDi3vVYEzHr1026Fir2i6
         E4963Fe5wFQG+faGNuj5ikh4TmgU4yIhJg2bi8l1AsKpj0qdC2pRc4mYjWb9RIjTfr1M
         PT8pB4EFxJYdrwTbhReSv7cbp0ULt2O1U9oz0yB6r7cMPhvpAtlnxOsjfdg3C41nE9qA
         LI9e8mdC9YGoz6eQoQDVJDOdNzxU2Tuw/GQE5RpRb7dGQ+axOi7QiwU4oT+v168e49mZ
         ma2tic0SVN9qGNSuH4JWnmJBxBL8/lJV4UB/OtMdZz/hESCvhMuTVpqdO5O0sk14S0SB
         oBUA==
X-Forwarded-Encrypted: i=1; AJvYcCU3lSbRKDIE6EY5DXghmo7XwlLO3QRYSrO9afcYZpnkZd9yAQaYINu+IDZ4C4fPHCMQ7YwbNeHssS4YKv57Xg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwIMSdzoGLp2fJUkgMO4z2KxewhvJU3SbjCPG4TvGpbEyy3CVU0
	kATwyEr59l5OzheBIe1vPGaxjJtiVQrx1hB2kIdDB5Z2B6eQ56Iha6fftEfWP73YAF2MCuQKDEu
	y/F5kgA==
X-Gm-Gg: ASbGnct55XfoGXyA2Hk56XPqDnsj6upfRFBA7RhIdzbOVLnYSgZYoJ8E72i98r1LNeD
	cFcNqsvnnJ2OHnvR/M6pQQH76RlIc8LAjDmUgBUlDnDgWsfXx6ok1m/IbeBQNrs0bSjVUmp3eUt
	zncJgz3ZsjMUdI911FImVYbWWW5PAYhLwRBrsUVhvVUOwGaqjk1utd2cRwbBvywDfXXv6rqmq0/
	iBPuDSc4tO/uamJAeg6lDbbwpJvPJg56L5YeUglP1tCvmaTsJOXMfF367BmHIsIy6eTV6teQwpS
	ftj6xkT4WgEgbnkMez/4fpbCOsOg5DWXJCnhaGLPnuYaeOG8SSQDhVGBJtI5Bz2AjExaHYP0+45
	8pS1UjygTxzZxuaPfOlQ=
X-Google-Smtp-Source: AGHT+IEDATge5+zDxqbELJEYdAfp8/LXexrAUdXV/26VaCGnAoFIRDjTOltkH9awKWX1W2d81mcL1w==
X-Received: by 2002:a05:690c:3343:b0:709:ad9e:e651 with SMTP id 00721157ae682-70c7f22290amr52512997b3.27.1747235916861;
        Wed, 14 May 2025 08:18:36 -0700 (PDT)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-70a3d9cb5ccsm29491107b3.90.2025.05.14.08.18.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 08:18:36 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e731a56e111so6970568276.1;
        Wed, 14 May 2025 08:18:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU6g2r90oHO2ZZUURs0oWusp1UClGMFfxK1Y2wXnkPtSbaOfSGgEVxXGASDY3s3/iV0bxTu3XrLNe1hQUgTuzci@lists.infradead.org, AJvYcCUzY/uv8552LhE9L8eu28l3NTISIds2neXifkYdQWCkQXmtwmO7OIo5xWJGYtIGtA0nrjpMyu33s80Z0PsfE5c=@lists.infradead.org
X-Received: by 2002:a05:6902:1ac6:b0:e75:b4df:869 with SMTP id
 3f1490d57ef6-e7b3d70dc1dmr4699203276.48.1747235915800; Wed, 14 May 2025
 08:18:35 -0700 (PDT)
MIME-Version: 1.0
References: <20250225-6-10-rocket-v2-0-d4dbcfafc141@tomeuvizoso.net>
 <20250225-6-10-rocket-v2-1-d4dbcfafc141@tomeuvizoso.net> <14333638.uLZWGnKmhe@workhorse>
In-Reply-To: <14333638.uLZWGnKmhe@workhorse>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 14 May 2025 17:18:22 +0200
X-Gmail-Original-Message-ID: <CAAObsKAkMhgQsi6hLjbfS5wDaUz-hPQiZn7dVvn+6kDv0_jo9Q@mail.gmail.com>
X-Gm-Features: AX0GCFuozUHqFw-Ua1grRU5Zmez8kXjNLPgWkTD1GO7aODfE11uHKf0wUS78uCM
Message-ID: <CAAObsKAkMhgQsi6hLjbfS5wDaUz-hPQiZn7dVvn+6kDv0_jo9Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: npu: rockchip,rknn: Add bindings
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Oded Gabbay <ogabbay@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Jeffrey Hugo <quic_jhugo@quicinc.com>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_161840_694748_1189653B 
X-CRM114-Status: GOOD (  38.07  )
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

SGkgTmljb2xhcywKClRoYW5rcyBmb3IgbG9va2luZyBhdCB0aGlzLiBTb21lIHRob3VnaHRzIGJl
bG93OgoKT24gRnJpLCBBcHIgMjUsIDIwMjUgYXQgODo1MOKAr1BNIE5pY29sYXMgRnJhdHRhcm9s
aQo8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gVHVlc2Rh
eSwgMjUgRmVicnVhcnkgMjAyNSAwODo1NTo0NyBDZW50cmFsIEV1cm9wZWFuIFN1bW1lciBUaW1l
IFRvbWV1IFZpem9zbyB3cm90ZToKPiA+IEFkZCB0aGUgYmluZGluZ3MgZm9yIHRoZSBOZXVyYWwg
UHJvY2Vzc2luZyBVbml0IElQIGZyb20gUm9ja2NoaXAuCj4gPgo+ID4gdjI6Cj4gPiAtIEFkYXB0
IHRvIG5ldyBub2RlIHN0cnVjdHVyZSAob25lIG5vZGUgcGVyIGNvcmUsIGVhY2ggd2l0aCBpdHMg
b3duCj4gPiAgIElPTU1VKQo+ID4gLSBTZXZlcmFsIG1pc2MuIGZpeGVzIGZyb20gU2ViYXN0aWFu
IFJlaWNoZWwKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBUb21ldSBWaXpvc28gPHRvbWV1QHRvbWV1
dml6b3NvLm5ldD4KPiA+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiAgLi4uL2JpbmRpbmdzL25wdS9y
b2NrY2hpcCxya25uLWNvcmUueWFtbCAgICAgICAgICAgfCAxNTIgKysrKysrKysrKysrKysrKysr
KysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE1MiBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmtu
bi1jb3JlLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tj
aGlwLHJrbm4tY29yZS55YW1sCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMC4uZThkMGFmZTRhN2QxYzRmMTY2
Y2YxM2E5ZjRhYTdjMTkwMTM2MmEzZgo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9yb2NrY2hpcCxya25uLWNvcmUueWFtbAo+
ID4gQEAgLTAsMCArMSwxNTIgQEAKPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BM
LTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiA+ICslWUFNTCAxLjIKPiA+ICstLS0KPiA+ICsk
aWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25wdS9yb2NrY2hpcCxya25uLWNvcmUu
eWFtbCMKPiA+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2Nv
cmUueWFtbCMKPiA+ICsKPiA+ICt0aXRsZTogTmV1cmFsIFByb2Nlc3NpbmcgVW5pdCBJUCBmcm9t
IFJvY2tjaGlwCj4gPiArCj4gPiArbWFpbnRhaW5lcnM6Cj4gPiArICAtIFRvbWV1IFZpem9zbyA8
dG9tZXVAdG9tZXV2aXpvc28ubmV0Pgo+ID4gKwo+ID4gK2Rlc2NyaXB0aW9uOgo+ID4gKyAgUm9j
a2NoaXAgSVAgZm9yIGFjY2VsZXJhdGluZyBpbmZlcmVuY2Ugb2YgbmV1cmFsIG5ldHdvcmtzLCBi
YXNlZCBvbiBOVklESUEncwo+ID4gKyAgb3BlbiBzb3VyY2UgTlZETEEgSVAuCj4gPiArCj4gPiAr
cHJvcGVydGllczoKPiA+ICsgICRub2RlbmFtZToKPiA+ICsgICAgcGF0dGVybjogJ15ucHUtY29y
ZUBbYS1mMC05XSskJwo+ID4gKwo+ID4gKyAgY29tcGF0aWJsZToKPiA+ICsgICAgb25lT2Y6Cj4g
PiArICAgICAgLSBpdGVtczoKPiA+ICsgICAgICAgICAgLSBlbnVtOgo+ID4gKyAgICAgICAgICAg
ICAgLSByb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLXRvcAo+ID4gKyAgICAgICAgICAtIGNvbnN0
OiByb2NrY2hpcCxya25uLWNvcmUtdG9wCj4gPiArICAgICAgLSBpdGVtczoKPiA+ICsgICAgICAg
ICAgLSBlbnVtOgo+ID4gKyAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1ODgtcmtubi1jb3Jl
Cj4gPiArICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrbm4tY29yZQo+ID4gKwo+ID4gKyAg
cmVnOgo+ID4gKyAgICBtYXhJdGVtczogMQo+Cj4gSGkgVG9tZXUsCj4KPiBhcyB5b3UgcHJvYmFi
bHkga25vdywgUkszNTc2IGhhcyBxdWl0ZSBhIHNpbWlsYXIgTlBVLiBUaGlzIGlzIHdoeSBJJ20g
Y3VycmVudGx5Cj4gcG9raW5nIGF0IHRoaXMgcGF0Y2ggc2VyaWVzLiBPbmUgb2YgdGhlIGRpZmZl
cmVuY2VzIEkgcmFuIGludG8gd2FzIHRoYXQgdGhlCj4gSU9NTVUgb2YgZWFjaCBOUFUgY29yZSBu
b3cgc2l0cyB3aXRoaW4gdGhlIHJlZyBhZGRyZXNzIHNwYWNlIHJhbmdlIG9mIHRoZSBjb3JlCj4g
YXMgZGVzY3JpYmVkIGJ5IHRoZSBzaW5nbGUgcmVnIGl0ZW0gYmluZGluZyBhbmQgYXNzdW1lZCBi
eSB0aGUgZHJpdmVyLgoKQnV0IHRoaXMgaXMgbm90IGEgZGlmZmVyZW5jZSwgcmlnaHQ/Cgo+IFRo
aXMgc2VlbWVkIHdlaXJkIHRvIG1lIGF0IGZpcnN0LCBzaW5jZSBJIHdvdWxkJ3ZlIGd1ZXNzZWQg
dGhlIGNvcmVzIHdvdWxkIGJlCj4gZXhhY3RseSB0aGUgc2FtZSwgYnV0IEkgbm90aWNlZCB0aGF0
IHRoZXkga2luZCBvZiBzdGlsbCBhcmU7IHRoZSBSSzM1ODgncyBOUFUKPiBhbHNvIGhhcyBhICJo
b2xlIiBiZXR3ZWVuIDB4MjAwMCBhbmQgMHgyZmZmIG9uIGVhY2ggY29yZSwgd2hpY2ggaXMgd2hl
cmUgUkszNTc2Cj4gcHV0IGl0cyBJT01NVS4KClNvIHRoaXMgaXMgdGhlIHNhbWUgaW4gYm90aCBS
SzM1NzYgYW5kIFJLMzU4OCwgcmlnaHQ/Cgo+IFRoaXMgaXMgc29tZSBpbmZvcm1hdGlvbiBJIGds
ZWFuZWQgZnJvbSB0aGUgUkszNTg4IFRSTSwgc3BlY2lmaWNhbGx5IHNlY3Rpb24KPiAzNi40LjEg
IkludGVybmFsIEFkZHJlc3MgTWFwcGluZyIsIHdoaWNoIHNob3dzIHdoZXJlIGVhY2ggInBhcnQi
IG9mIHRoZSBOUFUgY29yZQo+IGhhcyBpdHMgYWRkcmVzcyBzcGFjZS4KPgo+IFJpZ2h0IG5vdyB3
ZSBqdXN0IHJlcHJlc2VudCB0aGlzIGFzIGEgc2luZ2xlIHJlZyBpdGVtIHBlciBjb3JlLiBJJ3Zl
IHBsYXllZAo+IHdpdGggdGhlIGlkZWEgb2Ygc3BsaXR0aW5nIHRoaXMgdXAgaW50byB0aGUgZGlz
dGluY3QgcmFuZ2VzIHRoZSBUUk0gbGlzdHMgYW5kCj4gZ2l2aW5nIGVhY2ggYSByZWctbmFtZXMg
ZW50cnksIGJ1dCB0aGlzIHdvdWxkIHJlcXVpcmUgYSBtYWpvciByZXdvcmsgb2YgdGhlCj4gZHJp
dmVyIGZyb20gd2hhdCBJIGNhbiB0ZWxsLCBpbmNsdWRpbmcgdG8gdGhlIGF1dG8tZ2VuZXJhdGVk
IHJlZ2lzdGVyIGhlYWRlci4KPgo+IEZvciBub3csIG15IGhhY2sgb24gUkszNTc2IGlzIHRvIGp1
c3QgaW9yZW1hcCB0aGUgcmFuZ2UgZGVmaW5lZCBieSByZXNvdXJjZQo+IHN0YXJ0IHRvIHJlc291
cmNlIGVuZCBpbnNpZGUgcm9ja2V0IG1hbnVhbGx5IGlmIEkgZ2V0IC1FQlVTWSB0cnlpbmcgdG8g
aW9yZW1hcAo+IHRoZSByZXNvdXJjZSBwcm9wZXIuIFRoaXMgaXMgcXVpdGUgYW4gdWdseSBoYWNr
IHRob3VnaCwgaXQgbWVhbnMgdGhlIElPTU1VIG5vZGUKPiBzdGlsbCBoYXMgaXRzIGFkZHJlc3Mg
b3ZlcmxhcHBpbmcgd2l0aCBhbm90aGVyIG5vZGUgaW4gdGhlIERULCBhbmQgaXQgYWxzbyBtZWFu
cwo+IHdlIGhhdmUgYW4gdW5hdm9pZGFibGUgZXJyb3IgbWVzc2FnZSBwcmludGVkIGludG8gdGhl
IGtlcm5lbCBsb2cuIFRoaXMgaXMgYWxzbwo+IHdoYXQgdGhlIHZlbmRvciBkcml2ZXIgc2VlbXMg
dG8gZG8uCj4KPiBXaGF0IGRvIHlvdSByZWNrb24gaXMgYSByZWcgc2V0dXAgaW4gdGhlIGJpbmRp
bmcgdGhhdCBpcyBib3RoIHJlYXNvbmFibGUgdG8KPiBpbXBsZW1lbnQgaW4gdGhlIGRyaXZlciB3
aGlsZSBhY2N1cmF0ZWx5IGRlc2NyaWJpbmcgdGhlIGhhcmR3YXJlPwoKR3Vlc3Mgd2UgY291bGQg
Z28gd2l0aCBzb21lIHNtYWxsZXIgZ3JhbnVsYXJpdHkgYW5kIGhhdmUgMyByZWdpc3RlcgphcmVh
cyBwZXIgY29yZSwgaW5zdGVhZCBvZiAxMDoKCi0gQ09SRTogUEMrQ05BICgweDAwMDAgfiAweDFm
ZmYpCi0gQVVYOiBDT1JFK0RQVStQUFUrRERNQStTRE1BICgweDMwMDAgfiAweDlmZmYpCi0gR0xP
QkFMICgweGYwMDAgfiAweGYwMDQpCgpTbyB0aGUgSU9NTVUgb24gYWxsIHRoZSBrbm93biBTb0Nz
IGNhbiBoYXZlIGl0cyBvd24gcmVnbWFwLiBJIGhhdmUKY2hvc2VuIHRvIGNhbGwgdGhlIGZpcnN0
IG9uZSBDT1JFIGJlY2F1c2UgdGhlc2UgYXJlIHRoZSBjb21wb25lbnRzCnRoYXQgYXJlIGFic29s
dXRlbHkgbmVlZGVkIGluIGFueSBOUFUgdGhhdCBpcyBvcmllbnRlZCB0b3dhcmRzCmNvbnZvbHV0
aW9uYWwgbmV0d29ya3MgKGNvbnZvbHV0aW9ucywgYmFzaWNhbGx5KS4gSSBoYXZlIG5hbWVkIHRo
ZQpzZWNvbmQgQVVYIGJlY2F1c2UgaXQgY29udGFpbnMgaGFyZHdhcmUgdW5pdHMgdGhhdCBhcmUg
b3B0aW9uYWwgYW5kCmFyZSB1c2VkIHRvIGltcGxlbWVudCBvcGVyYXRpb25zIHRoYXQgbWF5IGJl
IGNvbW1vbiBidXQgdGhhdCBhcmVuJ3QgYXMKY29tcHV0YXRpb25hbCBleHBlbnNpdmUgYXMgY29u
dm9sdXRpb25zIGFuZCB0aHVzIG1pZ2h0IGJlIHNraXBwZWQgaW4KbG93ZXItZW5kIHZlcnNpb25z
IG9mIHRoZSBJUC4KCldoYXQgZG8geW91IHRoaW5rPwoKUmVnYXJkcywKClRvbWV1Cgo+IFRoZSBS
SzM1NjgsIHdoaWNoIHVzZXMgYSBzaW1pbGFyIE5QVSBkZXNpZ24gaGFzIHRoZSBJT01NVSBhdCBh
biBvZmZzZXQgb2YgMHhiMDAwCj4gZnJvbSB0aGUgY29yZSdzIHN0YXJ0IG9mIFBDLCBzbyBwcm9i
YWJseSBhZnRlciBhbnkgY29yZSBzcGVjaWZpY3MgYnV0IGJlZm9yZSB0aGUKPiBnbG9iYWwgcmVn
aXN0ZXJzIGlmIEkgaGF6YXJkIGEgZ3Vlc3MuCj4KPiBGb3IgdGhvc2Ugd2l0aG91dCBhY2Nlc3Mg
dG8gdGhlIFRSTTogc3BsaXR0aW5nIHRoaXMgdXAgaW50byBtdWx0aXBsZSByZWcgaXRlbXMKPiBw
ZXIgY29yZSBwcmVjaXNlbHkgdGhlIHdheSB0aGUgVFJNIGRvZXMgaXQgd291bGQgcmVzdWx0IGlu
IG5vIGxlc3MgdGhhbiAxMCByZWcKPiBpdGVtcyBvbiBSSzM1ODgsIGlmIEkgY291bnQgY29ycmVj
dGx5Lgo+Cj4gS2luZCByZWdhcmRzLAo+IE5pY29sYXMgRnJhdHRhcm9saQo+Cj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
