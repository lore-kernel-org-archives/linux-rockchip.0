Return-Path: <SRS0=gs2I=DM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D70CAC4727D
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2020 08:05:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7925220756
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2020 08:05:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="N5bu9jUy";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QT2sz2z2"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7925220756
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qPDljVmQW1Q6sIceWQeHqYNOCi6nLoRgnbSok4mAl2E=; b=N5bu9jUytTCSgKfN/tSJqMDm5
	bHDw4DE+ENAp2L2LTsjUv+3VT1sNVAUpIcccDzsdY+5muKrSmtfhAaFXjFnlA98xy6ghXFrXl1hXP
	/UAHm4XVbEELSfOgFAATuCfg9Cv49jirK50AzpFVCdoEW8Fg0o8gmsEO0omm87wzbl98Gw5rsTA7n
	R/bheYDHmwntOPFK/8ADs4SDsKE1UFMd5F/B0jSF8TH+hLxn3Z4V/gSGIYd0td8uj5YpimU8dyTeF
	Sk2pbhnlV/X/jSNFoZyqTakVZw5IsotIhQ+rhMeRiY6qzEXso0AurgQTlPjOM1TZJz9ePfgNzccHk
	T84wiSGiw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kPLUQ-0003L0-4f; Mon, 05 Oct 2020 08:04:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPLUN-0003JJ-6S
 for linux-rockchip@lists.infradead.org; Mon, 05 Oct 2020 08:04:56 +0000
Received: by mail-wr1-x443.google.com with SMTP id k10so8404085wru.6
 for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2020 01:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=IeiNTBeAySgxF765tOCATEDwXLrm3RiAjoTBQHN6wK0=;
 b=QT2sz2z2T2ObbOF9cBuqPj/xMs2V2JkpGaC1yQPewHnLjCK6KfpJxnFBd52Yg4AGmP
 VJxRGRPxaRQLhLWf/cJj+4TFWIvc5S6rpMyihLW8guAo+UvNRqZKoELqvBpOePuA/Etp
 z293SdQf8ZGebrwCEz1gY7IlvwFjzz13UZb9UEwJiawxT5K21aKdmv/U8ZWx8aU8cdsz
 g1EJ2lezQTBEJzLkUS6vaHwbRc5HEANA2MQBDDgPE/harsOdRDrcIYwSmq3urQxn7+oQ
 VI6XlJwzca0RWlRBNRLXanZ5iKvZaicHTe2BxzY/5qO5xvvbJ/G2d1fmd5VfFwE503zT
 3Stw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=IeiNTBeAySgxF765tOCATEDwXLrm3RiAjoTBQHN6wK0=;
 b=VsHvL0R0Esq3Pz8qGDXVzhXCjIcvTfQU2cBVSeMIVdz0A65zJwAuxFdIWawABh4wI/
 E2s8rkOk7lCjqA/6iqNlGcrpI3P6mFeWSx/U4369ZfLe1pEBJaUHO1uLt21AuaAFF9vf
 B8P0+t5QODlDokayqEwBgZPJdVctm6NNW2n8sfeT8qx78t/FmmTMhubesrl9xpKPeABR
 Lvg+bebVTPmkLUsVnJHl4OeNj3NdNRkRQ9eYSyp5yqPjagFnb5S/dwUz7nvBJO9QS9PZ
 fUKLkZ765uBDFT0aQjBsL5a+eOGyZAZOo/FBHdOjc3OreH+Jq6UGShD2YN/MuoK8ak+M
 A1Sg==
X-Gm-Message-State: AOAM530n/iYsn/pTNQwoysmV5JJ/QIqyJIPZw0ajnVtNCEhH4Faq7r/4
 Awb1aau/wZoukSnNBa8Cz7xc8A==
X-Google-Smtp-Source: ABdhPJxB5n46P+iT3QRjzewwc6VgfO5oWkwQMA51B+oAEZSgUCF8P3GFXLcjkKteouHQRqUkrIZvVQ==
X-Received: by 2002:adf:f10e:: with SMTP id r14mr9419051wro.337.1601885092289; 
 Mon, 05 Oct 2020 01:04:52 -0700 (PDT)
Received: from dell ([91.110.221.236])
 by smtp.gmail.com with ESMTPSA id x2sm11899009wrl.13.2020.10.05.01.04.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Oct 2020 01:04:51 -0700 (PDT)
Date: Mon, 5 Oct 2020 09:04:48 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: Another round of adding missing
 'additionalProperties'
Message-ID: <20201005080448.GT6148@dell>
References: <20201002234143.3570746-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201002234143.3570746-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201005_040455_254600_4F8106CA 
X-CRM114-Status: GOOD (  14.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-clk@vger.kernel.org,
 linux-leds@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-mips@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-gpio@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-hwmon@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-spi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org, Baolin Wang <baolin.wang7@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCAwMiBPY3QgMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IEFub3RoZXIgcm91bmQg
b2Ygd2Fjay1hLW1vbGUuIFRoZSBqc29uLXNjaGVtYSBkZWZhdWx0IGlzIGFkZGl0aW9uYWwKPiB1
bmtub3duIHByb3BlcnRpZXMgYXJlIGFsbG93ZWQsIGJ1dCBmb3IgRFQgYWxsIHByb3BlcnRpZXMg
c2hvdWxkIGJlCj4gZGVmaW5lZC4KPiAKPiBDYzogVGhpZXJyeSBSZWRpbmcgPHRoaWVycnkucmVk
aW5nQGdtYWlsLmNvbT4KPiBDYzogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8u
b3JnPgo+IENjOiBTdGVwaGVuIEJveWQgPHNib3lkQGtlcm5lbC5vcmc+Cj4gQ2M6IFNoYXduIEd1
byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KPiBDYzogQmpvcm4gQW5kZXJzc29uIDxiam9ybi5hbmRl
cnNzb25AbGluYXJvLm9yZz4KPiBDYzogQmFvbGluIFdhbmcgPGJhb2xpbi53YW5nN0BnbWFpbC5j
b20+Cj4gQ2M6IEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVzLm5ldD4KPiBDYzogSm9uYXRo
YW4gQ2FtZXJvbiA8amljMjNAa2VybmVsLm9yZz4KPiBDYzogTWF1cm8gQ2FydmFsaG8gQ2hlaGFi
IDxtY2hlaGFiQGtlcm5lbC5vcmc+Cj4gQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGlu
Y2hhcnQrcmVuZXNhc0BpZGVhc29uYm9hcmQuY29tPgo+IENjOiBMZWUgSm9uZXMgPGxlZS5qb25l
c0BsaW5hcm8ub3JnPgo+IENjOiBVbGYgSGFuc3NvbiA8dWxmLmhhbnNzb25AbGluYXJvLm9yZz4K
PiBDYzogIkRhdmlkIFMuIE1pbGxlciIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+Cj4gQ2M6IEJqb3Ju
IEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+Cj4gQ2M6IFZpbm9kIEtvdWwgPHZrb3VsQGtl
cm5lbC5vcmc+Cj4gQ2M6IExpYW0gR2lyZHdvb2QgPGxnaXJkd29vZEBnbWFpbC5jb20+Cj4gQ2M6
IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFu
IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiBDYzogRGFuaWVsIExlemNhbm8gPGRhbmll
bC5sZXpjYW5vQGxpbmFyby5vcmc+Cj4gQ2M6IGxpbnV4LWNsa0B2Z2VyLmtlcm5lbC5vcmcKPiBD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1zcGlAdmdlci5r
ZXJuZWwub3JnCj4gQ2M6IGxpbnV4LWdwaW9Admdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LWh3
bW9uQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1paW9Admdlci5rZXJuZWwub3JnCj4gQ2M6
IG9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBDYzogbGludXgtbGVk
c0B2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6
IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtc3RtMzJAc3Qt
bWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbQo+IENjOiBsaW51eC1taXBzQHZnZXIua2VybmVsLm9y
Zwo+IENjOiBsaW51eC1tbWNAdmdlci5rZXJuZWwub3JnCj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5l
bC5vcmcKPiBDYzogbGludXgtcGNpQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1wbUB2Z2Vy
Lmtlcm5lbC5vcmcKPiBDYzogbGludXgtcmVtb3RlcHJvY0B2Z2VyLmtlcm5lbC5vcmcKPiBDYzog
bGludXgtc2VyaWFsQHZnZXIua2VybmVsLm9yZwo+IENjOiBhbHNhLWRldmVsQGFsc2EtcHJvamVj
dC5vcmcKPiBDYzogbGludXgtdXNiQHZnZXIua2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IFJv
YiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gCj4gSSdsbCB0YWtlIHRoaXMgdGhy
dSB0aGUgRFQgdHJlZS4KClsuLi5dCgo+ICAuLi4vYmluZGluZ3MvbWZkL2dhdGV3b3Jrcy1nc2Mu
eWFtbCAgICAgICAgICAgfCAgMiArKwo+ICAuLi4vYmluZGluZ3MvbWZkL3h5bG9uLGxvZ2ljdmMu
eWFtbCAgICAgICAgICAgfCAxNCArKysrKysrKysrKy0tCgpBY2tlZC1ieTogTGVlIEpvbmVzIDxs
ZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRl
Y2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0
ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
