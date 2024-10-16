Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DED6DD1AD2C
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RngXk6Q/tyuCQTlTfKd9ZXLW9ebdmGr4YS+O/YmV7pE=; b=CHBI8kt31RUE1/
	4OcDG90O0maiPgXgqkQZmULmyNiu8thVTyleoRdtgbwvImONYL0dXlzcXprCQab8rZFMk4MAQXyq0
	TwmAgXGWagEUm5JVe+ypdVHGRUIcYzPZ7q1xtUNAt8qUa5CcrnY15hTZPNcnuw1TnvgU+H04I6Kcy
	sUKCkMGK3bx8DpCMxp/7U/IJXnnr+3elM03SsK4SXvLEiVMYn6E3YMKjGx3pilqbDQdHd2quNk+LU
	RAYDALJqgTiMZ7E7dx1hd6m/fRbmKPlyrToOKUi6Hkpn9ydP3Fx1t16aWT6P4aiPzRkEbBJy8ecMo
	suE/fEFXQpKYfwixZUwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zWS-0000000B3Yk-21ew;
	Wed, 16 Oct 2024 08:36:48 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zEz-0000000AzlF-3P6J
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 08:18:48 +0000
X-QQ-mid: bizesmtpip3t1729066706tkxe5xk
X-QQ-Originating-IP: cTZ+f0wIPRrDaLomOb2z9gaidsaRWiSeJPZrSHIV2i0=
Received: from [IPV6:240f:10b:7440:1:e88d:8fa3 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 16 Oct 2024 16:18:23 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17745560261723660001
Message-ID: <DEE06BE58D53101E+59027b3d-9db9-4005-9659-041b08176944@radxa.com>
Date: Wed, 16 Oct 2024 17:18:23 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: change pinctrl-0 name in
 pcie3x1 for Radxa E25
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn, linux-rockchip@lists.infradead.org
References: <20240918073236.648-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240918073236.648-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NqVPOlD8LFce7NO7T59kygGmMgd8dKIRDZESUbcMKdRH6cGbakeMW4Zp
	w0DRCcgukdEaXk9rGOMnMwFPyYNi+vr8EdsevLbf0VXykeOldSeK+RirUlUFW2zJE2O3LyA
	QeXRC1ZexC63h7+6v2I0DmGUYwVz7lDKWX1dPW/LQEyJoxzRaTxWI2Muu8Mxop2L0q+ZHD4
	YjnBV5vM4rQR53Iv7CXFaRKoo2FyVa6cIU2gqVrzbV/XxxgOIxB2d9e9jz6oIyin6S/6lMQ
	WE4pluPQNKdHaZtAJTdjNBvxLRq+2tt/HOGhx5pcuIA2tQ+LrAE0OIvGnym8AwjHShxV9c4
	xcg4JGCeenVigVN4Uzw53EacxhcIyt2lrAgLo+xBna120ZdU+uMu9x+6NG02al3KKMmoeDJ
	RlPcStUPgFcxGnYXlJjdgPiGC5LB6hyJhX/TaOwuEcMeggYED48evms570leJ4gdD2yTQCH
	3ACI9p2uqBKiz9poDUJ3OcmMkpxaQ5Vvsh/p5hQ28oxuR4ZgqGLMnFlLj2OEt3vAGqSIgm/
	zzezNe1gCeRrZw7i7OZU5j1shGxZRAaPKE4S40MNAPYty8cQWTqlWEWeYo/Bc09aR9v00A7
	1nVcMa2DENXDAaKJbXn2mR6zJiu3zXEE9ZEQy6/YeQJbGZB1oYRg7c6J0w979ol2D5e+hB1
	r9Y84+lyn97DHQZelyG2zjpwzjtqRU3aDiNZZCfc/jJ4ABIroAiNMNg0Ae9NhTQd8cRod6q
	4DxaqjdGzcMxMd1WTK0A1JQvTofQiET2lJ74ynbmykXnPlaTC5jDpZ36fmMFEhFmSZbF3fi
	pPObH9fJuj+1C9z5MB9dEA9zu3J4rq9DsnPZqrY43H0G94M6Rm0PvGALdzK10cAOhDlqG/y
	/DF/PthUzV4DVBRcwzH9lhk92wkOs168
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_011846_356883_1CCD9855 
X-CRM114-Status: GOOD (  11.58  )
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

Hi,

can anyone review this series?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 9/18/24 16:32, FUKAUMI Naoki wrote:
> to avoid conflict with sdmmc_det, change pci3x1 pinctrl-0 name.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - new
> ---
>   arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> index 84a0789fad96a..bf8f2d8e9e2a1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> @@ -123,7 +123,7 @@ &pcie30phy {
>   &pcie3x1 {
>   	num-lanes = <1>;
>   	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie30x1m0_pins>;
> +	pinctrl-0 = <&pcie30x1_reset_h>;
>   	reset-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
>   	vpcie3v3-supply = <&vcc3v3_minipcie>;
>   	status = "okay";
> @@ -148,6 +148,10 @@ pcie30x1_enable_h: pcie30x1-enable-h {
>   			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
> +		pcie30x1_reset_h: pcie30x1-reset-h {
> +			rockchip,pins = <0 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
>   		pcie30x2_reset_h: pcie30x2-reset-h {
>   			rockchip,pins = <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
