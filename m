Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 092F4C0015E
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jul 2023 08:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8pXxlyIjW+jQLqyo3ukohU9ldUcHJFVTTs6KtWfuUE=; b=CWNANxP5mq2p1q
	pKY5m4WTu6J/cvKAHwTkjGaxwLENsmOMnADgp2cLlOeNZBnCS6lMg+9jYqY8URFCNIMAz7glfHTrr
	HsSog58Y+S1MtL+Stzvm+TYwJHw+eem2Tn7m8tosXV9pddcWukC3Sf9reHSNzM9JHWrgKn6a/OC5U
	eNJ6dAXzFYAO6T2bz8b1xNKUJcsm8jQ9yzBHgXMhnIGyyf6lsGAv0NR3HdNRSoXVZWM/FpurKNp7U
	jYbEc+8y57sFmdqska7Ue0WfKhArqsZSUdj0uavamWcAR18fPkgj8PycCaaf2RBGbnQKnrRt7XkD7
	tavB18rReqiGhWGUNVAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFKf-009p4v-1J;
	Mon, 03 Jul 2023 08:54:53 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFKc-009p3e-25;
	Mon, 03 Jul 2023 08:54:52 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-c2cf29195f8so4881261276.1;
        Mon, 03 Jul 2023 01:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688374488; x=1690966488;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2P1+8Vl4nN04UtbHWZzTAFlwj7juUIzaPe884hrImxc=;
        b=D+UL71vejPPkfFEC9QjT/anRmhQj61MJn/T2Wuz+8Lq9eHWp4ip0SdPMZs9EUKUIt5
         Cxgf9gvnF8ypVhtCllM9F5xQSw7K8AgUXi9jXjFhomZ/2czKvKkwVwFeJ3X6oV4HJpeM
         hGNXsycE3U76fRJZFugirljo8Z5TiUrMLbiHJphFUwa20F7FWOHSJv96zn0PR31Oz7Kc
         fCXsdzmknD2RSc7eyNnrXZxqmoDdEB6JbDHUoG+YXW4aU/EZWQTc/1XBLV8ejFAImisZ
         rgXQ+RwC9K71wNvMf+9XD2UG7Jg9IC+16z5cSW/0f8R1JACJmlo3n+TKSWwYWE7w9+2F
         Xkgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688374488; x=1690966488;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2P1+8Vl4nN04UtbHWZzTAFlwj7juUIzaPe884hrImxc=;
        b=LK/TpovZmn1bjSgaz/kDr/p8Bh7bk6P/5bwYUN2WPgGd8ayxqLR00/PJfS8k2Nuq9i
         c+fGXzYcUcFMcY4vGXm90kLm7/SuVyo+uyUQMiIxgUUqm1JksTJcZNWxnWJUhcVzmNRY
         0rUsaDouVIh40mPpVdG22a89efld2LDyHaIAImE6/mORnXL5FXOHNLQyoTHMOJEJUBtq
         rnZaI5/x9Gu0eBFIhuLYivvOOi+CYAwRHjduVm10c7SQVcSm68/1rAt6CdDmKyOlKx0i
         L7YzZtPMy5bxOYKP8xopd0JO7thhXH8QFX4jliBVqrcj7pnVVvVk9Bb/OU+5e8ZpLtVw
         N95Q==
X-Gm-Message-State: ABy/qLYkGKyR+ABLnzTUJCocAjyVoYgBN0EodLl9NzK94zN+G7Yqb0Ns
	16LaXcEgHSb76ofd+BQXaUREVF/t6QFB6HpjbFs=
X-Google-Smtp-Source: APBJJlG75z1nfpbVvYw7Z+wJ+Z2EHygE7EH09Min96xS+Npy3j+/Xbha47DlKPIzV5Nx9YPV6reVdaNSfZKF7oEAnOs=
X-Received: by 2002:a25:3754:0:b0:c4e:24d:ae7f with SMTP id
 e81-20020a253754000000b00c4e024dae7fmr3689710yba.58.1688374487895; Mon, 03
 Jul 2023 01:54:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230630131753.1549685-1-rick.wertenbroek@gmail.com> <3e49476e-ee18-bfb8-ae1a-3a55a3d13f88@kernel.org>
In-Reply-To: <3e49476e-ee18-bfb8-ae1a-3a55a3d13f88@kernel.org>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Mon, 3 Jul 2023 10:54:11 +0200
Message-ID: <CAAEEuhrCHQBi89G2hzJjDZmG3zR=ErbtGQTGuVbiPUOCYh=S5Q@mail.gmail.com>
Subject: Re: [PATCH] PCI: rockchip: Use 64-bit mask on MSI 64-bit PCI address
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, stable@vger.kernel.org, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_015450_683732_EEA486D2 
X-CRM114-Status: GOOD (  26.48  )
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

T24gTW9uLCBKdWwgMywgMjAyMyBhdCA0OjA14oCvQU0gRGFtaWVuIExlIE1vYWwgPGRsZW1vYWxA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiA2LzMwLzIzIDIyOjE3LCBSaWNrIFdlcnRlbmJyb2Vr
IHdyb3RlOgo+ID4gQSAzMi1iaXQgbWFzayB3YXMgdXNlZCBvbiB0aGUgNjQtYml0IFBDSSBhZGRy
ZXNzIHVzZWQgZm9yIG1hcHBpbmcgTVNJcy4KPiA+IFRoaXMgd291bGQgcmVzdWx0IGluIHRoZSB1
cHBlciAzMiBiaXRzIGJlaW5nIHVuaW50ZW50aW9uYWxseSB6ZXJvZWQgYW5kCj4gPiBNU0lzIGdl
dHRpbmcgbWFwcGVkIHRvIGluY29ycmVjdCBQQ0kgYWRkcmVzc2VzIGlmIHRoZSBhZGRyZXNzIGhh
ZCBhbnkKPiA+IG9mIHRoZSB1cHBlciBiaXRzIHNldC4KPiA+Cj4gPiBSZXBsYWNlIDMyLWJpdCBt
YXNrIGJ5IGFwcHJvcHJpYXRlIDY0LWJpdCBtYXNrIGFuZCByZW5hbWUgMzItYml0IG1hc2sKPiA+
IGZvciBjbGFyaXR5Lgo+ID4KPiA+IEZpeGVzOiBkYzczZWQwZjFiOGIgKCJQQ0k6IHJvY2tjaGlw
OiBGaXggd2luZG93IG1hcHBpbmcgYW5kIGFkZHJlc3MgdHJhbnNsYXRpb24gZm9yIGVuZHBvaW50
IikKPiA+IFJlcG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQGxpbmFyby5v
cmc+Cj4gPiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBjaS84ZDE5ZTVi
Ny04ZmEwLTQ0YTQtOTBlMi05YmIwNmY1ZWI2OTRAbW9yb3RvLm1vdW50YWluLwo+ID4gU2lnbmVk
LW9mZi1ieTogUmljayBXZXJ0ZW5icm9layA8cmljay53ZXJ0ZW5icm9la0BnbWFpbC5jb20+Cj4g
PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+ID4gLS0tCj4gPiAgZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMgfCAxMiArKysrKystLS0tLS0KPiA+ICBkcml2ZXJz
L3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaCAgICB8ICA2ICsrKy0tLQo+ID4gIDIgZmls
ZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYyBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4gPiBpbmRleCAwYWYwZTk2NWZi
NTcuLjMxM2ZhY2U2YTg3ZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1yb2NrY2hpcC1lcC5jCj4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAtZXAuYwo+ID4gQEAgLTM1NCw3ICszNTQsNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlw
X3BjaWVfZXBfc2VuZF9tc2lfaXJxKHN0cnVjdCByb2NrY2hpcF9wY2llX2VwICplcCwgdTggZm4s
Cj4gPiAgICAgICBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAgPSAmZXAtPnJvY2tjaGlw
Owo+ID4gICAgICAgdTMyIGZsYWdzLCBtbWUsIGRhdGEsIGRhdGFfbWFzazsKPiA+ICAgICAgIHU4
IG1zaV9jb3VudDsKPiA+IC0gICAgIHU2NCBwY2lfYWRkcjsKPiA+ICsgICAgIHU2NCBwY2lfYWRk
ciwgcGNpX2FkZHJfbWFzayA9IEdFTk1BU0soNjMsIDgpOwo+Cj4gSSB0aGluayB5b3UgY2FuIHNp
bXBsaWZ5IGFsbCB0aGlzIHdpdGggb25seSB0aGUgY2hhbmdlIHRvIHRoZSBkZWZpbml0aW9uIG9m
Cj4gUENJRV9BRERSX01BU0sgbWFjcm8uIEFwcGx5aW5nIGEgNjQgYml0cyBtYXNrIGZvciBsb3cg
Yml0cyB0byBhIDMyLWJpdHMgdmFyaWFibGUKPiBpcyBPSyBhbmQgc2hvdWxkIG5vdCBnZW5lcmF0
ZSBhbnkgY29tcGxhaW50cyBmcm9tIHRoZSBjb21waWxlci4KPiBBbHNvLCB0aGF0ICI4IiBpbiB0
aGUgR0VOTUFTSyBjYW4gYmUgcmVwbGFjZWQgYnkgTUlOX0FYSV9BRERSX0JJVFNfUEFTU0VELgo+
IFNvOgo+Cj4gI2RlZmluZSBQQ0lFX0FERFJfTUFTSyAgR0VOTUFTSyg2MywgTUlOX0FYSV9BRERS
X0JJVFNfUEFTU0VEKQo+Cj4gV291bGQgZml4IGV2ZXJ5dGhpbmcgSSB0aGluay4KPgo+IElmIGl0
IGRvZXMgbm90LCBJIHdvdWxkIHByZWZlciB5b3UgZGVmaW5lIGEgbWFjcm8gZm9yIHRoYXQgR0VO
TUFTSyg2MywgOCkgbWFzawo+IGluc3RlYWQgb2YgdXNpbmcgYSB2YXJpYWJsZSBvbiBzdGFjay4g
VGhhdCB3b3VsZCBiZSBtb3JlIGVmZmljaWVudCBjb2RlIHdpc2UsCj4gcmVtb3ZpbmcgYSBtZW1v
cnkgYWNjZXNzLgoKSW5kZWVkIHRoaXMgd291bGQgbWFrZSB0aGUgcGF0Y2ggbXVjaCBzaW1wbGVy
LgpJIHdpbGwgcHJlcGFyZSBhbmQgc2VuZCB0aGUgdjIuIFRoYW5rIHlvdSBmb3IgdGhlIHN1Z2dl
c3Rpb25zCgpSZWdhcmRzLApSaWNrCgo+Cj4gPiAgICAgICB1MzIgcjsKPiA+Cj4gPiAgICAgICAv
KiBDaGVjayBNU0kgZW5hYmxlIGJpdCAqLwo+ID4gQEAgLTM5MSwxOCArMzkxLDE4IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfcGNpZV9lcF9zZW5kX21zaV9pcnEoc3RydWN0IHJvY2tjaGlwX3BjaWVf
ZXAgKmVwLCB1OCBmbiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQ
Q0lfTVNJX0FERFJFU1NfTE8pOwo+ID4KPiA+ICAgICAgIC8qIFNldCB0aGUgb3V0Ym91bmQgcmVn
aW9uIGlmIG5lZWRlZC4gKi8KPiA+IC0gICAgIGlmICh1bmxpa2VseShlcC0+aXJxX3BjaV9hZGRy
ICE9IChwY2lfYWRkciAmIFBDSUVfQUREUl9NQVNLKSB8fAo+ID4gKyAgICAgaWYgKHVubGlrZWx5
KGVwLT5pcnFfcGNpX2FkZHIgIT0gKHBjaV9hZGRyICYgcGNpX2FkZHJfbWFzaykgfHwKPiA+ICAg
ICAgICAgICAgICAgICAgICBlcC0+aXJxX3BjaV9mbiAhPSBmbikpIHsKPiA+ICAgICAgICAgICAg
ICAgciA9IHJvY2tjaGlwX29iX3JlZ2lvbihlcC0+aXJxX3BoeXNfYWRkcik7Cj4gPiAgICAgICAg
ICAgICAgIHJvY2tjaGlwX3BjaWVfcHJvZ19lcF9vYl9hdHUocm9ja2NoaXAsIGZuLCByLAo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVwLT5pcnFfcGh5c19h
ZGRyLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBjaV9h
ZGRyICYgUENJRV9BRERSX01BU0ssCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgflBDSUVfQUREUl9NQVNLICsgMSk7Cj4gPiAtICAgICAgICAgICAgIGVwLT5p
cnFfcGNpX2FkZHIgPSAocGNpX2FkZHIgJiBQQ0lFX0FERFJfTUFTSyk7Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGNpX2FkZHIgJiBwY2lfYWRkcl9tYXNr
LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH5wY2lfYWRk
cl9tYXNrICsgMSk7Cj4gPiArICAgICAgICAgICAgIGVwLT5pcnFfcGNpX2FkZHIgPSAocGNpX2Fk
ZHIgJiBwY2lfYWRkcl9tYXNrKTsKPiA+ICAgICAgICAgICAgICAgZXAtPmlycV9wY2lfZm4gPSBm
bjsKPiA+ICAgICAgIH0KPiA+Cj4gPiAtICAgICB3cml0ZXcoZGF0YSwgZXAtPmlycV9jcHVfYWRk
ciArIChwY2lfYWRkciAmIH5QQ0lFX0FERFJfTUFTSykpOwo+ID4gKyAgICAgd3JpdGV3KGRhdGEs
IGVwLT5pcnFfY3B1X2FkZHIgKyAocGNpX2FkZHIgJiB+cGNpX2FkZHJfbWFzaykpOwo+ID4gICAg
ICAgcmV0dXJuIDA7Cj4gPiAgfQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtcm9ja2NoaXAuaCBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2Nr
Y2hpcC5oCj4gPiBpbmRleCBmZTAzMzM3NzhmZDkuLjJkN2IwNWYwN2I3ZSAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCj4gPiArKysgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaAo+ID4gQEAgLTE1OCwxMSArMTU4LDEx
IEBACj4gPiAgI2RlZmluZSBQQ0lFX1JDX0NPTkZJR19USFBfQ0FQICAgICAgICAgICAgICAgKFBD
SUVfUkNfQ09ORklHX0JBU0UgKyAweDI3NCkKPiA+ICAjZGVmaW5lICAgUENJRV9SQ19DT05GSUdf
VEhQX0NBUF9ORVhUX01BU0sgICBHRU5NQVNLKDMxLCAyMCkKPiA+Cj4gPiAtI2RlZmluZSBQQ0lF
X0FERFJfTUFTSyAgICAgICAgICAgICAgICAgICAgICAgMHhmZmZmZmYwMAo+ID4gKyNkZWZpbmUg
UENJRV9MT19BRERSX01BU0sgICAgICAgICAgICBHRU5NQVNLKDMxLCA4KQo+ID4gICNkZWZpbmUg
UENJRV9DT1JFX0FYSV9DT05GX0JBU0UgICAgICAgICAgICAgIDB4YzAwMDAwCj4gPiAgI2RlZmlu
ZSBQQ0lFX0NPUkVfT0JfUkVHSU9OX0FERFIwICAgIChQQ0lFX0NPUkVfQVhJX0NPTkZfQkFTRSAr
IDB4MCkKPiA+ICAjZGVmaW5lICAgUENJRV9DT1JFX09CX1JFR0lPTl9BRERSMF9OVU1fQklUUyAw
eDNmCj4gPiAtI2RlZmluZSAgIFBDSUVfQ09SRV9PQl9SRUdJT05fQUREUjBfTE9fQUREUiAgUENJ
RV9BRERSX01BU0sKPiA+ICsjZGVmaW5lICAgUENJRV9DT1JFX09CX1JFR0lPTl9BRERSMF9MT19B
RERSICBQQ0lFX0xPX0FERFJfTUFTSwo+ID4gICNkZWZpbmUgUENJRV9DT1JFX09CX1JFR0lPTl9B
RERSMSAgICAoUENJRV9DT1JFX0FYSV9DT05GX0JBU0UgKyAweDQpCj4gPiAgI2RlZmluZSBQQ0lF
X0NPUkVfT0JfUkVHSU9OX0RFU0MwICAgIChQQ0lFX0NPUkVfQVhJX0NPTkZfQkFTRSArIDB4OCkK
PiA+ICAjZGVmaW5lIFBDSUVfQ09SRV9PQl9SRUdJT05fREVTQzEgICAgKFBDSUVfQ09SRV9BWElf
Q09ORl9CQVNFICsgMHhjKQo+ID4gQEAgLTE3MCw3ICsxNzAsNyBAQAo+ID4gICNkZWZpbmUgUENJ
RV9DT1JFX0FYSV9JTkJPVU5EX0JBU0UgICAweGMwMDgwMAo+ID4gICNkZWZpbmUgUENJRV9SUF9J
Ql9BRERSMCAgICAgICAgICAgICAoUENJRV9DT1JFX0FYSV9JTkJPVU5EX0JBU0UgKyAweDApCj4g
PiAgI2RlZmluZSAgIFBDSUVfQ09SRV9JQl9SRUdJT05fQUREUjBfTlVNX0JJVFMgMHgzZgo+ID4g
LSNkZWZpbmUgICBQQ0lFX0NPUkVfSUJfUkVHSU9OX0FERFIwX0xPX0FERFIgIFBDSUVfQUREUl9N
QVNLCj4gPiArI2RlZmluZSAgIFBDSUVfQ09SRV9JQl9SRUdJT05fQUREUjBfTE9fQUREUiAgUENJ
RV9MT19BRERSX01BU0sKPiA+ICAjZGVmaW5lIFBDSUVfUlBfSUJfQUREUjEgICAgICAgICAgICAg
KFBDSUVfQ09SRV9BWElfSU5CT1VORF9CQVNFICsgMHg0KQo+ID4KPiA+ICAvKiBTaXplIG9mIG9u
ZSBBWEkgUmVnaW9uIChub3QgUmVnaW9uIDApICovCj4KPiAtLQo+IERhbWllbiBMZSBNb2FsCj4g
V2VzdGVybiBEaWdpdGFsIFJlc2VhcmNoCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
