Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C695AC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 11:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Ocaie/lTRRTnOLOURwzOh/pWs3zlK8MWAuQlpkvGrk=; b=SQPsBhwJOziDpJ
	swdBmNOCtNtyEHDzoAZMU88YE0O+RRcjpa9YDN9v6VyadPbDudpyFxUbsi7QgMrhRdAY14PatV5gK
	93ACTNOIVPoGb9c7TF5y/N4bx6Rfl4Rxw/qwudNFvaUZt6JD5Z+zHG6wp5x4IzyRFLP3+PlOO6m5r
	pF/5EVESGYyMbAJWnaajbYU96jA/PexJiotZydfu1SSOvv/zrjDflznNwz3NuTLGZijrLcOpYXPrd
	2w9BWHpbZ5wwc2yhcLvO9Uiay9hoOO681DNLuPXXRxNZaIyGLVJwmWU1W2OMCNH3s/63MwLm4AWLY
	4G1ngWM0OeYOyjNZg7rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc2ec-009sY2-1O;
	Tue, 14 Mar 2023 11:17:18 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc2eZ-009sTL-0J
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Mar 2023 11:17:16 +0000
Received: by mail-ed1-x52a.google.com with SMTP id eh3so4576440edb.11
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Mar 2023 04:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678792621;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VyMYTE8eRVWxXGxDN3qi6ovP5SN8DKhbGCFcirh8c68=;
        b=gYVni5rS+U0D3XPXroPjMejaXjUCgJYQue+8nXmM0hbi6lhCI1VcxmbnKS+hiuTamt
         RC2WeKXamlUyZ8HLt6b+G0enmZvwqk34qKNb2OswI1SlizapZY242VV4VpdgRK2zAfGm
         Wr2hX1BB0yOy6KvMaF0CtOVuzxY4Pxpyn6Yi/IXic4Pfs27QQ29/aw/aXjdOlXJsS6XF
         JR2T3I/DsYGTkVk5dy6Owqkm9qjkNtBoeJboMe3C6LDW2Q+//sYbFPpyxOlJ012bCxzT
         86j+GjQy7rhOi7RAshikVzvFiXBYiXWy/rP0RFyb3t8vqfU+XR3xdCR0X3D0bfnDKuTu
         +Gyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678792621;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VyMYTE8eRVWxXGxDN3qi6ovP5SN8DKhbGCFcirh8c68=;
        b=pXaOBoaaN/FL4r4p30SGSc6IYpj7EtZi4mszRkPhG+OyUeIEC1i/e45//arFs9qpG+
         uLiolux3lnGBSXYcun+TPedXhgqW5Fj67CWkM3TikbOacj+8+qvg/NBzG5N65gho5JXg
         f0ZCvuniAw0b4BkwV502T5KCKqkxZ0zHE6744QxJEaPqOWi01leLnyt8zlysAkmxpfRj
         fct7CB38JMTTcj0mGPNub9naIE+K6mBPYIax3HiZ4O3SKLnq/WsjTVXODn+TIuqGZcIt
         ozckuEsf5zxpmM09UUzJx2j3mMVtIqe1JWvjpPpC/XTlryuu5Po6xiL9KzogVKFjLiI/
         kkYQ==
X-Gm-Message-State: AO0yUKXgBsD/C9vgwpyJi4a0kyxUP5BduJ9ij5eEwudzVRpuexlxms9U
	jdnbhkkTwvUTH4aBTJj/+GypvQ==
X-Google-Smtp-Source: AK7set/G4w6NSTJvqWAmj5mHdKpnG7SBlJNvbb8K+gxbWYCEVR2R0MuarC2DZo6U0jwmmUYaFYUcug==
X-Received: by 2002:a17:907:b9d4:b0:8b1:7eb4:6bea with SMTP id xa20-20020a170907b9d400b008b17eb46beamr2029236ejc.38.1678792620771;
        Tue, 14 Mar 2023 04:17:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id r9-20020a50c009000000b004c13fe8fabfsm855903edb.84.2023.03.14.04.16.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 04:16:56 -0700 (PDT)
Message-ID: <d9f5a8da-575e-40b7-4871-b73374421245@linaro.org>
Date: Tue, 14 Mar 2023 12:16:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/4] PCI: rockchip-dwc: Add rk3588 compatible line
To: Lucas Tanure <lucas.tanure@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Wilczynski <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>, Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, kernel@collabora.com
References: <20230313153953.422375-1-lucas.tanure@collabora.com>
 <20230313153953.422375-3-lucas.tanure@collabora.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230313153953.422375-3-lucas.tanure@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_041715_136898_BE613C56 
X-CRM114-Status: GOOD (  15.50  )
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

On 13/03/2023 16:39, Lucas Tanure wrote:
> RK3588 can use the same PCIe driver as rk3568
> 
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index c1e7653e508e..435b717e5bc6 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -354,6 +354,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  
>  static const struct of_device_id rockchip_pcie_of_match[] = {
>  	{ .compatible = "rockchip,rk3568-pcie", },
> +	{ .compatible = "rockchip,rk3588-pcie", },

Why do you need new entry then?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
