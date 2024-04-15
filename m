Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0093BC4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 07:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IB0QW8XQIyopOG7AomeVgvjp4wRKXzYL5HwBNMb6qpI=; b=V4DnWkolHxcFr8
	TOP8+dCrSd/S44tE1gKyXf1EVpSnuheT5aRw3vTwsPc0+nmIkJWnDMOi1x3UwAFVNRsrTZA/LDhc5
	sqB61uu/ElEcmTQsumvIg74rbEG5Vvs//e46tPKvl+O+Xwrdk/4POzs+oRaog9cCKXDaTwOJhC2Pt
	hihFt954e8MgcBusB/7xdgAjcM7sBYH3Okk8NTPMABH7PabUv9IquWAnFA9rwd3p51fAOFs66HdVQ
	jHdEltKwEdkRJtypL5uf6C/cTu+N49TcaxFqXh+G5QGFwg5m2slu8oGmwYxEZYq7Lw/paCFYKhXpU
	XdbCRx9kABSyBarzbU1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwGou-00000007M5q-1pdq;
	Mon, 15 Apr 2024 07:32:04 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwGoo-00000007M3d-3K70;
	Mon, 15 Apr 2024 07:32:00 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6eb7ee5a776so379608a34.3;
        Mon, 15 Apr 2024 00:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713166316; x=1713771116; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fyAUoqBvIOKTY3LdJCpcnCDojqj4JBfKWFR06e36DaU=;
        b=dUtOz1dOtCqrtv4n/nHwp+xNxwCrloAbtlfXKuvk3J7ApguS5bSAJxMnYYttpJCWqG
         uIJrVX0jv/E6XURgd1ObMVD5qOMstJA3mGEzQEU2z/njYKTqYNK5Kr3mjq3FRr8xPQAx
         hZY/SvX50ih+wDUDWqaE12BLlzDoo4K0q6ra/EB4ruFVbgIVga+vUlHkSk5kiThUURs9
         +kKdm7nfFHwykqaF3L+rwLnpB93YJK9BXBSa6p1i3suM3vFSPpricK51gLMiG+F4u11q
         sgtva9/40dg5yzbErOT7BpFkLFrUIMGUKtumfo+zV0I1PQ7anxhc24q05gp8ML80m9o8
         WUXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713166316; x=1713771116;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fyAUoqBvIOKTY3LdJCpcnCDojqj4JBfKWFR06e36DaU=;
        b=UPlE+mrgdNppXMe45pmiiWjBAa4vUF+TV6UJy5FpK7sVfoYApYwfQmXXzwfL72w76b
         GvBVUnG3Y0HO/olpiFeg0DgMjpgOXQogzGWAzFltmtUo3x26O33tFaOAxjLtcYw9JANM
         IzI56YrJxiqEANczBD4qR3hcfS51jKZ0L85v/kO24Pe0QLLGSAC+a/NyfX73DhmInTh6
         AuEf3XBxxWJMLrXj5rI5ud+vyFczlkan9NpksHFtUik6fyprQIFK9LC3y7J6xRk0oS7k
         pErSueJ56+aQhqYMxfFFZJ/KargCyl1d3S4yivKLYKTguJMU6fnZzP4yl2qHuZSakmg0
         muHA==
X-Forwarded-Encrypted: i=1; AJvYcCVmxljm8fp3ZoyFtIxb32ti02n7w3D0YykMjFBGWoE5urFeA5Wxj8NR5ivZu8DH9JN0np+tokxMXlBMEFCahQ26A5jx4ntyIMaNsVHip4WWoRmc45+qAi9Ja7c8iMg7LTxvTZGjiicm7A9Yp/ud5jb3mZofLYi0WetuoNH6Wax0Wi2nowm2Znp1IX4FuoRmLwDC/VnnxhXKI7EyYfjeGLIJHPkvLYRYuCpH6rQlKNqD0da1WwCBUzGESX+mdgO+TVpR2g==
X-Gm-Message-State: AOJu0YzghQUcGtGGWas9y7gHpvD9NoeksawcaIUaAxlJyfYcOU30zC+5
	vme1SW5NN2c4iHKZqMasta6tHA+xf1kZvpQBtVWixMizpglO9rU0MFZsKif5X/VjgYELU0zF5xt
	K9ugT0sSjmmw6RGzQmYn5GP7YSdI=
X-Google-Smtp-Source: AGHT+IG+mHEf+9pMHePulndcOmqJAFoy+0e8uxd+TwOgPTDj/IhKU2JtlX/85TmoPDDzrhRzFX9Fs3nWYPxdgLlCL2I=
X-Received: by 2002:a05:6870:ac26:b0:233:b575:4b4a with SMTP id
 kw38-20020a056870ac2600b00233b5754b4amr10413015oab.36.1713166316068; Mon, 15
 Apr 2024 00:31:56 -0700 (PDT)
MIME-Version: 1.0
References: <20240413151617.35630-1-krzysztof.kozlowski@linaro.org> <20240413151617.35630-4-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240413151617.35630-4-krzysztof.kozlowski@linaro.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 15 Apr 2024 09:31:47 +0200
Message-ID: <CAMhs-H9ADfuDkFcD==7x+VaN2q92JV1gxuyrWvfNYK1psEnrQA@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] dt-bindings: PCI: mediatek,mt7621-pcie: switch
 from deprecated pci-bus.yaml
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Jim Quinlan <jim2101024@gmail.com>, 
	Nicolas Saenz Julienne <nsaenz@kernel.org>, Will Deacon <will@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Srikanth Thokala <srikanth.thokala@intel.com>, 
	Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang <jianjun.wang@mediatek.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
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
X-CRM114-CacheID: sfid-20240415_003158_852146_FA90E77A 
X-CRM114-Status: GOOD (  17.36  )
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

SGkgS3J6eXN6dG9mLAoKT24gU2F0LCBBcHIgMTMsIDIwMjQgYXQgNToxNuKAr1BNIEtyenlzenRv
ZiBLb3psb3dza2kKPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBk
dHNjaGVtYSBwYWNrYWdlIHdpdGggY29yZSBzY2hlbWFzIGRlcHJlY2F0ZWQgcGNpLWJ1cy55YW1s
IHNjaGVtYSBpbgo+IGZhdm9yIG9mIGluZGl2aWR1YWwgc2NoZW1hcyBwZXIgaG9zdCwgZGV2aWNl
IGFuZCBwY2ktcGNpLgo+Cj4gU3dpdGNoIE1lZGlhdGVrIE1UNzYyMSBQQ0llIGhvc3QgYnJpZGdl
IGJpbmRpbmcgdG8gdGhpcyBuZXcgc2NoZW1hLgo+Cj4gVGhpcyByZXF1aXJlcyBkdHNjaGVtYSBw
YWNrYWdlIG5ld2VyIHRoYW4gdjIwMjQuMDIgdG8gd29yayBmdWxseS4KPiB2MjAyNC4wMiB3aWxs
IHBhcnRpYWxseSB3b3JrOiB3aXRoIGEgd2FybmluZy4KPgo+IFNpZ25lZC1vZmYtYnk6IEtyenlz
enRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPgo+IC0tLQo+
Cj4gSW1wb3J0YW50OiBUaGlzIGRlcGVuZHMgb24gY2hhbmdlIHJlY2VudGx5IG1lcmdlZCB0byBk
dHNjaGVtYSwgaG93ZXZlcgo+IG5vIHJlbGVhc2Ugd2FzIHlldCBtYWRlIHdpdGggbWVudGlvbmVk
IGNoYW5nZS4KPiBUaGVyZWZvcmUgdGhpcyBwYXRjaCBwcm9iYWJseSBzaG91bGQgd2FpdCBhIGJp
dC4gUHJldmlvdXMgcGF0Y2hlcyBkbyBub3QKPiBkZXBlbmQgYW55aG93IG9uIGZ1dHVyZSByZWxl
YXNlLCBzbyB0aGV5IGNhbiBiZSB0YWtlbiBhcyBpcy4KCkRvZXMgdGhpcyBtZWFuIHRoYXQgd2Ug
c2hvdWxkIHNldCBEVF9TQ0hFTUFfTUlOX1ZFUlNJT04gdG8gMjAyNC4wMiBpbgpEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvTWFrZWZpbGUgdGhlbiBiZWZvcmUgbWVyZ2luZyB0aGlz
CnBhdGNoPwoKPgo+IENoYW5nZXMgaW4gdjM6Cj4gMS4gTm9uZQo+Cj4gQ2hhbmdlcyBpbiB2MjoK
PiAxLiBOZXcgcGF0Y2gKPiAyLiBTcGxpdCBtZWRpYXRlayxtdDc2MjEtcGNpZSB0byBzZXBhcmF0
ZSBwYXRjaCBhcyBpdCB1c2VzCj4gICAgcGNpLXBjaS1icmlkZ2Ugc2NoZW1hLgo+IC0tLQo+ICAu
Li4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvbWVkaWF0ZWssbXQ3NjIxLXBjaWUueWFtbCAgICAg
ICAgIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpBY2tlZC1ieTogU2VyZ2lvIFBhcmFjdWVsbG9zIDxzZXJnaW8ucGFyYWN1ZWxsb3NA
Z21haWwuY29tPgoKVGhhbmtzLAogICAgU2VyZ2lvIFBhcmFjdWVsbG9zCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
