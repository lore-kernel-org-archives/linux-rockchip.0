Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0787C4708D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 22:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RHekqyJ4xlXR1oc92J4yEh8pWsbU4nwNDWYSJ5qv+g=; b=EbkAE1iG4IM27/
	8rytgmKv0tUPu0l0plV3HpurLqZGi+74SPAGakJQBiL+VQp10aMLd976BtIllou8618ur/jJm+TX9
	/F2pchOgqeZKy2ae9CxeUhU/0n/itjxrMXscNN8u162mpRQDcRwWau+12pYvGgpvEheALbsmaonr5
	LAtllrKhxekBOd7Ngw6MBC4XwNdRirSndxYU0zANjoT12Yi1M74HIJXgRkPecZMtdjIS+L9eMECPf
	+l3yr8FNta1Z88u7zYNUeDsPfWNQO6IUGJ7WLXEmhZSWwHFtVzTzjQX5o9Iufr+0D2ve4i0UA14hI
	NrUliw7qZmg+7pIHHpRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9w5K-007vsr-Ha; Mon, 26 Dec 2022 22:36:42 +0000
Received: from mail-oa1-f51.google.com ([209.85.160.51])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9w4l-007vdf-U3; Mon, 26 Dec 2022 22:36:09 +0000
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1447c7aa004so13789443fac.11;
        Mon, 26 Dec 2022 14:36:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gd7h3ftOlRZgWS17O9lpNRf7y+BcCuyyNMntDSSxUI8=;
        b=lhkG1Wu1W+SAjohzlHzYZI/drZCPQBJJLVWW6SZTdwAaDmImgouJEgZDcnsCrKitZ2
         8LT0BuBnnOTp3bOKewpH9NLtJh4hIrlT7EndkUcNrY1/qcvZrXiLyUlNJ7Rtd03Soozr
         QJwR+qzHZ91eUFUnqNTvrk+Ps1MM5IcFjiL7BnjvSVDmM0R4O/ZHpBwVMvvyWXcQTpBH
         fdg/3XOPaftvNabGNs0YfJ/VBYWzdfvb/sApi4oJtUj5x5YqaN7N3+xC4hmuSrq6e3ZL
         6vRg5Cg8NSqr+3c1A9iiOwr+v5n8uZUCzvTI4LpyyYA07Zov7S6ct2g4aYDbvPtrvhem
         wYDQ==
X-Gm-Message-State: AFqh2kpxMBDW3vX+goGBFP6m7OcI8Xv50cHPLov4OVLf9FgjVtglrDME
	NZIVMtjVpaFdieGT9Ii5Xw==
X-Google-Smtp-Source: AMrXdXvlImhitnYDbaRz3WRGUTuHJKfOVSDWrP/aMMwNqrnB5QrRh0QVVvlpZXvPyB6tchgNZ0o7pg==
X-Received: by 2002:a05:6870:a54c:b0:14c:4479:84a6 with SMTP id p12-20020a056870a54c00b0014c447984a6mr9439484oal.52.1672094165689;
        Mon, 26 Dec 2022 14:36:05 -0800 (PST)
Received: from robh_at_kernel.org ([2605:ef80:80e8:2792:eb0e:539f:f657:547b])
        by smtp.gmail.com with ESMTPSA id w9-20020a056871060900b0012763819bcasm5418018oan.50.2022.12.26.14.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 14:36:05 -0800 (PST)
Received: (nullmailer pid 76410 invoked by uid 1000);
	Mon, 26 Dec 2022 22:01:20 -0000
Date: Mon, 26 Dec 2022 16:01:20 -0600
From: Rob Herring <robh@kernel.org>
To: Anand Moon <anand@edgeble.ai>
Cc: Paolo Abeni <pabeni@redhat.com>, linux-rockchip@lists.infradead.org, "David S. Miller" <davem@davemloft.net>, David Wu <david.wu@rock-chips.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jagan Teki <jagan@edgeble.ai>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCHv2 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix
 rv1126 compatible warning
Message-ID: <167209208042.76358.12497793083674238127.robh@kernel.org>
References: <20221226063625.1913-1-anand@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221226063625.1913-1-anand@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_143608_156374_610C333D 
X-CRM114-Status: GOOD (  13.57  )
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


On Mon, 26 Dec 2022 06:36:19 +0000, Anand Moon wrote:
> Fix compatible string for RV1126 gmac, and constrain it to
> be compatible with Synopsys dwmac 4.20a.
> 
> fix below warning
> $ make CHECK_DTBS=y rv1126-edgeble-neu2-io.dtb
> arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: ethernet@ffc40000:
> 		 compatible: 'oneOf' conditional failed, one must be fixed:
>         ['rockchip,rv1126-gmac', 'snps,dwmac-4.20a'] is too long
>         'rockchip,rv1126-gmac' is not one of ['rockchip,rk3568-gmac', 'rockchip,rk3588-gmac']
> 
> Fixes: b36fe2f43662 ("dt-bindings: net: rockchip-dwmac: add rv1126 compatible")
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> ---
> v2: drop SoB of Jagan Teki
>     added Fix tags and update the commit message of the warning.
> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
