Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98DE1CA0EC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 07:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ThB0fOjPtbwmLMyGp66dea50imA+n76aHacCDygn0lA=; b=d2ao0qD1Koj2lT
	iEqjDIqD67mZcVuRyAJb/9FM/A3otpzigewqEy7PhNlqHh3biNIM7yIoMYdHZVquf67sXK5nfkWrr
	Dr6LrN9AoKBCi4n/yzuGXP1YgqQHW0QVNP58jMUAB7ghIKalCOwmjLMlRoJSVmmn1qPauTII7ZZrA
	TyAra/MoaRaaBESke7cbTb1/mimKXH0ENOUWcTW2WoRfRrSTtT4TxmOb06lRbK5/wNAraLh3wTpmA
	kk2p7eYCxl+gQQzWbvRAP1Gs3PfeDPuBJ/ZlsluK3kagX+KzPZBk4h8QCtOd4UDt9B6bfRjcNi8VR
	1NBafkFVAtIDCbywT5wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uljLM-0000000A6aF-2DPw;
	Tue, 12 Aug 2025 07:22:48 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uljJh-0000000A6T8-3ZGP;
	Tue, 12 Aug 2025 07:21:07 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-af66f444488so730266066b.0;
        Tue, 12 Aug 2025 00:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754983264; x=1755588064; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KdvN3hos4ZfIVGUNdDwdDNs5CgvOMtRQ9WBj592DhBk=;
        b=Bm4Tcx710M5MQX6aj9G1z6UzRftUkQDhB73JvsIiLSq1PUO4EjQry4hYUQaedxjgTS
         BwF7jPD2Jmb20heQHRFcJKwSEQMCH7gGa6UxWQRggK+ejCbmxTYhVUDB/zQ6RQAB8/qr
         cfjWJZIYXC8KRSqw7KIy8d2EmK9CgRa9DelhJhXj9NBf/K40N3xYBswmol9JFYlPtNH1
         8Z33zZoMCtmc8tYrGoKImSz1MtEgLyZU4HICIdtvYvOU7rox+8z471kyQN2TKxQhHDax
         UW2HyxwaqBMJ8ShupMNGo+mX7sYZN1ELGxz1GEbGqONrFkWA1K+dK51hOrv2RWEPyuw2
         iOXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754983264; x=1755588064;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KdvN3hos4ZfIVGUNdDwdDNs5CgvOMtRQ9WBj592DhBk=;
        b=KDk1+GRI9f9L+udZALvn40XYjOzsKlXpnk8KFKakbkTDXgjxa7RyrmKw1l06w/fN8Y
         sRK/GNsDPjzfR2DjTjqGdZ9vCQYkuZGiQfa/K2NmXJfaaGM566zIhZEsa+B8lOxY8FGQ
         Bs1FDm83dyqJ8zuVq+l8Ph5hXP0b7rTQMkgWhrU5js2Yumk0r/uUG2an2n3oqkxyqYJx
         54PXPARVLAlhCz2IjS5rVt0yKRJWF8b2tZ/Y9/SdNYEKY5LsQX3TbP/nbMkYCMmnY6T1
         VUy+Uiy1IcEg/P3KrXpB3Obzq3Mvvc+NnUb9V8Oq7LMtzCIsLfnyWsyHJVidPXaKxDCN
         fRRw==
X-Forwarded-Encrypted: i=1; AJvYcCVqMsS/zIxSfw3/f9onuSZXdb6pKo3VSGUDuVwq4Dj4Ira1sHOvMPZAQHua7GVtKfJM89k8jjQy0VFhLkWVnKA=@lists.infradead.org, AJvYcCWQsscErIWDFKlaxbENyjII6dLfBq9rmuAe55h73dgITC0yjU+cyLByEwg3n3JHCcMsg09noq4fwFdHYIrAMgo2@lists.infradead.org
X-Gm-Message-State: AOJu0YwpqWsLeSBNoDIVE5VIni/aZuA+QbvuYAeIavHj4XyjqZecNFmn
	zGaFE0HuNDiM3ETgckLcW2OfKQVs9uN5W4Nfy/ZTzoOy2NwuV3sV9nOd
X-Gm-Gg: ASbGnctL+/FAKfRqq7XsaIWCSqCiZtWpgO67bBsmVpI8zN6DCfiiMeQ5MfVizVaSmwT
	tUT5cTdmZEHnkWhmkJiGfA63TermzVxAehEFUdDd3AaFijEBo8aKVTYH5bBbzIKYvEF7AAMrSyA
	4zdQpsfJzeGxPbNk+2yNLjpudi0kpOIlhh9JuXxO98uWZTXyIK0OEaT0ZqiJh6HmQg6sybxCKlW
	6xAvFYE5HfCZ9RLrxR9NRhk2iwwKU0TV3aWCnEuFdNP4KWhAaLZXOn7gHv0WRMY+WJm3RRxAQy5
	AyuLKFb7J7RzVr7/Yi8iYdKo6frc0n+QAA44EsAA9OAr98UaUAKJiDvfATVHNY4t5xHh4P5DQrE
	haAtKwDfeyXJYioIU2TsJjpUJwHi8PDWafMX7Hf4180+S0shYI1+sqnasZL6FcRQxO7NGHrSW7d
	OAOXu9vT1hbgo=
X-Google-Smtp-Source: AGHT+IEEEuwo1oGl7QN9YdJIWFLJDjjJKJXuGCx345I6XSM6Vd9H1McXJijKZIxcZ5MMMWp2gsEhrQ==
X-Received: by 2002:a17:907:787:b0:af9:2e2a:64a8 with SMTP id a640c23a62f3a-af9c6403ac8mr1625756866b.25.1754983263453;
        Tue, 12 Aug 2025 00:21:03 -0700 (PDT)
Received: from smtpclient.apple (89-66-237-154.dynamic.play.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21c081sm2131936566b.97.2025.08.12.00.21.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Aug 2025 00:21:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: Re: [PATCH v2 00/12] media: rkvdec: Add support for VDPU381 and
 VDPU383
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20250808200340.156393-1-detlev.casanova@collabora.com>
Date: Tue, 12 Aug 2025 09:20:51 +0200
Cc: linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
Message-Id: <3786B8EA-9796-40A9-8EEF-16CFAEE27766@gmail.com>
References: <20250808200340.156393-1-detlev.casanova@collabora.com>
To: Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: Apple Mail (2.3826.700.81)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_002105_890524_C7347EAE 
X-CRM114-Status: GOOD (  21.83  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNh
c2Fub3ZhQGNvbGxhYm9yYS5jb20+IHcgZG5pdSA4IHNpZSAyMDI1LCBvIGdvZHouIDIyOjAzOgo+
IAo+IFRoZXNlIHZhcmlhbnRzIGFyZSBmb3VuZCByZXNwZWN0aXZlbHkgaW4gdGhlIFJLMzU4OCBh
bmQgUkszNTc2IFNvQ3MuCj4gVGhpcyBwYXRjaCBvbmx5IGFkZHMgc3VwcG9ydCBmb3IgSDI2NCBh
bmQgSDI2NSBpbiBib3RoIHZhcmlhbnRzLgo+IAo+IEFzIHRoZXJlIGlzIGEgY29uc2lkZXJhYmxl
IHBhcnQgb2YgdGhlIGNvZGUgdGhhdCBjYW4gYmUgc2hhcmVkIHdpdGggdGhlCj4gYWxyZWFkeSBz
dXBwb3J0ZWQgcmt2ZGVjIGRlY29kZXIgZHJpdmVyLCB0aGUgc3VwcG9ydCBmb3IgdGhlc2UgdmFy
aWFudHMKPiBpcyBhZGRlZCBoZXJlIHJhdGhlciB0aGFuIHdyaXRpbmcgYSBuZXcgZHJpdmVyLgo+
IAo+IFRoaXMgcGF0Y2ggc2V0IHVzZXMgdGhlIG5ld2x5IGludHJvZHVjZWQgaGV2Y19leHRfc3Bz
X1tsc110X3JwcyB2NGwyCj4gY29udHJvbHMgZm9yIEhFVkMgWzFdLgo+IFRoZXJlZm9yZSwgYSBw
YXRjaGVkIHZlcnNpb24gb2YgdXNlcnBhY2UgdG9vbHMgaXMgbmVlZGVkIGZvciBIRVZDCj4gc3Vw
cG9ydCAoYWRkZWQgZm9yIEdTdHJlYW1lclsyXSBhbmQgaW4gYW4gZWFybHkgc3RhZ2UgZm9yIEZG
bXBlZ1szXSkuCj4gCj4gVGhpcyBwYXRjaCBzZXQgYWxzbyBkZXBlbmRzIG9uIHRoZSBwcmVwYXJh
dGlvbiBwYXRjaCBzZXQgc2VudCBlYXJsaWVyIFs0XQo+IGFzIHdlbGwgYXMgdGhlIGlvbW11IHJl
c3RvcmUgZml4IFs1XSAoYWxyZWFkeSBtZXJnZWQgaW4gbGludXgtbWVkaWEpIGFuZAo+IE5pY29s
YXMgRnJhdHRhcm9saSdzIGJpdG1hcCBwYXRjaCBbNl0gdG8gc3VwcG9ydCBzZXR0aW5nIHJlZ2lz
dGVycyB0aGF0Cj4gdXNlcyB1cHBlciAxNiBiaXRzIGFzIG1hc2tzLgo+IAo+IFsxXTogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwODA3MTk0MzI3LjY5OTAwLTEtZGV0bGV2LmNhc2Fu
b3ZhQGNvbGxhYm9yYS5jb20vCj4gWzJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
Z3N0cmVhbWVyL2dzdHJlYW1lci8tL21lcmdlX3JlcXVlc3RzLzkzNTUKPiBbM106IGh0dHBzOi8v
Z2l0bGFiLmNvbGxhYm9yYS5jb20vZGV0bGV2L2ZmbXBlZwo+IFs0XTogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsLzIwMjUwNjIzMTYwNzIyLjU1OTM4LTEtZGV0bGV2LmNhc2Fub3ZhQGNvbGxh
Ym9yYS5jb20vCj4gWzVdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA1MDgtcmt2
ZGVjLWlvbW11LXJlc2V0LXYxLTEtYzQ2YjZlZmE2ZTliQGNvbGxhYm9yYS5jb20vCj4gWzZdOiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA2MjMtYnlld29yZC11cGRhdGUtdjItMS1j
ZjFmYzA4YTJlMWZAY29sbGFib3JhLmNvbS8KPiAKPiBDaGFuZ2VzIHNpbmNlIHYxOgo+IC0gQWRk
IHBhcnNpbmcgb2YgdGhlIHNob3J0IGFuZCBsb25nIHRlcm0gcmVmIGZyYW1lIHNldHMgZnJvbSB0
aGUgbmV3IHY0bDIKPiAgIGNvbnRyb2xzCj4gLSBBZGQgUlBTIGNhY2hlIHRvIGF2b2lkIHBhcnNp
bmcgdGhlIHNhbWUgZGF0YSBhZ2Fpbgo+IC0gRml4IEhFVkMgcGl4ZWwgZm9ybWF0cyBzZWxlY3Rp
b24KPiAtIEZpeCBtdWx0aXBsZSBpbmRlbnRhdGlvbiBlcnJvcnMKPiAKPiBEZXRsZXYgQ2FzYW5v
dmEgKDEyKToKPiAgbWVkaWE6IHJrdmRlYzogU3dpdGNoIHRvIHVzaW5nIHN0cnVjdHMgaW5zdGVh
ZCBvZiB3cml0ZWwKPiAgbWVkaWE6IHJrdmRlYzogTW92ZSBjYWJhYyB0YWJsZSB0byBpdHMgb3du
IHNvdXJjZSBmaWxlCj4gIG1lZGlhOiBya3ZkZWM6IFVzZSBzdHJ1Y3RzIHRvIHJlcHJlc2VudCB0
aGUgSFcgUlBTCj4gIG1lZGlhOiBya3ZkZWM6IE1vdmUgaDI2NCBmdW5jdGlvbnMgdG8gY29tbW9u
IGZpbGUKPiAgbWVkaWE6IHJrdmRlYzogQWRkIHBlciB2YXJpYW50IGNvbmZpZ3VyYXRpb24KPiAg
bWVkaWE6IHJrdmRlYzogQWRkIFJDQiBhbmQgU1JBTSBzdXBwb3J0Cj4gIG1lZGlhOiBya3ZkZWM6
IFN1cHBvcnQgcGVyLXZhcmlhbnQgaW50ZXJydXB0IGhhbmRsZXIKPiAgbWVkaWE6IHJrdmRlYzog
RW5hYmxlIGFsbCBjbG9ja3Mgd2l0aG91dCBuYW1pbmcgdGhlbQo+ICBtZWRpYTogcmt2ZGVjOiBB
ZGQgSDI2NCBzdXBwb3J0IGZvciB0aGUgVkRQVTM4MSB2YXJpYW50Cj4gIG1lZGlhOiBya3ZkZWM6
IEFkZCBIMjY0IHN1cHBvcnQgZm9yIHRoZSBWRFBVMzgzIHZhcmlhbnQKPiAgbWVkaWE6IHJrdmRl
YzogQWRkIEhFVkMgc3VwcG9ydCBmb3IgdGhlIFZEUFUzODEgdmFyaWFudAo+ICBtZWRpYTogcmt2
ZGVjOiBBZGQgSEVWQyBzdXBwb3J0IGZvciB0aGUgVkRQVTM4MyB2YXJpYW50Cj4gCj4gLi4KCkRl
dGxldiwKCkkgZ2l2ZSBydW4gZm9yIHRoaXMgc2VyaWVzIG9uIHJrMzU3NiBhbmQgcmszNTg4IGRl
dmljZXMgKHZhcmlvdXMgU0JDIGJvYXJkcykgb24gbWFpbmxpbmUgNi4xNiBrZXJuZWwuClVzZXJz
cGFjZSB3YXM6IEtPREksIE15dGhUViBhbmQgbXB2LgpBbGwgYXJlIHVzaW5nIGZmbXBlZyAtIGJ1
dCB3aXRob3V0IFszXSBhcHBsaWVkKi4KVGVzdGVkIHZpZGVvIHJlbmRlcmluZyBwaXBlbGluZXMg
d2FzOiBFR0wgREFNQnVmIGFuZCBEUk0gZGlyZWN0IHRvIHBsYW5lCgpIYXBweSB0byByZXBvcnQ6
Ci1hbGwgaDI2NCBjb250ZW50KiogaSB0ZXN0ZWQgd2FzIGRlY29kZWQgb2suCi1vbiBzb21lIHJr
MzU3NiBoMjY0IHJlbmRlcmluZyBtYW5pZmVzdCBrbm93biAiZ3JlZW4gbGluZXMiIGlzc3VlKioq
ICAKLWhldmMgY29udGVudCoqKiogd2FzIGFsc28gZGVjb2RlZCBvayBleGNlcHQgc2FtcGxlcyBy
ZXF1aXJpbmcgbG9uZyBzcHMvcnBzIGhpbnRpbmcgZnJvbSB1c2Vyc3BhY2UgKGZyb20gZmZtcGVn
IGluIG15IGNhc2UpCgoKKiAtIGl0IGxvb2tzICh0byBtZSkgeW91cidzIGZmbXBlZyBicmFuY2gg
Y2hhbmdlcyBhcmUgaW5jb21wYXRpYmxlIHdpdGggeW91cnMgcmt2ZGVjIGNvZGUgKGkuZS4gZmZt
cGVnIHJlZmVycyB0byBWNEwyX0hFVkNfRVhUX1NQU19SUFNfRkxBR19JTlRFUl9SRUZfUElDX1NF
VF9QUkVEIGJ1dCBrZXJuZWwgdjIgZHJpdmVyIGRvbid0IGhhdmUgaXQpCgoqKiAgLSBpJ20gcmVm
ZXJyaW5nIHRvIG11bHRpcGxlIGguMjY0IG1vdmllcyBhbmQgVFYgSEQgY2hhbm5lbHMKCioqKiAt
IGlzc3VlIG9mIHRoaW4gZ3JlZW4gbGluZXMgd2UgZGlzY3Vzc2VkIG9uIHJvY2tjaGlwIElSQyBj
aGFubmVsCgoqKioqIC0gYXMgbXkgZmZtcGVnNy4xIGhhcyBub3QgYXBwbGllZCBuZXdseSBpbnRy
b2R1Y2VkIGhldmNfZXh0X3Nwc19bbHNddF9ycHMgdjRsMgpjb250cm9scyBmb3IgSEVWQyAoZHVl
ICopIC0gc29tZSBjb250ZW50IGlzIG5vdCBkZWNvZGVkIHByb3Blcmx5LgoKSWYgYW55IGV4dHJh
IHRlc3RzIGNhbiBiZSBoZWxwZnVsIC0gaScnIGJlIG1vcmUgdGhhdCBoYXBweSB0byBkbyBzbyEK
CmJyIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
