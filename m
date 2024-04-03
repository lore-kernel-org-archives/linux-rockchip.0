Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D8EEC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 07:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8f9IhY7lH5MnIfelu3I14fQkoZUIhQiLR3NJIi+TLDQ=; b=353smHC2Cy/H+q
	qdSFzB0pPg21AVYZYY2Ob9hQJGTZFoe9KXj1LbydS1ezagGdVOZ4oxWl5sqo6JPvZEVNnvYTSKLE5
	FrTrr8jmzbFSgFjgY4yDSWN/qLQj7gE9yWLa3lz+nYA2p0N/EpVJVsQ3Unfctv2/eWMDZSrwn9wQm
	0Ed3RFS1GHrEvEAiNXDlegIu3CxgeyodFoUUTITOA45eLUqJdvhlcnJ9LFUkFfYCqVvqroezHipNK
	xIDK0XEdUycYUnDHkNvI+/l76pXxRlQlM1jJhLu05Gfe7Lf4yKxb4++fhz5FIimKBAT0Nuvan0GhJ
	Zk9KDWTvk+Wq+Q3epkMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvML-0000000EeJG-0oMp;
	Wed, 03 Apr 2024 07:48:37 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvMG-0000000EeFl-239Z
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Apr 2024 07:48:34 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1e0ae065d24so51416855ad.1
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Apr 2024 00:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712130510; x=1712735310; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oiLhE3nJcxEv6fm07mV5XlsWCD0O08cn9iKLU7OjZzY=;
        b=YSK347jaS+rFcrxpvXw5QmaHyMh1KKOuFWpYqYmNQ6VJ8wt2y8CJ6Ac2Krh11Op5CZ
         F5xU98kyvTX7dOZjugIfK2J1itJx+HJyxItuGEYliz/l24JBCt4dEKJD0wsM7Mpt4Z5t
         Q9rbLKOlAQ8W9h8AnVpsb0wrdT+KUYG49gFkvXd/yJnOBGvkjfoRNhE7UISouSs8X6Vx
         Ojm+1ayHvevGuzxTyJyk11PtPEhBfX+kzr+YRdRZUoN3h46UCFA/N60gPfiYIdUpA6Sw
         xW+O7yXTkyL22+zR4ZxL681bu3ef7rVuTmPOL+G4peJOqbC+7OmsGJ8gSMCo7jIo/EEX
         xfBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712130510; x=1712735310;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oiLhE3nJcxEv6fm07mV5XlsWCD0O08cn9iKLU7OjZzY=;
        b=shrJ2ocKE/aKCn7wDhHQ4xAWt1MBbGv0kVlhmyjGySk6oxjV2Cqt3lvWI8dpr5i3v9
         n3YAbn8BdfiTOwjBmgCFgmbnQy29LAa4wkwu19e8JlZ13WNhtt82riV36bbZlsijAUKa
         3m6JBx4iVZhuhuFIfwg4SP3WVGwNeRMqKMMsQKyGF0yPHi6ntpkQLPQu1e24cpoCVc7W
         /IMiTfe0ZjLrVcYvpCiW83pkkbqho3OZ7Pvoo0CznkZWITGCZJiRlF+VDXccJaKEJr1f
         XwHAtU/KqttAE6uy1X9vajxkMEe5LyYo3UlfDZna3iZdehsJ/hxKrVZB+dVb2ERYPcMa
         wOKQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4WDDvs8o81O6WqerddR6Z4WpzHmTBjH9JEm5Bbbscysarj9G8aP5P40OUo0VhJHQGNalOoZIZulKKxuCGJm5xSYXTCHMRpoa9x8ktGZXs0s2M
X-Gm-Message-State: AOJu0Ywd8i34iaEDFbg7qUcOg5JldyjNOGG96ECHQA4iN9Dn9bfX5jWW
	gfejNLEomMgf2I7x9yYWeaT67wi353V43Ew4JPHMANYUBI+pqAXsYZKa0CtnmA==
X-Google-Smtp-Source: AGHT+IHNyPa653DZR4WUPhXaph3qHIeFF1sftZgr1SEp+rlYp4MQGikAbqndRiCsKzJkwfzdnQDVWw==
X-Received: by 2002:a17:902:64c8:b0:1e2:7879:9646 with SMTP id y8-20020a17090264c800b001e278799646mr2958847pli.36.1712130509976;
        Wed, 03 Apr 2024 00:48:29 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id n14-20020a170902d2ce00b001e0942da6c7sm12473372plc.284.2024.04.03.00.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:48:29 -0700 (PDT)
Date: Wed, 3 Apr 2024 13:18:23 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v2 06/18] PCI: endpoint: test: Implement link_down event
 operation
Message-ID: <20240403074823.GE25309@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-7-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240330041928.1555578-7-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_004832_589351_D4C0EF8F 
X-CRM114-Status: GOOD (  18.07  )
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

T24gU2F0LCBNYXIgMzAsIDIwMjQgYXQgMDE6MTk6MTZQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gSW1wbGVtZW50IHRoZSBsaW5rX2Rvd24gZXZlbnQgb3BlcmF0aW9uIHRvIHN0b3Ag
dGhlIGNvbW1hbmQgZXhlY3V0aW9uCj4gZGVsYXllZCB3b3JrIHdoZW4gdGhlIGVuZHBvaW50IGNv
bnRyb2xsZXIgbm90aWZpZXMgYSBsaW5rIGRvd24gZXZlbnQuCj4gCj4gU2lnbmVkLW9mZi1ieTog
RGFtaWVuIExlIE1vYWwgPGRsZW1vYWxAa2VybmVsLm9yZz4KClRoaXMgcGF0Y2ggaXMgYWxyZWFk
eSBwYXJ0IG9mIGFub3RoZXIgc2VyaWVzIEkgcG9zdGVkIFsxXSBhbmQgdW5kZXIgcmV2aWV3LiBT
bwp0aGlzIGNhbiBiZSBkcm9wcGVkLgoKLSBNYW5pCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtcGNpLzIwMjQwNDAxLXBjaS1lcGYtcmV3b3JrLXYyLTktOTcwZGJlOTBiOTlkQGxp
bmFyby5vcmcvCgo+IFJldmlld2VkLWJ5OiBGcmFuayBMaSA8RnJhbmsuTGlAbnhwLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtdGVzdC5jIHwgMTAg
KysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNpLWVwZi10ZXN0LmMgYi9k
cml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNpLWVwZi10ZXN0LmMKPiBpbmRleCBhYjQw
YzMxODI2NzcuLmU2ZDRlMTc0N2M5ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9lbmRwb2lu
dC9mdW5jdGlvbnMvcGNpLWVwZi10ZXN0LmMKPiArKysgYi9kcml2ZXJzL3BjaS9lbmRwb2ludC9m
dW5jdGlvbnMvcGNpLWVwZi10ZXN0LmMKPiBAQCAtODI0LDkgKzgyNCwxOSBAQCBzdGF0aWMgaW50
IHBjaV9lcGZfdGVzdF9saW5rX3VwKHN0cnVjdCBwY2lfZXBmICplcGYpCj4gIAlyZXR1cm4gMDsK
PiAgfQo+ICAKPiArc3RhdGljIGludCBwY2lfZXBmX3Rlc3RfbGlua19kb3duKHN0cnVjdCBwY2lf
ZXBmICplcGYpCj4gK3sKPiArCXN0cnVjdCBwY2lfZXBmX3Rlc3QgKmVwZl90ZXN0ID0gZXBmX2dl
dF9kcnZkYXRhKGVwZik7Cj4gKwo+ICsJY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZlcGZfdGVz
dC0+Y21kX2hhbmRsZXIpOwo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICBzdGF0aWMgY29u
c3Qgc3RydWN0IHBjaV9lcGNfZXZlbnRfb3BzIHBjaV9lcGZfdGVzdF9ldmVudF9vcHMgPSB7Cj4g
IAkuY29yZV9pbml0ID0gcGNpX2VwZl90ZXN0X2NvcmVfaW5pdCwKPiAgCS5saW5rX3VwID0gcGNp
X2VwZl90ZXN0X2xpbmtfdXAsCj4gKwkubGlua19kb3duID0gcGNpX2VwZl90ZXN0X2xpbmtfZG93
biwKPiAgfTsKPiAgCj4gIHN0YXRpYyBpbnQgcGNpX2VwZl90ZXN0X2FsbG9jX3NwYWNlKHN0cnVj
dCBwY2lfZXBmICplcGYpCj4gLS0gCj4gMi40NC4wCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N
4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
