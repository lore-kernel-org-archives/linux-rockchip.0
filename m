Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05B99C02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 09:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aVixv03RCVoSLmZ7f6mSCX2lXYwZhHQ6Lw4GF+zEhIo=; b=H2ye0XAfxOY8854DjSZ4DHme9i
	QH8NqteM/1faXRTS9yzdfTD51e/g8ZqfhLOYH2AwU8BphvdhPjNv/ownYpCbz3EJJ0OI1ktsvaJCT
	69IyUDaDP5Am1gOBeDpL5AuBAECcOxr6+83mhSrcnUlhwWsbrfPFJZn7khx7GpFPhvtVVsxbcg1G0
	O58ly6MztP41xE4no9g3QvUqhQVUJ1DAK5GZU+aSxMEoMToipGA7HVB6E2sK4uxsn88SP/DRtg8wT
	ny7JAPIojngRN1DH6mnlwK9U7qEfZpTpM5iex5YFt0xkuTxNADXbXWy8s49P4wTS+CSjtVXf6iHkK
	iH0IPsww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY05R-0000000BPqs-2NIw;
	Wed, 15 Jan 2025 09:53:21 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY04B-0000000BPiE-0Jvb;
	Wed, 15 Jan 2025 09:52:04 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736934718;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MhzeunR8rJgrZ00XQVoPh7HS7sUwFQAgiu34BTjBQ7E=;
	b=g9Hmqxqt5W9Fcav3vjfAskxGSrwwUjqsZjenEBNE4dOTvaRg81qCWb95ztMh2IzQH+4Gzk
	FaiMX/gLzaDOL66pL0m2Io/R015jLWkH6l2vkCuVq4qoxrah2fHGiSG2H+lL9OSNAvGcej
	rK2dCgXVU/rO5V/YQP0jcP0BzFXL2jyiD8+x398nq73UyMeiIvk4buaYSC0T5cFklaeZ6k
	/mfSf9nWS1c0vbGlDN4fIrP2f1vcxiShzSmw4WsPlWx+k2KOmWfg4OBvtdVjl/b90cQ2TI
	ReIbSYuClhAgVltlKK3ADzzbHafZ9YjJ3+5dbfBe3CF8yIegOi3eELWbcm7vsg==
Date: Wed, 15 Jan 2025 10:51:57 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, didi.debian@cknow.org,
 marcin.juszkiewicz@linaro.org
Subject: Re: [PATCH] arm64: dts: rockchip: Describe why is HWRNG disabled in
 RK356x base dtsi
In-Reply-To: <6b272e2f8f916c04b05db50df621659a5a7f29ab.1733149874.git.dsimic@manjaro.org>
References: <6b272e2f8f916c04b05db50df621659a5a7f29ab.1733149874.git.dsimic@manjaro.org>
Message-ID: <b1f97e555e57e6593251bb1ef1353423@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_015203_280455_84FFF308 
X-CRM114-Status: GOOD (  17.47  )
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

Just a brief reminder about this patch...

On 2024-12-02 15:44, Dragan Simic wrote:
> Despite the presence of the hardware random number generator (HWRNG) in 
> the
> different Rockchip RK356x SoC variants, it remains disabled for the 
> RK3566
> SoC because testing showed [1] that it produces unacceptably low 
> quality of
> random data, for some yet unknown reason.  The HWRNG is enabled for the 
> RK3568
> SoC, on which the testing showed good quality of the generated random 
> data.
> 
> To avoid possible confusion in the future, [2] let's have this 
> described
> briefly in the RK356x base SoC dtsi.
> 
> [1] 
> https://lore.kernel.org/linux-rockchip/cover.1720969799.git.daniel@makrotopia.org/T/#u
> [2] 
> https://lore.kernel.org/linux-rockchip/20241201234613.52322-1-pbrobinson@gmail.com/T/#u
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> index 62be06f3b863..ab8f42c0a843 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> @@ -1032,6 +1032,11 @@ sdhci: mmc@fe310000 {
>  		status = "disabled";
>  	};
> 
> +	/*
> +	 * Testing showed that the HWRNG found in RK3566 produces 
> unacceptably
> +	 * low quality of random data, so the HWRNG isn't enabled for all 
> RK356x
> +	 * SoC variants despite its presence.
> +	 */
>  	rng: rng@fe388000 {
>  		compatible = "rockchip,rk3568-rng";
>  		reg = <0x0 0xfe388000 0x0 0x4000>;
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
