Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19912C47DD9
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 02:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K62IPUxzZBj1Gjsfu9924AheKM+SyA/l914Vyq8RqvQ=; b=tUlAbCFdGu4L/KobEerFOvOQfi
	abGDXuFjCiBe82+Vadlt+W2IbPJuvWMwB5jMqhdgZqdBNqVBmVfrRCAKvgHzAUMqGfXe8MgttSoR+
	a/UUOwoBEmhKeP+zhUnA22j4Dj/HOvTrKwgEzkMzuJVmjYcuj0pn/6ttW3f6aNYlp2WZsg7xABD4Y
	8MLGl+F+B5WFKEuULu7xDVsPZSeXYdGT2i05Q9/FCM0qG5aNn50TnwpMHc5yGgphXVLJCM6PMA3AY
	wQSF3cULAbZGudjYDZeh8BXMyMh/2/3RfM8WSIZbx8QRfJ1V8EMcwy/xCBCjZSk3QOveysQj4Aykj
	M5CoDuxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roaIQ-0000000EjA4-0nRa;
	Mon, 25 Mar 2024 02:42:46 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roaHv-0000000Eiwe-1lz2;
	Mon, 25 Mar 2024 02:42:27 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711334531;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ICiTRU69evBYmpC+9SL61xwGacu5V9Do/Dh0LAgG0fc=;
	b=UDIM3dI4xUDEVwPAK4QCaG15+X2zuFGVVstmuFTrvE9xmAqXLxyHVr/pitO5AZjfBksQVT
	+I2/UIr4vrAmTKq6JnFt0yz/7ysPoLz0n1D3PXf3JIK56AL3ANwFc6IzTeZvmMoMADlF+0
	vtCsmgB8QCQjJvba37qMLtqL52R9xWCupDiIHsIzuO8IFD6KVT3SuWZePRhcMkLe3fLl/9
	/qsgeqAV5/kU187c5QY+sbUXUmIBVSYT2AXsLTIOEJWhjcmRvacx9f47K3YdWCmtRcxBi1
	LDbwLy0vK+4/4wQknBoYNZK/TR/wVq9av5KupzbkWGX/tzDJb8tCJUS6Sy8AnQ==
Date: Mon, 25 Mar 2024 03:42:10 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Anand Moon <linux.amoon@gmail.com>,
 krzysztof.kozlowski+dt@linaro.org, Diederik de Haas <didi.debian@cknow.org>,
 conor+dt@kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK356x
In-Reply-To: <171131986742.918919.14022674824297453334.b4-ty@sntech.de>
References: <2dee6dad8460b0c5f3b5da53cf55f735840efef1.1709957777.git.dsimic@manjaro.org>
 <171131986742.918919.14022674824297453334.b4-ty@sntech.de>
Message-ID: <e5129024642fe34a2885ac6451670424@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_194219_228484_2322CB97 
X-CRM114-Status: UNSURE (   9.07  )
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
> On Sat, 9 Mar 2024 05:25:06 +0100, Dragan Simic wrote:
>> Add missing cache information to the Rockchip RK356x SoC dtsi, to 
>> allow
>> the userspace, which includes lscpu(1) that uses the virtual files 
>> provided
>> by the kernel under the /sys/devices/system/cpu directory, to display 
>> the
>> proper RK3566 and RK3568 cache information.
>> 
>> Adding the cache information to the RK356x SoC dtsi also makes the 
>> following
>> warning message in the kernel log go away:
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Add cache information to the SoC dtsi for 
> RK356x
>       commit: 8612169a05c5e979af033868b7a9b177e0f9fcdf

Great, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
