Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11E24E77184
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 17:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EnKo8yrlCALSLDigDp/Nm2ui/qaXysk/1pWoeHsxuOI=; b=KlYZjRVdyije0d
	3vYwKKW9JAwf4iVBLjyw7YoLF+C8MSnVgwMp0fB8h10OW+dIqt4K+QngJQkjDov/5ghHBG2zBlwDy
	0PlhQSUtTawPQ9bvOvcvCjAt6F9UdAH0z/7KBth201BlKYTcsnmr3HnS+tj5Eup5+LWDDWJPfs81G
	S3wFJkRs45xn1ftrb5mC/Zqkk6w1i53bwDjlztlVgGZgi5W2AATNEH8zLmlkqwhbKGKKw/j0/2GBG
	99nG91bIjR8l2bNlSg2LxmlAQhdUqAwpCR3cZR0NSnpczRzeNjf9w8Lzs0dEk0Szk+Gl5gX4Niz/6
	UKLzX2vrr7yYLU26+q8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLmgf-000000017A0-0v7g;
	Thu, 12 Dec 2024 17:09:17 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLlm9-00000000uA2-3UxU;
	Thu, 12 Dec 2024 16:10:54 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-3003c82c95cso5699571fa.3;
        Thu, 12 Dec 2024 08:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734019849; x=1734624649; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cYUSJr9oHr+FftcJrfxtweePljXVaDj/rdTt+vSgojY=;
        b=HwyfaB9ATD+uPA9Kw5/HI2OZ8FnO1J+3syItpO/jJCDV9Lie7qNTwymafuomysa6Re
         B9f0zgKhHr5osTbD9oslXThN53Jz9zKnf+8+tJjD84DxCzgdi0lQdpdRgwW+ldoGqKdQ
         BV+XD67rz9t2rTWCUhuq60zfm02u4scdSNxm6g9MmXslNSm1b4CoJ6V0KrcZ9ysOrU8L
         XRbx//bQJGAO7kyri7/5dRB/z0/j/fYjxi4hgwu0uk00eo/kICfCBvEXQmvR29E3D7LK
         KPsMyVO1bV/Tmni2k6Ugr5h5Rf/9e2jYY2dXjxfPluEZxYC3VFwmu09MsS0FQ9pBO+o6
         Gnfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734019849; x=1734624649;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cYUSJr9oHr+FftcJrfxtweePljXVaDj/rdTt+vSgojY=;
        b=SDKaKHIrLhCNV7h6wKbn3Vb3AFXDynVtMCv2mLEBpQvvnNG1UVvqBYcZ9GGjxQsaOQ
         hmzztTZo6FJ73ap361RZUW8Rgq+q+UTLax3QbBpuzk15U4U6H3pVO9NSpvwH/wu8h6OY
         fEfkqJW7C+duDAHduA+crdIyujBWJPQn/ejRdl7vVX0++W5/+0gAWa/fUakjdRA4nDps
         F1p73mTT/Iu0d3pEqiCefeNki1WxzrwKPb9e7Rg1xK2PBafw+w8ycg68WA+E/7N4gOWm
         A/oYhCFXd7fGXwch1PphVLULuQGJj1ddorWyuSBiy9enNdCeHdgkCNoE1jHtWJNf+89f
         I1mQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0FhZCxXTBvryLQ5o6ulDuR4VesIyYxL9zBqdJHGIRjcIKqtRzLYiy7MAUDyUtnvMb9BuFUJCwJXm+4fR/M3g=@lists.infradead.org, AJvYcCXP0nYvCHMevq75wde/zeCAn7bAH6dQJu9hTg/Ec64OVGtMuSTPwm84g/yJPClEyAyMMYvd/xEl/ly60uxlB9r3@lists.infradead.org
X-Gm-Message-State: AOJu0Ywro0ZSKm2ydyVBKi1kF0fXYsjKUs1/5LoCvyz0y1Vs0CnPXkXn
	fr1gnwH8wmJAnvorRFV1HPu700VijJjOcb3pETyEIOmZuXTost6pa/w5j/QJVIZxFNoiN75x5jk
	Mod+ncsjBf11dw+y1DpbDgLUJgCM=
X-Gm-Gg: ASbGnctONCBX6MAib6ZZu2lN7fWbUKDP2urN3AguMnhach07lY+HDogUo0siHZ45xdi
	wYCSndNpJk9LkytLyM9E+JufDJEcl/zPAI2j4UVy3Kx/IAc0uO6Z5jIaM88TdATlz+u8Fqw==
X-Google-Smtp-Source: AGHT+IEfxOaxJF02cqCb3o+35QthKCmm4+8U0/gTtwd0T+FvVSHeVgyOje6efKWJI1tAN9KX489WrZ5iZFjUW8eIxGo=
X-Received: by 2002:a05:651c:2226:b0:300:39eb:1aae with SMTP id
 38308e7fff4ca-30251e30b03mr3100551fa.24.1734019849270; Thu, 12 Dec 2024
 08:10:49 -0800 (PST)
MIME-Version: 1.0
References: <01020193bb8a24ad-99eafebb-3b0b-40c0-9b28-3a0dbc84327a-000000@eu-west-1.amazonses.com>
In-Reply-To: <01020193bb8a24ad-99eafebb-3b0b-40c0-9b28-3a0dbc84327a-000000@eu-west-1.amazonses.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 12 Dec 2024 13:10:38 -0300
Message-ID: <CAOMZO5DgW3YrpMJPCTzQ-LZCopB4tNPoJhyFQrr6RBvbnBu4VA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] media: verisilicon: fix reference padding issue
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_081053_891925_407D9387 
X-CRM114-Status: GOOD (  11.78  )
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

T24gVGh1LCBEZWMgMTIsIDIwMjQgYXQgMTI6NDPigK9QTSBCZW5qYW1pbiBHYWlnbmFyZAo8YmVu
amFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBIYW50cm8gaGFyZHdhcmUg
aXMgc3BsaXRlZCBpbnRvIHR3byBwYXJ0czogdGhlIGRlY29kZXIgd2hpY2ggcHJvZHVjZQo+IHRp
bGVkIHBpeGVscyBmb3JtYXRzIGFuZCB0aGUgcG9zdC1wcm9jZXNzb3Igd2hpY2ggcHJvZHVjZSBy
YXN0ZXIgcGl4ZWxzCj4gZm9ybWF0cy4KPiBXaGVuIHBvc3QtcHJvY2Vzc29yIGlzIHVzZWQgdGhl
IHNlbGVjdGVkIHBpeGVscyBmb3JtYXQgbWF5IG5vdCBoYXZlIHRoZQo+IHNvbWUgcGFkZGluZy9z
dHJpZGUgdGhhbiB0aGUgZGVjb2RlciBvdXRwdXQgcGl4ZWxzIGZvcm1hdC4gVGhpcyBsZWQgdG8K
PiBtaXNjb21wdXRpbmcgY2hyb21hIGFuZCBtb3Rpb24gdmVjdG9ycyBvZmZzZXRzIHNvIGRhdGEg
YXJlIG92ZXJsYXBwaW5nLgo+IFRoaXMgc2VyaWVzIGludHJvZHVjZSBhIHJlZmVyZW5jZSBwaXhl
bHMgZm9ybWF0IHRoYXQgZGVjb2RlciB1c2UgdG8KPiBjb21wdXRlIHRoZSB2YXJpb3VzIG5lZWRl
ZCBvZmZzZXRzIGFuZCBzaXplLgo+Cj4gV2l0aCB0aGlzIHNlcmllcyBGbHVzdGVyIGZvciBWUDkg
dGVzdHMgaXMgbm93IDIwNy8zMDUgdnMgMTQ1LzMwNS4KPiBIRVZDIHRlc3Qgc2NvcmUgaXNuJ3Qg
aW1wYWN0ZWQgYnkgdGhlc2UgcGF0Y2hlcyAoc3RpbGwgMTQxLzE0NykuCj4KPiBWZXJzaW9uIDI6
Cj4gLSByZWJhc2VkIG9uIHRvcCBvZiBtZWRpYS1jb21taXRlci9uZXh0Cj4gLSBBZGQgcmV2aWV3
ZWQtYnkgdGFncwo+Cj4gQmVuamFtaW4gR2FpZ25hcmQgKDIpOgo+ICAgbWVkaWE6IHZlcmlzaWxp
Y29uOiBTdG9yZSByZWZlcmVuY2UgZnJhbWVzIHBpeGVscyBmb3JtYXQKPiAgIG1lZGlhOiB2ZXJp
c2lsaWNvbjogRml4IElNWDggbmF0aXZlIHBpeGVscyBmb3JtYXQgc3RlcHMgdmFsdWVzCgpEbyBi
b3RoIHBhdGNoZXMgZGVzZXJ2ZSBhIEZpeGVzIHRhZz8KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
