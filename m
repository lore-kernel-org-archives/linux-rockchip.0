Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7D8AC02188
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jan 2025 11:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGDq+eaQmN/CaNEPnjQHs2mjZex2l/nSJwgcKpO/e9k=; b=aKpVqmLCX/SJ1g
	8y02NXoGZqOqR/BpBrYw2GQmgzVl3oZg3W9CaZQtlXTEgkacfVm6ToIgqOonONW99YJcdjNyNpcRF
	U1QNQUPUIW3PAp+HBbPj01HNapgBe/AC68pF2t8veEnm6kxv3jqnsR4CDOFPnBDsKaqoglb0DaEf3
	woS+R0FtzOs4ghasnr+XAdUHtoCuDTE5pHlV1dX/GzcJBXTxI/NbL9YN9q+3Ek6a1P95QIrgcsXmr
	zk1sMGQ3cDHRnvcbat6O8C48QvAVyulYuct17ayrQkrHGwYfy3JOhg79AaUfpf3mN5hQBoR0LmjrJ
	J4BxZQJ82TbfDowvFgGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcNAJ-00000002Crm-0oZx;
	Mon, 27 Jan 2025 11:20:27 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcN8z-00000002Cgl-2LAw
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jan 2025 11:19:06 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-aa66c1345caso178213866b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jan 2025 03:19:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737976743; x=1738581543; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bj/btp7iB/WVExe7HRHgQ+HsqxBZyERYlUan4lSFhKQ=;
        b=laIzELY2dWUoG017EYNzEb1aMoVnvU51EGLtxq8N+m4TZ1TdG62hNHALW7oGrxSjeC
         VuYqmqIP9djYBSKstdJjWhoZ44UwgRtg2i1vx0TstbDnRnDfSYraH85XxIuveXnO3Ww7
         tILjlgRrn9IIIVsyzdIJeAEcZofG2i8jrKf0U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737976743; x=1738581543;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bj/btp7iB/WVExe7HRHgQ+HsqxBZyERYlUan4lSFhKQ=;
        b=gDTOvOZtF0jEMdu8VTa680B5ra5VozqnpOWJVw0Vu8x0Jv25zOYqXTEjpkyk78phvh
         gaW09QTXmEG+180sTr/ACvu01d6KLVqC+KycTI5C47vKy8Olq+KdJbrCFE2JnuEs8wkt
         MRA1Dlqb3rY8oKmcVTiOSOSZaVszGjjkHX5JFgM7RMsDqqzmAcf2TqZE8v8MPU63HU2a
         6NtR/z5XrTofW6IO+KGGPeZ2r6PGzpJM8b1QXOknEqp9k0aTVcfHc1sUKKx9VFvZphEK
         lXZip6kcniNQ99pKmejklQS8JHx/OXbQRj4mpdd0qYgzh+ON6lyV+uta9IRl3DbD7x5q
         NMpw==
X-Forwarded-Encrypted: i=1; AJvYcCXa76Xd6YizK/5YX6s4kyql57+v/VSRP6C+MVq8b5234fqXFYP9wQGsmjWheY08QlH3P2L0MT1BNrtiSJX6TA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4QDiPzxbrcy6wLTVE8H4h1qnqz0THdtX0PtGLCp0a7FkWoXCK
	LsllzdJW5o1/rMhf15BCoiBWWPNkaE5Yqh6ntFqsUgnAFv0Riqq7xe6euNFe3P+JJLi4eK7uaei
	Bnw==
X-Gm-Gg: ASbGncsPExK0OCXXWWqbOLSsrDyHONOOObBzz2YsxKu2WZ8gWfeYY2oVd+Ec9J8ATRq
	XEg0XEaRpD1dseEnGEeWcd+JaFE0XAPFcELkWuJQSrGKjGGcbPJdUXvZJm/5esBf6l4Rmc65I6U
	mSvBuqToR0CZK7Cm/xgu4ET0BKqvcl8oNGK2lEo11Ssuu4fXXwowDS+aIek3H3JdmJvPwUuUa27
	hW7DuI3vXpz8xn8qkxT368NKPxs5DY21MZXhN8MGZH1b9YeUeRa1ZD0ENZSpUmzQAble4tZYpfn
	BWFDyeYtSXY++sFkOxZLsQ3PIlvYdYPRjBp2aa/F
X-Google-Smtp-Source: AGHT+IFEugLrHkII57z/VI2sX8Pl+TGGB4n5Zv8ogqGHeza3OcOhO0eMp6GeqDT6WGs5fCHkHyLCGw==
X-Received: by 2002:a17:907:3e23:b0:ab6:597a:f5d7 with SMTP id a640c23a62f3a-ab6597af8dbmr2027625366b.24.1737976743495;
        Mon, 27 Jan 2025 03:19:03 -0800 (PST)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com. [209.85.208.52])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760fbf43sm563097666b.154.2025.01.27.03.19.01
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 03:19:01 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5d0c939ab78so8883a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jan 2025 03:19:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW2dFXCngQSZLOyg/61QtUHL7ZjoHthX/psiaNKRM48BqgLrrpIswuBRXOc/gK8asGBd4t7UeTZ345FdFi97Q==@lists.infradead.org
X-Received: by 2002:a50:8a8e:0:b0:5d9:693e:346 with SMTP id
 4fb4d7f45d1cf-5dc243b84e8mr130774a12.4.1737976741062; Mon, 27 Jan 2025
 03:19:01 -0800 (PST)
MIME-Version: 1.0
References: <20250115-b4-rkisp-noncoherent-v2-0-0853e1a24012@gmail.com> <20250115-b4-rkisp-noncoherent-v2-1-0853e1a24012@gmail.com>
In-Reply-To: <20250115-b4-rkisp-noncoherent-v2-1-0853e1a24012@gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 27 Jan 2025 20:18:43 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DFuw9e85X-UhVfonb5C9F0tG6xyn9RUGitKDQXifcUyA@mail.gmail.com>
X-Gm-Features: AWEUYZn0_AfnNbH4PuJVO5cenPSqx6huf_K_307ofmg4I9T9Tf9BB4t2frTysv0
Message-ID: <CAAFQd5DFuw9e85X-UhVfonb5C9F0tG6xyn9RUGitKDQXifcUyA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] media: videobuf2: Fix dmabuf cache sync/flush in dma-contig
To: Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sergey Senozhatsky <senozhatsky@chromium.org>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_031905_592930_2071D457 
X-CRM114-Status: GOOD (  23.73  )
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

SGkgTWlraGFpbCwKCk9uIFRodSwgSmFuIDE2LCAyMDI1IGF0IDI6MjXigK9BTSBNaWtoYWlsIFJ1
ZGVua28gPG1pa2UucnVkZW5rb0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gV2hlbiBzdXBwb3J0IGZv
ciBWNEwyX0ZMQUdfTUVNT1JZX05PTl9DT05TSVNURU5UIHdhcyByZW1vdmVkIGluCj4gY29tbWl0
IDEyOTEzNGU1NDE1ZCAoIm1lZGlhOiBtZWRpYS92NGwyOiByZW1vdmUKPiBWNEwyX0ZMQUdfTUVN
T1JZX05PTl9DT05TSVNURU5UIGZsYWciKSwKPiB2YjJfZGNfZG1hYnVmX29wc197YmVnaW4sZW5k
fV9jcHVfYWNjZXNzKCkgZnVuY3Rpb25zIHdlcmUgbWFkZQo+IG5vLW9wcy4gTGF0ZXIsIHdoZW4g
c3VwcG9ydCBmb3IgVjRMMl9NRU1PUllfRkxBR19OT05fQ09IRVJFTlQgd2FzCj4gaW50cm9kdWNl
ZCBpbiBjb21taXQgYzBhY2Y5Y2ZlZWUwICgibWVkaWE6IHZpZGVvYnVmMjogaGFuZGxlCj4gVjRM
Ml9NRU1PUllfRkxBR19OT05fQ09IRVJFTlQgZmxhZyIpLCB0aGUgYWJvdmUgZnVuY3Rpb25zIHJl
bWFpbmVkCj4gbm8tb3BzLCBtYWtpbmcgY2FjaGUgbWFpbnRlbmFuY2UgZm9yIG5vbi1jb2hlcmVu
dCBkbWFidWZzIGFsbG9jYXRlZCBieQo+IGRtYS1jb250aWcgaW1wb3NzaWJsZS4KPgo+IEZpeCB0
aGlzIGJ5IHJlaW50cm9kdWNpbmcgZG1hX3N5bmNfc2dfZm9yX3tjcHUsZGV2aWNlfSBjYWxscyB0
bwo+IHZiMl9kY19kbWFidWZfb3BzX3tiZWdpbixlbmR9X2NwdV9hY2Nlc3MoKSBmdW5jdGlvbnMg
Zm9yIG5vbi1jb2hlcmVudAo+IGJ1ZmZlcnMuCj4KPiBGaXhlczogYzBhY2Y5Y2ZlZWUwICgibWVk
aWE6IHZpZGVvYnVmMjogaGFuZGxlIFY0TDJfTUVNT1JZX0ZMQUdfTk9OX0NPSEVSRU5UIGZsYWci
KQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogTWlraGFpbCBS
dWRlbmtvIDxtaWtlLnJ1ZGVua29AZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL2Nv
bW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYyB8IDE0ICsrKysrKysrKysrKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspCj4KClRoYW5rcyBhIGxvdCBmb3Ig
dGhlIHBhdGNoIQpTb3JyeSwgZm9yIHRoZSBkZWxheS4gRW5kZWQgdXAgYmVpbmcgc2ljayB3aXRo
IHNvbWUgbmFzdHkgY29sZCB0aGF0CnRvb2sgcXVpdGUgYSB3aGlsZSB0byByZWNvdmVyLgpQbGVh
c2UgdGFrZSBhIGxvb2sgYXQgbXkgY29tbWVudHMgaW5saW5lLgoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMgYi9kcml2
ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+IGluZGV4
IGJiMGI3ZmE2N2I1MzlhYTczYWQ1Y2NmM2MzYmMzMThlMjZmOGE0Y2IuLjg4OWQ2YzExZTE1YWI1
Y2Q0YjRjMzE3ZTg2NWYxZmVmOTJkZjRiNjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9j
b21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMKPiArKysgYi9kcml2ZXJzL21l
ZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+IEBAIC00MjcsNiAr
NDI3LDEzIEBAIHN0YXRpYyBpbnQKPiAgdmIyX2RjX2RtYWJ1Zl9vcHNfYmVnaW5fY3B1X2FjY2Vz
cyhzdHJ1Y3QgZG1hX2J1ZiAqZGJ1ZiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikKPiAgewo+ICsgICAgICAgc3Ry
dWN0IHZiMl9kY19idWYgKmJ1ZiA9IGRidWYtPnByaXY7Cj4gKyAgICAgICBzdHJ1Y3Qgc2dfdGFi
bGUgKnNndCA9IGJ1Zi0+ZG1hX3NndDsKPiArCj4gKyAgICAgICBpZiAoIWJ1Zi0+bm9uX2NvaGVy
ZW50X21lbSB8fCBidWYtPnZiLT5za2lwX2NhY2hlX3N5bmNfb25fZmluaXNoKQoKc2tpcF9jYWNo
ZV9zeW5jX29uX2ZpbmlzaCBzaG91bGRuJ3QgYXBwbHkgdG8gdGhpcyBmdW5jdGlvbiwgYmVjYXVz
ZQp0aGUgYnVmZmVyIHdhcyBzaGFyZWQgd2l0aCBhbiBleHRlcm5hbCBETUEtYnVmIGltcG9ydGVy
IGFuZCB3ZSBkb24ndAprbm93IGluIHdoYXQgc3RhdGUgaXQgaXMgYXQgdGhpcyBwb2ludC4KCj4g
KyAgICAgICAgICAgICAgIHJldHVybiAwOwo+ICsKCldlIHNob3VsZCBhbHNvIHRha2UgY2FyZSBv
ZiB0aGUga2VybmVsIG1hcHBpbmcgaWYgaXQgZXhpc3RzLCBiZWNhdXNlCm9uIHNvbWUgcGxhdGZv
cm1zIGl0IG1heSBub3QgYmUgY29oZXJlbnQgd2l0aCB0aGUgdXNlcnNwYWNlIG9uZSAtCnVzaW5n
IGZsdXNoX2tlcm5lbF92bWFwX3JhbmdlKCkuIFBsZWFzZSBjaGVjayBob3cKdmIyX2RjX3ByZXBh
cmUoKS92YjJfZGNfZmluaXNoKCkgZG8gaXQuCgo+ICsgICAgICAgZG1hX3N5bmNfc2dfZm9yX2Nw
dShidWYtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGJ1Zi0+ZG1hX2Rpcik7CgpXZSBjYW4g
dXNlIHRoZSBkbWFfc3luY19zZ3RhYmxlXyooKSB2YXJpYW50IGhlcmUgc28gd2UgY2FuIGp1c3Qg
cGFzcwp0aGUgZW50aXJlIHNndCB0byBpdC4KCj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+Cj4g
QEAgLTQzNCw2ICs0NDEsMTMgQEAgc3RhdGljIGludAo+ICB2YjJfZGNfZG1hYnVmX29wc19lbmRf
Y3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZGJ1ZiwKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pCj4gIHsKPiArICAg
ICAgIHN0cnVjdCB2YjJfZGNfYnVmICpidWYgPSBkYnVmLT5wcml2Owo+ICsgICAgICAgc3RydWN0
IHNnX3RhYmxlICpzZ3QgPSBidWYtPmRtYV9zZ3Q7Cj4gKwo+ICsgICAgICAgaWYgKCFidWYtPm5v
bl9jb2hlcmVudF9tZW0gfHwgYnVmLT52Yi0+c2tpcF9jYWNoZV9zeW5jX29uX3ByZXBhcmUpCj4g
KyAgICAgICAgICAgICAgIHJldHVybiAwOwo+ICsKPiArICAgICAgIGRtYV9zeW5jX3NnX2Zvcl9k
ZXZpY2UoYnVmLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBidWYtPmRtYV9kaXIpOwo+ICAg
ICAgICAgcmV0dXJuIDA7CgpPdmVyYWxsIHRoZSBzYW1lIGNvbW1lbnRzIGhlcmUgYXMgZm9yCnZi
Ml9kY19kbWFidWZfb3BzX2JlZ2luX2NwdV9hY2Nlc3MoKSArLy0gZmx1c2ggd291bGQgY2hhbmdl
IHRvCmludmFsaWRhdGUuCgpCZXN0IHJlZ2FyZHMsClRvbWFzegoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
