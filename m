Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A004C54798
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Mar 2024 03:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ii6mlhgwaSzXHz0aLZFqnuRaTygaTKq5KsjXH6xso7E=; b=3Gmh2bSU9SXag0INq4AXN6InwM
	tYVJ+7511cbcZkGYaU46ws4a3gqFiDWBreIDOkUfdfhf83eOQvkFK4d1ncK/Tg3DIJ1JGmIkYPqlY
	Mqk6UutOu9G0I9xBgnLMpZVjlGe19k2h6mQIaJQH+HXrUfuA00gSNgLSp8M6izmWiOgnfa6KVcSBv
	9VZyxoQY+dwKFLOmhX9LN0iRB50F1Mm5YScRIRyR46K6ahFAgshV2eWpDsXzPJcjZbi1H6jl2yHEw
	rc4X0NXiWP7MsYtBcP9MaU5ZsXh8m8qfStjtQiE1payA+vdl1hbPTdaeNO/46hIUxWHw/j0xoOaXb
	V4W3vfjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rinTM-0000000CI46-3I1E;
	Sat, 09 Mar 2024 03:34:08 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rinTI-0000000CI36-0lPb;
	Sat, 09 Mar 2024 03:34:06 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709955234;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t4+I5353e+cI83JD2WcGGJqtPVJ5FDh69UyZW2V/aeo=;
	b=ITKjFB9jvpj8XRC3mtSfjw+iJ9midrzMwZA1bpEIkEtULBas3cnpGUMpFa40FgTPeLbeCR
	VkHd+hI3LY72CkH6j5cpc0Ej41VN1Aa9+ibHNZ57Uml5nGyhqbSYbHjC8tpIB7j/9s5OPz
	L8hIu+t//0jCSmuimCe9knSbfMKF5TqCnc+W9W1HNG3EVEw3npcN+pTSusmmYwSHWIQz4n
	NljdNgKe6YMc9bTHmLZg3Io3wlo8pQeDbja67VTxZBaJihDf7L2rtrGwTrHEdSwUCuenV9
	/Qr5B06/vMNsozSIBFTAHZvhdU8uqKiwyZJLvKfSbF201mQxIQfsJNR/ndZpdw==
Date: Sat, 09 Mar 2024 04:33:54 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK356x
In-Reply-To: <90122541.GozVr7r7Y5@bagend>
References: <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
 <90122541.GozVr7r7Y5@bagend>
Message-ID: <4447952c7487f7cfd4d4118bbbc1eed3@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_193404_841579_350030A1 
X-CRM114-Status: GOOD (  13.37  )
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

Hello Diederik,

On 2024-03-08 23:48, Diederik de Haas wrote:
> On Sunday, 3 March 2024 20:04:50 CET Dragan Simic wrote:
>> Add missing cache information to the Rockchip RK356x SoC dtsi, to 
>> allow
>> the userspace, which includes /proc/cpuinfo and lscpu(1), to present 
>> proper
>> RK3566 and RK3568 cache information.  Also, it gets rid of the 
>> following
>> error in the kernel log:
>> 
>>   cacheinfo: Unable to detect cache hierarchy for CPU 0
> 
> I tried it out on my PineTab2 (rk3566) and while I didn't see any 
> change in
> `/proc/cpuinfo`, I did see a/the change in `lscpu` and the above quoted
> warning is now gone. Thanks :-)
> 
> Tested-By: Diederik de Haas <didi.debian@cknow.org>

Thank you for testing the patch and for reporting the inaccuracy in the 
patch
description!  I'll reword the patch description a bit and send the v2.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
