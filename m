Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2605C28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 14:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNgdChk/TdUpTdAxl3rCuGnngOSx+UE4L7d5ESp6F7E=; b=Zm6q6bQTxOuMKh
	T50Lwg4IerXgF3C/rEqBxWs9ERF1sgU9xaBWyk9vaM1+mVQ3ilAky1ICbdjU/Vt1PHOYU0HDu0nVM
	wGqqD8Bgp9Tbxs5gJYDpelUzC2UP5+NzRYxqOp50/cTWLD+o3xjpy/ViBjqyaPTM1N0TnXunmRPu5
	zGkG44bZ63VfIesoXoWUdGXL6evjz/GNUNcYpRZMOCeEx1l64EIXmSO7977Ugv7Q1jjol/dGH8pgy
	USyDb1IK0frhl/IgY28H8K2OdqdYPjmnUvFlqivxJ8O/k5GRgkOZEiU+jb2vC60Cs6uuWYWnEnIg3
	GLcrOu+c64fiNXtzj0rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsN0U-00000008gbN-1S3V;
	Wed, 12 Mar 2025 14:24:26 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsMza-00000008gQp-3FhJ;
	Wed, 12 Mar 2025 14:23:31 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5e677f59438so6445600a12.2;
        Wed, 12 Mar 2025 07:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741789409; x=1742394209; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mEek4i2ZCkx6tmbDOfSqfNqakadAzuvY5GsHOU0PtgM=;
        b=FUdHO/gARKtrSSJCWFIn5RH8B//Gvkmme6NxRnQmTglEwtIB4FUFGbEyPYS9FA3wrD
         aZLDheJRSwOt/uBWOEMG+VLSeC0quXd2375hNvUJsfmGAYXUATJdytQClSwEnVRHGRRf
         Aox4sS5BESm52rCgR3soqQ5xp+WAdSB3i5GblqklGhfmrXb8ElrgUm3Mdz3TjsSbrX16
         DYhwt7Z+IREyc9WtQNozeP1XL1DbrbcLyJeK/HrOTubsBhEq6OWD6I6N80QK/maCSeCo
         UOsPz2x1fEcfpAnSCwMn8RqwITD7NPwCrOBqD5lk5w+Hhdx6LxqPFn1hLAQJFujvQNV3
         aLgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741789409; x=1742394209;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mEek4i2ZCkx6tmbDOfSqfNqakadAzuvY5GsHOU0PtgM=;
        b=hvcyqLBATH3kTS+Jf9pzb5r3JlCxAfAymjUaw9WlX06XWmIJxe3ShiWHpWNPtWBbnR
         qWx0SHaIjzjnJXrB6WFHutOB7VImouahTGIp94EsDy927lPuEETbn55Gfu6WDeurNerT
         XiDLtBjuARBdcvG46SgfqoUQVc4LfmQyBpGR1NJGUM4X6V5gtneIU2WCVr+y0c0aNIQO
         6d1VysdCnY/0+2VM1R2ZddwwHjU/BWyjj5gf5G9uiCT5FSc3kRkoTxK39HYWieV0Aca9
         b1YAhdFveJrgvVOg2e5nIEraqVs3hVSr+sydsPes7s6JQbbwWYFxhE0hd+PkWd6v20N6
         mNjA==
X-Forwarded-Encrypted: i=1; AJvYcCWPFmM+yBKmoIrRzBvaxNqLkW81omwqiLqN67fcwObibSRbTPdDel5UwZ6ryDkV7mYZ+gZKejzZeo5uEyD0bxPr@lists.infradead.org, AJvYcCXgBmp/24K5JKFj8RsNn8/vL1Mb9IZLYqpsKHbnGVuECbnNe0MnhZd/onX+0YI3vGBMz3jhtwpC23KmoHkkZQQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAzDMjTzR+PIjGJpjp2ww6Xh6ruduTfJV1AreX1mRvPVL8TUne
	WCORZ67W54wswKqZMxtvzZE1CmgMro3vXjwa6/+ctcD6cXnTzDS/
X-Gm-Gg: ASbGncvx80ngUlMHAnMInD+HqMX5USevNoMAmx4ei1BkQVi71xnH1vSyz7m5GUfW3YS
	N/cYJQJzwWdw23b3CL4cwMJ7ddjH0R+lLScJKLBP0rA808XNopfcmie8BbO0RnGUavJEP0WtsKg
	EckgMoAZctWJUqzruOLbb0OQqAW//u7wjXe+DBWI9N/kcttbWLUK9QNr0tX8H+Sxu0mCu3jHFdC
	N9hG0jWxXUMHD3YOtiSqfK4chUfguvf9FMM3NOqHIvBFFQ50nr+2NEC6CA+eojGwSXZVAu9BSnx
	70I57Xa2OfDDLpN62fTQ06l9Uvl/bY3+vWm5RQmsF1ZRMPgsi7lKXqRhhNvJWRc/bC9IPrzYzba
	9XmWmrNNmoYQZy81meGyEj9BJHA==
X-Google-Smtp-Source: AGHT+IFdFvbIc6D4mXkiIL9CFWFvWjoXqM1m/Hjn3uEOvZC5n66LBMKABPlNlB63rI+HegTYSS5ruQ==
X-Received: by 2002:a17:907:d9e:b0:abf:6cc9:7ef5 with SMTP id a640c23a62f3a-ac25300a440mr2449963266b.47.1741789408746;
        Wed, 12 Mar 2025 07:23:28 -0700 (PDT)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2394825efsm1073903966b.45.2025.03.12.07.23.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Mar 2025 07:23:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH v2 2/7] drm/bridge: synopsys: Add DW DPTX Controller
 support library
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20250312104214.525242-3-andyshrk@163.com>
Date: Wed, 12 Mar 2025 15:23:15 +0100
Cc: heiko@sntech.de,
 neil.armstrong@linaro.org,
 sebastian.reichel@collabora.com,
 lumag@kernel.org,
 devicetree@vger.kernel.org,
 hjc@rock-chips.com,
 mripard@kernel.org,
 linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 yubing.zhang@rock-chips.com,
 dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>,
 krzk+dt@kernel.org,
 robh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Message-Id: <61E9B36C-8568-4C0E-A9A7-07FF612912AA@gmail.com>
References: <20250312104214.525242-1-andyshrk@163.com>
 <20250312104214.525242-3-andyshrk@163.com>
To: Andy Yan <andyshrk@163.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_072330_818128_EE162812 
X-CRM114-Status: GOOD (  15.20  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29t
PiB3IGRuaXUgMTIgbWFyIDIwMjUsIG8gZ29kei4gMTE6NDI6Cj4gCj4gRnJvbTogQW5keSBZYW4g
PGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+IAo+IFRoZSBEVyBEUCBUWCBDb250cm9sbGVyIGlz
IGNvbXBsaWFudCB3aXRoIHRoZSBEaXNwbGF5UG9ydCBTcGVjaWZpY2F0aW9uCj4gVmVyc2lvbiAx
LjQgd2l0aCB0aGUgZm9sbG93aW5nIGZlYXR1cmVzOgo+IAo+ICogRGlzcGxheVBvcnQgMS40YQo+
ICogTWFpbiBMaW5rOiAxLzIvNCBsYW5lcwo+ICogTWFpbiBMaW5rIFN1cHBvcnQgMS42MkdicHMs
IDIuN0dicHMsIDUuNEdicHMgYW5kIDguMUdicHMKPiAqIEFVWCBjaGFubmVsIDFNYnBzCj4gKiBT
aW5nbGUgU3RyZWFtIFRyYW5zcG9ydChTU1QpCj4gKiBNdWx0aXN0cmVhbSBUcmFuc3BvcnQgKE1T
VCkKPiAqIFR5cGUtQyBzdXBwb3J0IChhbHRlcm5hdGUgbW9kZSkKPiAqIEhEQ1AgMi4yLCBIRENQ
IDEuMwo+ICogU3VwcG9ydHMgdXAgdG8gOC8xMCBiaXRzIHBlciBjb2xvciBjb21wb25lbnQKPiAq
IFN1cHBvcnRzIFJCRywgWUNiQ3I0OjQ6NCwgWUNiQ3I0OjI6MiwgWUNiQ3I0OjI6MAo+ICogUGl4
ZWwgY2xvY2sgdXAgdG8gNTk0TUh6Cj4gKiBJMlMsIFNQRElGIGF1ZGlvIGludGVyZmFjZQo+IAo+
IEFkZCBsaWJyYXJ5IHdpdGggY29tbW9uIGhlbHBlcnMgdG8gbWFrZSBpdCBjYW4gYmUgc2hhcmVk
IHdpdGgKPiBvdGhlciBTb0MuCj4gCj4gU2lnbmVkLW9mZi1ieTogQW5keSBZYW4gPGFuZHkueWFu
QHJvY2stY2hpcHMuY29tPgo+IAo+IC0tLQo+IAo+IENoYW5nZXMgaW4gdjI6Cj4gLSBGaXggY29t
cGlsZSBlcnJvciB3aGVuIGJ1aWxkIGFzIG1vZHVsZQo+IC0gQWRkIHBoeSBpbml0Cj4gLSBPbmx5
IHVzZSBvbmUgZHdfZHBfbGlua190cmFpbl9zZXQKPiAtIGlubGluZSBkd19kcF9waHlfdXBkYXRl
X3ZzX2VtcGgKPiAtIFVzZSBkcF9zZHAKPiAtIENoZWNrIHJldHVybiB2YWx1ZSBvZiBkcm1fbW9k
ZXNldF9sb2NrCj4gLSBNZXJnZSBjb2RlIGluIGF0b21pY19wcmVfZW5hYmxlL21vZGVfZml4dXAg
dG8gYXRvbWljX2NoZWNrCj4gLSBSZXR1cm4gTlVMTCBpZiBjYW4ndCBmaW5kIGEgc3VwcG9ydGVk
IG91dHB1dCBmb3JtYXQKPiAtIEZpeCBtYXhfbGlua19yYXRlIGZyb20gcGxhdF9kYXRhCj4gCgpB
bmR5LAoKSnVzdCBzbWFsbCBROiBkbyB2MiBuZWVkcyBzb21ldGhpbmcgZXh0cmEgdG8gZ2V0IGl0
IHdvcmtpbmcgKHBhcnRpY3VsYXIga2VybmVsIHZlciBvciBleHRyYSBkZXBlbmRlbmN5IHBhdGNo
ZXMpPwpJIGp1c3QgcmVwbGFjZWQgdjEgdG8gdjIgYW5kIGRwIHN0b3BwZWQgdG8gd29yayBmb3Ig
bWUuCgplLmcuIG9uIHJvY2s1YSBp4oCZbSBnZXR0aW5nOgoKcm9vdEBteXRoLWZyb250ZW5kLWZh
ZmM1M2I1OTFhNjp+ICMgZG1lc2cgfCBncmVwIGRybQpbICAgIDkuMjQ1Mjg0XSBwYW50aG9yIGZi
MDAwMDAwLmdwdTogW2RybV0gY2xvY2sgcmF0ZSA9IDE5ODAwMDAwMApbICAgIDkuMjQ5NDY0XSBw
YW50aG9yIGZiMDAwMDAwLmdwdTogW2RybV0gbWFsaS1nNjEwIGlkIDB4YTg2NyBtYWpvciAweDAg
bWlub3IgMHgwIHN0YXR1cyAweDUKWyAgICA5LjI0OTQ3Ml0gcGFudGhvciBmYjAwMDAwMC5ncHU6
IFtkcm1dIEZlYXR1cmVzOiBMMjoweDcxMjAzMDYgVGlsZXI6MHg4MDkgTWVtOjB4MzAxIE1NVTow
eDI4MzAgQVM6MHhmZgpbICAgIDkuMjQ5NDc0XSBwYW50aG9yIGZiMDAwMDAwLmdwdTogW2RybV0g
c2hhZGVyX3ByZXNlbnQ9MHg1MDAwNSBsMl9wcmVzZW50PTB4MSB0aWxlcl9wcmVzZW50PTB4MQpb
ICAgIDkuMjU3OTc5XSBwYW50aG9yIGZiMDAwMDAwLmdwdTogW2RybV0gRmlybXdhcmUgcHJvdGVj
dGVkIG1vZGUgZW50cnkgbm90IGJlIHN1cHBvcnRlZCwgaWdub3JpbmcKWyAgICA5LjI1ODAzMF0g
cGFudGhvciBmYjAwMDAwMC5ncHU6IFtkcm1dIEZpcm13YXJlIGdpdCBzaGE6IDgxNGI0N2I1NTEx
NTkwNjdiNjdhMzdjNGU5YWRkYTQ1OGFkOWQ4NTIKWyAgICA5LjI1ODYwNF0gcGFudGhvciBmYjAw
MDAwMC5ncHU6IFtkcm1dIENTRiBGVyB1c2luZyBpbnRlcmZhY2UgdjEuMS4wLCBGZWF0dXJlcyAw
eDAgSW5zdHJ1bWVudGF0aW9uIGZlYXR1cmVzIDB4NzEKWyAgICA5LjI1OTY3MV0gW2RybV0gSW5p
dGlhbGl6ZWQgcGFudGhvciAxLjMuMCBmb3IgZmIwMDAwMDAuZ3B1IG9uIG1pbm9yIDAKWyAgICA5
LjMyNDM1M10gcm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBib3VuZCBmZGQ5MDAwMC52
b3AgKG9wcyB2b3AyX2NvbXBvbmVudF9vcHMpClsgICAgOS4zMjQ2MTddIHJvY2tjaGlwLWRybSBk
aXNwbGF5LXN1YnN5c3RlbTogYm91bmQgZmRlNTAwMDAuZHAgKG9wcyBkd19kcF9yb2NrY2hpcF9j
b21wb25lbnRfb3BzKQpbICAgIDkuMzI1MjAyXSByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0
ZW06IGJvdW5kIGZkZTgwMDAwLmhkbWkgKG9wcyBkd19oZG1pX3FwX3JvY2tjaGlwX29wcykKWyAg
ICA5LjMyNTUwNl0gW2RybV0gSW5pdGlhbGl6ZWQgcm9ja2NoaXAgMS4wLjAgZm9yIGRpc3BsYXkt
c3Vic3lzdGVtIG9uIG1pbm9yIDEKWyAgICA5LjMyNTUzMV0gcm9ja2NoaXAtZHJtIGRpc3BsYXkt
c3Vic3lzdGVtOiBbZHJtXSBDYW5ub3QgZmluZCBhbnkgY3J0YyBvciBzaXplcwpbICAgIDkuMzI1
NTk0XSByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IFtkcm1dIENhbm5vdCBmaW5kIGFu
eSBjcnRjIG9yIHNpemVzICAKCmRwIHN0YXR1cyBpcyAibm90IGNvbm5lY3RlZCIKCnJlcGxhY2lu
ZyBvbmx5IHRoaXMgcGF0Y2ggYmFjayB0byB2MSBicmluZ3MgZHAgYmFjayB0byB3b3JrLgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
