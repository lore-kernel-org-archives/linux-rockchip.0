Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74234C4320A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:25:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3EB2460C41
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:25:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3EB2460C41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gCHsdn/2VxT1DygCWekH1twkvChSfm+CCVlinIf7Yg=; b=R8gt1GG64jDAIz
	l12+quzZJFqu53vcsLvH0K1btTHl8cE8/cWy2Z/LKppm/E1BoB5cyF8SKJfJrAfCthbgZ4lKF5N8A
	XM/neXfdiX9URSGMXwbRtmYqEYtdmLjEO3HvAYfBA3PzyC2YbMxRXpp5WE2HzFZ2c0ErG8jp+/K3u
	4voFjnPTB2mJ57LCHZzEibJi58S+qwgzNV9sNqdjFbn4aE7uCCRn2ebubRSwARrtemERI1nA/bIUr
	XpRfZ85LG7wdOhyx9f8OeX24FOPTeCYR/8VIoMm+dbZvWAECL0tibT5cYaRVs8yMem/aSfiRjbHNW
	xuCeciiSt8xjDg8NmAEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8lR1-001IJO-Bf; Wed, 28 Jul 2021 15:25:27 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8lQZ-001I8e-RZ; Wed, 28 Jul 2021 15:25:01 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id s48so4554299ybi.7;
 Wed, 28 Jul 2021 08:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5kNNnxvcaBvHSSfcwfCCGCG1lVimpt2MelDrvjqHWl8=;
 b=G91420ry3Osot2/237recxoKA6RHaHJVe+4Irpl/gLX4XiMk0koOCpdVqTTAyVbx3N
 Bti8KplTGrhMIbvO5R5350Q4nA8VvUnhmBooSy4NWZjAYeGA1Wh9bE6f2532jz1budUF
 O8lmzpt50SbAYzl/5ZG2UhBwAnRIAIfccaJh3INHGlfx/PuDCHsGGIXNg1asBSkRsHz3
 8/oAzWenfnrnfGYfNphGG+4/rKdp9RkK893csNKO+SM0Tr8MC6HdstgaedyYtnMPmL9e
 2qSFFfMI4FPe4bBHpBfar3K1zYY6rbYCpvZj5TVtpEXbIpb1+aQbE715q2uf7lyQ0XOq
 l09A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5kNNnxvcaBvHSSfcwfCCGCG1lVimpt2MelDrvjqHWl8=;
 b=ZBMiUqUyuJia+KA1ocC9AUBk2s+Mqsplb+UGAe235DWHnO2hsOTzds+0zjHFbxFVwB
 gMC1CtO85zNcbPsoNqDoSLVgLdaYf3PRWVqMI6OhUE43LAAU13Qe0l7n0xmUJX8aNEFQ
 qK1f5PH/m4Mt0hMPf+looeM5dX+D2e4yN/5Cz25dv4M1ERGGkBu4ri68FZeromr6UYAX
 VSUFpQn4NsmerZcX9NwaAAaddS3BArMYG2F/CFDLD+Hv5Vlde/6MUZ90fZl56toFx7jg
 T+vv4/z51Yz+z4lrgXL1qyl1JKT0Gfrx24rvFEK8pvAYB+bNUkemEud/2n+zIO2KBl9A
 3QMg==
X-Gm-Message-State: AOAM53174+On75cl7rDRqwJhN8LHuLRAglc7q9gIBgoRo0QJII+W9F1D
 WL4EpdTTGBjuPx5NStUfHi1cjPyBptM0JXI6cxs=
X-Google-Smtp-Source: ABdhPJzKw6T2ii27sYldK7VEfZ/TTzvZA1kN5AuDUO0OdJ73j+brcpdTtJhZ8GmeijVQb8xNS/aQ5EBhbk48ObfEA+0=
X-Received: by 2002:a25:3c5:: with SMTP id 188mr246815ybd.437.1627485896803;
 Wed, 28 Jul 2021 08:24:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-2-pgwipeout@gmail.com>
 <10355864.nUPlyArG6x@diego>
In-Reply-To: <10355864.nUPlyArG6x@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 28 Jul 2021 11:24:44 -0400
Message-ID: <CAMdYzYoUucnU+TG9-qtXdvpXZ8xtTwKuNKNDN5sgmQvsF8FX8g@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: gpio: rockchip,
 gpio-bank: increase max clocks
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_082500_016351_EBE6524C 
X-CRM114-Status: GOOD (  18.43  )
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

T24gV2VkLCBKdWwgMjgsIDIwMjEgYXQgMTA6MTAgQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSBQZXRlciwKPgo+IEFtIE1pdHR3b2NoLCAyOC4gSnVsaSAy
MDIxLCAxNTo1NToyNiBDRVNUIHNjaHJpZWIgUGV0ZXIgR2VpczoKPiA+IFRoZSByazM1NnggYWRk
cyBhIGRlYm91bmNlIGNsb2NrIHRvIHRoZSBncGlvIGRldmljZXMuCj4gPiBJbmNyZWFzZSB0aGUg
bWF4aW11bSBjbG9ja3MgdG8gYWNjb3VudCBmb3IgaXQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTog
UGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPgo+IHRoYXQgYmluZGluZyBjaGFuZ2Ug
aXMgYWxzbyBwYXJ0IG9mIEppYW5xdW4ncyBncGlvIGRyaXZlciBzZXJpZXMsCj4gYWxzbyBhZGRz
IGNsb2NrIGRlc2NyaXB0aW9ucyBmb3IgYm90aCBhbmQgZXZlbiBnb3QgYW4gQWNrIGZyb20gUm9i
Cj4gYWxyZWFkeSwgc28gd2Ugc2hvdWxkIGJlIGdvaW5nIHdpdGggdGhhdCBvdGhlciB2YXJpYW50
IDstKQoKUm9nZXIsIEknbGwgZHJvcCB0aGlzIGZvciB0aGUgbmV4dCB2ZXJzaW9uLCB0aGFua3Mh
Cgo+Cj4gSGVpa28KPgo+ID4gLS0tCj4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2dwaW8vcm9ja2NoaXAsZ3Bpby1iYW5rLnlhbWwgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL3JvY2tjaGlwLGdwaW8tYmFuay55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vcm9ja2NoaXAsZ3Bp
by1iYW5rLnlhbWwKPiA+IGluZGV4IGQ5OTNlMDAyY2ViZS4uNDg5YTUyNjNhN2ExIDEwMDY0NAo+
ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vcm9ja2NoaXAs
Z3Bpby1iYW5rLnlhbWwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9ncGlvL3JvY2tjaGlwLGdwaW8tYmFuay55YW1sCj4gPiBAQCAtMjIsNyArMjIsNyBAQCBwcm9w
ZXJ0aWVzOgo+ID4gICAgICBtYXhJdGVtczogMQo+ID4KPiA+ICAgIGNsb2NrczoKPiA+IC0gICAg
bWF4SXRlbXM6IDEKPiA+ICsgICAgbWF4SXRlbXM6IDIKPiA+Cj4gPiAgICBncGlvLWNvbnRyb2xs
ZXI6IHRydWUKPiA+Cj4gPgo+Cj4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
