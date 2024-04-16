Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06EC7C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 11:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltpO/uGdExESs48YnErORO0qiNpoC2U/6NtJ+f1+x/I=; b=HYptScPYHBMahO
	YhWlsoHG1UXV+gkhi9wGOldq5v0eKhT3qa2ysl+BmF8yP5jEH8iBYDUukF71pVCt/4HiXzFHX3y+3
	F1A+0a8jPlmXlVeZFOnQiYtDrf7aYwQjbmrVsjiXTik+VKbN43ArIXJTzdH944oKndWd0xS4MVekF
	t7m/5b5mQiJiB5uT5SRQ52BHDco1YW1iWyR/u+7xAF353TjcRuC56sK0a/pNvnazMXU2T3vwiBkQU
	/UM2L3oIjZiKrOwu4yr5ihSinWxJXSqvbdsdq6xSvjy6DBceZAT5+qc4mMA/WEAWrv75BWs88vGky
	wfuhgOWWVyitIZ1DgTZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgjY-0000000Bw5f-1Laf;
	Tue, 16 Apr 2024 11:12:16 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgjU-0000000Bw4F-2gcS;
	Tue, 16 Apr 2024 11:12:13 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-57020ad438fso3751481a12.0;
        Tue, 16 Apr 2024 04:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713265931; x=1713870731; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ADMsDHTpuzrPaN2i1AVLmsNYmni3qZ56Wq0WR2pQ1C8=;
        b=JySF5a6nsJQEwqePXvNiPscSkBqn3LmTjm/qTpBfuvgEu63FVj5NlQ3lJirvIfp2bx
         8803/WLSmoxIjNH+WPF9tEsXcH8dN/9T8PWxaPo9MFilcskgLLvFCOxSVHr9NuDSvuHY
         TMhb2rCPuVGTXp5yta5lm98bmtL6F8MXR3GWLdWvgmX/VnBFjGKWjWpd1xNnLmoxo50q
         tiilefXFySRX192FCWBHQQa+eJEzdK2YJfTPuUmcCO1ubdeDkE0lbeWfOJ72CYI7JCNy
         c8ZjRqylPbkKaSD8ChO9WCUxLJwT6cESOpMS/U2STF58nxiuRk8GbW6TZTp7AqhNpcls
         F6Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713265931; x=1713870731;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ADMsDHTpuzrPaN2i1AVLmsNYmni3qZ56Wq0WR2pQ1C8=;
        b=gPagWJqOsS3jiNTMEn5deUmoWO2X+RE+5oCcWpiXaLLQ4iBg6q6WacqixSfcVYmz+H
         dexp3cNaGyn2gUTkvKH668u4H+Y/rMAeNDWbZoQgkuhw7bEQ9nZ3ZsaFkpssmDAyQJZW
         ZA+gDZbXEquRK6iiGJxH/I4Gdo6mIse8EguEtZq2lCsIyu416a9kLJIz7eVtg1f4yeqH
         g4qTJR3iiUM+lfjwOoWsNjdDzt7rlvV6cA8WsOVKV68QnX7W6/TcnY9Xiu5c22OxCFU6
         GqFFXjeRDcuj1TUd6yw0stQlRC4J/EFwFBDLhxpsUtZpQyxi14n1X4Bz/yw8GB3YL29u
         8sfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgPIm0Pf4vxEgd5FGbjfJvYGICu0pVX5cY7wOVPc4oX7i4oQLZcjAgZyW89uliS7PZND3Fy3YpdSuaunYyxzGZxD0Hyw/p/uXPx3t2Cvy5b4RmxCl0WxSne5ifU6YDabz6Hn0MGjN8pntXF0c03WBIXJafxO90PGA=
X-Gm-Message-State: AOJu0YzQ/CBiubQAQop2eW+NpwAG0kyO1RiOvMBk/NHUlnpojvdLueTW
	utNa4xu5i02TADCNKaSivrkl7gp6eANcd0H3tKDk3Fu77SljmYgTj7+d9zfjAsQswmYRhFLDWwU
	rSo/JJjQpKgrAom8AGDguoyubueH2TEpUCbA=
X-Google-Smtp-Source: AGHT+IHXIwGj6aH+H9fCW5Ehxa1vZNOsHUgoqAZLwIgfrWI/At+d82nWvx/mBKxAH+gjreG9BOXjQyMdzfI86Sn9iKM=
X-Received: by 2002:a05:6402:f0c:b0:570:17a:b1f6 with SMTP id
 i12-20020a0564020f0c00b00570017ab1f6mr2196166eda.6.1713265930533; Tue, 16 Apr
 2024 04:12:10 -0700 (PDT)
MIME-Version: 1.0
References: <20240416034626.317823-1-liujianfeng1994@gmail.com> <20240416034626.317823-3-liujianfeng1994@gmail.com>
In-Reply-To: <20240416034626.317823-3-liujianfeng1994@gmail.com>
From: Weizhao Ouyang <o451686892@gmail.com>
Date: Tue, 16 Apr 2024 19:11:59 +0800
Message-ID: <CAHk0Hosivk8=2LNC6Pz1qAGFg1791z12tYRf-cEZNLZb7HaQVQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add ArmSoM Sige7
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	sfr@canb.auug.org.au, weizhao.ouyang@arm.com, 
	Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_041212_745346_5641313F 
X-CRM114-Status: GOOD (  12.64  )
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

T24gVHVlLCBBcHIgMTYsIDIwMjQgYXQgMTE6NDbigK9BTSBKaWFuZmVuZyBMaXUgPGxpdWppYW5m
ZW5nMTk5NEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gQWRkIGRldmljZXRyZWUgYmluZGluZyBmb3Ig
QXJtU29NIFNpZ2U3IGJvYXJkCj4KPiBTaWduZWQtb2ZmLWJ5OiBKaWFuZmVuZyBMaXUgPGxpdWpp
YW5mZW5nMTk5NEBnbWFpbC5jb20+Cj4gQWNrZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4KClJldmlld2VkLWJ5OiBXZWl6aGFvIE91eWFuZyA8d2Vpemhhby5vdXlh
bmdAYXJtLmNvbT4KCkJSLApXZWl6aGFvCgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgfCA1ICsrKysrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiBpbmRleCA0YmQwMzNhZGUuLmZkNjQ0ZTMyYyAx
MDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tj
aGlwLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jv
Y2tjaGlwLnlhbWwKPiBAQCAtNDksNiArNDksMTEgQEAgcHJvcGVydGllczoKPiAgICAgICAgICAg
ICAgICAtIGFuYmVybmljLHJnLWFyYy1zCj4gICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxy
azM1NjYKPgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBBcm1Tb00gU2lnZTcgYm9hcmQKPiArICAg
ICAgICBpdGVtczoKPiArICAgICAgICAgIC0gY29uc3Q6IGFybXNvbSxzaWdlNwo+ICsgICAgICAg
ICAgLSBjb25zdDogcm9ja2NoaXAscmszNTg4Cj4gKwo+ICAgICAgICAtIGRlc2NyaXB0aW9uOiBB
c3VzIFRpbmtlciBib2FyZAo+ICAgICAgICAgIGl0ZW1zOgo+ICAgICAgICAgICAgLSBjb25zdDog
YXN1cyxyazMyODgtdGlua2VyCj4gLS0KPiAyLjM0LjEKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
