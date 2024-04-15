Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2731CC4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 07:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2mDx+9lT3N2BK5TaeLTQ+Na4u+JV2bUWzWmeeJj1wI=; b=JUv4awgpBIuxCM
	W4p0IP6ftvbOpi6X5fMGvGo54y+BVvn88ZP2puITjFZ3CZLtuyQjg6VMVAwUxcyoqaiXbdI6t77rL
	HTmIaxdwoOTDQUNrDJ09jsNTkJgIuwwCpSOo/ftcw94QmCvlBOuIDpdZON64/lEmN0p6Q+PeWzJCG
	oV8KB5qaLr1gnzwCpGwgtANGpLcH2Q64zAE8mgHlcWSZCBhQ81z3TkVz6VEV/HwQfOGHYZlSHMfEq
	0jEj3K/ADO6P1hSOq2NGq4Hvz8/lkzlGhX3WWwXRhI1yml/FIFwH9tzKPefg25p+8wbAEBbe2jQJg
	gIOLPPT4HKOsjtNYamgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwH21-00000007Nus-09Ua;
	Mon, 15 Apr 2024 07:45:37 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwH1v-00000007Nsg-1amg
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Apr 2024 07:45:34 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a44f2d894b7so294070466b.1
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Apr 2024 00:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713167128; x=1713771928; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=DQNF7zkSXRFQf5KUOpvJNiIAOOs7YklqwV7aAB78wGs=;
        b=AyX3ZzOf0sa2UTM0bYQ2OOuofJaTfOCaFBdkCKpS9lK/RAl4bYL7XepLh6u+tqQTfT
         fEOyBLNFzEjgx2Suk1iNDuVtubVeB3B5BSV2OHeaJcmnMti48gp15DJwv1c2SJgRT2TV
         04R3XfPQUur3588Y9DlpNyzDr2nlm74TCn6+njPyJsNk4btiJ5nMRv97riHLOwjC3LpO
         6aKG9MVv2PJe35RmCtMWL9lu2IfR5UaWDnTuT7eb8iMP2KNq/vNwpWlL9uFFs32dRS6f
         92aIgCqyVwMfR45Et+af4QV4EqoeK4d7VRe3jj3c2r8gANw+M/L7E7ZZPTjS0RGlxTBt
         Q4jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713167128; x=1713771928;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DQNF7zkSXRFQf5KUOpvJNiIAOOs7YklqwV7aAB78wGs=;
        b=JU+OxrHp3G6LgRdY28t4znLaqHH6Yg5z44adZLLxSRTUcJsyxIKoE9Qey2c5P0LDPO
         iV1aJg3jHtpP5GpCSsF8Js+U2ykNJdRZi9PmpLSI2dU2OjvQRd7hjDLfbaV3Nn3rkG0k
         W4cyOuPVc6Wos+rIoplxpdIp4OQDL0kHxuiBD+wpnha/erYMvrAqE+BYTROEalKrOFj0
         W0Ogx9XpCuWZu5Q0OqYb3VOcPRMBcpiVmCfB3v3ncumdCcJ8bbRSglgbrPmFaQExqTAw
         JQ8+rsz4qEemftS0kNQK4dT0eUj0mTUOlDQ9Zx63ksQXuetAmgO1OlRITT+6K7poZmj3
         r4gQ==
X-Forwarded-Encrypted: i=1; AJvYcCX37RcgUMh/X1PxLJxW7drnbWoZGD+Na4cktHOyonztJDAd4oD+Jk7tBTbNvAU/C3Y/AX2PWCdA7+SNFNeAYTEs140PGTjp/7kBFrTrz4a9iuJ7
X-Gm-Message-State: AOJu0YxHnIuHMntyldJFkfiuXA+TuHQBCRz8aNYR9T+c2jJfCcBJMuxH
	9oPIcpRhmgYe0I1mCjcfE4FGkcScJzQyL0fMr3ZPWJo3g9eoTMeCRKmjQodFWFs=
X-Google-Smtp-Source: AGHT+IE6J9sEau9bksr4Utu4iSgDQu9L8YqhSxC7EB3LNaLN6CUQlDvqEMM+3KACsikXSfynV2Q0aA==
X-Received: by 2002:a17:906:a048:b0:a52:2c0e:2e91 with SMTP id bg8-20020a170906a04800b00a522c0e2e91mr6548154ejb.17.1713167128339;
        Mon, 15 Apr 2024 00:45:28 -0700 (PDT)
Received: from [10.230.170.72] (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id bw26-20020a170906c1da00b00a52222f2b21sm4994628ejb.66.2024.04.15.00.45.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Apr 2024 00:45:27 -0700 (PDT)
Message-ID: <d90fc534-adf6-4783-8c2b-c4cf103a0e26@linaro.org>
Date: Mon, 15 Apr 2024 09:45:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] dt-bindings: PCI: mediatek,mt7621-pcie: switch
 from deprecated pci-bus.yaml
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hector Martin <marcan@marcan.st>,
 Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Jim Quinlan <jim2101024@gmail.com>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>, Will Deacon <will@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Srikanth Thokala <srikanth.thokala@intel.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang
 <jianjun.wang@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>,
 Michal Simek <michal.simek@amd.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Mark Kettenis <kettenis@openbsd.org>, Tom Joseph <tjoseph@cadence.com>,
 Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240413151617.35630-1-krzysztof.kozlowski@linaro.org>
 <20240413151617.35630-4-krzysztof.kozlowski@linaro.org>
 <CAMhs-H9ADfuDkFcD==7x+VaN2q92JV1gxuyrWvfNYK1psEnrQA@mail.gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAMhs-H9ADfuDkFcD==7x+VaN2q92JV1gxuyrWvfNYK1psEnrQA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_004531_507509_7A220FEC 
X-CRM114-Status: GOOD (  14.57  )
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

T24gMTUvMDQvMjAyNCAwOTozMSwgU2VyZ2lvIFBhcmFjdWVsbG9zIHdyb3RlOgo+IEhpIEtyenlz
enRvZiwKPiAKPiBPbiBTYXQsIEFwciAxMywgMjAyNCBhdCA1OjE24oCvUE0gS3J6eXN6dG9mIEtv
emxvd3NraQo+IDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Pgo+PiBk
dHNjaGVtYSBwYWNrYWdlIHdpdGggY29yZSBzY2hlbWFzIGRlcHJlY2F0ZWQgcGNpLWJ1cy55YW1s
IHNjaGVtYSBpbgo+PiBmYXZvciBvZiBpbmRpdmlkdWFsIHNjaGVtYXMgcGVyIGhvc3QsIGRldmlj
ZSBhbmQgcGNpLXBjaS4KPj4KPj4gU3dpdGNoIE1lZGlhdGVrIE1UNzYyMSBQQ0llIGhvc3QgYnJp
ZGdlIGJpbmRpbmcgdG8gdGhpcyBuZXcgc2NoZW1hLgo+Pgo+PiBUaGlzIHJlcXVpcmVzIGR0c2No
ZW1hIHBhY2thZ2UgbmV3ZXIgdGhhbiB2MjAyNC4wMiB0byB3b3JrIGZ1bGx5Lgo+PiB2MjAyNC4w
MiB3aWxsIHBhcnRpYWxseSB3b3JrOiB3aXRoIGEgd2FybmluZy4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+
Pgo+PiAtLS0KPj4KPj4gSW1wb3J0YW50OiBUaGlzIGRlcGVuZHMgb24gY2hhbmdlIHJlY2VudGx5
IG1lcmdlZCB0byBkdHNjaGVtYSwgaG93ZXZlcgo+PiBubyByZWxlYXNlIHdhcyB5ZXQgbWFkZSB3
aXRoIG1lbnRpb25lZCBjaGFuZ2UuCj4+IFRoZXJlZm9yZSB0aGlzIHBhdGNoIHByb2JhYmx5IHNo
b3VsZCB3YWl0IGEgYml0LiBQcmV2aW91cyBwYXRjaGVzIGRvIG5vdAo+PiBkZXBlbmQgYW55aG93
IG9uIGZ1dHVyZSByZWxlYXNlLCBzbyB0aGV5IGNhbiBiZSB0YWtlbiBhcyBpcy4KPiAKPiBEb2Vz
IHRoaXMgbWVhbiB0aGF0IHdlIHNob3VsZCBzZXQgRFRfU0NIRU1BX01JTl9WRVJTSU9OIHRvIDIw
MjQuMDIgaW4KPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvTWFrZWZpbGUgdGhl
biBiZWZvcmUgbWVyZ2luZyB0aGlzCj4gcGF0Y2g/CgpGb3IgdGhlIHByZXZpb3VzIGNoYW5nZXM6
IHllcy4gRm9yIHRoaXMgb25lOiB3ZSBuZWVkIG5ld2VyLi4uCkJlc3QgcmVnYXJkcywKS3J6eXN6
dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
