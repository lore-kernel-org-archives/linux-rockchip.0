Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C854C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:41:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 104AC61A32
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:41:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 104AC61A32
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SmzDBPZrnK/nVi1VVglrEUoyMCOU5/X8vdmUNtxgyvs=; b=UtQRkvYYmE7Z12eLyNLSMOK9I
	diAkV5/7te1ZrFsO+mhE+Y/ccljZygykrqoXZEOXdswHRHtrN2hKSLW37Nqs2aCP675DIqp0iQ5d+
	GKZadR/sXBU072I+4aO73z7zvKU/j9uw3PHNwCapBOnxE9Yx4lxt+ffb1mixfKclahyvQMKAg17VI
	PhS0PuVQxJLFUYbc+V6uOT+ktdwNC+tbE6c8FmMkqq4CblSu3RVcIrIUTqP3eF1W64iiL1AAvs968
	YP40ujST1g+FYqn3SKPZe+/zdfCDTYYLBZCJwhmNZ1k5HZZDcCbY6wLJ4EbqxYxe/Hg1tV0FUNKao
	b9LfbfeNw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPiyO-003Blm-Sr; Fri, 26 Mar 2021 09:41:44 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPiy9-003BfP-DK; Fri, 26 Mar 2021 09:41:31 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id
 r17-20020a4acb110000b02901b657f28cdcso1162288ooq.6; 
 Fri, 26 Mar 2021 02:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2y+lCH0Vs6pyPQeq2bGx9F/tNaWiQ7TVbCtQl3Cu+oM=;
 b=muBx9zICBCg6dm3W4RgszzK5iERFpCnGJm6lNtrBAfKmL7RFejhESwlS05sDSKK/Kw
 Dtamzlxewrw3cIFoEQrGHQPq8c6hY6icmufXuxZ/fN/OkX8Ei0WMG6aSJKNHix+KCuVQ
 Pnni61Ovh4jDsySszrPy3xNriEfuj+iqvMvK2Ry600tVN8RiamQdgidjlAQvwdrHsuRI
 lnSsvcwMAbouh7gNfAoIM7r3PNAbox9K9kEYAQfo8WbeUd7csF7VvUviTJPrj5Xryw9u
 V9BIdhLp4zqy7serZfXaPQah/RKbVJDECNLMEANTui/ttVDwZO0sVaxxcugUrzn4pgVt
 ZAaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2y+lCH0Vs6pyPQeq2bGx9F/tNaWiQ7TVbCtQl3Cu+oM=;
 b=IzkJi74K2sF3XFziTqMT57lXDXYrFBy223KACIwVhg1DK+/NlFtyCX/31eUbyDbWx3
 pvLuyAbrSHj+es6xcEfbGz3xGhntSo4P0CDWg52g5qBqFh4pFqvEc4PUWxDXmuWcy4aX
 Mf1ML5Pp1b7B42VIULEuSnJjQiVRXUdT7Fin9m9kgFjJ2/dz5QiriMnBbfwnV6Wul0Pv
 MqEckuOfQQJNTKTgpN/kbP0g4VPnjgbD3UgwxE1RtkhIDuUUES5K7vD9KoGXAKFS80iK
 0i2hWlt8tN3DSMGK1E1Lauwf9eSPpITs7EJLEWY1eUCZC0T0Al+I1tOs5BpleDictZvK
 RePw==
X-Gm-Message-State: AOAM5338rqWvrgAAZ2P4hYQnhuqLy0Cg/NkJKJ2nMDdGtP7eZnn7faBu
 thKqwwYe38qDef3jYc1PN1hXgu82h9yGsJnVq8o=
X-Google-Smtp-Source: ABdhPJwquUJ1qtonkHAnnJwykvLpp6ObSIvVLd7Rm3IiefenhyBYSBoARcO70lQdHSF8v5anxB3Un178MZe50H68vG0=
X-Received: by 2002:a05:6820:255:: with SMTP id
 b21mr10695602ooe.0.1616751688136; 
 Fri, 26 Mar 2021 02:41:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210326091547.12375-1-zhangqing@rock-chips.com>
 <20210326091547.12375-5-zhangqing@rock-chips.com>
In-Reply-To: <20210326091547.12375-5-zhangqing@rock-chips.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Fri, 26 Mar 2021 10:41:16 +0100
Message-ID: <CAFqH_51V6J0tJzpzszEHSOvXx-88XuCpGGHKeyq8vT1pFT924A@mail.gmail.com>
Subject: Re: [PATCH v5 04/11] arm64: dts: rockchip: Fix power-controller node
 names for px30
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, cl@rock-chips.com,
 huangtao@rock-chips.com, 
 kever.yang@rock-chips.com, tony.xie@rock-chips.com, 
 finley.xiao@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_094129_678390_793A4258 
X-CRM114-Status: GOOD (  13.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

TWlzc2F0Z2UgZGUgRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+IGRlbCBk
aWEgZHYuLCAyNiBkZQptYXLDpyAyMDIxIGEgbGVzIDEwOjE3Ogo+Cj4gVXNlIG1vcmUgZ2VuZXJp
YyBuYW1lcyAoYXMgcmVjb21tZW5kZWQgaW4gdGhlIGRldmljZSB0cmVlIHNwZWNpZmljYXRpb24K
PiBvciB0aGUgYmluZGluZyBkb2N1bWVudGF0aW9uKQo+Cj4gU2lnbmVkLW9mZi1ieTogRWxhaW5l
IFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogRW5yaWMgQmFs
bGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNpIHwgMTYgKysrKysrKystLS0tLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLmR0c2kKPiBpbmRleCBjNDViMGNmY2FlMDku
LmZiM2E4NjNlMGNhZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3B4MzAuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNp
Cj4gQEAgLTI0NywyMCArMjQ3LDIwIEBACj4gICAgICAgICAgICAgICAgICAgICAgICAgI3NpemUt
Y2VsbHMgPSA8MD47Cj4KPiAgICAgICAgICAgICAgICAgICAgICAgICAvKiBUaGVzZSBwb3dlciBk
b21haW5zIGFyZSBncm91cGVkIGJ5IFZEX0xPR0lDICovCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgcGRfdXNiQFBYMzBfUERfVVNCIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBwb3dlci1k
b21haW5AUFgzMF9QRF9VU0Igewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVn
ID0gPFBYMzBfUERfVVNCPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2Nr
cyA9IDwmY3J1IEhDTEtfSE9TVD4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8JmNydSBIQ0xLX09URz4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA8JmNydSBTQ0xLX09UR19BRFA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcG1fcW9zID0gPCZxb3NfdXNiX2hvc3Q+LCA8JnFvc191c2Jfb3RnPjsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICB9Owo+IC0gICAgICAgICAgICAgICAgICAgICAgIHBkX3NkY2Fy
ZEBQWDMwX1BEX1NEQ0FSRCB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG93ZXItZG9tYWlu
QFBYMzBfUERfU0RDQVJEIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9
IDxQWDMwX1BEX1NEQ0FSRD47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9j
a3MgPSA8JmNydSBIQ0xLX1NETU1DPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwmY3J1IFNDTEtfU0RNTUM+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcG1fcW9zID0gPCZxb3Nfc2RtbWM+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIH07
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgcGRfZ21hY0BQWDMwX1BEX0dNQUMgewo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbkBQWDMwX1BEX0dNQUMgewo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPFBYMzBfUERfR01BQz47Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBBQ0xLX0dNQUM+LAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcnUgUENMS19HTUFDPiwKPiBA
QCAtMjY4LDcgKzI2OCw3IEBACj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA8JmNydSBTQ0xLX0dNQUNfUlhfVFg+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcG1fcW9zID0gPCZxb3NfZ21hYz47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgfTsK
PiAtICAgICAgICAgICAgICAgICAgICAgICBwZF9tbWNfbmFuZEBQWDMwX1BEX01NQ19OQU5EIHsK
PiArICAgICAgICAgICAgICAgICAgICAgICBwb3dlci1kb21haW5AUFgzMF9QRF9NTUNfTkFORCB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8UFgzMF9QRF9NTUNfTkFO
RD47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSAgPCZjcnUgSENM
S19OQU5EQz4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZj
cnUgSENMS19FTU1DPiwKPiBAQCAtMjgxLDE0ICsyODEsMTQgQEAKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHBtX3FvcyA9IDwmcW9zX2VtbWM+LCA8JnFvc19uYW5kPiwKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmcW9zX3NkaW8+LCA8JnFvc19z
ZmM+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgcGRfdnB1QFBYMzBfUERfVlBVIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBwb3dlci1k
b21haW5AUFgzMF9QRF9WUFUgewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVn
ID0gPFBYMzBfUERfVlBVPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2Nr
cyA9IDwmY3J1IEFDTEtfVlBVPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDwmY3J1IEhDTEtfVlBVPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwmY3J1IFNDTEtfQ09SRV9WUFU+Owo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcG1fcW9zID0gPCZxb3NfdnB1PiwgPCZxb3NfdnB1X3IxMjg+Owo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIH07Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgcGRfdm9AUFgzMF9Q
RF9WTyB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG93ZXItZG9tYWluQFBYMzBfUERfVk8g
ewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPFBYMzBfUERfVk8+Owo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjcnUgQUNMS19SR0E+
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcnUgQUNMS19W
T1BCPiwKPiBAQCAtMzA0LDcgKzMwNCw3IEBACj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBwbV9xb3MgPSA8JnFvc19yZ2FfcmQ+LCA8JnFvc19yZ2Ffd3I+LAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZxb3Nfdm9wX20wPiwgPCZxb3Nfdm9wX20x
PjsKPiAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+IC0gICAgICAgICAgICAgICAgICAgICAg
IHBkX3ZpQFBYMzBfUERfVkkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBvd2VyLWRvbWFp
bkBQWDMwX1BEX1ZJIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDxQ
WDMwX1BEX1ZJPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwm
Y3J1IEFDTEtfQ0lGPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDwmY3J1IEFDTEtfSVNQPiwKPiBAQCAtMzE1LDcgKzMxNSw3IEBACj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA8JnFvc19pc3Bfd3I+LCA8JnFvc19pc3BfbTE+LAo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZxb3NfdmlwPjsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICB9Owo+IC0gICAgICAgICAgICAgICAgICAgICAgIHBkX2dw
dUBQWDMwX1BEX0dQVSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG93ZXItZG9tYWluQFBY
MzBfUERfR1BVIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDxQWDMw
X1BEX0dQVT47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNy
dSBTQ0xLX0dQVT47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwbV9xb3MgPSA8
JnFvc19ncHU+Owo+IC0tCj4gMi4xNy4xCj4KPgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+
IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
