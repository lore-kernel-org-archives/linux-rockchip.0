Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28C46CD1288
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 23:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h107tNiY5NV0Lcvy7s3tkK6G/lqHDv/ooO1lgTORUD0=; b=nee3PSjAILuxTm+CnLbNYFYIK8
	+spuPnU6T0YnE/hr2PI5NSUtfKJLkKuubWY9YpZtiMX4TArH4XS/L2k57m1b7Y7mF6cubfMC63CXc
	GPSzEec9lm6PiKWzoMTEZYJSybreRZmw2aBIzROWDzx6qNGzdcYuZs/R+jkXaC4dV+hRnKsU+Rvee
	2WlhLiyMdZ5Sek+zCe0S9aCDfe7OWTK4MZrYohAkR3SH8hDpxyrc3brGtrSPOiiRbjtZKuoSQSxlf
	1ZDxmdOVL7LW15sWJswhCg7wdLex4EhQu+Qq3gI+jarxiojpXcY6FV3hyQVWWApV+gfcddPdU0sIN
	St1q2MNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrQkj-000000094wh-2WiB;
	Mon, 01 Apr 2024 23:07:45 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrQkc-000000094vB-3jNG;
	Mon, 01 Apr 2024 23:07:41 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712012849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ez8K/LNR7tXtx83jTNF3btgaVdrBsM54UDLlwKef3gM=;
	b=Opug703dxiULly4qMS+QOas7box1RVrABGD2bgBEkKtorDOrA47yYdAC/oL1O+k8qEp8Lk
	VeZlKXF+kCUg9WX+PLP7154oOcdN6Capx4cDtR9A1UTvleMySFOoTqxNa5uLJqlz1aRh4B
	w/WLbAFOpH5Xm9Q8dUoL1tB90f8vSzoSsBQcKrfuEKlRCZPhcmyLa7LVpOX8gVbipL9mgk
	sjneZCPH0XGrFGYWd0YJN2AJO2gUZVInBkWBlSu29sqhQAlf71osFrXJFL/wYatl+cZNEu
	AaTt2IWxS+AY3ldFsUe1kWzs6SqsWHE0Qc+IXXnnlb+6ECpAeugWCIf3fs5vHQ==
Date: Tue, 02 Apr 2024 01:07:27 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Remove unsupported node from the
 Pinebook Pro dts
In-Reply-To: <171200852040.1394042.4883299945962544319.b4-ty@sntech.de>
References: <0f82c3f97cb798d012270d13b34d8d15305ef293.1711923520.git.dsimic@manjaro.org>
 <171200852040.1394042.4883299945962544319.b4-ty@sntech.de>
Message-ID: <fd6b90fc4d277bb4034a919e72959e94@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_160740_101184_E9DE79C4 
X-CRM114-Status: UNSURE (   8.21  )
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

On 2024-04-01 23:55, Heiko Stuebner wrote:
> On Mon, 1 Apr 2024 00:20:56 +0200, Dragan Simic wrote:
>> Remove a redundant node from the Pine64 Pinebook Pro dts, which is 
>> intended
>> to provide a value for the delay in PCI Express enumeration, but that 
>> isn't
>> supported without additional out-of-tree kernel patches.
>> 
>> There were already efforts to upstream those kernel patches, because 
>> they
>> reportedly make some PCI Express cards (such as LSI SAS HBAs) usable 
>> in
>> Pine64 RockPro64 (which is also based on the RK3399);  otherwise, 
>> those PCI
>> Express cards fail to enumerate.  However, providing the required 
>> background
>> and explanations proved to be a tough nut to crack, which is the 
>> reason why
>> those patches remain outside of the kernel mainline for now.
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Remove unsupported node from the Pinebook 
> Pro dts
>       commit: 43853e843aa6c3d47ff2b0cce898318839483d05

Great, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
