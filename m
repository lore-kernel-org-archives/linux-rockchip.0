Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EC4CC4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 06:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UmPHXI5WEX2anuupZl5tS+j6xvNRf0fmNV/ewuDi0cY=; b=Lq5uqbvn5YcXSoztAzQ9r5dCKf
	ofhlVpeGKqDR4XFuyk8NGkj+I84yW3ngxwkRsFmPhKej1anteuefU+7yj1XkWCCz+M7GsPU9kFT+K
	tEnWxovwaYD4nXsaYnyAP4h9CC2f186V7e6FrrGfJfxyyXvYAb0F9NocfAUV4rotNLQ7/9iNSrDpg
	Wa1sypWjhuhC/g9BloPkHkR2/G3DdlzAigNPpYrDfuQsfpNE7X+Hc+IVPodpVk2EhmZPew+iSYPTo
	8IJsD+Ng9x2ETsXSM5dAi2RQ7XQUj//HtFcPeZXlXbEBe99TAvnzL9km7uc1jBqeeUtR51CoAH6it
	JssV6plg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWP5-00000002wse-0lLe;
	Wed, 24 Apr 2024 06:46:51 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWP1-00000002ws5-1KZb;
	Wed, 24 Apr 2024 06:46:48 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713941205;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7bi0F1JRl8mqsIdjFylCLGdQWmTMb9OhvsZ+CofSBtE=;
	b=mazz3bcL61oC9OueattYVTBjaoj2ibTA3yRvybk01cFYL91V1MMIm5NPYomF2PejCuMZ1a
	hQ7KhBMOP3iYaOm6/EaduiRyr6iZEH3xt1DLHMdc8fIECFfu3dNm+jZpH3XZ9vinkPRrgN
	nQwR03JYhfQGDXD/mTSS24h9iUwn6tltYLoWBt8HrDL39mS2314+pf4PIerMW6pG6DBQTd
	FigPGzgOpsYAvtT+6NMPsO2Vc1n3NNIjKi5n+bJ765oCnhP0iMXjj0adA9DqJR8giTg7Am
	dQKJvGZdqmrQygCCKLqUj5DoHoxBD5K9N4C/7iXpCh6xWTqjPBRS00WYRd3eBA==
Date: Wed, 24 Apr 2024 08:46:45 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, Marek Kraus <gamiee@pine64.org>,
 didi.debian@cknow.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions
 for Pine64 boards
In-Reply-To: <171388532521.2652222.18024517612743377604.b4-ty@sntech.de>
References: <ec124dab2b1a8776aa39177ecce34babca3a50e2.1713832790.git.dsimic@manjaro.org>
 <171388532521.2652222.18024517612743377604.b4-ty@sntech.de>
Message-ID: <28507b03e51842fc0392171aed902ec7@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_234647_542399_B4B832B0 
X-CRM114-Status: UNSURE (   6.66  )
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

On 2024-04-23 17:15, Heiko Stuebner wrote:
> On Tue, 23 Apr 2024 02:43:43 +0200, Dragan Simic wrote:
>> Correct the descriptions of a few Pine64 boards and devices, according
>> to their official names used on the Pine64 wiki.  This ensures 
>> consistency
>> between the officially used names and the names in the source code.
> 
> Applied, thanks!
> 
> [1/2] dt-bindings: arm: rockchip: Correct the descriptions for Pine64 
> boards
>       commit: 433dafc7b4f9f9a1011d72b32e138b598faa4807
> [2/2] arm64: dts: rockchip: Correct the model names for Pine64 boards
>       commit: adbc5e6b457e773f1afa11fdb9b667cd492a7f82

Thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
