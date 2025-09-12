Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F3DECA101F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 15:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+VmN6Gn+14mposRc1xx/W8m6ANkQhZP2Y3D1hs/cD8=; b=qo33zmm8EYhhF7
	+9OtVmobCEyeOQ5e1+DDa7z6DfSb3MFZ2Lps7WZUmOA9jAM90gs9FHH+qte2r7srhXcF0VoICWtyc
	Id75XRAnFcSHkawTIA3oWxD39ko/4rPQe/6ykTeTgjy7+Xx8zc9QTXgGx58Fx2PeT19VqsvWtIn/L
	Dcp7/eOBJJUAZBpL/SkScAk2SOdqVfUFa5QFW8OU9W7ODiwXRxocbsrv9YetgCOFxzDy/csEeAF3H
	A0HPQYTrkB+dsKQ92yztX3FUxZBv36ISFC4IrvZsmf7Ph5XPzxISxRe+p5pJtc/SgT26ExNo7T7s2
	UPCmvxc2xCGQ1iV1cduA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux5Lv-0000000A6ok-2aDo;
	Fri, 12 Sep 2025 15:06:19 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux5Ls-0000000A6nb-3pxk
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 15:06:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: Cc: From:
 References: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1757689574;
 bh=uob8b5KLOUrQDVTi7km+VRqS3YkUkDwBT/GyAbmxxlU=;
 b=MuLDl00Nif8EVkH9sT3lOo3N2Gxnajxg83zwvO9I7CwwS28Egujc0LdTNuqrO9KbMtD16dBRS
 mnQCz1nacoAIRuJZTlJ7b7KK/B7x7rOHkrUdE2rxv1BbDqZ2ppL91OheSyHF0I5SklP3yp55Sq2
 ItWMXueM1ItPojaZZ1ZgWXgVPYlHiQhUjyej0OwBOE5Xmx51Pc2hKJz+AkiPuQpudm2KEfY19xk
 DZklJ3iCmOuUkR3j+e+PHkW4fpY95ewiJ6xxKA9YUEz3cfMn2+Z+RL+bPgBGBVP6Np1saY/Yl4d
 gVxci1Acwiod9us7lXykIx3Ew/KJa8YRNzx/KeEAlYWA==
X-Forward-Email-ID: 68c436e32be672a3b8e33f5d
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.2.14
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <0e852400-7cfc-437c-a3f4-ad2093c5b1e0@kwiboo.se>
Date: Fri, 12 Sep 2025 17:06:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v2,PATCH 2/5] RK3566 BTT Pi2 - Fix GMAC default delays.
To: Andrey Leonchikov <andreil499@gmail.com>
References: <20250910215451.2244192-1-andreil499@gmail.com>
 <20250910215451.2244192-3-andreil499@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org
In-Reply-To: <20250910215451.2244192-3-andreil499@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_080616_994763_7885FC58 
X-CRM114-Status: GOOD (  11.66  )
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

Hi Andrey,

On 9/10/2025 11:54 PM, Andrey Leonchikov wrote:
> Simple patch to avoid a warning on GMAC driver initialization.
> Default values same to a manufacturer DTS.
> Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
> index fdf7d00edf4d..d31b9bd54162 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
> @@ -265,6 +265,8 @@ &gmac1m0_rx_bus2
>  			&gmac1m0_rgmii_clk
>  			&gmac1m0_clkinout
>  			&gmac1m0_rgmii_bus>;
> +	tx_delay = <0x19>;
> +	rx_delay = <0x05>;

This is using phy-mode = rgmii-id, so tx/rx_delay should not be needed.

Please do not add these just to avoid a warning by the driver, the
driver should more likely be fixed not to warn about missing props.

Currently the driver wont apply these delays due to use of rgmii-id,
however in future the driver may be changed to be able to use these
props to apply a small delay on top of the PHY applied delay. I have
patches for these in my local tree that is on my todo to send out.

Please drop this patch to avoid new issues in the future.

Regards,
Jonas

>  	status = "okay";
>  };
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
