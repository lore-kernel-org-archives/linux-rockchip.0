Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89E90C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 02:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0gjPRKI107pWRPn9x60vr2pMKmWq6iIP97GytTqO1BM=; b=2ZSq+5AP/Tqh2Ur+wD0KxCC0b3
	L4hNWUrYk84xouPdFM1jlaHuD3qjj0aHH5SozDUTmSyU6Kw3BRPGb+isxHI8C2uFMfQ+fGo66SDpH
	zlGcZb0FdAQy/852JQlTLX7ieGcksdR45qkmVM9LjexN5+OPD31mYDKIiaF61865YwltPLunck5py
	JwKbQac7wGjeGHIPgCrXnYpKBNIIlDs2MyHAfdcGWkHZ+TrQkkkp5TRp4AQ8OsBsRKWyPRl49bKLi
	U3oLGypiLCvx5/jRA6VhEvRMkQRoeYpR+mTKl3feb6amjXRPlZLl3qe2jCjW4PMm5vbxN02twF5dU
	+PaDgK5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roaI6-0000000Ej1f-3UNv;
	Mon, 25 Mar 2024 02:42:28 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roaHQ-0000000Eis8-2TpS;
	Mon, 25 Mar 2024 02:41:46 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711334499;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s0AjBi2RF0rePA20AYHaT0lWCGd363Pz8c5elcKVlPE=;
	b=bf9fXS0f/xJ4HrbQseZ2WaI5ZocGKaDNVpqH2SXtbHQkDFSjlAEjXIJCMcZtJIycyT/yCY
	eXo/RFl98EssfPBtqKiIkxc9/tn+9VvhqFsa+tfZgOF1n5TbmAc9ZQx/O7TuqjgZ6EK7Ps
	pygBsdpDkxLcDLmIe/7PB3GtdFN1EGThz6cY1nVUAWXXFL2E5bxzDOiPfLaD3Qcdevyhhw
	BGAzYueQ2BbM+f4Ui4XCVRMep8XxJYdd5IpsRRc0Y0+S5lTyBqPd35Jf/ChyTWNVqPMrQO
	EdAJv4s93WJIuuSoQ16X5kcGnpQ2yfNAqpj1ywn0+PsP29g9Ii7S5v/9oBNkBw==
Date: Mon, 25 Mar 2024 03:41:37 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
 Anand Moon <linux.amoon@gmail.com>, conor+dt@kernel.org,
 didi.debian@cknow.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3328
In-Reply-To: <171131986742.918919.14220098959078401116.b4-ty@sntech.de>
References: <a681b3c6dbf7b25b1527b11cea5ae0d6d1733714.1709958234.git.dsimic@manjaro.org>
 <171131986742.918919.14220098959078401116.b4-ty@sntech.de>
Message-ID: <e3eebf444a5440a983f5848c0d7af1e3@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_194145_597270_76ABA390 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
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

On 2024-03-24 23:38, Heiko Stuebner wrote:
> On Sat, 9 Mar 2024 05:24:42 +0100, Dragan Simic wrote:
>> Add missing cache information to the Rockchip RK3328 SoC dtsi, to 
>> allow
>> the userspace, which includes lscpu(1) that uses the virtual files 
>> provided
>> by the kernel under the /sys/devices/system/cpu directory, to display 
>> the
>> proper RK3328 cache information.
>> 
>> While there, use a more self-descriptive label for the L2 cache node, 
>> which
>> also makes it more consistent with other SoC dtsi files.
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Add cache information to the SoC dtsi for 
> RK3328
>       commit: 67a6a98575974416834c2294853b3814376a7ce7

Great, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
