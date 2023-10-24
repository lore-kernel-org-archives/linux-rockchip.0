Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E193C07545
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 14:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cu21RMSm80qyHZZyD3mV4ODHB2fpuL0Te//xqZfN6yo=; b=p8thVslZyD9UtI
	mCgK84YNkZRr/G5vZ7J/SIrOrQHuSYJKuvX5G1k/n7FOhqn+HQ/J3l/8T1ShCZ6Ff/74FGO3+Rnds
	2LMVdLExj032ZxcB7u8YrLAVZfc+ykk3LN7I7eCs5295yF5O9hSnAwP4zFj31v8d3MM9CpBXtaLvY
	4yoEl0YyFBXTsufyi2tODoh9Omv4QW+oMRRypKiQkuzoPMWGemxylJ53FaY4jBLJwov6jM3hCr5ik
	dCJaQ2TXZqtuXd6yg7OH//qzM5zmxnbXhP6fWWAoLw0XmSgv0zuQpXg9SGLIj1g7e0jGEWG3bZSg3
	tWcmlhIE8K9EaOiF5IMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvILH-00A7a6-01;
	Tue, 24 Oct 2023 14:25:11 +0000
Received: from mail-oo1-f41.google.com ([209.85.161.41])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvILC-00A7Xk-1Z;
	Tue, 24 Oct 2023 14:25:08 +0000
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5845213c583so1504672eaf.0;
        Tue, 24 Oct 2023 07:25:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698157503; x=1698762303;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sTENRnFDH/MiSBA8uB23f0CHV3Zm50OBvimHwqLqTLY=;
        b=tFA1u1k3glBZNnGOWSd+SPPdVpLS39aSzJQezUHquaZGusfDbkGuII5h+0GrC74z5B
         X78eyzsDrcMEyrNxUT7RzTShB5itOHAl9QU1jT9d2OOZEuG6g7nGOtH/3BTu7Rgmi/Vc
         eCP/0OeKts7HeFC49NLBElgdsab4MKWy/iRwWzYGGAR89B92kGzZvcIFZEzXLZn57/Mx
         ZHCFcOWonzB4evPspSeAoVWf4Fr5e6tk+llpdJ2H9zQQz8b6e8L1otxlCSxDmEy1r/vE
         n9kH0NdAcBf7n5zWdbZyCQ61gu0TRDJrOkwBhpwe37Dy7wPrhyhZfy6HbZZgjZFyIN01
         jDxg==
X-Gm-Message-State: AOJu0Yzy2BjgeB+K4tfND1VUAeWhTo5U4mW9GF6AeB0LbnjQKimokywm
	52d1F0VmAqrnn4mfjiCPCQ==
X-Google-Smtp-Source: AGHT+IFi+wUzpHfgZ8zfKt641YNAo4P94oG7imu28ijkctLr8rSHz5f9MF1hyEAgXwXwercbvcmRUQ==
X-Received: by 2002:a05:6870:1f0c:b0:1e9:bbfe:6457 with SMTP id pd12-20020a0568701f0c00b001e9bbfe6457mr15080276oab.6.1698157502801;
        Tue, 24 Oct 2023 07:25:02 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k7-20020a056870d38700b001e9a7280a30sm2187892oag.0.2023.10.24.07.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 07:25:02 -0700 (PDT)
Received: (nullmailer pid 3693654 invoked by uid 1000);
	Tue, 24 Oct 2023 14:24:57 -0000
Date: Tue, 24 Oct 2023 09:24:57 -0500
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Vincent Shih <vincent.sunplus@gmail.com>, Alessandro Zummo <a.zummo@towertech.it>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Christian Marangi <ansuelsmth@gmail.com>, Anson Huang <Anson.Huang@nxp.com>, 
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>, Lala Lin <lala.lin@mediatek.com>, 
	Komal Bajaj <quic_kbajaj@quicinc.com>, Kumar Thella <sthella@codeaurora.org>, 
	Keiji Hayashibara <hayashibara.keiji@socionext.com>, linux-mtd@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	asahi@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-rtc@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH V2] dt-bindings: nvmem: move deprecated cells binding to
 its own file
Message-ID: <20231024142457.GA3684864-robh@kernel.org>
References: <20231003064018.7502-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231003064018.7502-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_072506_532232_EBDD6C15 
X-CRM114-Status: GOOD (  15.34  )
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

T24gVHVlLCBPY3QgMDMsIDIwMjMgYXQgMDg6NDA6MThBTSArMDIwMCwgUmFmYcWCIE1pxYJlY2tp
IHdyb3RlOgo+IEZyb206IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBT
dXBwb3J0IGZvciBvbGQgTlZNRU0gZml4ZWQgY2VsbHMgd2FzIGRlcHJlY2F0ZWQgaW4gZmF2b3Vy
IG9mCj4gImZpeGVkLWxheW91dCIuIEl0J3Mgc3RpbGwgcGFydCBvZiB0aGUgbnZtZW0ueWFtbCB0
aG91Z2ggYW5kIG1heSBiZQo+IHVua25vd2luZ2x5IHVzZWQgYnkgbmV3IGJpbmRpbmdzIGFkZGVk
IHdpdGhvdXQgbXVjaCBvZiBhbmFseXplLgo+IAo+IFRvIG1ha2UgaXQgbW9yZSBkaWZmaWN1bHQg
dG8gYWNjaWRlbnRhbGx5IHN1cHBvcnQgb2xkIHN5bnRheCBtb3ZlIGl0cwo+IGJpbmRpbmcgdG8g
c2VwYXJhdGVkIGZpbGUgd2l0aCAiZGVwcmVjYXRlZCIgaW4gaXRzIG5hbWUuCj4gCj4gU2lnbmVk
LW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IC0tLQo+IFYyOiBG
aXggcGF0aCB0byBudm1lbS1kZXByZWNhdGVkLWNlbGxzLnlhbWwgaW4gYW1sb2dpYyxtZXNvbjYt
cnRjLnlhbWwKPiAKPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL210ZC55YW1sICAgICAg
ICAgIHwgIDcgKysrKy0KPiAgLi4uL2JpbmRpbmdzL210ZC9wYXJ0aXRpb25zL252bWVtLWNlbGxz
LnlhbWwgIHwgIDEgKwo+ICAuLi4vbnZtZW0vYW1sb2dpYyxtZXNvbi1neGJiLWVmdXNlLnlhbWwg
ICAgICAgfCAgMSArCj4gIC4uLi9iaW5kaW5ncy9udm1lbS9hbWxvZ2ljLG1lc29uNi1lZnVzZS55
YW1sICB8ICAxICsKPiAgLi4uL2JpbmRpbmdzL252bWVtL2FwcGxlLGVmdXNlcy55YW1sICAgICAg
ICAgIHwgIDEgKwo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9udm1lbS9pbXgtb2NvdHAueWFt
bCAgfCAgMSArCj4gIC4uLi9iaW5kaW5ncy9udm1lbS9tZWRpYXRlayxlZnVzZS55YW1sICAgICAg
ICB8ICAxICsKPiAgLi4uL252bWVtL21pY3JvY2hpcCxzYW1hN2c1LW90cGMueWFtbCAgICAgICAg
IHwgIDEgKwo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9udm1lbS9teHMtb2NvdHAueWFtbCAg
fCAgMSArCj4gIC4uLi9udm1lbS9udm1lbS1kZXByZWNhdGVkLWNlbGxzLnlhbWwgICAgICAgICB8
IDI4ICsrKysrKysrKysrKysrKysrKysKPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbnZtZW0v
bnZtZW0ueWFtbCAgICAgIHwgIDkgLS0tLS0tCj4gIC4uLi9iaW5kaW5ncy9udm1lbS9xY29tLHFm
cHJvbS55YW1sICAgICAgICAgICB8ICAxICsKPiAgLi4uL2JpbmRpbmdzL252bWVtL3Fjb20sc2Vj
LXFmcHJvbS55YW1sICAgICAgIHwgIDEgKwo+ICAuLi4vYmluZGluZ3MvbnZtZW0vcWNvbSxzcG1p
LXNkYW0ueWFtbCAgICAgICAgfCAgMSArCj4gIC4uLi9iaW5kaW5ncy9udm1lbS9yb2NrY2hpcCxv
dHAueWFtbCAgICAgICAgICB8ICAxICsKPiAgLi4uL2JpbmRpbmdzL252bWVtL3JvY2tjaGlwLWVm
dXNlLnlhbWwgICAgICAgIHwgIDEgKwo+ICAuLi4vbnZtZW0vc29jaW9uZXh0LHVuaXBoaWVyLWVm
dXNlLnlhbWwgICAgICAgfCAgMSArCj4gIC4uLi9iaW5kaW5ncy9udm1lbS9zdW5wbHVzLHNwNzAy
MS1vY290cC55YW1sICB8ICAxICsKPiAgLi4uL2JpbmRpbmdzL3J0Yy9hbWxvZ2ljLG1lc29uNi1y
dGMueWFtbCAgICAgIHwgIDEgKwo+ICAxOSBmaWxlcyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCsp
LCAxMCBkZWxldGlvbnMoLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9udm1lbS9udm1lbS1kZXByZWNhdGVkLWNlbGxzLnlhbWwKCllvdSBt
aXNzZWQgYWxsd2lubmVyLHN1bjRpLWExMC1zaWQueWFtbCBhbmQgYXQyNC55YW1sIAooYXJjaC9h
cm0vYm9vdC9kdHMvYnJvYWRjb20vYmNtNTMwMTYtbWVyYWtpLW1yMzIuZHRzKS4gTWF5YmUgd2Ug
d2FudCB0byAKZml4IHRoZSBsYXR0ZXIgY2FzZSBiZWNhdXNlIGF0MjQgd2lsbCBjb250aW51YWxs
eSBoYXZlIG5ldyB1c2Vycy4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
