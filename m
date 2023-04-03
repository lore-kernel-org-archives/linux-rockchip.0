Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B250C76188
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 14:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CzDysan1e6VnJcHshJqJgXq+KzyRJcbSIczIrHOS5w=; b=4qv/2WHObf6m2h
	7f2RM0niD75sqaDM3VijtD8C1gBWLeG08ST8iOqFfWZnn/6XbNAfaezVX68tih2M1XlpGcI02LwU9
	3br5hcgYXC21iWmm2myUx8+BWUgh57wZ2EKCgqlBvNKDFvbdP5G5JRZWvPuM/moP7ohyFpMMzjqlq
	EBaPpIUH+xtg96ZssN0XbzFJMvg8Ap2e/fo+el9njaxkVnXN5+U/yNOnuUMXV63s2LItKp+cAjB3Z
	J5QemwO+605/0ntp9lGDnu+sZEowWuvlRys+eoijxUgBisABJMySMWeXvAt+uowVi45ZvceckM01O
	NSiZyRQyv4tJ/J2HFd+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjLPN-00Ffw4-2W;
	Mon, 03 Apr 2023 14:43:45 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjLPJ-00Ffuy-1E;
	Mon, 03 Apr 2023 14:43:43 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 276986600013;
	Mon,  3 Apr 2023 15:43:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680533019;
	bh=FMW2V0QhNr9KmmQQvwTNbvMyfuMlgFqGmHE5d/N4Q98=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gvZ0iH18UpaYkWDUm3rMoLDTk6C2iseTXbrfMpzuDazu1l5+y/6Aj+lK9K3BxosNo
	 hkBYhgAhz1vDI+UTMblPVB4QvsKwc7+jqAC0s7aAnXk6gLxl5ckVlvnZh8XwzQCqEQ
	 joqaus5x7tph+fe2sVIQLZRzhwe773G8LHxyDCWm6MYtO53H53dl9WZpKDtSxHjPJz
	 u1Cq+0V8EGIYkpiM9T8lXSstdmVOf8wiqhgzbYk4ooPYtQzYRjxEmOldei/q0DvSUR
	 RHXLJYgjEt/aYA0dVW48GsmJmWNyIPpmhzu5cBF/WyduOD1MaEg+M/rbjhc6R4hb8s
	 vRZzYwx85LhsA==
Message-ID: <79396eed-18ab-bcee-5c7e-c3e5e61f32c3@collabora.com>
Date: Mon, 3 Apr 2023 16:43:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: pwm-fan: Convert to DT schema
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Rob Herring <robh@kernel.org>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-hwmon@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
 <20230403105052.426135-2-cristian.ciocaltea@collabora.com>
 <168052514639.463695.9544022277060710805.robh@kernel.org>
 <dcd79e14-d9df-39c1-5465-4e9d71221659@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <dcd79e14-d9df-39c1-5465-4e9d71221659@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_074341_552769_F3F34910 
X-CRM114-Status: GOOD (  16.08  )
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

Il 03/04/23 16:32, Cristian Ciocaltea ha scritto:
> On 4/3/23 16:10, Rob Herring wrote:
>>
>> On Mon, 03 Apr 2023 13:50:51 +0300, Cristian Ciocaltea wrote:
>>> Convert the PWM fan bindings to DT schema format.
>>>
>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>> ---
>>>    .../devicetree/bindings/hwmon/pwm-fan.txt     |  68 +----------
>>>    .../devicetree/bindings/hwmon/pwm-fan.yaml    | 109 ++++++++++++++++++
>>>    2 files changed, 110 insertions(+), 67 deletions(-)
>>>    create mode 100644 Documentation/devicetree/bindings/hwmon/pwm-fan.yaml
>>>
>>
>> Running 'make dtbs_check' with the schema in this patch gives the
>> following warnings. Consider if they are expected or the schema is
>> incorrect. These may not be new warnings.
>>
>> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
>> This will change in the future.
>>
>> Full log is available here: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230403105052.426135-2-cristian.ciocaltea@collabora.com
>>
>>
>> pwm-fan: 'cooling-max-state', 'cooling-min-state' do not match any of the regexes: 'pinctrl-[0-9]+'
>> 	arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dtb
>> 	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dtb
>>
> 
> The only references to the offending cooling-{min|max}-state are located
> in a few DTS files. Assuming they are obsolete, may I simply drop them?
> 

If they're obsolete, you can mark them as `deprecated: true` in the binding, but
dropping them entirely would be an ABI breakage, so no, you can't.

Regards,
Angelo

> $ git grep "cooling-.*-state"
> 
> arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi: cooling-min-state = <0>;
> arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi: cooling-max-state = <3>;
> arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts: cooling-min-state = <0>;
> arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts: cooling-max-state = <3>;
> arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts:        cooling-min-state = <0>;
> arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts:        cooling-max-state = <3>;
> arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi:        cooling-min-state = <0>;
> arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi:        cooling-max-state = <9>;
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
