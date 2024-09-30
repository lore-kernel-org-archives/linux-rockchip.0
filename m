Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69E63CEB2CC
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 22:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFddwCmeZ6XX58Pd/61tEzN7DPNQEkJTc7OTObNHiK8=; b=307hUDllm/1eWG
	MC+Qug5BEid5TBvqfJN1HMdNSNUBPgYVuehGrMObKHajvQnXQP2Va04eM4ahPTdL7yznX0UfGVGg3
	ydTji8Bd7HUO8C6UWYa0mPSsgmk8iGVzrDyVXzX4BmoTt9nBJ96nYhVN7/GQqcyj4UEpOIVR4iAU+
	S8eO/gVH9Cs52una7jj2uN+gbNEmGhhGEKdc7N1pnmecViw3kriYF2Sn9OW4jBUZfShF25q+0Blfm
	UW30wh9yzYXSIxuxa+mS3kEnScbgoWJCr8851en8NTyuBW4o1PtNg7oAGxVaUqwszdgW0Une943hp
	Unvwl3hJcqqWUkGBXkxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svPJF-000000014aE-0foK;
	Mon, 30 Sep 2024 22:56:05 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svPJ3-000000014Vm-1K98
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Sep 2024 22:55:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1727736949;
 bh=hsMxoXwTk/RkP26yz02KeEDGy8kidPGtiIRE4uvB8sU=;
 b=NXyV9Le5XfeL9Qwn0JcGQu1b0hl1NxCM7U8kx5zJmP1wn1ShmnUyJ3xRbCIIYtPco5wy5PpQ5
 NW3Gvb0Qi4qoE7ssholCFNHw09Gd9ZOWYdTFO+ww8+ACfznBya10i9liRyXaisIfEbwht+RwYT6
 3DmFhWYcYfzb36sownlHVftJZwA706hJpmxmFzDEkDXoh1e1sPCZSm9tlO3anr5FZyzuJ+POwrQ
 A4E2nXr5ifFqdkQ1AAY077arOv1lnqKlANPllbfKccyjShibFMF4epXMESolM6MUqc2bFBUSbPV
 u3ba5huunQZYvZq6EpbIItxNxfgkYqrNhGkxAWc/BdnA==
Message-ID: <605c8024-ada7-4f2e-b18e-8d5c3f1bf612@kwiboo.se>
Date: Tue, 1 Oct 2024 00:55:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] arm64: dts: rockchip: Drop regulator-init-microvolt
 from rk3568-roc-pc
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Furkan Kardame <f.kardame@manjaro.org>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-4-heiko@sntech.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240930210112.1993625-4-heiko@sntech.de>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66fb2c74265a09cbe12df5bf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_155553_730728_0C6B7B99 
X-CRM114-Status: GOOD (  12.44  )
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

Hi Heiko,

On 2024-09-30 23:01, Heiko Stuebner wrote:
> regulator-init-microvolt is not part of any regulator binding and is
> only used in the Rockchip vendor kernel. So drop it.

Mainline U-Boot is also a user of the regulator-init-microvolt prop,
and use it to help configure an initial voltage on regulators during
boot.

Mostly useful for regulators that has different min / max voltage and
is not enabled by default or set to an unexpected voltage on boot, e.g.
the typical npu regulator on rk356x defaults to 0.5v, yet needs to be
around 0.9v during npu probe.

Maybe a better option would be to try add the init property to the Linux
dt-bindning?

https://source.denx.de/u-boot/u-boot/-/blob/master/doc/device-tree-bindings/regulator/regulator.txt#L40

Regards,
Jonas

> 
> Fixes: 007b4bb47f44 ("arm64: dts: rockchip: add dts for Firefly Station P2 aka rk3568-roc-pc")
> Cc: Furkan Kardame <f.kardame@manjaro.org>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> index e333449ead04..2fa89a0eeafc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> @@ -272,7 +272,6 @@ vdd_logic: DCDC_REG1 {
>  				regulator-name = "vdd_logic";
>  				regulator-always-on;
>  				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1350000>;
> @@ -285,7 +284,6 @@ regulator-state-mem {
>  
>  			vdd_gpu: DCDC_REG2 {
>  				regulator-name = "vdd_gpu";
> -				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1350000>;
> @@ -309,7 +307,6 @@ regulator-state-mem {
>  
>  			vdd_npu: DCDC_REG4 {
>  				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1350000>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
