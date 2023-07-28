Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACEFCC001DE
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jul 2023 18:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RM21Q8eiSyx7B9uUEJJHwom974vQ1E52ni33ezBQ9VM=; b=EEkrFRT633S6zR
	CVlcMBI1zr07igAXFhA530BFLXnv0MheJ6SwhjmZx4XB3cm3Blu2nOs5K3j+HvZeifdAhWRbYZ0EF
	q4jrifBa83OhI70xECPe0QiyDBXB/fnnvykuYTaufIurUOpjSBu2LGhOE9cYyAYjMRa1pp+FoiRe/
	4Y0x2spHf25rssSiU9vtc/0GNp/euUnowRIuOON53YReKuCnfXY50oVa2VnfZYuwNcuoSnbQzlDmW
	T7cROuoaAoQhoC5lTSf2GkOhp2Y0IlzEyqxNXfPf7Sg8naK8DCjMeBzBkJIks+FcZBo7twjxKPi9v
	0IqSVrQZQnVfQxOMwpRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPSZY-004bcM-31;
	Fri, 28 Jul 2023 18:52:20 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPSZV-004bab-2Z
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Jul 2023 18:52:19 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-d066d72eb12so3394550276.1
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Jul 2023 11:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1690570334; x=1691175134;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yk7KapaJ4ts4aXSDh+2c8nSS1WtAE7a/yp7yaQonlEs=;
        b=FmlK+tTxyX2ftu9UyyXtk+VsZzCfd8E4wrONCQeVzUaxE4DgiBQS5RNG7Lt6YY21Wl
         a1FtAWSEiOhtnn5UaOsM+9fxYoj3+04MZjqw20HTqx333lXbuD3UzDagRimhGv1pbptZ
         Ox8UAtKoZEKPynGgxdLBeac/E1rExkMh/FAfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690570334; x=1691175134;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yk7KapaJ4ts4aXSDh+2c8nSS1WtAE7a/yp7yaQonlEs=;
        b=AcXO5uLwC03kj4vrR1O5vWN1HhZ0z3bWuJtvJC1qjd6isTeXdCdcw2Bob+08bk72jq
         FCbJH2Pp6G9FihabNN//lV4STfvsVgh4s9PQrZ6bHWxjs4yCgnm0fgWJ+cLz3+STngm6
         ZdS69qadxVdQVi+EV+ubxrPR6UUPNTmMY6bWt0duZg3R8JpzO8fye04a9E5Dd3MzuJd1
         CckLTchl+DhuTq3ho87S1iZo/lX0gSIArUoRjbCjvW8HUfPYEPjx10mFuDBTMsY7xig5
         vb0lDqCwt7toIHTQILLHw7oy8/+feoKaK6Ws34NjXOwkllUoNY/6emk2wgtDorn9SOob
         3ljA==
X-Gm-Message-State: ABy/qLa6WB6ndxwJeObVsLWLpYY0TInmLHmQxbrPNpUB8ewsVuV/iVth
	y8DRRoBjmt146B4cqvkqLJ4IL1OmENAZNFFwTu0DLA==
X-Google-Smtp-Source: APBJJlGLS/Y9A5mFcOJhbSvQNfPBCHjXK1YnxnBpm0/puqVDUshKiWrog/DK4ot+hh6Y56SGceieuO+/NfGEKS/FznM=
X-Received: by 2002:a25:aea4:0:b0:d0c:7309:87f7 with SMTP id
 b36-20020a25aea4000000b00d0c730987f7mr3299342ybj.10.1690570333688; Fri, 28
 Jul 2023 11:52:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230719122123.3702588-1-jagan@amarulasolutions.com> <51af40e5fa8e22411b654bbb894bb0fee19be8f9.camel@collabora.com>
In-Reply-To: <51af40e5fa8e22411b654bbb894bb0fee19be8f9.camel@collabora.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sat, 29 Jul 2023 00:22:02 +0530
Message-ID: <CAMty3ZCR5vQBf-6GE9+cu5akv+8aPmpDvyqocm2uMdzaoTAJsA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable TYPE-C PD for ROC-RK3399-PC
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>, 
	kernel <kernel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230728_115217_865716_5C2CE42D 
X-CRM114-Status: GOOD (  22.73  )
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

SGkgQ2hyaXN0b3BoZXIsCgpPbiBNb24sIEp1bCAyNCwgMjAyMyBhdCA3OjI14oCvUE0gQ2hyaXN0
b3BoZXIgT2JiYXJkCjxjaHJpcy5vYmJhcmRAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBPbiBX
ZWQsIDIwMjMtMDctMTkgYXQgMTc6NTEgKzA1MzAsIEphZ2FuIFRla2kgd3JvdGU6Cj4gPiBUaGUg
cG93ZXIgc3VwcGx5IGNpcmN1aXQgaW4gUk9DLVJLMzM5OS1QQyBpcwo+ID4KPiA+IFBvd2VyIFN1
cHBseSAob3IgUFBTKSA9PiBGVVNCID0+IE1QODg1OQo+ID4KPiA+IFZVQlMgcGluIG9mIEZVU0Ig
YW5kIElOIHBpbiBvZiBNUDg4NTkgaXMgc3VwcGxpZWQgdmlhIFRZUEVDX0lOLgo+ID4KPiA+IFRo
ZSBNUDg4NTkgb3BlcmF0ZWQgd2l0aCAyLjhWIHRvIDIyViBzdXBwbHkgdm9sdGFnZSBhbmQgdHlw
aWNhbAo+ID4gYXBwbGljYXRpb25zIHRoaXMgc3VwcGx5IGNhbiBiZSAxMlYuCj4gPgo+ID4gVGhp
cyBwYXRjaCBpcyB0cnlpbmcgdG8gc3VwcG9ydCB0aGUgUEQgYnkgY2hhbmdpbmcgdGhlIEZVU0Ig
VkJVUyBzdXBwbHkKPiA+IHRvIDEyViBhbmQgdHVuZSB0aGUgSTJDNyB0aW1pbmdzIGZyb20gZG93
bnN0cmVhbSBrZXJuZWwuCj4gPgo+ID4gVGVzdGVkIHdpdGggUEQzLjAgUFBTIHdpdGggc3VwcGx5
IHZvbHRhZ2VzIG9mIDEyVi8zQSBhbmQgMjBWLzVBLgo+Cj4gSGkgSmFnYW4sCj4KPiBUaGlzIHNl
cmllcyB3b3JrcyBmaW5lIHdpdGggYSAiZHVtYiIgKG5vIFBEIG5lZ290aWF0aW9uKSA1LjFWIFJh
c3BiZXJyeSBQaSBQU1UuCj4KPiBJdCBhbHNvIHdvcmtzIGZpbmUgd2l0aCBhIERlbGwgNDVXIFVT
Qi1DIExhcHRvcCBQb3dlciBTdXBwbHkgKG1vZGVsIEFBNDVOTTE3MCkgd2hpY2ggcHJvdmlkZXMg
NVZAM0EsOVZAM0EsMTVWQDNBLDIwVkAyLjI1QSwgd2hlcmUgTGludXggbWFzdGVyIGZhaWxzIGFu
ZCBqdXN0IHRlbGxzIHRoZSBVU0ItUEQgUFNVIHRvIHBvd2VyLW9mZi4KClRoYW5rcyBmb3IgdGVz
dGluZy4KCj4KPiBJdCBkb2Vzbid0IHdvcmsgd2l0aCBhIExlbm92byA2NVcgUFNVIChtb2RlbCBB
RExYNjVZTEMzRCkgd2hpY2ggcHJvdmlkZXMgNVZAMkEsOVZAMkEsMTVWQDNBLDIwVkAzLjI1QSwg
YWZ0ZXIgbmVnb3RpYXRpb24gdGhlIGRyaXZlciB0dXJucyB0aGUgUEQgUFNVIG9mZiBhbmQgb24g
YWdhaW4sIHJlc2V0dGluZyB0aGUgYm9hcmQuCj4gU28gaXQnZCBiZSBncmVhdCB0byBnZXQgdGhp
cyBmaXhlZCwgYnV0IGl0IHNlZW1zIGxpa2UgdGhlIHNpbmstcGRvcyBzaG91bGQgYWxyZWFkeSBz
dXBwb3J0IHRoaXMgUFNVID8KClllcywgaXQgaXMgYWxyZWFkeSBzdXBwb3J0ZWQuIFNlZW1zIGxp
a2Ugc29tZSBpc3N1ZXMgb24gdGNwbStmdXNiMzAyLgoKPgo+Cj4gQXMgYSBzaWRlIG5vdGUgZm9y
IGZ1bGwgdHJhbnNwYXJlbmN5LCBhbm90aGVyIGlzc3VlIGlzIHRoYXQgd2l0aCBMaW51eCBtYXN0
ZXIgb3Igd2l0aCB0aGlzIHBhdGNoIGFwcGxpZWQsIGFwcGx5aW5nIHBvd2VyIHRvIHRoZSBEQ18x
MlYgaGVhZGVyIHdpdGhvdXQgYSBVU0ItQyBQU1UgY29ubmVjdGVkIChlLmcuIHBvd2VyaW5nIGZy
b20gdGhlIFBPRQo+IGV4cGFuc2lvbiBzaGllbGQpLCBib290IGhhbmdzIGFuZCBkdW1wcyB0byBh
biBpbml0cmFtZnMgc2hlbGwgd2l0aDoKPgo+ICAgWyAgICA3LjQxMTc5OF0gcmFuZG9tOiBjcm5n
IGluaXQgZG9uZQo+ICAgWyAgIDEyLjU2ODEzOF0gcGxhdGZvcm0gZmUzYTAwMDAudXNiOiBkZWZl
cnJlZCBwcm9iZSBwZW5kaW5nCj4gICBbICAgMTIuNTY4NjczXSBwbGF0Zm9ybSBzZGlvLXB3cnNl
cTogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+ICAgWyAgIDEyLjU2OTE2Ml0gcGxhdGZvcm0gZmUz
ZTAwMDAudXNiOiBkZWZlcnJlZCBwcm9iZSBwZW5kaW5nCj4gICBbICAgMTIuNTY5NjU4XSBwbGF0
Zm9ybSBhZGMta2V5czogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+ICAgWyAgIDEyLjU3MDEyM10g
aTJjIDctMDAyMjogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+ICAgWyAgIDEyLjU3MDUzM10gaTJj
IDQtMDAyMjogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+ICAgWyAgIDEyLjU3MDk0NF0gcGxhdGZv
cm0gZmY5NDAwMDAuaGRtaTogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+ICAgWyAgIDEyLjU3MTQ0
OF0gcGxhdGZvcm0gdmNjM3YwLXNkOiBkZWZlcnJlZCBwcm9iZSBwZW5kaW5nCj4gICBbICAgMTIu
NTcyMDAwXSBwbGF0Zm9ybSB2Y2MxdjgtczM6IGRlZmVycmVkIHByb2JlIHBlbmRpbmcKPiAgIFsg
ICAxMi41NzI0NzVdIHBsYXRmb3JtIHN5cy0xMnY6IGRlZmVycmVkIHByb2JlIHBlbmRpbmcKPiAg
IFsgICAxMi41NzI5MzNdIHBsYXRmb3JtIHZjYzN2My1zeXM6IGRlZmVycmVkIHByb2JlIHBlbmRp
bmcKPiAgIFsgICAxMi41NzM0MTJdIHBsYXRmb3JtIGZlMzIwMDAwLm1tYzogZGVmZXJyZWQgcHJv
YmUgcGVuZGluZwo+ICAgWyAgIDEyLjU3MzkwN10gcGxhdGZvcm0gdmNjYS0wdjk6IGRlZmVycmVk
IHByb2JlIHBlbmRpbmcKPiAgIFsgICAxMi41NzQzNzFdIHBsYXRmb3JtIHZjYzV2MC1ob3N0LXJl
Z3VsYXRvcjogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+ICAgWyAgIDEyLjU3NDkzNV0gcGxhdGZv
cm0gZmY3NzAwMDAuc3lzY29uOnVzYjJwaHlAZTQ1MDogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+
ICAgWyAgIDEyLjU3NTU1Ml0gcGxhdGZvcm0gdmNjLXZidXMtdHlwZWMxOiBkZWZlcnJlZCBwcm9i
ZSBwZW5kaW5nCj4gICBbICAgMTIuNTc2MDkwXSBwbGF0Zm9ybSBmZTMwMDAwMC5ldGhlcm5ldDog
ZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+ICAgWyAgIDEyLjU3NjYyM10gcGxhdGZvcm0gdmNjLXN5
czogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+ICAgWyAgIDEyLjU3NzA4MF0gcGxhdGZvcm0gZmY3
NzAwMDAuc3lzY29uOnVzYjJwaHlAZTQ2MDogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+ICAgWyAg
IDEyLjU3NzY5N10gcGxhdGZvcm0gZmYzMjAwMDAuc3lzY29uOmlvLWRvbWFpbnM6IGRlZmVycmVk
IHByb2JlIHBlbmRpbmcKPiAgIFsgICAxMi41NzgyOThdIHBsYXRmb3JtIGZmNzcwMDAwLnN5c2Nv
bjppby1kb21haW5zOiBkZWZlcnJlZCBwcm9iZSBwZW5kaW5nCj4gICBbICAgMTIuNTc4OTAxXSBw
bGF0Zm9ybSBmZTgwMDAwMC51c2I6IGRlZmVycmVkIHByb2JlIHBlbmRpbmcKPiAgIFsgICAxMi41
NzkzOTVdIHBsYXRmb3JtIGZlOTAwMDAwLnVzYjogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+ICAg
WyAgIDEyLjU3OTkwNF0gcGxhdGZvcm0gdmRkLWxvZzogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+
ICAgWyAgIDEyLjU4MDM2Ml0gaTJjIDAtMDAxYjogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+ICAg
WyAgIDEyLjU4MDc3Ml0gaTJjIDAtMDA0MDogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+ICAgWyAg
IDEyLjU4MTE4Ml0gcGxhdGZvcm0gY3B1ZnJlcS1kdDogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwo+
ICAgWyAgIDEyLjU4MTY2M10gaTJjIDAtMDA0MTogZGVmZXJyZWQgcHJvYmUgcGVuZGluZwoKSSBk
aWRuJ3QgdGVzdCBQT0Ugd2l0aCB0aGlzIGNoYW5nZSwgSSB3aWxsIGNoZWNrIHRoaXMuCgpUaGFu
a3MsCkphZ2FuLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
