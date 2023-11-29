Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DB25C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 11:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dM7ZVqFHe7YKt61fRU2jZqFvoeQLd2X7UY2ZLHEub8U=; b=SjRO3TDPMaFp/b
	iONTlS3bnVlvSqx5essba/c0dxlPVeStGX+g0Ytt8Pws3544BHarnXhh33zZ8+ms8cAsfMjOwRZSl
	6lQO3bQ/nRkMlvPKj2n2oZ6ZMkDsOHcCFJ03KqEhiM/lqmdrmi2TZObdRxtXxZ6DC8paOVfJAmM8/
	r91RaFcATzqO+fQ1Zm1atiVwtsZ0apW4FYlBR6j9ITPfv6nn5bCX+9TUsdroRy0tPbemA1KOCaC9H
	/6cCbwJEi33AJttCLft32RIvR/qMhX+dRVVxr/ngLt41ryfhXrHQSndQfhzHbfnqNAK4nXK1+pGCd
	QQPEIenVpm3qbV1i+1NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Irx-0089GX-11;
	Wed, 29 Nov 2023 11:36:41 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Iru-0089Fn-3B
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 11:36:40 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-5bddf66ed63so613229a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Nov 2023 03:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701257796; x=1701862596; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CsTqxVq/HhioW2JTWiJZhbOniYNLafZW0sv5YW5xjcw=;
        b=a19kHNUQoPiFtZX4+gZf93uNm5MnhOfW0INco9gIaNsx4qXcs8gAq7AZvh8b4g26qI
         6KgNITB0o9rkE4ChFc0co04rOvpaUNqQNzX0Df0vruK0iMUKAHTvap1P4Y9csSTLik/c
         sTJ3dphHGAF1SCnjaQhzSw1WiEXT4Y2AD9lx/qrZUjnzV+xs/kkxl2J3iHvi1lgWXrIk
         uHytCNf7nA3+Z7tVO4H1wCylacBQz8Q4QfB1bdLYYSZG/mMHkUCXR/yKwJe6nyOBhAIK
         br5wUJyAWxP+8BS6/4HxQWTbrn3dov6Zfu9t5iTTcK7K7dN+eKkaWx4d1WvSs6uJRzSq
         tRUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701257796; x=1701862596;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CsTqxVq/HhioW2JTWiJZhbOniYNLafZW0sv5YW5xjcw=;
        b=u8hqeWnP//eOqEGLy9AN9Hh+go2rUZ9EaAYuKjgufooUI68uXHrfCYABftRxi68G+Z
         y4usv4zeHhKDZjgD6p+71Cydel4Swo8khJHxVXP6TqrLo5o1Da2AVm3FdO3rU8CYirCD
         EREx8swLBKES7g8XMV4vrN6IlEC5BQ4NqL7Gsbba6mYRUNEIyt91bbbGa1X5Nu6DGVZB
         UQepVgrY6wrFl1keWXMbcAtZUH237P+ipTo9J6lvLdurnjnkREesh7LGxoZpi4Ck605h
         3aJ5u+KNWCjwvsgJw2eRl2cSFMapnDRQrQJGcibRvKc/BiDLkM4paSEHlFkrtLzd6jb4
         eXDg==
X-Gm-Message-State: AOJu0Yyoz8iiSuPvEOsld5DIdc55hCgE2hGkZ4tfLsIjz4h8FewQ9BXw
	+paQNF9+Nd0RRavOZtrqyfIvGs0GNVyM6klgsnA=
X-Google-Smtp-Source: AGHT+IFgXuDZYe56dvUjntjxMeoPtvwsSizmgf1EC7O1I8uWWAxbBkCdKOux7Imnul9wYk9scmPGGkhAOGrJYURUsfk=
X-Received: by 2002:a17:90b:1e0a:b0:285:b6b1:a2bd with SMTP id
 pg10-20020a17090b1e0a00b00285b6b1a2bdmr16044087pjb.6.1701257796420; Wed, 29
 Nov 2023 03:36:36 -0800 (PST)
MIME-Version: 1.0
References: <20231129092759.242641-1-paul.elder@ideasonboard.com>
In-Reply-To: <20231129092759.242641-1-paul.elder@ideasonboard.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 29 Nov 2023 05:36:25 -0600
Message-ID: <CAHCN7xLgypy8YMhxM1g27DWU7hY3nwAYLYRSMMDtODeGdd_CQg@mail.gmail.com>
Subject: Re: [PATCH v4 00/11] media: rkisp1: Add support for i.MX8MP
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, kieran.bingham@ideasonboard.com, 
	tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_033639_023851_A4CCB5A3 
X-CRM114-Status: GOOD (  21.87  )
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

T24gV2VkLCBOb3YgMjksIDIwMjMgYXQgMzoyOOKAr0FNIFBhdWwgRWxkZXIgPHBhdWwuZWxkZXJA
aWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHNlcmllcyBleHRlbmRzIHRoZSBya2lz
cDEgZHJpdmVyIHRvIHN1cHBvcnQgdGhlIElTUCBmb3VuZCBpbiB0aGUKPiBOWFAgaS5NWDhNUCBT
b0MuCj4KPiBUaGUgSVNQIElQIGNvcmVzIGluIHRoZSBSb2NrY2hpcCBSSzMzOTkgKGtub3duIGFz
IHRoZSAiUm9ja2NoaXAgSVNQMSIpCj4gYW5kIGluIHRoZSBOWFAgaS5NWDhNUCBoYXZlIHRoZSBz
YW1lIG9yaWdpbiwgYW5kIGhhdmUgc2xpZ2h0bHkgZGl2ZXJnZWQKPiBvdmVyIHRpbWUgYXMgdGhl
eSBhcmUgbm93IGluZGVwZW5kZW50bHkgZGV2ZWxvcGVkIChhZmFpaykgYnkgUm9ja2NoaXAKPiBh
bmQgVmVyaVNpbGljb24uIFRoZSBsYXR0ZXIgaXMgbWFya2V0ZWQgdW5kZXIgdGhlIG5hbWUgIklT
UDgwMDBOYW5vIiwKPiBhbmQgaXMgY2xvc2UgZW5vdWdoIHRvIHRoZSBSSzMzOTkgSVNQIHRoYXQg
aXQgY2FuIGVhc2lseSBiZSBzdXBwb3J0ZWQgYnkKPiB0aGUgc2FtZSBkcml2ZXIuCj4KPiBUaGUg
bGFzdCB0d28gcGF0Y2hlcyBhZGQgc3VwcG9ydCBmb3IgVVlWWSBvdXRwdXQgZm9ybWF0LCB3aGlj
aCBjYW4gYmUKPiBpbXBsZW1lbnRlZCBvbiB0aGUgSVNQIHZlcnNpb24gaW4gdGhlIGkuTVg4TVAg
YnV0IG5vdCBpbiB0aGUgb25lIGluIHRoZQo+IFJLMzM5OS4KPgo+IFRoaXMgdmVyc2lvbiBvZiB0
aGUgc2VyaWVzIHNwZWNpZmljYWxseSBoYXMgYmVlbiB0ZXN0ZWQgb24gYSBQb2x5aGV4Cj4gRGVi
aXggbW9kZWwgQSB3aXRoIGFuIGlteDIxOSAoUmFzcGJlcnJ5IFBpIGNhbSB2MikuCgpJIGhhdmUg
dGVzdGVkIHByZXZpb3VzIHZlcnNpb25zIHdpdGggYSBpbXgyMTkgY2FtZXJhIHJ1bm5pbmcgaW4g
NC1sYW5lCm1vZGUgd2l0aCBncmVhdCBzdWNjZXNzLiAgU2hvdWxkIEkgYXBwbHkgdGhpcyBzZXJp
ZXMgYWdhaW5zdApsaW51eC1uZXh0LCBvciBkbyBJIG5lZWQgdG8gYXBwbHkgaXQgYWdhaW5zdCBz
b21ldGhpbmcgaW4gdGhlIG1lZGlhCnRyZWUgdG8gdGVzdD8gIEkgaG9wZSB0byB0ZXN0IGl0IHRv
bmlnaHQgb3IgdG9tb3Jyb3cuCgphZGFtCj4KPiBMYXVyZW50IFBpbmNoYXJ0ICgyKToKPiAgIG1l
ZGlhOiBya2lzcDE6IEFkZCBhbmQgdXNlIHJraXNwMV9oYXNfZmVhdHVyZSgpIG1hY3JvCj4gICBt
ZWRpYTogcmtpc3AxOiBDb25maWd1cmUgZ2Fza2V0IG9uIGkuTVg4TVAKPgo+IFBhdWwgRWxkZXIg
KDkpOgo+ICAgbWVkaWE6IHJraXNwMTogU3VwcG9ydCBzZXR0aW5nIG1lbW9yeSBzdHJpZGUgZm9y
IG1haW4gcGF0aAo+ICAgbWVkaWE6IHJraXNwMTogU3VwcG9ydCBkZXZpY2VzIGxhY2tpbmcgc2Vs
ZiBwYXRoCj4gICBtZWRpYTogcmtpc3AxOiBTdXBwb3J0IGRldmljZXMgbGFja2luZyBkdWFsIGNy
b3AKPiAgIG1lZGlhOiBya2lzcDE6IEZpeCBSU1pfQ1RSTCBiaXRzIGZvciBpLk1YOE1QCj4gICBk
dC1iaW5kaW5nczogbWVkaWE6IHJraXNwMTogQWRkIGkuTVg4TVAgSVNQIHRvIGNvbXBhdGlibGUK
PiAgIG1lZGlhOiBya2lzcDE6IEFkZCBtYXRjaCBkYXRhIGZvciBpLk1YOE1QIElTUAo+ICAgbWVk
aWE6IHJraXNwMTogU2hpZnQgRE1BIGJ1ZmZlciBhZGRyZXNzZXMgb24gaS5NWDhNUAo+ICAgbWVk
aWE6IHJraXNwMTogQWRkIFlDIHN3YXAgY2FwYWJpbGl0eQo+ICAgbWVkaWE6IHJraXNwMTogQWRk
IFVZVlkgYXMgYW4gb3V0cHV0IGZvcm1hdAo+Cj4gIC4uLi9iaW5kaW5ncy9tZWRpYS9yb2NrY2hp
cC1pc3AxLnlhbWwgICAgICAgICB8ICAzNyArKysrLQo+ICAuLi4vcGxhdGZvcm0vcm9ja2NoaXAv
cmtpc3AxL3JraXNwMS1jYXB0dXJlLmMgfCAxMjggKysrKysrKysrKysrLS0tLS0KPiAgLi4uL3Bs
YXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY29tbW9uLmggIHwgIDM1ICsrKystCj4gIC4u
Li9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWRldi5jICAgICB8ICA2NiArKysrKysr
LS0KPiAgLi4uL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtaXNwLmMgICAgIHwgMTMx
ICsrKysrKysrKysrKysrKysrLQo+ICAuLi4vcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNw
MS1yZWdzLmggICAgfCAgMzIgKysrKysKPiAgLi4uL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9y
a2lzcDEtcmVzaXplci5jIHwgIDI3ICsrLS0KPiAgaW5jbHVkZS91YXBpL2xpbnV4L3JraXNwMS1j
b25maWcuaCAgICAgICAgICAgIHwgICAyICsKPiAgOCBmaWxlcyBjaGFuZ2VkLCAzOTggaW5zZXJ0
aW9ucygrKSwgNjAgZGVsZXRpb25zKC0pCj4KPiAtLQo+IDIuMzkuMgo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
