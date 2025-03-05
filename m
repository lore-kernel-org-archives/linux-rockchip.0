Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BAE6C19F32
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 14:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSqQdhyCetXTZlV1sW07XJoRgnTmVDWYMAk9PQeOJIY=; b=uGhuFG6sG4WJpp
	xGRqKE+7U6YGLzLJvi0ACbzsx85MMvrYyTfzoFqqtOrFoM0Sxf48U211IFNlhxjw4HM7w+1Sx9cgf
	Cc/rp0eSaSD400WwvNIW95varqA7T4zwOTR2chHZMriDKmmxOE0hsk2WVXS6/c2S20pXPdgKNi3Cw
	2WFduwq3MpZWa10EkFEWPOnGudecM35t5tVk6jMkcRDeAoMghK/stevet+B8MXGaJFRBTNYO235DF
	LU/G4bfpbbOyR1cXa4wupWfpEWGczH3SQb0G/hcxp8s+/RkrokoVgYfjYSdX7ZfJ3VYGCy0CMuc/a
	cFYnccT6NyXP3votZHvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tppLY-00000008HDY-3udW;
	Wed, 05 Mar 2025 14:03:40 +0000
Received: from mail-m1973195.qiye.163.com ([220.197.31.95])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpoBn-000000084i5-1Lpb;
	Wed, 05 Mar 2025 12:49:33 +0000
Received: from [192.168.60.65] (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTP id d09bf36e;
	Wed, 5 Mar 2025 20:49:18 +0800 (GMT+08:00)
Message-ID: <f96f7559-0b07-4c7f-a8e7-64dbfa58bee8@rock-chips.com>
Date: Wed, 5 Mar 2025 20:49:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Enable ufshc on RK3576 evb1 board
To: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <1741148307-137177-1-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <1741148307-137177-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCHUhPVh1DTE5JTU9PHUMeQ1YVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKS0hVSUJVSk9JVU1MWVdZFhoPEhUdFFlBWU9LSFVKS0lCQ0NMVUpLS1
	VLWQY+
X-HM-Tid: 0a95665a734003afkunmd09bf36e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mj46MTo*HTJNDD8ZMylLOCoy
	ETEKCVZVSlVKTE9KSkxDQk5CQ0hIVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUxPSzcG
DKIM-Signature: a=rsa-sha256;
	b=Z8vTH8nB1udbnV/pIWQuDaWLsFnPO3Pqj8rZADQ0MiDIh7uw6YyXOsKVhTjRuSL7rCjDwTDvN0KffHT3/zyLSU1ud3pRlXQQgvC8L/yoni/Ei0xAI/hgLNT7SotofpS/Y2XOW+yYXb71Ot0pmlJ4bNgdh4QGhqNyuMmalAEtbkM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=7sazXo0j8u8UYXyOl1oOD05+MKK9ViROFc169W0yHfQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_044931_870908_6C1FE8BB 
X-CRM114-Status: GOOD (  10.85  )
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


On 2025/3/5 12:18, Shawn Lin wrote:
> RK3576 evb1 board supports UFS, so enable it.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
>   arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
> index 782ca00..5412c60 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
> @@ -711,6 +711,10 @@
>   	status = "okay";
>   };
>   
> +&ufshc {
> +	status = "okay";
> +};

This node suppose to after the uart0.


Thanks,
- Kever
> +
>   &uart0 {
>   	status = "okay";
>   };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
