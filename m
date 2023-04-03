Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA31DC76188
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 14:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bj1H6BjDih1vflldZNTi5NX7SUnd9DqoReqPCcxLyxw=; b=GYzjApzlW4qJVV
	6dHTZfxJQNqxLiUJFWMEOQhMooF9Dz2AZ53GkoY9eFViFuupSeJyBobjdZUMVupGwYNkfQo2oUGM+
	VfLYbajde2RDg1TuMtc4Gq2fRaF1T1VwyzEcf3cLIZgNPtqIqOEo7eWbZpnw3YY2BL2FLaqDgTvxD
	RUl/fnNlOhWQT14OBpGrVeRI7O0cqXzMyaRcuNCXk9EHL74/xbgJsp0/brwhagBfzSH3zRBSXgQ4l
	VrbeukHNmrgUOPqWQ0WF6DZH8sNgmsJEjkV0BsPiBTmoJFSeNpBOjpeMqQjan1plH8rLmMRIBWksI
	AcdL8bfM869SbfmfLU5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjLEj-00Fean-0v;
	Mon, 03 Apr 2023 14:32:45 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjLEf-00FeZx-0J;
	Mon, 03 Apr 2023 14:32:42 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BBD9B6603105;
	Mon,  3 Apr 2023 15:32:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680532359;
	bh=1+OmtAU+X5ofND6+HKtIRQa4thdWvYXhzR1UpKwsmAw=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
	b=liYpJVhXmyjhlDv/Y1XYxp/UX64teQeHTO9Gd0cJEY9Nz4Tk6L3tqoH6NBrb1O+nf
	 CYTgCZrj+BtbzkcMEYCzgQKnDQebi2aZH2FwJkQav9PxmpP8KqMU9ruKrY41pQHpIw
	 M23vaSHAzGEMxkhSeDmMtIaKwua4OFctdCVQtP3gPoMhAOcymu3arJVDiCMCMfPmQZ
	 nGCZO1E2v2TSQRFpGOSjucwF11JCKGaqoxmOKGu5m1VTi/eI55ySNpOdNNGlgLFt6p
	 hoerbHx+M7r1x9WziipAcedknNvKxPOdiVvbM7yRyeM3plnQrBWQLzpU9jmZxFSRh4
	 waWBQk8nFWUmA==
Message-ID: <dcd79e14-d9df-39c1-5465-4e9d71221659@collabora.com>
Date: Mon, 3 Apr 2023 17:32:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: pwm-fan: Convert to DT schema
To: Rob Herring <robh@kernel.org>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-hwmon@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
 <20230403105052.426135-2-cristian.ciocaltea@collabora.com>
 <168052514639.463695.9544022277060710805.robh@kernel.org>
Content-Language: en-US
In-Reply-To: <168052514639.463695.9544022277060710805.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_073241_264710_CCB142A9 
X-CRM114-Status: GOOD (  16.43  )
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

On 4/3/23 16:10, Rob Herring wrote:
> 
> On Mon, 03 Apr 2023 13:50:51 +0300, Cristian Ciocaltea wrote:
>> Convert the PWM fan bindings to DT schema format.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>   .../devicetree/bindings/hwmon/pwm-fan.txt     |  68 +----------
>>   .../devicetree/bindings/hwmon/pwm-fan.yaml    | 109 ++++++++++++++++++
>>   2 files changed, 110 insertions(+), 67 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/hwmon/pwm-fan.yaml
>>
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230403105052.426135-2-cristian.ciocaltea@collabora.com
> 
> 
> pwm-fan: 'cooling-max-state', 'cooling-min-state' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dtb
> 	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dtb
> 

The only references to the offending cooling-{min|max}-state are located 
in a few DTS files. Assuming they are obsolete, may I simply drop them?

$ git grep "cooling-.*-state"

arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi: cooling-min-state = <0>;
arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi: cooling-max-state = <3>;
arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts: cooling-min-state = <0>;
arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts: cooling-max-state = <3>;
arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts:        cooling-min-state = <0>;
arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts:        cooling-max-state = <3>;
arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi:        cooling-min-state = <0>;
arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi:        cooling-max-state = <9>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
