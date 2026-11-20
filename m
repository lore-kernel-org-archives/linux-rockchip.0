Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88A3606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 13:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XltFVFce;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=YmrxRN5B
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:In-Reply-To:
	Cc:To:Subject:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=h4mD59OLMl1tvHKPEeevVKdIx/5yy6gZG1sy8nYj5fk=; b=XltFVFceyx508iyZB/bVGRjhQo
	Ipa5wiOo6w5IwtKhAAJjhf1U+l7foXfh1ASQgMFE8299civN0YIgtexKCa/6GWHvlYjJ8DLQyOA/7
	w97V+UZbsj7vZtzQ2D/roG9Er6x/HMyoNWC+u5sVSYBxMLDEDC6cwzEVtBgn9LRoxs5LMvGSxiGkz
	84aKJ0nn3w1v/z1o9C+B1Ih76KevRAHVPJE65vjZY+z04+m11fcqX4PERF3efw+tSvZbW5a62cG6r
	ujT4syAsQp4bRY/xkBTVTxFt+k3mt9cHqiTyo2MM5ymh2E/wGHWFl2SCViCKSM5fZIMljdbtMEpCD
	tt/qLEIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUOzH-0000000FApQ-0wdh;
	Fri, 20 Nov 2026 13:49:11 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUOzD-0000000FAoE-2psT;
	Fri, 20 Nov 2026 13:49:09 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5c0a:3200:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C891C202284;
	Fri, 20 Nov 2026 14:49:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795182543;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PSHSxED65AnpWskI+zndcsoj9vhLG7Y6yB7a+EXXCRI=;
	b=YmrxRN5BlxHFPxY2kfXI38ZIFzr/mftDDptQVVgALq8EGk9KFpm/BSUUTumF7A8Lg40Z5t
	voMLta3CKVM3VysCnjW4vOnfG5m0WR8auBgrCLd4902vrffq0E6qONyaZGNTDA9Wmssr0d
	cxvfRY70R2A/nmWpFrfE4D/MpBNK+NQudVO2OtTMWrtHZqbj8qMzXXzVoYwzX1gG4K11Ei
	PIecDc56J4CrUHlPxBLdHKAE7Sp0NZ3/CXF9b8Wa3Kjiec9xaMBNhIb0X8lq9InAkfvK2c
	pOuVFmkOgf69YS+uGAdE4oELkAKSiMjCsyhMqRCq9sAR010D/CrwWmos3LAh9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795182543;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PSHSxED65AnpWskI+zndcsoj9vhLG7Y6yB7a+EXXCRI=;
	b=RMJ//48gHnP/MWe0w62kRSDg6IbkJw6cekgiRaswZ9QGQZtBRCtu2/xUY9ch/Df8k5ktJV
	EJ+pFcoz4KjIzNUYZ3OcA41zWU6kftNV/WgufDUgzDEneTy2XyoAmgszrHx3c/uBXXXa2R
	QKh8NFp4tXVElNIGOwDY+4Ow1jnr2bNhM4N05Vr/dpX6ZxqTy7F97KM7MDPl/o0FlcU858
	18u+v4coNkBtex8Tx+EPPEYZNPv5EZab4nptBKnbdaIFIrxOyU4ykp0yF0IMoo8nCo2OjO
	0IKculyiRnGLXttfpTfWvGkyWUQiorjWNzWySMPu7zZjYOvyHZd258v48FRCzA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795182543; a=rsa-sha256;
	cv=none;
	b=f8N6LrVJ/HxgbB54m+tOKZ9deaW+Yb9M9s+xMyzEl6SXLcRkLuj/z1ISJJ22V+uab16Jte
	VCEbxmoMRdGC0GgPrzIT9gygOJVPtNvbkSVGjUhwaO7YkxNDN5DNoVk5lyk0+fuWQh7tVx
	7hxpwv/x46dlr0iO6mI9okNgDlpjlyck9T8jiL+pPT63ZIN6V6IgUXsZPH6ZDhePLdeRxv
	xHldrd4+hl6h8LFaIPfaYyRWAzq5/vaUbnkuXDgPpsBa8Yc+ckqrDyHJO43+LLqlkpOco6
	BG/3hMDUmDoX7bmV3jMQ1g8YJuP+moBMEf88hcC4/FHlGHcF9DGXsVOnM9upDQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <8bc5870a-2b38-4e3a-9f93-76b2673a79dd@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v7 2/4] media: rockchip: Add JPEG decoder driver
To: "Nicolas Dufresne" <nicolas@ndufresne.ca>
Cc: "Sascha Hauer" <s.hauer@pengutronix.de>, "Sergei Khomenkov" <shomenkow@gmail.com>, "Lucas
 Sinn" <lucas.sinn@wolfvision.net>, "Mauro Carvalho Chehab" <mchehab@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <41e428a6fcdcf3d0c10cada8743231797b3dd5f4.camel@ndufresne.ca>
References: <20261022-rockchip-jpegdec-v7-0-3fd7dd55f408@pengutronix.de>
 <20261022-rockchip-jpegdec-v7-2-3fd7dd55f408@pengutronix.de>
 <596F6C9E-4A5D-4AE8-8D26-7A7247050D7D@gmail.com>
 <85353f59-52a0-446d-ace3-65e2d03d0d0b@pengutronix.de>
 <41e428a6fcdcf3d0c10cada8743231797b3dd5f4.camel@ndufresne.ca>
Date: Fri, 20 Nov 2026 13:49:03 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_054907_860030_5AE3AC49 
X-CRM114-Status: GOOD (  20.82  )
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
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgTmljb2xhcywKCk9uIDIwMjYtMTEtMTkgMTE6MDAsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6
Cj4gTGUgbWVyY3JlZGkgMTggbm92ZW1icmUgMjAyNiDDoCAxNDoyNyArMDAwMCwgU2FzY2hhIEhh
dWVyIGEgw6ljcml0wqA6Cj4gPiA+IFdvdWxkIDMgYnl0ZXMgcGVyIHBpeGVsIGJlIGFjY2VwdGFi
bGUgYXMgdGhlIGRlZmF1bHQsIGFuZCBhcyBhIGZsb29yCj4gPiA+IGZvciBzbWFsbGVyIHJlcXVl
c3RzLCBsaWtlIHRoZSAyIGJ5dGVzIHBlciBwaXhlbCBmbG9vciBpbiA2Lzcgb2YgeW91cgo+ID4g
PiBoYW50cm8tYmFzZWQgdjE/IDQ6NDo0IGF0IHF1YWxpdHkgMTAwIHdvdWxkIHN0aWxsIG5vdCBm
aXQsIGJ1dCB0aGUKPiA+ID4gc3Vic2FtcGxpbmcgaXMgbm90IGtub3duIGJlZm9yZSB0aGUgaGVh
ZGVyIGlzIHBhcnNlZC4KPiA+IAo+ID4gSSBoYXZlbid0IGJlZW4gYWZmZWN0ZWQgYnkgdGhpcyBp
c3N1ZSBsYXRlbHksIGJ1dCBzYXcgaXQgd2hlbiB0aGUgc2VyaWVzCj4gPiB3YXMgc3RpbGwgYmFz
ZWQgb24gdGhlIGhhbnRybyBkcml2ZXIuIFllcywgSSdsbCBjaGFuZ2UgdG8gMyBieXRlcyBwZXIK
PiA+IHBpeGVsIG5leHQgcm91bmQgYW5kIG1ha2UgdGhhdCB0aGUgZmxvb3Igb2Ygc2l6ZWltYWdl
LiBXb3VsZCBiZSBuaWNlIHRvCj4gPiBoYXZlIGEgcHJvcGVyIHNvbHV0aW9uIGZvciB0aGlzIHJh
dGhlciB0aGFuIGVpdGhlciB3YXN0aW5nIHRvbnMgb2YKPiA+IG1lbW9yeSBvciByaXNrIGhhdmlu
ZyB0b28gc21hbGwgYnVmZmVycy4KPiAKPiBUaGUgaGFudHJvIEhXIGNhbiBydW4gaW4gcmluZyBi
dWZmZXIgbW9kZSwgdGhhdCBmb3JjZXMgdXMgdG8gY29weSwgYnV0IEkgdGhpbmsKPiB5b3UgY2Fu
IHRoZW4gcGVyZm9ybSBkZWNvZGUgd2l0aG91dCBhY3R1YWxseSBoYXZpbmcgdGhlIGVudGlyZSBp
bWFnZSBpbiBSQU0uCj4gV291bGQgbmVlZCBzb21lIGV4cGVyaW1lbnRhdGlvbi4gV2UgcHJvYmFi
bHkgZG9uJ3Qgd2FudCBjb3B5IHRvIG1tYXAgKyBjb3B5IHRvCj4gcmluZyBidWZmZXIgKGRvdWJs
ZSBjb3B5KSwgYW5kIFY0TDIgcmVhZC93cml0ZSBhcmUgZGVwcmVjYXRlZC4gTm90ZSBzdXJlIHdo
YXQgdG8KPiBwcm9wb3NlIHJlYWxseS4KClRoZSBSb2NrY2hpcCBKUEVHIGRlY29kZXIgY2FuIHN0
b3Agb24gYnVmZmVyIGVuZHMgYW5kIEkganVzdCBtYW5hZ2VkIHRvCnJlc3VtZSBvcGVyYXRpb24g
b24gdGhlIG5leHQgYnVmZmVyIGFmdGVyd2FyZHMsIHNvIGluIHByaW5jaXBsZSB3ZSBjb3VsZApp
bXBsZW1lbnQgc3RyZWFtaW5nIG1vZGUuCgpBbnl3YXksIEknZCBzYXkgaXQncyBub3Qgd29ydGgg
YWRkaW5nIHRoZSBjb21wbGV4aXR5IHRvIHRoZSBkcml2ZXIgdG8KaGFuZGxlIHRoYXQuCgpTYXNj
aGEKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAg
ICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNo
ZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAg
ICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAg
KzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
