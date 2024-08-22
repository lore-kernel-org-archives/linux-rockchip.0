Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C219C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 20:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYwhht07N4Ju/ylA17E6J3QXFZg/fcemLKyzE/aM47g=; b=QVbFLw7LgGzD/A
	D5QLSJFXupgQ/A7LoiO8XluPpYHn6TufvslEH8F5rHOybxn52ZSalyfwibyctmy29tsvzmdyQ1YML
	xRaqoYNjtYWj54GiSh1jewog/YxXyH4Wlx61BV5CEVE4cbbEW1FTb8jpFyPvfcR7XS54vKgs4bmJv
	omTha7nfPiXKNMWD8haEzMrD+5DCJXLxA4zbLEwLwQ5dPyuj3jlbyUtd0cYBKhQsk/h4zQSFVzAJE
	iv+TR7BgkacDrZduShx8adHruqGELVGm/I85adSJ7sdJrJ6KTHR6f8ap3eCb8LGhrbpeRCS7bodKy
	lgRsJ/TlR7FnyO9SVc+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shEX8-0000000EFD2-2syH;
	Thu, 22 Aug 2024 20:35:50 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shEX4-0000000EFC9-3yQE
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Aug 2024 20:35:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724358939;
 bh=F7Gel/T0NZZXijY9bb7HRPKWvHCIix4REe9jYuWFvFg=;
 b=ajvqt/++78m4AkxZyf2R1Zt9nwVhS7yxwiYXw5H7PhjPCVST9N+52I3j6KCLRC1jeL/tA/ygt
 z12+KvZDfqSvg97uFxSN1yuhJMs7aNBgsKK89ySb61lV2agbxn2jaLu9Z2DT3H5u8EgAdk5mhO8
 oMAU0V+Gbjr3tfzTXpgRr7HqKBBwew5Fvfp5R/IvDZFsTLuw21LougWDxPX7gvAukrnkmaiFiLM
 w0goNJ+Wo+mUEykT5Cn4yFCg8mbRWklgCrgyISLtsoyojAe5olXwvSgEDfAae/0tozRsBzF3CV+
 RdoDZ0rIWKiV5supU1o6KBuuR9nycnrxcd59fH9oPA4w==
Message-ID: <b451baea-a3e7-4d2c-b458-2302c2cc5546@kwiboo.se>
Date: Thu, 22 Aug 2024 22:35:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/8] arm64: dts: rockchip: define pinctl for SPI M1
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
 <20240822-friendlyelec-nanopc-t6-lts-v4-1-892aebcec0c6@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240822-friendlyelec-nanopc-t6-lts-v4-1-892aebcec0c6@linaro.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66c7a1199c6972850a4e924a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_133547_364787_10A4A113 
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

Hi Marcin,

On 2024-08-22 15:32, Marcin Juszkiewicz wrote:
> There are definitions for M0 and M2 pinouts while NanoPC-T6 uses M1 one.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> index 30db12c4fc82..75d5816b6fa4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> @@ -407,6 +407,23 @@ fspim0_cs1: fspim0-cs1 {
>  				<2 RK_PD7 2 &pcfg_pull_up_drv_level_2>;
>  		};
>  
> +		/omit-if-no-ref/
> +		fspim1_pins: fspim1-pins {
> +			rockchip,pins =
> +				/* fspi_clk_m1 */
> +				<2 RK_PB3 5 &pcfg_pull_up_drv_level_2>,
> +				/* fspi_cs0n_m1 */
> +				<2 RK_PB4 2 &pcfg_pull_up_drv_level_2>,
> +				/* fspi_d0_m1 */
> +				<2 RK_PA6 5 &pcfg_pull_up_drv_level_2>,
> +				/* fspi_d1_m1 */
> +				<2 RK_PA7 5 &pcfg_pull_up_drv_level_2>,
> +				/* fspi_d2_m1 */
> +				<2 RK_PB0 5 &pcfg_pull_up_drv_level_2>,
> +				/* fspi_d3_m1 */
> +				<2 RK_PB1 5 &pcfg_pull_up_drv_level_2>;
> +		};

fspim1_pins already exists in rk3588-extra-pinctrl.dtsi, also look like
this uses wrong function 5 instead of function 3.

Because rk3588-extra-pinctrl is included after rk3588-base-pinctrl the
function is corrected and this patch has no real effect.

Please drop this patch.

Regards,
Jonas

> +
>  		/omit-if-no-ref/
>  		fspim2_pins: fspim2-pins {
>  			rockchip,pins =
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
