Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 133DBCD1297
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 18:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8pjVTDmWNOHl3Fq0TB42rxhzQcaoH+oe8cKskWNkEc=; b=lJxRkwstEAkzF2
	ri/zJgDl/boXg5adfJ+zUJmCbTrvVxLZ4rpvBrzrPmp3f4+H5ByhnmU+nvbTZdImoSzA89DSDM/hJ
	uhIYVqdS1lAYu7A2VWRvBLvklPqxCTGmp1FI7oy1/OrIU7KbWbIXmuQ2oFOQinHZHKEBrv0N5paWt
	ukgUPj8pmKtdRz7SqnWw9TyfjhiWq97wixkU7Njn+Vrnhz04mAORPKTwbO55TvzBu5qlKh09bcOfZ
	1iftXOEoigYdKr9iMZkwzI0y9OshQErKf9HM/dtV2FobbpwgqARTgb94f4P0A4hAVSMsUS85BF/Nf
	Euy9w6E7UmF5RteUZaAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rucQI-00000008QfJ-23np;
	Wed, 10 Apr 2024 18:11:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rucQD-00000008Qe3-2Pts;
	Wed, 10 Apr 2024 18:11:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AE80A61CE5;
	Wed, 10 Apr 2024 18:11:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E432C43399;
	Wed, 10 Apr 2024 18:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712772704;
	bh=SIfBrassqv54JCwf0gOao1lkha0r6aQpuZyT4i7ALWs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=E6D8RfLIvohoDBOVtvP9WjCvBqpxPjWQi3HZG5sqrgWP/cThTY4SbcDt3N8yTcsn0
	 K5KzF1xFMZbMhzeMdc+F1UZch6i88XrLP5skhf9dN672OoqoYv5SZHFmh9Owu5UmgL
	 nfgB85Hhsd+GeUvOUbzzkl+KUJLjxRGoNadqtKzIbkUdT8veuVPY1EIF0BwXAb7use
	 Lz5+gIT4PUZ9O+xRbWbjGGwonUaW//MChfhpIT8bvKYsCEO+S/Q8SEWI6Os9aw82Zp
	 iohh7xl1xXXp7QeVRtSNDMeYQ0OWla//I4kDbqDpNyJd3dL0QIqxYmxCys9Df5UWk8
	 wloVmtobGjJfQ==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-516c403cc46so13505521e87.3;
        Wed, 10 Apr 2024 11:11:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXAJjC6zZHzmPRzbeKVwlK+sI4LD0V5xN2U5l2jeKf8RUyLrLQZ0NWzplACBR0c/2S3h7XZaIjqQcopzQOmEA+RtvBVMdcj+d13bKhCuOVMqx06vi/dJS+lDpcR++YUmvm+LGuuwMrUOweoUtamgCuYpyiHFeLflj+sY7vyPJj9cMIpQ+6QDXUnmqRqmpQp3izMlLIWGVOm9Prnyxy23GIJouVETNmUUrCuuCp2x+QgEZpX4M/R/0xmAPl2eP9NNVhD7Q==
X-Gm-Message-State: AOJu0YyC3BrgYZGiIg83HoFzvD8d4tCDk6cH0qqGPqoMOxH4OYnVpqR+
	K10JS6PlmndWM4Vq1uVanTtUdfV6tyt5iUvwwTyzjCYsTNfBmmTgl6b6nhG/KtlBP1a2rZ9ziuF
	jlTXJnCkj7iWLgMk1Vbr3eeV7UQ==
X-Google-Smtp-Source: AGHT+IHbOoi9pe2CCyb7hsJcUyAJ3hFQu5C1Tc6qPSzdO6bIBIJ5wxJRXN6D3zuXZ5K6R7oW9afgZVIuHfjCY5eQAY8=
X-Received: by 2002:a2e:b617:0:b0:2d6:a609:9a33 with SMTP id
 r23-20020a2eb617000000b002d6a6099a33mr3024179ljn.0.1712772682322; Wed, 10 Apr
 2024 11:11:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240407102000.37213-1-krzysztof.kozlowski@linaro.org>
 <20240407102000.37213-3-krzysztof.kozlowski@linaro.org> <20240410174806.GA788199-robh@kernel.org>
 <57827422-1042-4ef6-a11e-cb53fd930a41@linaro.org>
In-Reply-To: <57827422-1042-4ef6-a11e-cb53fd930a41@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Wed, 10 Apr 2024 13:11:09 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJM-DQvZ0fyJ17nY=vqtCRxyQwXGh6sbbAJ7rFjnAGrEA@mail.gmail.com>
Message-ID: <CAL_JsqJM-DQvZ0fyJ17nY=vqtCRxyQwXGh6sbbAJ7rFjnAGrEA@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: PCI: host-bridges: switch from
 deprecated pci-bus.yaml
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Jim Quinlan <jim2101024@gmail.com>, 
	Nicolas Saenz Julienne <nsaenz@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Will Deacon <will@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Srikanth Thokala <srikanth.thokala@intel.com>, Ryder Lee <ryder.lee@mediatek.com>, 
	Jianjun Wang <jianjun.wang@mediatek.com>, 
	Sergio Paracuellos <sergio.paracuellos@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Marek Vasut <marek.vasut+renesas@gmail.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>, 
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>, Michal Simek <michal.simek@amd.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Mark Kettenis <kettenis@openbsd.org>, 
	Tom Joseph <tjoseph@cadence.com>, Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_111145_753026_6F7F5058 
X-CRM114-Status: GOOD (  25.60  )
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

T24gV2VkLCBBcHIgMTAsIDIwMjQgYXQgMTowMOKAr1BNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiAxMC8wNC8yMDI0IDE5
OjQ4LCBSb2IgSGVycmluZyB3cm90ZToKPiA+IE9uIFN1biwgQXByIDA3LCAyMDI0IGF0IDEyOjIw
OjAwUE0gKzAyMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPj4gZHRzY2hlbWEgcGFj
a2FnZSB3aXRoIGNvcmUgc2NoZW1hcyBkZXByZWNhdGVkIHBjaS1idXMueWFtbCBzY2hlbWEgaW4K
PiA+PiBmYXZvciBvZiBwY2ktaG9zdC1icmlkZ2UueWFtbC4gIFVwZGF0ZSBhbGwgYmluZGluZ3Mg
dG8gdXNlIHRoZSBsYXR0ZXIKPiA+PiBvbmUuCj4gPj4KPiA+PiBUaGUgZGlmZmVyZW5jZSBiZXR3
ZWVuIHBjaS1idXMueWFtbCBhbmQgcGNpLWhvc3QtYnJpZGdlLnlhbWwgaXMgb25seSBpbgo+ID4+
IGxhY2sgb2YgInJlZyIgcHJvcGVydHkgZGVmaW5lZCBieSB0aGUgbGF0dGVyLCB3aGljaCBzaG91
bGQgbm90IGhhdmUgYW55Cj4gPj4gZWZmZWN0IGhlcmUsIGJlY2F1c2UgYWxsIHRoZXNlIGJpbmRp
bmdzIGRlZmluZSB0aGUgInJlZyIuCj4gPj4KPiA+PiBUaGUgY2hhbmdlIGlzIHRoZXJlZm9yZSBx
dWl0ZSB0cml2aWFsLCBleGNlcHQgbWVkaWF0ZWssbXQ3NjIxLXBjaWUueWFtbAo+ID4+IGJpbmRp
bmcgd2hpY2ggaGF2ZSBjaGlsZHJlbiBub2RlcyBiZWluZyBhbHNvIGhvc3QgYnJpZGdlcywgYXBw
YXJlbnRseS4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPiA+PiAtLS0KPiA+PiAgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9hbWxvZ2ljLGF4Zy1wY2llLnlhbWwgICB8IDIgKy0K
PiA+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9hcHBsZSxwY2llLnlh
bWwgICAgICAgICB8IDIgKy0KPiA+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BjaS9icmNtLGlwcm9jLXBjaWUueWFtbCAgICB8IDIgKy0KPiA+PiAgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9icmNtLHN0Yi1wY2llLnlhbWwgICAgICB8IDIgKy0KPiA+
PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9jZG5zLXBjaWUtaG9zdC55
YW1sICAgICB8IDIgKy0KPiA+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bj
aS9mYXJhZGF5LGZ0cGNpMTAwLnlhbWwgICB8IDIgKy0KPiA+PiAgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BjaS9ob3N0LWdlbmVyaWMtcGNpLnlhbWwgICB8IDIgKy0KPiA+PiAg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9pbnRlbCxpeHA0eHgtcGNpLnlh
bWwgICB8IDIgKy0KPiA+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9p
bnRlbCxrZWVtYmF5LXBjaWUueWFtbCB8IDIgKy0KPiA+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BjaS9sb29uZ3Nvbi55YW1sICAgICAgICAgICB8IDIgKy0KPiA+PiAgLi4u
L2RldmljZXRyZWUvYmluZGluZ3MvcGNpL21lZGlhdGVrLG10NzYyMS1wY2llLnlhbWwgICAgICAg
ICB8IDQgKystLQo+ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL21l
ZGlhdGVrLXBjaWUtZ2VuMy55YW1sIHwgMiArLQo+ID4+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy9wY2kvbWljcm9jaGlwLHBjaWUtaG9zdC55YW1sICAgICAgICAgIHwgMiArLQo+ID4+ICBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1jb21tb24ueWFtbCAg
IHwgMiArLQo+ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20s
cGNpZS55YW1sICAgICAgICAgIHwgMiArLQo+ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGNpL3JjYXItcGNpLWhvc3QueWFtbCAgICAgIHwgMiArLQo+ID4+ICAuLi4vZGV2
aWNldHJlZS9iaW5kaW5ncy9wY2kvcmVuZXNhcyxwY2ktcmNhci1nZW4yLnlhbWwgICAgICAgIHwg
MiArLQo+ID4+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAscmszMzk5LXBj
aWUueWFtbCAgICAgICAgIHwgMiArLQo+ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGNpL3NucHMsZHctcGNpZS55YW1sICAgICAgIHwgMiArLQo+ID4+ICBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3RpLGFtNjUtcGNpLWhvc3QueWFtbCAgIHwgMiAr
LQo+ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3ZlcnNhdGlsZS55
YW1sICAgICAgICAgIHwgMiArLQo+ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGNpL3hpbGlueC12ZXJzYWwtY3BtLnlhbWwgIHwgMiArLQo+ID4+ICBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3hsbngsYXhpLXBjaWUtaG9zdC55YW1sIHwgMiArLQo+
ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3hsbngsbndsLXBjaWUu
eWFtbCAgICAgIHwgMiArLQo+ID4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGNpL3hsbngseGRtYS1ob3N0LnlhbWwgICAgIHwgMiArLQo+ID4+ICAyNSBmaWxlcyBjaGFuZ2Vk
LCAyNiBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkKPiA+Cj4gPgo+ID4+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL21lZGlhdGVrLG10NzYy
MS1wY2llLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL21lZGlh
dGVrLG10NzYyMS1wY2llLnlhbWwKPiA+PiBpbmRleCA2MWQwMjcyMzk5MTAuLjViYmI0YTNmM2Ri
ZCAxMDA2NDQKPiA+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNp
L21lZGlhdGVrLG10NzYyMS1wY2llLnlhbWwKPiA+PiArKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGNpL21lZGlhdGVrLG10NzYyMS1wY2llLnlhbWwKPiA+PiBAQCAtMTQs
NyArMTQsNyBAQCBkZXNjcmlwdGlvbjogfCsKPiA+PiAgICB3aXRoIDMgUm9vdCBQb3J0cy4gRWFj
aCBSb290IFBvcnQgc3VwcG9ydHMgYSBHZW4xIDEtbGFuZSBMaW5rCj4gPj4KPiA+PiAgYWxsT2Y6
Cj4gPj4gLSAgLSAkcmVmOiAvc2NoZW1hcy9wY2kvcGNpLWJ1cy55YW1sIwo+ID4+ICsgIC0gJHJl
ZjogL3NjaGVtYXMvcGNpL3BjaS1ob3N0LWJyaWRnZS55YW1sIwo+ID4+Cj4gPj4gIHByb3BlcnRp
ZXM6Cj4gPj4gICAgY29tcGF0aWJsZToKPiA+PiBAQCAtMzMsNyArMzMsNyBAQCBwcm9wZXJ0aWVz
Ogo+ID4+ICBwYXR0ZXJuUHJvcGVydGllczoKPiA+PiAgICAnXnBjaWVAWzAtMl0sMCQnOgo+ID4+
ICAgICAgdHlwZTogb2JqZWN0Cj4gPj4gLSAgICAkcmVmOiAvc2NoZW1hcy9wY2kvcGNpLWJ1cy55
YW1sIwo+ID4+ICsgICAgJHJlZjogL3NjaGVtYXMvcGNpL3BjaS1ob3N0LWJyaWRnZS55YW1sIwo+
ID4KPiA+IEkgdGhpbmsgdGhpcyBvbmUgc2hvdWxkIGJlIHBjaS1wY2ktYnJpZGdlLnlhbWwgaW5z
dGVhZCBzaW5jZSBpdCBzYXlzCj4gPiB0aGVzZSBhcmUgcm9vdCBwb3J0cyBhbmQgYmFzZWQgb24g
dGhlIHVuaXQtYWRkcmVzcyBoZXJlLgo+Cj4gSSB3YXMgdGhpbmtpbmcgYWJvdXQgdGhpcyBhcyB3
ZWxsLCBidXQgcGNpLXBjaS1icmlkZ2UueWFtbCBkZWZpbmVzCj4gY29tcGF0aWJsZSB3aGljaCBp
cyBub3QgcHJlc2VudCBoZXJlIGF0IGFsbC4gU2luY2UgeW91IHN1Z2dlc3QgcGNpLXBjaSwKPiBJ
J2xsIGdvIHdpdGggdGhpcyBhbmQgbWFrZSBpdCBhIHNlcGFyYXRlIHBhdGNoIGZvciBlYXNpZXIg
cmV2aWV3LgoKVGhpcyB3YXMgbXkgY29uY2VybiBhdCBmaXJzdC4gSXQgZG9lcyBkZWZpbmUgY29t
cGF0aWJsZSwgYnV0IGl0CmRvZXNuJ3QgcmVxdWlyZSBpdC4gU28gSSB0aGluayB3ZSBhcmUgZmlu
ZS4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
