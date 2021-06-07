Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E64DEC47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 09:30:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B7FF961107
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 09:30:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B7FF961107
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AMdptTiCGLd0fGpOM3IxF2KdNhFGhTO9jMSabgH1SEY=; b=RaFyfXPZ1/1Ex1j+ZuYBwckCeS
	QcgH+4MoHTWRlTSMa/n8hK1n9N+zX+WRBg3E5JtO32IDlzarv/JaExXTR11Ld943KKcbwXul8sy+C
	DvPsQGuFVxi8o/iHRbyUH0euejEeS6rs8S3nTe55x4f3BFRdDyzlcvuwumAnyV/F9yBw8VWF66E3/
	qdUq6Kk5Ay2lHrQYlWSH3f8/TU2Es2WYjUxvAEXNPApPV2XOOyQ30EAWkbLhj7UDdpaqaHyuKPGLG
	5nmpYt9M6zSswWuFFjJ4lNghj9XCYvLtmEg08MoeQIs7JaF11psZDnyHtOWAXUBJiTvEwoYFkHHxQ
	z0mlt2DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqBaj-002bzo-Vi; Mon, 07 Jun 2021 09:30:42 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqBL0-002W2u-TA; Mon, 07 Jun 2021 09:14:32 +0000
Received: by mail-ej1-x62f.google.com with SMTP id my49so8774220ejc.7;
 Mon, 07 Jun 2021 02:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UZrq5VlhmQW6JZmMPrVakR8M/Jz/bAVYPXpHBFjrH1c=;
 b=KLn0ZlNqWao86EIujuLqufe3OtsEytKF0ws/B3wc3/r7n3np7VmGBbtKzL47joK9cC
 DPxaG75RV5SEQARuDIlNwRb2azNgabL9fbK890DZu2A2bpgyBCS0L1/JqQVbBDSqjPRI
 mEPPkB0MsUv3koqXOXp0hq7dSZARqaJ6//+uxLvfEIJErcQ6ua+Cp54rfNOZrqroLQSc
 gK73DjWJriG2Vpjv2DPaUymgpmJH5SkHboVw3C8E+scOFq+DS+p2PdoP20SMeoqGNh7j
 81uAGcyJTM5jMRevo01ap3EaAGIoj7qngHGu5IQLKtGMCtUgqV9OmhxIcEUTRbk6mvWf
 a0lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UZrq5VlhmQW6JZmMPrVakR8M/Jz/bAVYPXpHBFjrH1c=;
 b=VsQvb9whWID1Dkun90ImjIre+Eq2LF8FI87GMwOz8yXllH6Z2QkmonQiC6qegTpEJt
 Gz1qPYLEyLPzKM1vLsHj2KhK7n7gLG/LCd0W+8tm0fIzeiLvD3tMTkcANDTyQ6Qm0+FC
 6ms1NHT7pkO8SU665nn/DOIBE9e0ZhzLlwfzJdNe66ETxGKLAjjc8cUmCcp7XeuoujpA
 f+u6w6DlQRBSuTP9L/7dFQUkjCdTk3ame3Nt2nPxHHPJBmeZIu2SgI1jGgDJRmNJ7+qh
 p3ZKGIvkT6Bkp2ikMwLlz+XrIrx1IJPPlDOqgDvBADM/TqrqpkCadnjIBq0cCw/FcWKF
 xbfA==
X-Gm-Message-State: AOAM533Bx6RBNbzIhP3qeLAa3lRhgybIcVVPRefNOTd2lge+l1tmU+Ze
 wRMFVsZVx6fU4x+IoCkUCZs=
X-Google-Smtp-Source: ABdhPJzXK2A9L9nkflnok98q7PG7rX1Tcr7XYduvR8sIGZiKEBv2cHiQo0Pymrmm8SJyMG5RlEkWxw==
X-Received: by 2002:a17:906:f8d0:: with SMTP id
 lh16mr17075823ejb.331.1623057265308; 
 Mon, 07 Jun 2021 02:14:25 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 gx28sm6320117ejc.107.2021.06.07.02.14.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Jun 2021 02:14:25 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
To: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Marty Jones <mj8263788@gmail.com>,
 Pavel Machek <pavel@ucw.cz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210607081727.4723-1-cnsztl@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <9258ab23-ef65-2c3d-f0d2-ca5f77d7c12a@gmail.com>
Date: Mon, 7 Jun 2021 11:14:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210607081727.4723-1-cnsztl@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_021427_022025_45AE08EC 
X-CRM114-Status: GOOD (  18.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Tianling,

On 6/7/21 10:17 AM, Tianling Shen wrote:
> NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
> stores the MAC address.
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> index cef4d18b599d..4a82f50a07c5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> @@ -68,6 +68,15 @@
>  	status = "disabled";
>  };
>  
> +&i2c2 {
> +	eeprom@51 {
> +		compatible = "microchip,24c02", "atmel,24c02";
> +		reg = <0x51>;
> +		pagesize = <16>;

> +		read-only; /* This holds our MAC */

The mainline dts files should be generic I think.
Any comment about "use", partitions or write ability should be avoided.
It's up the user.

Johan

> +	};
> +};
> +
>  &i2c4 {
>  	status = "disabled";
>  };
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
