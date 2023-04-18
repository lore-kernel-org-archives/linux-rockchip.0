Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BAD1C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 07:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwwpmhOjWkaf3Q1+VLsnxvMDioJLD0Ed4VtTmS0HXhM=; b=ruZNMXtHsN5ZC7
	MDtbjOS+DHEkYqcUvfBiVxT0LupSIPF5+ZMLFhkPREVv+zNoZ/2C9RsmoR4SJmFscD8LfVRz87Uim
	eYq3if95YFwbyDvLE/KYJr8WqfN2gPiF3DBkizCY0eCwIJvlLh72xD530Exc+HvY3mkD4Xu0d0Eej
	BKlCSk2FYuoJ+2e9PtDuk3Czl6LOq5YasBczwyhV/9b5SqmUOn8TiXbdvzn4kxcP9/LotRo4oGa7+
	8iaaLpsxQPm3uVxaj5y4Mz4vraXhxacRb/4yIt9/haE/mD802+gvPQEvnKf/p2LW/JASjR17TR57L
	WSvnBAuVYKxP7P7OWoFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pofVH-0014wk-2B;
	Tue, 18 Apr 2023 07:11:51 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pofVE-0014vg-1Q;
	Tue, 18 Apr 2023 07:11:49 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-38ded2d8bcaso203193b6e.0;
        Tue, 18 Apr 2023 00:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681801905; x=1684393905;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eTWib7JxQgRfPP7nkQkRpwdyPsWxBj+IL3VbidooW0M=;
        b=J4NZKVGO/lSSWabskYFTKJl7+twjSCArg8FsxPMnrwA3zyqKNEwgiiXyGKXDy4mQMb
         P3ouqsIzK1eky4fhu+inLOpwapvAhULUBKGPzBAZ4sOAxH52iIUDQ0WDaCUXSfg7gOzl
         yzeezvDSwgawcMVQJTFlUvw+F2yo0UjVsGFqTWOdvtE8CyVao2CRdqXX2g2eF0H0x9T+
         5E660GuTpA/eHryYB46qb6jXjVYG1BDCUdrAzsD000E3Hz4dI4EqCH9YfQ7nWxDsN7v/
         AegOHAzq+GGNnpVnUZ1kMnbh/8VsMe6k4eEWWg6yymgvctrdvfKqn4RKM7o4Ve72wb4K
         SY0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681801905; x=1684393905;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eTWib7JxQgRfPP7nkQkRpwdyPsWxBj+IL3VbidooW0M=;
        b=WEt2UDPEt1vgqut4xWvc/H6hzv2YFHOT8KNUld0b3Di2OCOq4F8lD8J31F9lw8Q7kV
         /KonfgzKOs8aPBp3mJ7cowLRwioeMiq8eKihP+0pbXxTsyD5Rpg4/KAmheZZV74Nvp2a
         b3WIS7rby6SJcZo96KNnXvrUg1x5ADKvdtDzK3P/ot8Zs6V+KqvTIpuR4y1UvJE2ijvc
         Q4/y4YKfWUJGgZBXJFWx1Png1cPKgYsvxXhymSAtbe9AUAOKvX05g3C5A9yr8mhiJkHH
         EjbsMpw1a5AhqeWs6zaLdeDj9KwKuL7Kg7SrXwPGOQMgyGyX9J0/pMrC/x3WpfYYZ6zo
         dCtg==
X-Gm-Message-State: AAQBX9e+z/ap25OhdiOU4PJxltiGaLbMIpGMTh63xLRtS+hn53RGIS/z
	zGfhsItnZFz5WOhk8dP28bb8BwEaj7Cvaf05CAs=
X-Google-Smtp-Source: AKy350aMS52U0BpcvRun1qRMCtVKhTYvV6yb/hI65EaQPrxsqIVekJ5kylKFKvwKZcLodcwL9kc3njD3myEsrtI+Nyw=
X-Received: by 2002:aca:db54:0:b0:38b:c09e:500f with SMTP id
 s81-20020acadb54000000b0038bc09e500fmr248261oig.10.1681801903242; Tue, 18 Apr
 2023 00:11:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
 <20230417092631.347976-12-rick.wertenbroek@gmail.com> <cf47e154-1a48-58a9-b139-95b51b87d356@kernel.org>
In-Reply-To: <cf47e154-1a48-58a9-b139-95b51b87d356@kernel.org>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Tue, 18 Apr 2023 09:11:07 +0200
Message-ID: <CAAEEuhq0nCT0XVuEeiHxY=tAsHipJPY=Uq59B=vZAwrXXjMzcg@mail.gmail.com>
Subject: Re: [PATCH v4 11/11] PCI: rockchip: Set address alignment for
 endpoint mode
To: Damien Le Moal <dlemoal@kernel.org>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, 
	Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>, 
	Caleb Connolly <kc@postmarketos.org>, Brian Norris <briannorris@chromium.org>, 
	Corentin Labbe <clabbe@baylibre.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Hugh Cole-Baker <sigmaris@gmail.com>, Judy Hsiao <judyhsiao@chromium.org>, 
	Arnaud Ferraris <arnaud.ferraris@collabora.com>, linux-pci@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_001148_478528_D034FFAC 
X-CRM114-Status: GOOD (  20.92  )
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

T24gVHVlLCBBcHIgMTgsIDIwMjMgYXQgMTo1MeKAr0FNIERhbWllbiBMZSBNb2FsIDxkbGVtb2Fs
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gNC8xNy8yMyAxODoyNiwgUmljayBXZXJ0ZW5icm9l
ayB3cm90ZToKPiA+IEZyb206IERhbWllbiBMZSBNb2FsIDxkbGVtb2FsQGtlcm5lbC5vcmc+Cj4g
Pgo+ID4gVGhlIGFkZHJlc3MgdHJhbnNsYXRpb24gdW5pdCBvZiB0aGUgcm9ja2NoaXAgRVAgY29u
dHJvbGxlciBkb2VzIG5vdCB1c2UKPiA+IHRoZSBsb3dlciA4IGJpdHMgb2YgYSBQQ0llLXNwYWNl
IGFkZHJlc3MgdG8gbWFwIGxvY2FsIG1lbW9yeS4gVGh1cyB3ZQo+ID4gbXVzdCBzZXQgdGhlIGFs
aWduIGZlYXR1cmUgZmllbGQgdG8gMjU2IHRvIGxldCB0aGUgdXNlciBrbm93IGFib3V0IHRoaXMK
PiA+IGNvbnN0cmFpbnQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRGFtaWVuIExlIE1vYWwgPGRs
ZW1vYWxAa2VybmVsLm9yZz4KPgo+IEkgdGhpbmsgdGhpcyBvbmUgYWxzbyBuZWVkcyB0aGUgdGFn
Ogo+Cj4gRml4ZXM6IGNmNTkwYjA3ODM5MSAoIi4uLiIpCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmcKPgo+IEFuZCB5b3UgZm9yZ290IHRvIGFkZCB5b3UgU2lnbmVkLW9mZi1ieSB0YWcgKHdo
ZW4gc2VuZGluZyBzb21lb25lcyBlbHNlIHBhdGNoLAo+IHlvdSBtdXN0IGFkZCB5b3VyIG93biBT
b0IgdGFnIGFmdGVyIHRoZSBhdXRob3IncyB0YWcpLgo+CgpUaGFuayB5b3UgZm9yIGFsbCB5b3Vy
IGNvbW1lbnRzLCBJJ2xsIGFkZCB0aGUgdGFncy4KSSByZXJlYWQgdGhlIGRvY3VtZW50YXRpb24s
IEkgbWlzc2VkIGl0LCBpdCdzIHRoZSBmaXJzdAp0aW1lIEkgc2VudCBzb21lb25lIGVsc2VzIHBh
dGNoLgoKPiA+IC0tLQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1l
cC5jIHwgMSArCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jIGIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMKPiA+IGluZGV4IGVkZmNlZDMx
MWE5Zi4uMGFmMGU5NjVmYjU3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9wY2llLXJvY2tjaGlwLWVwLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNp
ZS1yb2NrY2hpcC1lcC5jCj4gPiBAQCAtNDQyLDYgKzQ0Miw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgcGNpX2VwY19mZWF0dXJlcyByb2NrY2hpcF9wY2llX2VwY19mZWF0dXJlcyA9IHsKPiA+ICAg
ICAgIC5saW5rdXBfbm90aWZpZXIgPSBmYWxzZSwKPiA+ICAgICAgIC5tc2lfY2FwYWJsZSA9IHRy
dWUsCj4gPiAgICAgICAubXNpeF9jYXBhYmxlID0gZmFsc2UsCj4gPiArICAgICAuYWxpZ24gPSAy
NTYsCj4gPiAgfTsKPiA+Cj4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVz
Kgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
