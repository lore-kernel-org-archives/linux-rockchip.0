Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AEC2C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 09:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+E0+CyVqMGi4eb/iBLTrqQO2QwPpRtD92JP5hGnSYE=; b=zZheSrz8AvWSGG
	blvDaqHMBM3N+5LjbSyfM16PiR4hzcVy9RsPgSn0t7RNV5m4jtSv5BuswFWFzPG3CKYmCBFfRVnN5
	3X5X4neXQoRcFLtKqJhNvQRg3rZMEm5eF/hfIPN7Rx9//FJuMxvw9x2Guf9kC6ENQ7B6CyVKRpY/b
	TnqmuNTbsceq6ibLY5whzJMAl05zcYEqZ53OAm1opQ8cRsTr6bNb+j0I1h1Jhf+nB4JHsni5xcGGo
	nhVurf5y2dG7+pWtL/AA5mURQOd84jwiYe7bg2Ro4K0d941Sn7H+AD7jfJWGbl6Kr7oo29N/T552D
	2t2EjbFobRusUXwZKo3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8ea4-005seG-2a; Fri, 23 Dec 2022 09:43:08 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8eZm-005sT2-Pv; Fri, 23 Dec 2022 09:42:52 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id a17so2902707qvt.9;
        Fri, 23 Dec 2022 01:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d6m48Capw4esr7BRAr2uCfaQnqi6DTJEEbEkBGSU+S8=;
        b=qixvvbS0zKEsE1IWMNk1avAg3bztMcDHoFNg1v4eXwCzENNJH4dH/Fqp0IV+kfu2i0
         ZrUV67Dmx8CvRO1k6KlBd5I7EDWXXBYuHMcySiRvChV7nyUJWufNadOl1cl2d7krYBbW
         7ZxkLKaEc/eNSXcEIy5eZPmokxJ2x26ialUuMRITOtTQ0RHGrM0al8RN0PX9S2jGLViv
         Yy7gD9ULzpS91NIn2SvLprj3sle1rROhU4JMaITeJ8fu43aVfwQTKTovrrTWyRE7xs1t
         PjFzsVNKr5/2jCjkcBiupUyWNa1CYC9P76wGThwNN09Ckh6vMlZfKaX1tUN8DDdr9pWI
         JH6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d6m48Capw4esr7BRAr2uCfaQnqi6DTJEEbEkBGSU+S8=;
        b=4AvT7KSKVl/dokWgQgACvRCBrILHEc+AYqOEpz1aueQlC7R7J1j0/Cemj1XeFD3nh0
         gUljndlT/Uzf+RHmZh9v7fqxaQisyqoLOHjwTWAubhE6k0vDel2z2Kz1gRf0sUNoEIo7
         xfFIWX5D/g+a+NxJAKkz6GhjdV23lchChs++0xf49QtnJcHhHQCnJB+vlrOiml5IHd+Z
         +ARbaBCzuSkiZ1B/ltPaqCmKQsok7mgDVb5jX6yGIWuzo++iWXWlqA3cqxmuf3gty/y1
         4OAekptfdHH1X/Q5WzufPruuG1r0Pxmf5rdkKnCdcrTaBlG3N1PciLMOFF0OD0wZ7buD
         +shQ==
X-Gm-Message-State: AFqh2krIhUrT4NNAsAk9QgHGwefJwGcCVMWlJgExMEFFPhwKd+uT8Y+b
	eOifbHbwXiZg5G+/5qjzXu9cALs4F76uOmZnePY=
X-Google-Smtp-Source: AMrXdXtPjTeEoOwC9Lky1FEzV3LJQCo+adKpQLLSbRYxZqkGT7ftEEPTUMNJEvGBkP2Q0W9BZG5dscHLvrnSELfJb1A=
X-Received: by 2002:a0c:90ef:0:b0:4e8:1593:e03d with SMTP id
 p102-20020a0c90ef000000b004e81593e03dmr525431qvp.90.1671788568178; Fri, 23
 Dec 2022 01:42:48 -0800 (PST)
MIME-Version: 1.0
References: <Y6UdvrhLjS0/8Oic@VM-66-53-centos> <9a73d8fb-8a73-f8db-2ca7-51bf67cbf659@linaro.org>
In-Reply-To: <9a73d8fb-8a73-f8db-2ca7-51bf67cbf659@linaro.org>
From: ty <zonyitoo@gmail.com>
Date: Fri, 23 Dec 2022 17:42:36 +0800
Message-ID: <CAMmci2UkBVaBgYMF8JaZkL==b9-0AB90VPGK7SNdNV5w5Zyzhg@mail.gmail.com>
Subject: Re: [PATCH v9 2/3] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Wenhao Cui <lasstp5011@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_014250_907980_5577C0AD 
X-CRM114-Status: GOOD (  16.80  )
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

SGksIEtyenlzenRvZiwKClNvcnJ5LCB3ZSBkbyBub3Qga25vdyB0aGUgcHJvY2VzcywgdGhpcyBp
cyBvdXIgZmlyc3QgY29udHJpYnV0aW9uIHRvCnRoZSBMaW51eCBLZXJuZWwuIFRoZXJlIGlzIG5v
IGNoYW5nZSBzaW5jZSB0aGUgbGFzdCByZXZpZXcgb2YgdGhpcwpmaWxlLgoKS3J6eXN6dG9mIEtv
emxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPiDkuo4yMDIy5bm0MTLmnIgy
M+aXpeWRqOS6lCAxNjowMeWGmemBk++8mgo+Cj4gT24gMjMvMTIvMjAyMiAwNDoxNywgWXV0ZW5n
IFpob25nIHdyb3RlOgo+ID4gRnJvbTogV2VuaGFvIEN1aSA8bGFzc3RwNTAxMUBnbWFpbC5jb20+
Cj4gPgo+ID4gQWRkIGRldmljZXRyZWUgYmluZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGUgRW1i
ZWRGaXJlIEx1YmFuQ2F0IDEuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogV2VuaGFvIEN1aSA8bGFz
c3RwNTAxMUBnbWFpbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBZdXRlbmcgWmhvbmcgPHpvbnlp
dG9vQGdtYWlsLmNvbT4KPiA+IC0tLQo+Cj4gVGhpcyBpcyBhIGZyaWVuZGx5IHJlbWluZGVyIGR1
cmluZyB0aGUgcmV2aWV3IHByb2Nlc3MuCj4KPiBJdCBsb29rcyBsaWtlIHlvdSByZWNlaXZlZCBh
IHRhZyBhbmQgZm9yZ290IHRvIGFkZCBpdC4KPgo+IElmIHlvdSBkbyBub3Qga25vdyB0aGUgcHJv
Y2VzcywgaGVyZSBpcyBhIHNob3J0IGV4cGxhbmF0aW9uOgo+IFBsZWFzZSBhZGQgQWNrZWQtYnkv
UmV2aWV3ZWQtYnkvVGVzdGVkLWJ5IHRhZ3Mgd2hlbiBwb3N0aW5nIG5ldwo+IHZlcnNpb25zLiBI
b3dldmVyLCB0aGVyZSdzIG5vIG5lZWQgdG8gcmVwb3N0IHBhdGNoZXMgKm9ubHkqIHRvIGFkZCB0
aGUKPiB0YWdzLiBUaGUgdXBzdHJlYW0gbWFpbnRhaW5lciB3aWxsIGRvIHRoYXQgZm9yIGFja3Mg
cmVjZWl2ZWQgb24gdGhlCj4gdmVyc2lvbiB0aGV5IGFwcGx5Lgo+Cj4gaHR0cHM6Ly9lbGl4aXIu
Ym9vdGxpbi5jb20vbGludXgvdjUuMTcvc291cmNlL0RvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJt
aXR0aW5nLXBhdGNoZXMucnN0I0w1NDAKPgo+IElmIGEgdGFnIHdhcyBub3QgYWRkZWQgb24gcHVy
cG9zZSwgcGxlYXNlIHN0YXRlIHdoeSBhbmQgd2hhdCBjaGFuZ2VkLgo+Cj4KPiBCZXN0IHJlZ2Fy
ZHMsCj4gS3J6eXN6dG9mCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
