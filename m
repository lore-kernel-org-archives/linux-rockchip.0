Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 909C8C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 00:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wus+f1nb41v/2surZbSB1uaoNzUBFSa8nqmMinS8QKY=; b=bHLoiywpghm3cQIvQJj2v3dtX5
	PwhnQn5K3GMocBfYphMlIwcuiSF+O6A9teL3y6Y98zADVrsxAEPFMRFsd99zfiwu2AtBtV4ZKJA3C
	0KYeJlnR/T22CvvCtB47bGEtxI+umyWZ31GegI9O1oCwUvZqKvovTKXKaPDo6rljM6QJrXK78oOer
	KyfpS543zEFBbTaqm3smXToaTkqpjJzsqGEuBV1b0BbSd1cVvD65MtNB3zkOej4JvO+TYl2P3Abet
	w9TkK53q7CbA20Gq/YTj41y9fOL4REWz/bI7Li+rByVToagSzEhTFGovV2k4LhmhNGFlhIXp+5XeF
	axq3oczg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBOOx-00EHN3-36;
	Fri, 08 Dec 2023 00:07:31 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBOOt-00EHMC-1n
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Dec 2023 00:07:29 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701994044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ik982gfmuh4eV/QCGBYmQhVNDMh/XHyOw6EIIu+q5Qs=;
	b=db53WqMizlcPUiK4yj5C3/kJtr7jxhEt0M9zaPKpZOT8VtJ3cqxVbs+2qlYc6zelFjjr1O
	hCKVF5ap/ayDqucxQQvii/3EXzNbupM1m5MotMdYHDRdI1fPX+rQ6b8awY9WPamUoFBXAb
	TTJxnKxCrAMrq2WeUPa8DIxtRfRYqq8n8HFzkt9HcfOmYRlMESIF7dww5WgwssJ7exEdKs
	zh4TEZ2azNWq2WYHezf55rOg65104qZyRJUXYyVsD+HZkZ571PpSin/Mfjbd08Ru2NxSBi
	ZGZ5FFTYOzpoOYLOnjBXTw3Tz+7rPB1/sJJqY1ksGJW3kKReAkSHKT+mL4pikQ==
Date: Fri, 08 Dec 2023 01:07:23 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: Jagan Teki <jagan@amarulasolutions.com>, cw00.choi@samsung.com,
 tom@radxa.com, linux-rockchip@lists.infradead.org
Subject: Re: Rk3399 - Typec - Extcon
In-Reply-To: <CAHc5_t0N7tDDKvWvviBXTKK_0UAEtKLxuvMYi8qZ6hp_f6LNew@mail.gmail.com>
References: <CAHc5_t0N7tDDKvWvviBXTKK_0UAEtKLxuvMYi8qZ6hp_f6LNew@mail.gmail.com>
Message-ID: <6c89feb8ca7701d2a45710485fef8fc8@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_160728_069939_25FDE346 
X-CRM114-Status: UNSURE (   7.32  )
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

Hello Shantur,

On 2023-12-07 22:12, Shantur Rathore wrote:
> Hi Jagan,
> 
> While trying to figure out issues with Typec AltMode + SuperSpeed on
> mainline for Rk3399 based RockPro64, I came across your proposed patch
> for TypeC Virtual PD Driver [0].
> 
> Would you know if there's been any other development on supporting
> Rockchip-TypeC-Phy with FUSB302 boards like RockPro64 or PineBook Pro.
> 
> [0] - 
> https://lore.kernel.org/lkml/20200904191830.387296-3-jagan@amarulasolutions.com/T/#m7b5d674764379253568a4915f2f9988d74c86593

Basically, we need to get rid of the whole extcon hack, as described in 
the thread linked above, which is a massive job that borders with a 
complete rewrite.  I'll probably (and hopefully :) dive into all that in 
the foreseeable future.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
