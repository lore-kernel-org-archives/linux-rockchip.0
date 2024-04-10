Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3AD4CD11C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 17:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bZ4jv1sfsN5D4AKnvF/3hOt1Pt1R496xXDQl7jzRzA=; b=RTA54CyfcbwZLx
	XwPkpVy+9GuL20cV6wXISWrRgwgTP+WN56rgW4PPLGtnTkfJi+YV7VvrgfKLa+8eRRk7tXuoCQEcR
	LMncsODvVZEZ4f7w2P4m1RuGQYGCU2lJ5TOEgXbDPOefjvKCti/Ky4OaMDJpsgjy+StjVb7VCojlg
	NdHlrKoWZcIYNwomKalVuSDRIfblOngDKS/lMTTQxPlJmTlUqoJQEw369xSkuqNLhkZzvbwSZLTMz
	7nonyMqSxw3E2Maq72u6SGNY/DDAkjcJdl83LkIqAvnGIR2fMFtC/VOqiwCIJmn4X0EART2ZGk3yo
	TAzTmWR9YR71wkzFSEZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rucDG-00000008Nxd-1EmL;
	Wed, 10 Apr 2024 17:58:22 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rucDC-00000008NvO-0UYr
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Apr 2024 17:58:19 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-343f1957ffcso62197f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Apr 2024 10:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712771892; x=1713376692; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=5HKqyxzN7SQ+njXkzFYbZ1bIjg+blMGuSC+t3lHXad8=;
        b=g4QDZwRuzwOdzZQ2m50QH4SadWKwv8vM6b9KA6UWRqSmY10agcz3yJZli9QJgxnMk6
         x+TmWxrKMkL/9M/r1kDpIFVXRDSMkGIdumyR05yRBbojSTO+Y2iI9jB2fscroqiI2srq
         EeBmsjrgfLu6wx8NBY4WxEFcya52sr5PAGN3nyCxKClmReO25fFw7jkJ/UX8NL1+73pL
         2vpGpXp41GaPBTqVfG16OW5MOJRifEpQTYPlfXxnTWGx8jpkCMBWMi/bh1rY/0/TwsOF
         RJ0FRnE/zF747sUcWiIpttumu11Nt4ChJMa8X62I/CI92sHr36Oawu8krAhiaTKj/pot
         xWvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712771893; x=1713376693;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5HKqyxzN7SQ+njXkzFYbZ1bIjg+blMGuSC+t3lHXad8=;
        b=KluUUCBbrDqKgpNFYAbB+Qxvv5meNpwuLqhsxEvNePoZsjxjGfXbNWjF1EqWvw/gaP
         FOS/2cYj+0A9Iqt+v7IJAwmXxYZpMbpaz1gWMHKMcTkp92eZahso6dVcb/rIMG7lVult
         sdAtO+52C2OCyMQJyi7l5fd2guIxcBd/fW6TEaRcyROH6jtt+EFV6ZNrRgiPVHtEKL2U
         4KTI9WlAs/Y0z+bKYfrZJHorDpAkl2jnGGa2j6gUWokPuWOY+D60/x0Jpm8lYbaei+IW
         jgDkvAAHTguLsE20KUbDJkxB5+Y+uDSAOsTlAKmlf6TLhndT/jiCzf/BdYKYDV8J7f1x
         RoGA==
X-Forwarded-Encrypted: i=1; AJvYcCX3qijZtsj5iMxan39CPgdjahLvaWhy9FwjztR6zWbL1Ug+qj8NrWDyG0z5UCPI4rwhYItOezkcveJ/o35dtBWdpTF+CyAbdETdG3i+w3gxQ6gK
X-Gm-Message-State: AOJu0Ywe6YyOk9aikyPeYb9YechNB9rIkTuPkKhzeJTN87jXg/1fiIS6
	DNU97keNt5MYhko41xor/yDRYTlxLtGuKE6/bISewDY2wLVsXhM7PIcjw8V79Dc=
X-Google-Smtp-Source: AGHT+IGyY55a6V41Q7lbhc1tcmsbXyGB8IOOu2t1+OgOafNcxi8pu3THqPmM/LSBbb4JUlVfaWK7LA==
X-Received: by 2002:a5d:5f89:0:b0:345:6010:6343 with SMTP id dr9-20020a5d5f89000000b0034560106343mr343727wrb.6.1712771892520;
        Wed, 10 Apr 2024 10:58:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id l4-20020a5d4104000000b00343e392829dsm13934223wrp.97.2024.04.10.10.58.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 10:58:12 -0700 (PDT)
Message-ID: <f99fcb71-d5f2-4221-af5e-e8d1b4437cd6@linaro.org>
Date: Wed, 10 Apr 2024 19:58:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] dt-bindings: PCI: host-bridges: switch from
 deprecated pci-bus.yaml
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hector Martin <marcan@marcan.st>,
 Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Jim Quinlan <jim2101024@gmail.com>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Will Deacon <will@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Srikanth Thokala <srikanth.thokala@intel.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang
 <jianjun.wang@mediatek.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
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
References: <20240407102000.37213-1-krzysztof.kozlowski@linaro.org>
 <20240407102000.37213-3-krzysztof.kozlowski@linaro.org>
 <20240410175540.GA802090-robh@kernel.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240410175540.GA802090-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_105818_234958_243590C5 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 10/04/2024 19:55, Rob Herring wrote:
>>  .../devicetree/bindings/pci/rockchip,rk3399-pcie.yaml         | 2 +-
>>  Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml       | 2 +-
>>  Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml   | 2 +-
>>  Documentation/devicetree/bindings/pci/versatile.yaml          | 2 +-
>>  Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml  | 2 +-
>>  Documentation/devicetree/bindings/pci/xlnx,axi-pcie-host.yaml | 2 +-
>>  Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml      | 2 +-
>>  Documentation/devicetree/bindings/pci/xlnx,xdma-host.yaml     | 2 +-
>>  25 files changed, 26 insertions(+), 26 deletions(-)
> 
> This implicitly bumps the minimum version for dtschema. That's fine, but 
> it should be explicit since we set it explicitly.

Right, I will mention that this requires 2024.02

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
