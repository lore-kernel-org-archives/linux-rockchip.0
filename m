Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4472ECD128A
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Apr 2024 08:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIX8QVDd+r3PTl445hJKCfQmqW46LemFCrD7ASSn/YI=; b=KOQLchD6o6LsLe
	HQnqnJ1Tb/v1urBzQwqePB5lURibGrFdyXnCR5EqZCUoaWOVOi9vXfeEjnBGE7M5zkiLp/3nrch6A
	T7UHNLVhuQbPznyxmPkcPkT5KjmXxdK5HuXu7b9mY3Xo36FnVsCErk9/7BAmQSRaWyppkp0lKM3iz
	n4YgjvmpZ54RjLnzkCTrcV40ZlANLAs/K2Aqcqjz0bNwUxlvdvB8gGrZpegHp76S9UIBO+jJdHvC8
	3VDpjPX+z3Bs4HdtbU046oXLjh8npn5BIJ4IMaBQpXqFUANO6eJ0yjvcBiVNYqr4HIwhK7x0Y2uew
	xyRiGyBs3hiaYvHlnr/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtkM0-0000000EtZG-2NuG;
	Mon, 08 Apr 2024 08:27:48 +0000
Received: from mail-io1-f45.google.com ([209.85.166.45])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtkLs-0000000EtUM-14CJ;
	Mon, 08 Apr 2024 08:27:42 +0000
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-7d5db134badso72833339f.2;
        Mon, 08 Apr 2024 01:27:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712564858; x=1713169658;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mduMjCqjA7drDw2lEIoqwW5oGXEwTzrsNz9VmuPIKQw=;
        b=bFw3SDs9pey4FZTeFwhODGyNokj8+wm9fZhzlq36XESQ+N3OoQz2/G7tmFRf3Xdsxs
         vgVIpvQG8LB9dlTQ4gSNWy5MbkbBMr6LzCBYkmQ5M9m82JPTftWeWBZh/AwUulx9Z32x
         s1Jb40ydjDKZAhHPlohRL1kuYDYbwtHvDgQD6n/nDgSOtd9hIIS0+OgPkXdQeAyFw1Kh
         bfBiYYUhpxNaFYezmo0vhC1dxTfLaHaIRToMFTDFer0bZbb/GUF+o1blhWwylx5wyBmz
         ao5Q0CqnrIXMhUjH0O4xLQJAnOQJ11YVDUpi+KayyCu2dwFiE0eCN4P3MA51rCPtCJSg
         w2LA==
X-Forwarded-Encrypted: i=1; AJvYcCXoGhMkTCT7t7eaPtQuMwvU4UCMpuB6HLshlWNEkjOOwvcwvoFTH3HG4jP+PvBAfL3IqIhnQ+jd2sdONGZ7QUm+vH46RZYYRegkWqkfnhJc6dCo0jTprKM6yMlIWTWLDWP6ILu1bO1rFEY5gk21/Zyy0CFFszeGfutugnLG3uaRpDCVGHIrSFnn50rtjaRwL1GGxSVLuRjgilFHsPtjqpWT0DLMvKX5J1emrPiSyEqWIQ//QmbwMYNKGeYQqpny8xlHQg==
X-Gm-Message-State: AOJu0Yxx1hhpDQxKVrboo5qXvw5TFbB8kgpGNC9R+Z1e0e8fbrikCNyH
	n4gfayFPACzzy3zZoriWCtmbmswlnvIXPuPhIUfzODfdlPGwklmCpcd/rdh4PmQ=
X-Google-Smtp-Source: AGHT+IGZtCH1ekKjgpS4rVl6xMEGMlEboHAbq9c5osU+CR4l2s6XEPhrGZgHC23qDf5djDFCQiebLA==
X-Received: by 2002:a05:6602:4897:b0:7d6:87:b3b1 with SMTP id ee23-20020a056602489700b007d60087b3b1mr23801iob.5.1712564857796;
        Mon, 08 Apr 2024 01:27:37 -0700 (PDT)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com. [209.85.166.170])
        by smtp.gmail.com with ESMTPSA id x25-20020a6b6a19000000b007d35949850asm2211333iog.26.2024.04.08.01.27.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Apr 2024 01:27:37 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-36a1b0777b7so5046555ab.0;
        Mon, 08 Apr 2024 01:27:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXcQRGI6p3yNYL4hm4K76CCW2eGLAf26bEKMUmxWzmHDT5gAETBBM23/lBPpkcvSSjyWL/X19p6OwMyCsL8XJXfuoAFqbefRIUy4dLC5gdYlmMkQ/GKmBgaMIPybP9PS0iW3mkPnl7KI+thn7Wilma4DzkLxGUU8P3WKfQlH6EGUR51pFzI4jONfvWwyAIMSuj+KoUSP+b7truBOjtuhCP4tS4xT1QI+FvYBXJ4mR2GZUw3bHCMaQS+ApQBFIzdPojoCA==
X-Received: by 2002:a25:7406:0:b0:de0:e7f2:a03d with SMTP id
 p6-20020a257406000000b00de0e7f2a03dmr2539436ybc.3.1712564836998; Mon, 08 Apr
 2024 01:27:16 -0700 (PDT)
MIME-Version: 1.0
References: <20240407102000.37213-1-krzysztof.kozlowski@linaro.org> <20240407102000.37213-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240407102000.37213-3-krzysztof.kozlowski@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 8 Apr 2024 10:27:05 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWjWLdu9c7=OhFLsY+jSZXspb6jPHxVai2GcbJoS7MDLg@mail.gmail.com>
Message-ID: <CAMuHMdWjWLdu9c7=OhFLsY+jSZXspb6jPHxVai2GcbJoS7MDLg@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: PCI: host-bridges: switch from
 deprecated pci-bus.yaml
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
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
X-CRM114-CacheID: sfid-20240408_012740_584167_CA02EEAC 
X-CRM114-Status: GOOD (  19.03  )
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

T24gU3VuLCBBcHIgNywgMjAyNCBhdCAxMjoyMOKAr1BNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gZHRzY2hlbWEgcGFja2FnZSB3
aXRoIGNvcmUgc2NoZW1hcyBkZXByZWNhdGVkIHBjaS1idXMueWFtbCBzY2hlbWEgaW4KPiBmYXZv
ciBvZiBwY2ktaG9zdC1icmlkZ2UueWFtbC4gIFVwZGF0ZSBhbGwgYmluZGluZ3MgdG8gdXNlIHRo
ZSBsYXR0ZXIKPiBvbmUuCj4KPiBUaGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHBjaS1idXMueWFtbCBh
bmQgcGNpLWhvc3QtYnJpZGdlLnlhbWwgaXMgb25seSBpbgo+IGxhY2sgb2YgInJlZyIgcHJvcGVy
dHkgZGVmaW5lZCBieSB0aGUgbGF0dGVyLCB3aGljaCBzaG91bGQgbm90IGhhdmUgYW55Cj4gZWZm
ZWN0IGhlcmUsIGJlY2F1c2UgYWxsIHRoZXNlIGJpbmRpbmdzIGRlZmluZSB0aGUgInJlZyIuCj4K
PiBUaGUgY2hhbmdlIGlzIHRoZXJlZm9yZSBxdWl0ZSB0cml2aWFsLCBleGNlcHQgbWVkaWF0ZWss
bXQ3NjIxLXBjaWUueWFtbAo+IGJpbmRpbmcgd2hpY2ggaGF2ZSBjaGlsZHJlbiBub2RlcyBiZWlu
ZyBhbHNvIGhvc3QgYnJpZGdlcywgYXBwYXJlbnRseS4KPgo+IFNpZ25lZC1vZmYtYnk6IEtyenlz
enRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KCj4gIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcmNhci1wY2ktaG9zdC55YW1sICAgICAg
fCAyICstCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yZW5lc2FzLHBjaS1yY2FyLWdl
bjIueWFtbCAgICAgICAgfCAyICstCgpMR1RNLCBzbwpSZXZpZXdlZC1ieTogR2VlcnQgVXl0dGVy
aG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KCkdye29ldGplLGVldGluZ31zLAoKICAg
ICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhl
cmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJ
biBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15
c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0
IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
