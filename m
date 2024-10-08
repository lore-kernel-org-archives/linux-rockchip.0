Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F355CEFC39
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 17:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dTNte0lFHlAZq/hkayPJHlF2CKfiln4VTc3elJnHzpY=; b=ujjkG+bwIVVkVM9FBYI0p4RMWc
	p3IkiND0ChlyGjy5njE5X9TTZwe2FPRH1HQTerk/EiaIcLL+Zhvo+sGWFdpSdNM1pnbaqCVenjlOG
	yjKo1KJk9YrxLLZZ+mY6TX80Uz3IxWknVNkgidwBRNQrcUvYrj1hHR/DJNxfDy3nyykZn7lT0E5Se
	3nWIIMY+62djmf/xxH58pETE3+EWseAzLvZWFhIHLEipcaoE461fg3Ys2ApnRe57DifpLb5gGCaq+
	zeOG2ORVbtbVm7QXsoV1SyLuyL4UBncJRASiBwfziiKip920IAcxsOAqJPpKmT8VFwOaTvyd3uLHC
	iYqzEQJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syEKK-00000006hpL-3ZqX;
	Tue, 08 Oct 2024 17:48:52 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syEB4-00000006flI-1JmV;
	Tue, 08 Oct 2024 17:39:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728409155;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2ZsidljDWtyKSane1C8SV1rPYQ+1l87LCw+63NyRBwg=;
	b=noA4dJNNn5cf24GL/9sON9/hJOzukzJTU8aVleFwHelvpF0dUGq9dt2/Xtk4fEB+P+Ffsx
	Fq35/O5Fr1zoWPQthX66JuCSlsSQTBlzPifDTavezxdqJ71iQq6gJA3f7SfHiXYX7AJklL
	f8fRJzKTb+uEz8o96AHlp35GwsMFyja6aRbtJQOzPf5CNXr2TJF/5uM+D1q0uLEifV2xtr
	gYQxoAlUbS+rJcSLef1LJga6OV5Wtc8zAb8AoDrX4Ol8X8S18wnexD380tfr/IZpIkMAVJ
	PxM3KgEojtK8OLGsdEaLFJ76QmWPDTyGoF7oKL90BYPgKazAP4Ek4ZeuY7NhwQ==
Date: Tue, 08 Oct 2024 19:39:15 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Mark Brown <broonie@kernel.org>
Cc: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 heiko@sntech.de, gregkh@linuxfoundation.org, rafael@kernel.org,
 oss@helene.moe, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/5] driver core: Add device probe log helper
 dev_warn_probe()
In-Reply-To: <ZwVt9e44jc3CQaV1@finisterre.sirena.org.uk>
References: <cover.1727601608.git.dsimic@manjaro.org>
 <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
 <e8cbbf877cc0e6838afd2d6de3b7bfa1@manjaro.org>
 <ZwVlE9bgHYNT8J7J@finisterre.sirena.org.uk>
 <c4a72fcf91b30a8eae2fff851f01d10a@manjaro.org>
 <ZwVt9e44jc3CQaV1@finisterre.sirena.org.uk>
Message-ID: <3cb0eac87320587dd246c82e2d614119@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_103918_533067_50EA0335 
X-CRM114-Status: UNSURE (   8.05  )
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

On 2024-10-08 19:37, Mark Brown wrote:
> On Tue, Oct 08, 2024 at 07:32:18PM +0200, Dragan Simic wrote:
> 
>> No worries.  I just sent the incremental patch, [1] please have a 
>> look.
>> Thanks for merging this patch series!
> 
> Oh, sorry - actually now I look again I got this confused with another
> patch and it's still in my CI so I can actually fix things up before
> merging.

Awesome, even better!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
