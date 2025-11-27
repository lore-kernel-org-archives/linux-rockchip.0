Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6C70D116F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 15:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+s3wFnEn/+/c7cax+9N356tzGj/liMzU+QqdQLsomM=; b=cCmOacPbDWS13R
	79KvrxmlIZeJtfk+x3i2aeXniLcwp5M7eo0tlRk/BPqEm9tZUC6Y64+Nq3wIURRhdM3vYkH7deceJ
	9z3KpsUbeP34wZkuokapJlaz3ymLNS+5x1FMxfqobsn/epVNNx4tJ+DaVgTEfPoLsLeU1YnCICqgF
	V5qW3j6yQT8xGU9jIIA5/mXLmGaSuOkioxpyNkulMXwdtvQJHeB/X0hK8AWfX0FpinrwJf+t9BY+/
	kdgkrL/7axtc676XKgPfGBKi+S68vPKJuQu6S+hj7WC3tOCkwpZpFwjSFcovLlGIU74xyuqWfOKCQ
	lcOPB3Gj7wnXttQh6N3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOeIi-0000000Gs3d-05mF;
	Thu, 27 Nov 2025 15:52:56 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOeIf-0000000Gs2v-04dd
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Nov 2025 15:52:55 +0000
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D17373FCED
	for <linux-rockchip@lists.infradead.org>; Thu, 27 Nov 2025 15:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1764258766;
	bh=7YwSquvmhmm6ufwqm2v8LP2/Ib5+ORpnGFBYFfFEi6Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=W2bIgsOnXid5u4g5TdmX29Rqf/x6pHJsmoDBJcIcpmCp+pwyaawi+RDfjCICF5Ur8
	 XUT141qYIYiW1DMJ79HOmu4AxscsckWeOjNDC3cApDRVcfocliK+AkTcuR1ixRYZw2
	 1Hsxp03eXjZ/PGKQ/zWUOft2mN5wZcxhQcEjQNfwLnY5aOYEEtk72cFb36HA2qyllF
	 br/rKGdjFxO3rPn8bZqaSgP8/Og3ixZp/jmrsDPZY/+pxLDixsV0LQzPDgOxLwusmz
	 OQKRHu8evMnlhp3fNFRXDu2j0Xx4IqoiI/Kb7GicFBntj+oH7/jqNpkJhizDjdgm8J
	 6E4ODNkVxeo4qNbzpfYjYc/o92eXTeuSagu/8amQvdzTLlQ2MjGvrZGwDiIQFxbGE8
	 56zqtBFn6tEuN3y1t7oZw4lssa63RAFoL5zUVQkZ+2bueOhASnJ2tUe+UGT+t+pMot
	 eCPkXvjRV6Sn3z+HhpMKu/uUoaZFUHrf6hbDcPedZBPkC6jcjLDtVKLjoch4ReFa/b
	 8A0DMidO1HAPLIlwMw3CPT/JlGnlRF+uqIbgR0m+Mt223tW2i7MSrPT7ecFOeb/IQ8
	 OJ2H5DbK0zMCAhQSFyzOxMEP5g8SW593ybjSuv97EQG5QD6sEeTK1UUy1hq3iSvme/
	 1ws69nsH+zVL/wSxy7yEA9ZM=
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-477964c22e0so5839165e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Nov 2025 07:52:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764258766; x=1764863566;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7YwSquvmhmm6ufwqm2v8LP2/Ib5+ORpnGFBYFfFEi6Y=;
        b=Ve7WLZ5setCj1dvgo2ju1mc3t/tjksBKtRev9bDd6Us7SByKi0nAOHaolJl1jlTbje
         zAZVcmH4mzQ9MjML3VIIGvmGoTgP5WJ0B0x2w6deR/jF4mk96DhTKWWLobDQazA0FVVD
         nROmXiHn8Bf1rtv3nTXL9bO14TSYIVbtGvevK21jKP+mxf1Y2pG5Sw/dJh35V70u56Vy
         3LCLa/iNz8rzjKIxNg2e2R+iWlQleAaKE78vDggYzuiJGCPFcFACAVWnsaMdoUE/QWbI
         2hQs/Zk6WHXdSTZTYZ6CAt4QI3tEbb8DhAuSTO+O7eDWa82FSsyOfXdfIxyKFfutV0aX
         CIDw==
X-Forwarded-Encrypted: i=1; AJvYcCVMEYfgujZ1szBw6X8nW3q7HytMSjRLl5aN2sg8y6fsTXvF297iz8wkCXLpi8cf4/z56CjArXhSbL73xL1vVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yybfv6T//Pg5+NvcRUooOYSPxZgUjm79zl7v/ZFw4VsOyBbCyoA
	MeGVzZXaWxztHJgBmHYGS0wfKhk/ksvzOpoTyV1htj9ihxg3cQ3we4P64WO8ieI8n6ZXYumvyX3
	i2VEBx23myD+PYFQf2N5hb3rxqarbrKVjzmGI43UnalhQBkomPpX/T9rOsTnzijBQY3O0ys4zo2
	XfHBSqYre+DD+5Cg==
X-Gm-Gg: ASbGncuAXGWduH3j5J8Y3X187GpxdkIGC+a73puNMg/dshGfQp4usuCtstFmS6ZmJIK
	uADjofemJkBU5ybJaQM4dB/TCAbreUY6A5uQE4DTZBhgW270acZ13cJKwnBDwD08igIQHZdNbEM
	6OWDi8FtOZU/gSfvgWDpkKWSMr1aSafdMCuL8xPk12DWfh0Zdic8wSXUYcdYugO3IHj2dwPqs1D
	WDSuQA8bHbQTvAbSbAFLUt5/mM+V4MCBN7IMpUUSc4Q9inc+ejWPHvsgY3r3jjbWjafwhMHaivl
	donPeB2o1zj972GQ+9zmgmuk730z3rVEvgppbLSaVFj+6/K1+Y2g01aLYUbJbt8Jox5Bih5ZodW
	xxxPQ2MF2z0sj7g6z6KIX0e8mhXV7jHxxsEhm62x64Xndm7Wxu6CxuC1PMdqfvlSPJaLpZ9/KCi
	qP
X-Received: by 2002:a05:600c:6d52:b0:475:dadd:c474 with SMTP id 5b1f17b1804b1-477b9ee479dmr174427685e9.10.1764258766362;
        Thu, 27 Nov 2025 07:52:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEhvJmXv4OEoT29/EJo9o8QGCSRXDm1sI+3moy9VScmLoc1+QzReBPmK7lGblaQxdCtRpMOwA==
X-Received: by 2002:a05:600c:6d52:b0:475:dadd:c474 with SMTP id 5b1f17b1804b1-477b9ee479dmr174427525e9.10.1764258765965;
        Thu, 27 Nov 2025 07:52:45 -0800 (PST)
Received: from ?IPV6:2a02:3035:6e0:95a4:4529:9906:9f64:f864? ([2a02:3035:6e0:95a4:4529:9906:9f64:f864])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47913870b38sm8453535e9.15.2025.11.27.07.52.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 07:52:45 -0800 (PST)
Message-ID: <87d6ce91-b2c5-4e96-8103-31df9802786c@canonical.com>
Date: Thu, 27 Nov 2025 16:52:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 knaerzche@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Quentin Schulz
 <quentin.schulz@cherry.de>, Jonas Karlman <jonas@kwiboo.se>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>
References: <20251027005220.22298-1-naoki@radxa.com>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <20251027005220.22298-1-naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_075253_460108_C836C59A 
X-CRM114-Status: GOOD (  20.63  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 10/27/25 01:52, FUKAUMI Naoki wrote:
> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
> audio-supply for Rock Pi 4").
> 
> Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
> [3][4][5].
> 
> This fixes the SPI-NOR flash probe failure when the blue LED is on[6],
> and the garbled serial console output on Linux.
> 
> The ES8316 headphone and microphone are confirmed to work correctly
> after this fix.
> 
> [1] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4a/ROCK_4A_V1.52_SCH.pdf p.14
> [2] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4ap/radxa_rock_4ap_v1730_schematic.pdf p.14
> [3] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4b/ROCK_4B_v1.52_SCH.pdf p.14
> [4] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4bp/radxa_rock_4bp_v1730_schematic.pdf p.14
> [5] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/ROCK-4-SE-V1.53-SCH.pdf p.14
> 
> [6]
> => led blue:status off
> => sf probe
> SF: Detected w25q128 with page size 256 Bytes, erase size 4 KiB, total 16 MiB
> => led blue:status on
> => sf probe
> jedec_spi_nor flash@0: unrecognized JEDEC id bytes: ff, ff, ff
> Failed to initialize SPI flash at 1:0 (error -2)
> 
> Fixes: 7ebfd4f6b52a6 ("arm64: dts: rockchip: add LED for ROCK Pi 4A/B/C/A+/B+")
> Fixes: 8240e87f16d17 ("arm64: dts: rockchip: fix audio-supply for Rock Pi 4")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> index 046dbe3290178..fda7ea87e4efc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> @@ -516,7 +516,7 @@ &i2s2 {
>   };
>   
>   &io_domains {
> -	audio-supply = <&vcca1v8_codec>;
> +	audio-supply = <&vcc_3v0>;
>   	bt656-supply = <&vcc_3v0>;
>   	gpio1830-supply = <&vcc_3v0>;
>   	sdmmc-supply = <&vcc_sdio>;


U-Boot uses the same device-tree as Linux. I applied the change in 
U-Boot and it fixes the following problems in U-Boot for me:

* The serial console is not usable after the supply voltages are set.
* Early initialization of the video output fails.

Tested-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
