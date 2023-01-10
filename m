Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F74EC46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 22:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8WhOzJzF/K8VN43eM5aeFQ3Xyr/ID1yF6XbkBGZwog=; b=XapAhOncC3ipVM
	HwFBOx35OlSqJwP1AiQ4B8OfOgpbYU2uSPIHwVNGPZIasbP4vYQADr82eD5UJEzFyVDuQhwkTOtB7
	pBn3UvIEa46Axeargo9n0Vev/5zZhvM26SKnlKWGHYRoNl/fCEZuCDrfbSssmnMkKpD0/iPymUoOa
	DlxVkoJRWRgPgqG+md/LYG2CPpsVnRkvIIY3GFP84aFUvYaVWhJIoXDAcwmAhozhKEvZbIx4XxLSx
	ix/JFQyBE1AOfY8IEFw6SGN67vqLcoZ995lwQF5CUWVrUGCYPQ1r217/Fj2HOC3uE+f3cRXkU1A/Q
	BgymIwrM+2DwSVvB8Hog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFNTJ-008pHO-Hl; Tue, 10 Jan 2023 22:51:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFNTG-008pG1-Fq; Tue, 10 Jan 2023 22:51:55 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFNTE-0008KM-G6; Tue, 10 Jan 2023 23:51:52 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: pgwipeout@gmail.com, Furkan Kardame <f.kardame@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Furkan Kardame <f.kardame@manjaro.org>
Subject: Re: [PATCHv2] Follow-up patch rk3566-roc-pc audio nodes
Date: Tue, 10 Jan 2023 23:51:51 +0100
Message-ID: <2766066.Sgy9Pd6rRy@diego>
In-Reply-To: <20230110184008.21492-1-f.kardame@manjaro.org>
References: <20230110184008.21492-1-f.kardame@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_145154_552591_BE08CE4C 
X-CRM114-Status: GOOD (  18.81  )
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

Hi Furkan,

Am Dienstag, 10. Januar 2023, 19:40:08 CET schrieb Furkan Kardame:
> Enabled hdmi_sound
> i2s1_8ch only uses a single channel
> i2s1m0_sdo{1,2,3} and i2s1m0_sdi{1,2,3} is used by pcie
> 
> Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>

so I've folded the changes from this into the original commit because I
applied the other one just today.


But normally I would expect what is called a "follow up commit" to really
be a regular commit with a correct subject etc.

So the following is moot, because I took in the changes, but normally I
would expect 2 commits from the code below:
- arm64: dts: rockchip: enable hdmi-sound on rk3566-roc-pc
- arm64: dts: rockchip: change i2s1-8ch to single-channel on rk3566-roc-pc


Heiko

> ---
>  arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> index e60643581..42889c590 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> @@ -216,6 +216,10 @@ hdmi_out_con: endpoint {
>  	};
>  };
>  
> +&hdmi_sound {
> +	status = "okay";
> +};
> +
>  &i2c0 {
>  	status = "okay";
>  
> @@ -481,6 +485,9 @@ &i2s0_8ch {
>  };
>  
>  &i2s1_8ch {
> +	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_sclkrx
> +			&i2s1m0_lrcktx &i2s1m0_lrckrx
> +			&i2s1m0_sdi0   &i2s1m0_sdo0>;
>  	rockchip,trcm-sync-tx-only;
>  	status = "okay";
>  };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
