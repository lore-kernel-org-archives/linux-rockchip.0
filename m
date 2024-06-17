Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A7A3C2BA18
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 09:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZS0/4Y/z7gtdW3wBa1BV2JMypJwKQShPsNuazFT9e6Q=; b=QqDhV6rOSj2Dky
	j6zMIrGpBRKqlPzbRhLjJee0Ay98RkaPYeg89uqzIXgCVPEYrNJEhieHZpd1CWJ3lKD3uTeV3eJtq
	1GU9JUkzVxmfchwV/d26PNJJyvVbhv4oUJgdcqETIkzGP83YnZbbHqA6UJlleRTPCnF/qwoDjNt0V
	f6hFMOeQbHkGR4Tj81MCxGPZwWvPl0gtKck9Ze9E+PCV7VeqOvaoH/02JryfmsXjMbJiDCInyG2M+
	XQyQw+XUDUU3hAj5ZIxuYgyvG++ejR3uFjzUkILjw/IdRL8ZXoz1D24NGpM6PzR4CFzxTLSmXDOim
	h+4Cqhb+0hFzrdxaILsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ8vI-0000000A70w-3ik6;
	Mon, 17 Jun 2024 09:45:12 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ8v7-0000000A6tL-0N7Q;
	Mon, 17 Jun 2024 09:45:02 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-57c83100c5fso4514691a12.3;
        Mon, 17 Jun 2024 02:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718617499; x=1719222299; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X97SzOogYwfV1kCh1JrbnYsGiZ69at2aW20xoDHZcwM=;
        b=RkyWK6aNiHLdTFlhnYy38wfqmrWj3Ujz1CDvEFfYsUisAoyKzbSnmYFgx5eB1fU1Cp
         vqM0aByOysQdEvxIEbQmX6lYB/oJGzZJzRGBi1j+StfD51H8tXs4sBDm1/QQ9uOCCkSE
         AjjBVLtczwxeEguyZ2MaSGUtG4fi3fueaB/YfQH/oEFJj6y+b0NjPTgnpUGDX/Zx7HV2
         QtB858w64w5dQL4P9zzKfhnS4Y8jSNfuVusBn+aBdl8I7/GP0g0v6AHwSCtS33EPgjbO
         ayC7EFkWfWDTYtxh7+qK/6a0S2Ecg9TAJDmfvloMh5e3S4WoLUN0d8A74UfBh5GS4xHE
         G2Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718617499; x=1719222299;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X97SzOogYwfV1kCh1JrbnYsGiZ69at2aW20xoDHZcwM=;
        b=R1Vs+WoOO1BxHa159cFcflVAyuRLai1fhBt8b+IpGIMHBiWd+xNPaQs+Nm96samKbi
         +z3NSDqwhX3v4U+s99ZGM01we5vfaNc1xClY1jO9m17sY8duIQgBo/HmVe6jYC9AVOnb
         EZoHemiuYVRockG1qZcQfKkDojigz3B/8fofUeDiEQ5qy18FI+PLO9yfmaPiwt0RB1sb
         Ufz4UyDWXFc3LnkOX0/k9S0QBcOSKVWwE0kgMWpxXU0EL7Ps8VTE22jEHpWy+lRu3QiJ
         EO3ImuC5fUWb9cVv+VMBI8Dx2Tl17l5HGVpuqkVxBKSTfi9naV4rlp8XdcFWLRYIMRsr
         ip/Q==
X-Forwarded-Encrypted: i=1; AJvYcCV6R0Q9rSGoVjUJz/xnQd2YF4iUt29i8BWMZINsAxR5SrOrguKNI/bFZp0sYEcdEj39SkaCcIicxmRV/M0hNfBHp5m9RzPaLPHuDgjsweNSUsY3KEAWpCs6KNxx9na98sa3re6WT+YmAAe4tYoB1t+Z6Bi3Lzjn4ZQ=
X-Gm-Message-State: AOJu0YymW6udMZd5PgPmAGhTVqlhwZSvuHUfbpDyWy814M6dAwXZh6lp
	bGzAnBaEZ/SHsxYkX4yp9ko4p7hJ/5dxKjYgqXk8bnV6rE5P/CkF
X-Google-Smtp-Source: AGHT+IFS75We8HO8dxXBT7VUWU1ReVIHpzlJDr8M/osvVnkMD+fe6bx8ReOw1WyqfmavqcTI87RW1Q==
X-Received: by 2002:a50:cdd5:0:b0:57a:2a46:701 with SMTP id 4fb4d7f45d1cf-57cbd68e23emr5766447a12.19.1718617498862;
        Mon, 17 Jun 2024 02:44:58 -0700 (PDT)
Received: from ?IPV6:2001:8f8:183b:6864:7071:8881:6a51:3e82? ([2001:8f8:183b:6864:7071:8881:6a51:3e82])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb743ada1sm6149470a12.96.2024.06.17.02.44.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 02:44:58 -0700 (PDT)
Message-ID: <feeb8dcd-661f-415e-be08-afe175d0102e@gmail.com>
Date: Mon, 17 Jun 2024 13:44:54 +0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] arm64: dts: rockchip: Add AP6275P wireless support
 to Khadas Edge 2
Content-Language: en-GB
To: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de
Cc: nick@khadas.com, efectn@protonmail.com, jagan@edgeble.ai,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240617071112.3133101-1-jacobe.zang@wesion.com>
 <20240617071112.3133101-5-jacobe.zang@wesion.com>
From: Alexey Charkov <alchark@gmail.com>
In-Reply-To: <20240617071112.3133101-5-jacobe.zang@wesion.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_024501_194738_BE7A301D 
X-CRM114-Status: GOOD (  15.83  )
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


On 17/06/2024 10:11, Jacobe Zang wrote:
> Khadas Edge2 uses the PCI-e Ampak AP6275P 2T2R Wi-Fi 6 module.
>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
>   .../boot/dts/rockchip/rk3588s-khadas-edge2.dts  | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
> index 233bab17bffd2..7d7cc3e76838c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
> @@ -365,6 +365,23 @@ &pcie2x1l2 {
>   	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
>   	vpcie3v3-supply = <&vcc3v3_pcie_wl>;
>   	status = "okay";
> +
> +	pcie@0,0 {
> +		reg = <0x400000 0 0 0 0>;
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		ranges;
> +		device_type = "pci";
> +		bus-range = <0x40 0x4f>;
> +
> +		wifi: wifi@0,0 {
> +			compatible = "pci14e4,449d";

This doesn't seem to be listed in the bindings, nor is there a mainline 
driver that would match either this compatible or PCI ID 14e4:449d. 
Maybe submit either or both of those first, to make sure they are 
reviewed and acceptable for mainline inclusion, before this change lands 
in DTS and becomes part of the ABI?

I'm also wondering why would adding a DT node for a PCI device be needed 
in the first place, given that PCI supports device discovery? Does it 
require some sort of boot-time fixup by the bootloader? If so, it might 
be helpful to state that in comments.

Best regards,

Alexey


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
