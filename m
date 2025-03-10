Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47D13C282DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bl+CoVM5xAjxaHwp5WtMElfMGKtzGx2UGj+5r5E6ma0=; b=4hBr/FvFXblu3u
	yWcoxYv3GSsBf0xj5AECm9PyR7/VtcHFrQ58Y4oTnZEgSkhmKGhlEAHpdw6M4d5CCdNVa+9w3NxM3
	5Ho0XRFD5rNobrYpwP5Tf8qqSymCI4gqDy7KAHoHAFc9yHvMYqwpRjg9ziJt6jdYvhQT6Fecak8GE
	ykaBEY5fkbe0LtEDV876Ld8KFzonB5fEo9TynUZ4KtX3eaiWK3z9zujLpHt24WFEbe/6+oakCyZI8
	9Dd1pHQWvQyxExzzg/MuzIMfOB84drLh4XKwn4O3qOe8UipMRm+ylcBsR/Blg8wubfnOumOgiV4Cf
	b+mMmO5/3J29Ve8w4KhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trYzr-00000001zPt-2wqF;
	Mon, 10 Mar 2025 09:00:27 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trYzp-00000001zOk-3KQ4
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Mar 2025 09:00:27 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5e5dce099f4so4974545a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Mar 2025 02:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741597223; x=1742202023; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y5Yuxxu0WAoN1GxBYvN/CmEDsSXx0gVMofLIggB5ihw=;
        b=TAwXhAB7u6gaxryrtOLMvIL5XzoYq6b8lknNa2fWWMv1dOZntHQqO/GGeoXpgLt9cx
         kxUMj33M/G3zFydHGUrS5JSJ1UdMlAAFcY1TyRxZat5Empk9zYoIj4zOvjf8KyqUQX2y
         tFUR8CIlZ4ttNpYPu2OVF4tZzN5oWQiUyUhx0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741597223; x=1742202023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y5Yuxxu0WAoN1GxBYvN/CmEDsSXx0gVMofLIggB5ihw=;
        b=Yn1u+YUnD6sDhiTVw8bBB+7wO4krU8rnkpdaElt9WGm/je2S3KjqIBtIkYGia0aFJS
         ZZs3vwXa/CX5S374Xgcc2dUJXawkmuX/dZkiTjC0P0co/Mpk8CCaAGnnY1mo55Rg/F8P
         z2EE/ZFAzQOrdCMEzQI5LRoxgMwVCZFL0php0EDCo/FttX8nOW0Fcvfhsdvh6quDn3Gj
         emlBG99+kT5n19/2C305T5mSWlCbbRGGaoawcrekLHb3YldpYEfx/7gBWQMeF4ocQCAu
         SVl7C1JFOCrSvFf0/QZbhCid9+2ZLtrV0N2KDJRPWVkFHQHgCt5nQlbZpTT/b6TdZhMc
         go6A==
X-Forwarded-Encrypted: i=1; AJvYcCW5V7BWALdQ+pJkbdjPW+MzAvyLhg0uCPFQXBUpXv6E4kBvdTJ+UkU6wmzhOAdZdZZGl64qDHegQKlco9a1Jw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxWSByk0FnmYRcL9+sCesynmNQryVgQdF/EVcvNkfvyOeRxgBgd
	EsSj3Ps22pY0ZTvQmGtXROaEHYH6mZII8yYWpN9HBtnu3XVu2YG6EQymIur9xh/RLEoMBpnbUms
	=
X-Gm-Gg: ASbGncvSITFB7GQQpZz5XzRefy8JHzt/p2potnuBzw2H7TYC3Ld1k5aJaBQC9QtIXWE
	U7VExWpV43LSQXsV2Xmd1VLTyPgYOQZekR2fIIR0hbQhoTge+c2V6owvRTvFGJ3ps/glz7QrHkS
	A4wrnvn5ObC18YuzLivQRh6haeWpkrPeM/Hw0jpPSjuAq1xsXL9lUc2c+erX9N8+PwTCLHk3q9w
	awRsqC3CuyS3L4tsf5Bjn2kxeKEPgjWQ4iCAt+y94/Rrc+hlqoD3w5DH4y+2cwqsapf/Vh2jAfR
	MuVr2kCczuwDmWnCM5twwhsBbbREmLpbiOFUPJJBotASh8EsX82fESUDoZ6QkWYRM7FFtihhJ9a
	I/FpX
X-Google-Smtp-Source: AGHT+IGyJOr8siXPxKk/SMblrudoZkZtyp5QR0ggh1DZreXeNvNgq3krFmeH1ieHpH+IAvs7U6Hb+w==
X-Received: by 2002:a17:906:f182:b0:ac2:55f2:f93d with SMTP id a640c23a62f3a-ac255f2fde5mr1187817566b.12.1741597222005;
        Mon, 10 Mar 2025 02:00:22 -0700 (PDT)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com. [209.85.208.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac239517802sm724529466b.86.2025.03.10.02.00.21
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Mar 2025 02:00:21 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5e50bae0f5bso9243a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Mar 2025 02:00:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVMpTIGFnQbGwcZJt19F/s5A85hgZDpR+CDay8xxUhHgHiyVIDFhHT7F/kcx40C7dRQKdRSfW3BTenpTYwQfA==@lists.infradead.org
X-Received: by 2002:a05:6402:95a:b0:5e6:887f:6520 with SMTP id
 4fb4d7f45d1cf-5e6887f672fmr62677a12.5.1741597220471; Mon, 10 Mar 2025
 02:00:20 -0700 (PDT)
MIME-Version: 1.0
References: <20250303-b4-rkisp-noncoherent-v4-0-e32e843fb6ef@gmail.com>
 <20250303-b4-rkisp-noncoherent-v4-1-e32e843fb6ef@gmail.com>
 <8b3dac7baed1de9542452547454c53188c384391.camel@ndufresne.ca> <87wmcxs1xw.fsf@gmail.com>
In-Reply-To: <87wmcxs1xw.fsf@gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 10 Mar 2025 18:00:03 +0900
X-Gmail-Original-Message-ID: <CAAFQd5A70T2iaN17X2Jfk_6fCKRYZdKpreb+9i76n5WMYNEt1A@mail.gmail.com>
X-Gm-Features: AQ5f1JowVCHSCv6zRQDIlGrshBtBzEUT-W75FlZzOuUhz9aDBR_F5KxVvuObz24
Message-ID: <CAAFQd5A70T2iaN17X2Jfk_6fCKRYZdKpreb+9i76n5WMYNEt1A@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] media: videobuf2: Fix dmabuf cache sync/flush in dma-contig
To: Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sergey Senozhatsky <senozhatsky@chromium.org>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_020025_848664_4F8D6115 
X-CRM114-Status: GOOD (  28.08  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgNTo1MuKAr1BNIE1pa2hhaWwgUnVkZW5rbyA8bWlrZS5y
dWRlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPgo+IEhpIE5pY29sYXMsIFRvbWFzeiwKPgo+IE9u
IDIwMjUtMDMtMDMgYXQgMTA6MjQgLTA1LCBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzQG5kdWZy
ZXNuZS5jYT4gd3JvdGU6Cj4KPiA+IEhpIE1pa2hhaWwsCj4gPgo+ID4gTGUgbHVuZGkgMDMgbWFy
cyAyMDI1IMOgIDE0OjQwICswMzAwLCBNaWtoYWlsIFJ1ZGVua28gYSDDqWNyaXQgOgo+ID4+IFdo
ZW4gc3VwcG9ydCBmb3IgVjRMMl9GTEFHX01FTU9SWV9OT05fQ09OU0lTVEVOVCB3YXMgcmVtb3Zl
ZCBpbgo+ID4+IGNvbW1pdCAxMjkxMzRlNTQxNWQgKCJtZWRpYTogbWVkaWEvdjRsMjogcmVtb3Zl
Cj4gPj4gVjRMMl9GTEFHX01FTU9SWV9OT05fQ09OU0lTVEVOVCBmbGFnIiksCj4gPj4gdmIyX2Rj
X2RtYWJ1Zl9vcHNfe2JlZ2luLGVuZH1fY3B1X2FjY2VzcygpIGZ1bmN0aW9ucyB3ZXJlIG1hZGUK
PiA+PiBuby1vcHMuIExhdGVyLCB3aGVuIHN1cHBvcnQgZm9yIFY0TDJfTUVNT1JZX0ZMQUdfTk9O
X0NPSEVSRU5UIHdhcwo+ID4+IGludHJvZHVjZWQgaW4gY29tbWl0IGMwYWNmOWNmZWVlMCAoIm1l
ZGlhOiB2aWRlb2J1ZjI6IGhhbmRsZQo+ID4+IFY0TDJfTUVNT1JZX0ZMQUdfTk9OX0NPSEVSRU5U
IGZsYWciKSwgdGhlIGFib3ZlIGZ1bmN0aW9ucyByZW1haW5lZAo+ID4+IG5vLW9wcywgbWFraW5n
IGNhY2hlIG1haW50ZW5hbmNlIGZvciBub24tY29oZXJlbnQgZG1hYnVmcyBhbGxvY2F0ZWQKPiA+
PiBieQo+ID4+IGRtYS1jb250aWcgaW1wb3NzaWJsZS4KPiA+Pgo+ID4+IEZpeCB0aGlzIGJ5IHJl
aW50cm9kdWNpbmcgZG1hX3N5bmNfc2d0YWJsZV9mb3Jfe2NwdSxkZXZpY2V9IGFuZAo+ID4+IHtm
bHVzaCxpbnZhbGlkYXRlfV9rZXJuZWxfdm1hcF9yYW5nZSBjYWxscyB0bwo+ID4+IHZiMl9kY19k
bWFidWZfb3BzX3tiZWdpbixlbmR9X2NwdV9hY2Nlc3MoKSBmdW5jdGlvbnMgZm9yIG5vbi1jb2hl
cmVudAo+ID4+IGJ1ZmZlcnMuCj4gPj4KPiA+PiBGaXhlczogYzBhY2Y5Y2ZlZWUwICgibWVkaWE6
IHZpZGVvYnVmMjogaGFuZGxlCj4gPj4gVjRMMl9NRU1PUllfRkxBR19OT05fQ09IRVJFTlQgZmxh
ZyIpCj4gPj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+PiBTaWduZWQtb2ZmLWJ5OiBN
aWtoYWlsIFJ1ZGVua28gPG1pa2UucnVkZW5rb0BnbWFpbC5jb20+Cj4gPj4gLS0tCj4gPj4gIC4u
Li9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMgIHwgMjIKPiA+
PiArKysrKysrKysrKysrKysrKysrKysrCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRp
b25zKCspCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9i
dWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMKPiA+PiBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3Zp
ZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jCj4gPj4gaW5kZXgKPiA+PiBhMTNlYzU2OWM4
MmY2ZGEyZDk3NzIyMmI5NGFmMzJlNzRjNmM2YzgyLi5kNDEwOTVmZTViZDIxZmFmODE1ZDZiMDM1
ZDcKPiA+PiBiYzg4OGE4NGE5NWQ1IDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvY29t
bW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jCj4gPj4gKysrIGIvZHJpdmVycy9t
ZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMKPiA+PiBAQCAtNDI3
LDYgKzQyNywxNyBAQCBzdGF0aWMgaW50Cj4gPj4gIHZiMl9kY19kbWFidWZfb3BzX2JlZ2luX2Nw
dV9hY2Nlc3Moc3RydWN0IGRtYV9idWYgKmRidWYsCj4gPj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbgo+ID4+IGRpcmVjdGlvbikKPiA+PiAg
ewo+ID4+ICsgICAgc3RydWN0IHZiMl9kY19idWYgKmJ1ZiA9IGRidWYtPnByaXY7Cj4gPj4gKyAg
ICBzdHJ1Y3Qgc2dfdGFibGUgKnNndCA9IGJ1Zi0+ZG1hX3NndDsKPiA+PiArCj4gPj4gKyAgICBp
ZiAoIWJ1Zi0+bm9uX2NvaGVyZW50X21lbSkKPiA+PiArICAgICAgICAgICAgcmV0dXJuIDA7Cj4g
Pj4gKwo+ID4+ICsgICAgaWYgKGJ1Zi0+dmFkZHIpCj4gPj4gKyAgICAgICAgICAgIGludmFsaWRh
dGVfa2VybmVsX3ZtYXBfcmFuZ2UoYnVmLT52YWRkciwgYnVmLT5zaXplKTsKPiA+Cj4gPiBXaGF0
IHdvdWxkIG1ha2UgbWUgYSBsb3QgbW9yZSBjb25mb3J0YWJsZSB3aXRoIHRoaXMgY2hhbmdlIGlz
IGlmIHlvdQo+ID4gZW5hYmxlIGtlcm5lbCBtYXBwaW5ncyBmb3Igb25lIHRlc3QuIFRoaXMgd2ls
bCBlbnN1cmUgeW91IGNvdmVyIHRoZQo+ID4gY2FsbCB0byAiaW52YWxpZGF0ZSIgaW4geW91ciB0
ZXN0aW5nLiBJJ2QgbGlrZSB0byBrbm93IGFib3V0IHRoZQo+ID4gcGVyZm9ybWFuY2UgaW1wYWN0
LiBXaXRoIHRoaXMgaW1wbGVtZW50YXRpb24gaXQgc2hvdWxkIGJlIGlkZW50aWNhbCB0bwo+ID4g
dGhlIFZCMiBvbmUuCj4gPgo+Cj4gSSBoYXZlIHJlLXJ1biBteSB0ZXN0cyBvbiBSSzMzOTksIHdp
dGggMTI4MHg3MjAgWFJHQiBjYXB0dXJlIGJ1ZmZlcnMgKDEKPiBwbGFuZSwgMzY4NjQwMCBieXRl
cykuIENhcHR1cmUgcHJvY2VzcyB3YXMgcGlubmVkIHRvICJiaWciIGNvcmVzIHJ1bm5pbmcKPiBh
dCBmaXhlZCBmcmVxdWVuY3kgb2YgMS44IEdIei4gTGliY2FtZXJhIHdhcyBtb2RpZmllZCB0byBy
ZXF1ZXN0IGJ1ZmZlcnMKPiB3aXRoIFY0TDJfTUVNT1JZX0ZMQUdfTk9OX0NPSEVSRU5UIGZsYWcu
IERNQV9CVUZfSU9DVExfU1lOQyBpb2N0bHMgd2VyZQo+IHVzZWQgYXMgYXBwcm9wcmlhdGUuIEZv
ciBrZXJuZWwgbWFwcGluZyBlZmZlY3QgdGVzdCwgdmIyX3BsYW5lX3ZhZGRyCj4gY2FsbCB3YXMg
aW5zZXJ0ZWQgaW50byBya2lzcDFfdmIyX2J1Zl9pbml0Lgo+Cj4gVGhlIHRpbWluZ3MgYXJlIGFz
IGZvbGxvd2luZzoKPgo+IC0gbWVtY3B5IGNvaGVyZW50IGJ1ZmZlcjogNzU3MCArLy0gNjMgdXMK
PiAtIG1lbWNweSBub24tY29oZXJlbnQgYnVmZmVyOiAxMTIwICsvLSAzNCB1cwo+Cj4gd2l0aG91
dCBrZXJuZWwgbWFwcGluZzoKPgo+IC0gaW9jdGwoZmQsIERNQV9CVUZfSU9DVExfU1lOQywge0RN
QV9CVUZfU1lOQ19TVEFSVHxETUFfQlVGX1NZTkNfUkVBRH0pOiA0MjggKy8tIDE1IHVzCj4gLSBp
b2N0bChmZCwgRE1BX0JVRl9JT0NUTF9TWU5DLCB7RE1BX0JVRl9TWU5DX0VORHxETUFfQlVGX1NZ
TkNfUkVBRH0pOiA0MjIgKy8tIDI4IHVzCj4KPiB3aXRoIGtlcm5lbCBtYXBwaW5nOgo+Cj4gLSBp
b2N0bChmZCwgRE1BX0JVRl9JT0NUTF9TWU5DLCB7RE1BX0JVRl9TWU5DX1NUQVJUfERNQV9CVUZf
U1lOQ19SRUFEfSk6IDUyNiArLy0gMTMgdXMKPiAtIGlvY3RsKGZkLCBETUFfQlVGX0lPQ1RMX1NZ
TkMsIHtETUFfQlVGX1NZTkNfRU5EfERNQV9CVUZfU1lOQ19SRUFEfSk6IDUxOSArLy0gMzggdXMK
Pgo+IFNvLCBldmVuIHdpdGgga2VybmVsIG1hcHBpbmcgZW5hYmxlZCwgc3BlZWR1cCBpcyA3NTcw
IC8gKDExMjAgKyA1MjYgKyA1MTkpID0gMy41LAo+IGFuZCB0aGUgdXNlIG9mIG5vbmNvaGVyZW50
IGJ1ZmZlcnMgaXMganVzdGlmaWVkIC0tIGF0IGxlYXN0IG9uIHRoaXMgcGxhdGZvcm0uCgpUaGFu
a3MgYSBsb3QgZm9yIHRoZSBhZGRpdGlvbmFsIHRlc3RpbmcuCgpBY2tlZC1ieTogVG9tYXN6IEZp
Z2EgPHRmaWdhQGNocm9taXVtLm9yZz4KCkJlc3QgcmVnYXJkcywKVG9tYXN6CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
