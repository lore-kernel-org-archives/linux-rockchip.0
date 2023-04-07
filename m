Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9D20C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Apr 2023 17:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PBAYo0xiUyGoyFzSqGfmAtknHeuEjAXs/Igd2vb2es=; b=aA8TqrPUs89RbH
	4vd9/VEM1x8rfLeo9uw1iizYDb2jGNZZ7YEdKp1lYcY5fi4AiPhTxUWb1VpWxRtX9h7WpSiNmKyUo
	oEZ+l4HwNviHtVeoNcpf0Dd/mKuE6RuHj9ICJW8vc6nIwa1Or7ZrBhAvkrF+MdzUizOk80040/RUX
	hMmEiuO2HLq80K+45wizJWNL2xxU3U3O7xSjuX8Ifhcy20dNfoub7fnvPe4khUAchYuwB2okVNK9x
	1vI/653TLHosKB827V/1T54Q5rvt9FxWuHHGtOecxDbPRNQMB6hEZHeT48L/jGcyf/9sJ2wfBHU4X
	NAwATl3X+7YTpKNeojPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkq6E-00ApiI-2q;
	Fri, 07 Apr 2023 17:42:10 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkq6C-00Aphi-1a
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Apr 2023 17:42:09 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-62e102cadc7so236004b3a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Apr 2023 10:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1680889324; x=1683481324;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CCJBn+LV6Sw7OAfizOJEGae3D9tERqlvcOUfu0w0v9w=;
        b=f2Hy+gUmypC61FZjpBgjNc/XgvxTOME7kxHD5CgsiiLONDJ0uGaPOd0VsvyK9IAcKM
         YCMZlfDwqFaEOSmOdtSE2HeLW/0quTgY7Ny0dhk8px8kavE9LUIYdthXog1GIX+rq2fE
         g8QS73QBlzrsxk6gaJ+O/XLCA2rqxISinXTYyUthkLmBrbZM7ZIFXt9S38ACofBHt7P+
         dptOeElYK2OgQ0wNuuT3DfiVwL3MzQyLTRnlUE0+IB/r4ycxDRicgexH0w6MJtyetQ1+
         IGrOxD8aNU79hee5zjeh76EgzLJ6mJ4Ruz4wxkM/ZC6EOIWhplr5BfzYNq6f2EmnRqac
         A5zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680889324; x=1683481324;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CCJBn+LV6Sw7OAfizOJEGae3D9tERqlvcOUfu0w0v9w=;
        b=MajLQ7uCuCxfB8p36AgLv3gmL3cN/7FfYOnId0NrY3V0ifTRqcgiMaZVxQ8rZU6Tpe
         wZJPEmhKJ2PF0mf/yLYzTDyvSIGCLGyAqJqRsUr+X3W/hDSTRVI36rH7pl7uTYt2+5C2
         PKMNgdYhpYbaa/GNdOfiPEMhT1UHojuVQ8SobE6aQSw6qZimJUfkhAE5AGqBz2A3m6cA
         3qaq71jG2EVrYXPU7vw9+Nh1qA/ByiP51WKVt0UPBisHJf/K6KzTbXRcBJESVZjaRs7w
         UcH8H4dFQZZstPMjajGXqn+IBLCss3A3SG5IT3yqg8aYUAGgvAZU930zA7hjpIWtdCV5
         8yZA==
X-Gm-Message-State: AAQBX9fFHLmRZMLKUIInSg/TmMYliExHoQJcOpXKh19dG5baRN68++Qc
	nvBN/F80LL5ukDG3JGdIC8TEUrLmyfnMLSwzbjQKG4Jnqi+LJE0L4JA=
X-Google-Smtp-Source: AKy350aUCyZLaAV21BNIhr8D01YQwfaMcMC3ERAqD6aKrlIBdnYZELskAEaom95VFSvRH3V0KPE/o9w3eCEDFaZkXdI=
X-Received: by 2002:a05:6a00:2d88:b0:625:c832:6a10 with SMTP id
 fb8-20020a056a002d8800b00625c8326a10mr1525908pfb.4.1680889324079; Fri, 07 Apr
 2023 10:42:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230324132649.2649166-1-trix@redhat.com>
In-Reply-To: <20230324132649.2649166-1-trix@redhat.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 7 Apr 2023 10:41:52 -0700
Message-ID: <CAKwvOd=rjd6+Di4GSm2kfKRdBmrMyyL-VdQ+CR28NX_G5p0AGQ@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip: remove unused hw_to_inno function
To: Tom Rix <trix@redhat.com>
Cc: vkoul@kernel.org, kishon@kernel.org, heiko@sntech.de, nathan@kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	llvm@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230407_104208_532967_38B4500C 
X-CRM114-Status: GOOD (  13.52  )
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

T24gRnJpLCBNYXIgMjQsIDIwMjMgYXQgNjoyN+KAr0FNIFRvbSBSaXggPHRyaXhAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4KPiBjbGFuZyB3aXRoIFc9MSByZXBvcnRzCj4gZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jOjI4NDozNjogZXJyb3I6Cj4gICB1bnVzZWQg
ZnVuY3Rpb24gJ2h3X3RvX2lubm8nIFstV2Vycm9yLC1XdW51c2VkLWZ1bmN0aW9uXQo+IHN0YXRp
YyBpbmxpbmUgc3RydWN0IGlubm9fZHNpZHBoeSAqaHdfdG9faW5ubyhzdHJ1Y3QgY2xrX2h3ICpo
dykKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KPiBUaGlzIGZ1bmN0aW9u
IGlzIG5vdCB1c2VkIHNvIHJlbW92ZSBpdC4KPgo+IFNpZ25lZC1vZmYtYnk6IFRvbSBSaXggPHRy
aXhAcmVkaGF0LmNvbT4KClRoYW5rcyBmb3IgdGhlIHBhdGNoIQpSZXZpZXdlZC1ieTogTmljayBE
ZXNhdWxuaWVycyA8bmRlc2F1bG5pZXJzQGdvb2dsZS5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1kc2lkcGh5LmMgfCA1IC0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWRzaWRwaHkuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1pbm5vLWRzaWRwaHkuYwo+IGluZGV4IDcyNjkyOGZmMTI3My4uNDAxYjBh
YWJiMTU5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1p
bm5vLWRzaWRwaHkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1p
bm5vLWRzaWRwaHkuYwo+IEBAIC0yODEsMTEgKzI4MSw2IEBAIHN0cnVjdCBpbm5vX21pcGlfZHBo
eV90aW1pbmcgaW5ub19taXBpX2RwaHlfdGltaW5nX3RhYmxlX21heF8yXzVnaHpbXSA9IHsKPiAg
ICAgICAgIHsyNTAwMDAwMDAwLCAweDE1LCAweDU0LCAweDdmLCAweDE1LCAweDZhfSwKPiAgfTsK
Pgo+IC1zdGF0aWMgaW5saW5lIHN0cnVjdCBpbm5vX2RzaWRwaHkgKmh3X3RvX2lubm8oc3RydWN0
IGNsa19odyAqaHcpCj4gLXsKPiAtICAgICAgIHJldHVybiBjb250YWluZXJfb2YoaHcsIHN0cnVj
dCBpbm5vX2RzaWRwaHksIHBsbC5odyk7Cj4gLX0KPiAtCj4gIHN0YXRpYyB2b2lkIHBoeV91cGRh
dGVfYml0cyhzdHJ1Y3QgaW5ub19kc2lkcGh5ICppbm5vLAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB1OCBmaXJzdCwgdTggc2Vjb25kLCB1OCBtYXNrLCB1OCB2YWwpCj4gIHsKPiAtLQo+
IDIuMjcuMAo+CgoKLS0gClRoYW5rcywKfk5pY2sgRGVzYXVsbmllcnMKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
