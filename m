Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD792C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 12:16:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D8EF61164
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 12:16:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5D8EF61164
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gerhold.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2geBgSgfjxU87Cf9Nxbf/hgIBykSc4HBI06qSpcCq4=; b=2k3GXGp6msQtYz
	pH/wOfzWvh1CZkOUVlq/6RwmM2su6qRixOiVw5gIhWpxrbAt5t8LA6aXHnmfhoQ5G6fwLYvABnOoM
	ue9mmfTy66vFS9O0QNep5xFBMNQt8zWs9rSxGwZK4qXKPo91XEvDsQp3CIjwZAOe9QQpP5yZ6IXOL
	raYonjXqipyAJZ+2KGag84bOPvksDa1wHOuNCuZVKyTxva62z9GqST5fkE7N6kWHykag6NFxGI9WQ
	TIxXR5Oy5cYPEWcIFKeZeIAzaOylgJJlbShKPwPh+HSzbPTSPFsTZb2w205n/6sN0t2IMH4etttv9
	9i34TV4GJiiA4C0684Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbic6-00AYov-Oy; Sat, 16 Oct 2021 12:16:34 +0000
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.83])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbic3-00AYn1-JQ; Sat, 16 Oct 2021 12:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1634386534;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
 From:Subject:Sender;
 bh=FUfmuNlYDkfLlY4FpNd9yLg46kksRppBVzaePpjIQL8=;
 b=oWOlFdOcdV5JBy2m8+oaiX1xjaeRqb2ZLH3x8YQhlSkx8dkCBpPfCXqXBe1ZU8cAp6
 8I07K9jJiKRVP7R+xo4/BgJWtX6t43a1Lo5BgbxmeSRMkmYoUilTaV1HIyKUWe7zpB+b
 h/RfH5cuqmSvwISnkfI4+EPdcnv/LCCh9itNnGn9nrATAIl/JaacTeTM+O9qVcWkMGMs
 tQGiHUXi6QWT+TMVDRL3fv/E1e0/z1S0itqaHP7/fufwCmeU4sW0lvDlp77gYucjTfJf
 KXqOW6vhVVqicTjONVuCPmUbrsmw+L1Szd8UHg1AVdL2kXKrlmCh5FQxG5j0jJRgWOo1
 wa2w==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u267FZF9PwpcNKLUrK85/aY="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 47.33.8 AUTH)
 with ESMTPSA id 301038x9GCFWNO7
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Sat, 16 Oct 2021 14:15:32 +0200 (CEST)
Date: Sat, 16 Oct 2021 14:15:26 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Arnaud Ferraris <arnaud.ferraris@collabora.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, Heiko Stuebner <heiko@sntech.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Lucas Stach <dev@lynxeye.de>, Angus Ainslie <angus@akkea.ca>,
 Guido Gunther <agx@sigxcpu.org>, Tomasz Figa <tfiga@chromium.org>,
 Johan Jonker <jbx6244@gmail.com>, Eddie Cai <eddie.cai.linux@gmail.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Brian Norris <briannorris@chromium.org>, Dan Johansen <strit@manjaro.org>,
 Simon South <simon@simonsouth.net>, Matthias Brugger <mbrugger@suse.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: add 'chassis-type' property
Message-ID: <YWrCXnQ3XNocqXhz@gerhold.net>
References: <20211016102025.23346-1-arnaud.ferraris@collabora.com>
 <20211016102025.23346-4-arnaud.ferraris@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211016102025.23346-4-arnaud.ferraris@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_051631_884911_E3C6DF56 
X-CRM114-Status: GOOD (  14.50  )
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

On Sat, Oct 16, 2021 at 12:20:24PM +0200, Arnaud Ferraris wrote:
> A new 'chassis-type' root node property has recently been approved for
> the device-tree specification, in order to provide a simple way for
> userspace to detect the device form factor and adjust their behavior
> accordingly.
> 
> This patch fills in this property for end-user devices (such as laptops,
> smartphones and tablets) based on Qualcomm ARM64 processors.
> 
> Signed-off-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8916-alcatel-idol347.dts            | 1 +
>  arch/arm64/boot/dts/qcom/msm8916-asus-z00l.dts                  | 1 +
>  arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts                  | 1 +
>  arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts            | 1 +
>  arch/arm64/boot/dts/qcom/msm8916-longcheer-l8910.dts            | 1 +
>  arch/arm64/boot/dts/qcom/msm8916-samsung-a3u-eur.dts            | 1 +
>  arch/arm64/boot/dts/qcom/msm8916-samsung-a5u-eur.dts            | 1 +
>  arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts           | 1 +
> [...]
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-alcatel-idol347.dts b/arch/arm64/boot/dts/qcom/msm8916-alcatel-idol347.dts
> index 670bd1bebd73..265e539e7e99 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-alcatel-idol347.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-alcatel-idol347.dts
> @@ -9,6 +9,7 @@
>  / {
>  	model = "Alcatel OneTouch Idol 3 (4.7)";
>  	compatible = "alcatel,idol347", "qcom,msm8916";
> +	chassis-type = "handset";
>  
>  	aliases {
>  		serial0 = &blsp1_uart2;
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-asus-z00l.dts b/arch/arm64/boot/dts/qcom/msm8916-asus-z00l.dts
> index cee451e59385..6bc0a29d4b4f 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-asus-z00l.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-asus-z00l.dts
> @@ -8,6 +8,7 @@
>  / {
>  	model = "Asus Zenfone 2 Laser";
>  	compatible = "asus,z00l", "qcom,msm8916";
> +	chassis-type = "handset";
>  
>  	aliases {
>  		serial0 = &blsp1_uart2;
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts b/arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts
> index e0075b574190..42d93d3fba36 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts
> @@ -25,6 +25,7 @@
>  / {
>  	model = "Huawei Ascend G7";
>  	compatible = "huawei,g7", "qcom,msm8916";
> +	chassis-type = "handset";
>  
>  	aliases {
>  		serial0 = &blsp1_uart2;
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
> index 30716eb8fb2d..9c83c96d2c8a 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
> @@ -11,6 +11,7 @@
>  / {
>  	model = "Longcheer L8150";
>  	compatible = "longcheer,l8150", "qcom,msm8916-v1-qrd/9-v1", "qcom,msm8916";
> +	chassis-type = "handset";
>  
>  	aliases {
>  		serial0 = &blsp1_uart2;
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8910.dts b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8910.dts
> index 27845189ac2b..f9ce123471d4 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8910.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8910.dts
> @@ -10,6 +10,7 @@
>  / {
>  	model = "BQ Aquaris X5 (Longcheer L8910)";
>  	compatible = "longcheer,l8910", "qcom,msm8916";
> +	chassis-type = "handset";
>  
>  	aliases {
>  		serial0 = &blsp1_uart2;
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-samsung-a3u-eur.dts b/arch/arm64/boot/dts/qcom/msm8916-samsung-a3u-eur.dts
> index 6cc2eaeb1d33..4ba11b020f9b 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-samsung-a3u-eur.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-samsung-a3u-eur.dts
> @@ -7,6 +7,7 @@
>  / {
>  	model = "Samsung Galaxy A3U (EUR)";
>  	compatible = "samsung,a3u-eur", "qcom,msm8916";
> +	chassis-type = "handset";
>  
>  	reg_panel_vdd3: regulator-panel-vdd3 {
>  		compatible = "regulator-fixed";
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-samsung-a5u-eur.dts b/arch/arm64/boot/dts/qcom/msm8916-samsung-a5u-eur.dts
> index c2eff5aebf85..d978c9ac179d 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-samsung-a5u-eur.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-samsung-a5u-eur.dts
> @@ -7,6 +7,7 @@
>  / {
>  	model = "Samsung Galaxy A5U (EUR)";
>  	compatible = "samsung,a5u-eur", "qcom,msm8916";
> +	chassis-type = "handset";
>  
>  	reg_touch_key: regulator-touch-key {
>  		compatible = "regulator-fixed";
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts b/arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts
> index 4e20cc0008f7..69a44c6f57fc 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts
> @@ -11,6 +11,7 @@
>  / {
>  	model = "Xiaomi Redmi 2 (Wingtech WT88047)";
>  	compatible = "wingtech,wt88047", "qcom,msm8916";
> +	chassis-type = "handset";
>  
>  	aliases {
>  		serial0 = &blsp1_uart2;

FWIW:
Reviewed-by: Stephan Gerhold <stephan@gerhold.net> # msm8916

Thanks for going through the work to add it to so many devices! :)
Stephan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
