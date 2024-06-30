Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B913C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 15:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fYwm7hA4PiFQ570x1eg0nJlgCBVUXeCupCFdrDkBzDk=; b=DpTEfvDhoAWDRSZS8gq7DtzSUa
	s55bW3cONiwoDvGZVviJsNDUg3QpIpNPVm8CQ7I03tyMSHLrVeCbtos39SyM69dWFKjFc1DJpwL+L
	iea8DBbihSWTiMvIdhh3YtHoMunAmSBpAGoHm39bOEYkV7hQ95loJV/ZGulqyZ5nroaLOxqkpVRLo
	e1kZRxOrAJHEjgAejKz5VbIkVRN+NabVriwxRM8Geqq8xyLGT0kr8mC3ip6E9MQG9WfgssSn+slVw
	Uv9UxzvI1HlBvTS/6LoUKZ0KEUj9hBSu/hOWJoqkBT2/wUIdXkD6I7hD9VWU/hlwGsaRhTqxk0k26
	3Cyc1Aeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNwqT-00000000eCN-03Vn;
	Sun, 30 Jun 2024 15:52:05 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNwqI-00000000eAq-17Z9;
	Sun, 30 Jun 2024 15:51:56 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719762710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6ZnQ5xnPEinCUn7M4ojlqf3tcHsfXH1JN3By76A2jvY=;
	b=jJPCG4wFjOIjHlXPs4aBSQKuTyfHLdNU2TLhaJZukHWOhCIDuxlHBSyuVeiNZsktBaysCU
	mlz7v64KJ2MDjdjbzapKlARNo0NtjuYboRHL1fqNJ5MfQeOi0s3FHF6p+fGtCX2z0IRwjZ
	nirIdlOBW96RweHWBxy5yUKl8lOSE2IPBP5Gu47F6f+w1Ujex8SyZI3/vHU2USd3m7SFLv
	+984QfSX0OKcusD2TUSIt2U52h3YdKpnvzsYrD0YXie2u+klWH/FAL2QAmw2eogHn6BwS+
	nrTswuZ8mYoJsqmpodhCHBmmI9RsR/NyOqx6oo/vJn9M0dZpR/yHjfBi+kvzQg==
Date: Sun, 30 Jun 2024 17:51:49 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add GPU OPP voltage ranges to
 RK356x SoC dtsi
In-Reply-To: <2573506.7YG5XaKc65@bagend>
References: <bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org>
 <2442162.AJoTavkB1d@bagend> <b8951ac4e29184fa35919c6ab85b8f87@manjaro.org>
 <2573506.7YG5XaKc65@bagend>
Message-ID: <78a743a9828741e029f14d165ad8d3a6@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_085154_813475_83D799E7 
X-CRM114-Status: GOOD (  13.21  )
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

On 2024-06-30 17:43, Diederik de Haas wrote:
> On Sunday, 30 June 2024 14:04:50 CEST Dragan Simic wrote:
>> > I also expected that (for v1) there would be a similar construct as was
>> > recently added for rk3588. But I should interpret Heiko's comments as
>> > that strategy should not be applied to rk356x?
>> 
>> The trouble with applying the same strategy, ...
> 
> One of the reasons I like/hoped for it is that I'm a 'sucker' for
> consistency.

I also like consistency, but doing it that way simply wasn't feasible
in this case.  Maybe I'll rework the RK3399 SoC dtsi files a bit, so
we'd end up with more overall consistency. :)

>> ... the need for voltage ranges depends on one of the board features,
>> i.e. the GPU and NPU voltage regulators.  As such, it still has to
>> affect the RK356x SoC dtsi, which may warrant separate
>> rk356x-gpu-range.dtsi, for example, but the troubles would arise ...
> 
> ... but it's probably better if I (generally) abstain from taking part
> in the discussion about the correct/desired implementation as I don't
> understand the material in enough detail to meaningfully contribute.

I find your responses useful, so as far as I'm concerned, you're more
than welcome to take part in the discussions.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
