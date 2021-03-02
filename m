Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532AAC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 19:43:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B92D564EDF
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 19:43:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B92D564EDF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FdpysegxEB2bb4Dx1+bfo31X/ZyPjXNI35dx6S37xpo=; b=gU8Lob0jtcid70CYWn9UAdaBu
	uBXU8bHaw8AxtiadIRppOaMo8wwczNVtnRwBNhG3mPEqtMNuCvPUtAf2xHfBaU+DhAR1BuG5yEJ86
	/gwisAaPuGa64yTwZIgRTEzYTHJbEbN0AZqhgAbXOC4YeYMSsxeMUyhd64KTzQ48CDJMoZsj2/RoS
	703kkZGnnVt+iW0K/+K0NouBNnimeLDlbsf6JMYTk+S5LpEhib5IJzTT322R3Phz183mMy9RJG2Dt
	2jzOHh1hoJIoGJ5uSHBn6XgxJ1upqUHfgZCFAcJGB0kW42y32pL1ietu8pkKCmGSPHKmb6bfgIXOj
	twgWSHOpw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHXOb-006GZj-17; Wed, 03 Mar 2021 19:42:57 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHT3p-005IBn-Uo
 for linux-rockchip@desiato.infradead.org; Wed, 03 Mar 2021 15:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3LFPoAfk7O5qeF3Y4rUX5gE1CQLUrhXp4Z8+GayD0FQ=; b=GXH/pHlJop033fK5xiSI++tr3A
 4oobu283YbG2+mvxcGeG98+YhHwKNaSneFWSrPgmIWi8PIfhWOBTPH+KuLjs3b7kJ13n4XS+Np/JY
 DGS5zcf8d/NzVtxiUcu+ihTd8NzpNiXhrXfhTP8ndSS+lIf0Rq+BrpOR8V1On4FhxjkkBLk9WhBeO
 oGi+bQlE5NB+4bs521S7H6sJnsub+QWcJKjeUrB1FO/Kj1+PZdxDcMcUzrUp0WmtdeGUfCQYRUoU8
 wWtSHNFiB5hlNkcuyxDrfNd/0D77Sv2geP9MAWjcGShcVTRgCvW54TpdHVrRMSjiR9w/EaY32jCC2
 4g7Gdvzg==;
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lH4vr-00HATd-NO
 for linux-rockchip@lists.infradead.org; Tue, 02 Mar 2021 13:19:27 +0000
Received: by mail-lf1-x12a.google.com with SMTP id e7so31239402lft.2
 for <linux-rockchip@lists.infradead.org>; Tue, 02 Mar 2021 05:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3LFPoAfk7O5qeF3Y4rUX5gE1CQLUrhXp4Z8+GayD0FQ=;
 b=IrumaFHcp/MnXfUwA+tJBdHp0hZ8wayBSy+H5vJVP9MdhhClsGzaU69AuZJ0EhkXfz
 fxaM7ylsxwJgr92wqQtnfdHrOlb7RzZat6xwVDXjRlVnnz+ebFgOQG6EjKFu1eJ6tG68
 aXYVdUO6+1zra//C2K73BYpbw8XsO7VHywkzE1BO6pfmH4IgmNp3ofzRQrR7BPtygmHQ
 JvK4WRCzvRwqX+BWIu+gqVjgfPyuZEhqWiS+l52omHxfozAZAefka0OY4TMsElVeJDsj
 iP4zy54OIhQTH9IBEUoUUMG8Ho6DPAwgGO8EdDVAL8yGwx3rKN/jPP684tJX0HRbVuAo
 MZ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3LFPoAfk7O5qeF3Y4rUX5gE1CQLUrhXp4Z8+GayD0FQ=;
 b=SfwJ9pPxmdw6jcZ2pENgKl9938zyL4RSZBHIqoNxZWZmsX9TtzDJZgZ+ME+y6IFUJ/
 n9JGmjjuxGL7Ds/ROAnKWtY+eG1kRyMBnmJrAeYYMiqDmJr7tCDyZR+CU+h/TZZtexyo
 TiBZsgpL6mL8HluhdrctR/1m42GKziVRiyMmjYGwxOj6rRbL29+PKDGaloeGM6TKQKsx
 zlJWDCkjo7QwSlXPLubAnZDC1B+meqHUjL5PK6sShk0GiyUiY/+elNHBkAk103rRyaSv
 kizrL4zK/3NgvS2uSAdLWA6SiQgv5tKo5fecXYU6oFQsFDD/EZkhFcJS7F9wE1WPo06K
 MTTw==
X-Gm-Message-State: AOAM533dCyDovXDd8vu07z+NhUhOVb4iEfQw/6V4syafw0S5kW/kdko+
 lfHltgWk0aRg8Yhk/orHL0EgxhiwOOsPkblqJ4UyTg==
X-Google-Smtp-Source: ABdhPJyXLXj1ElbNsZ8nYLMjQKDHPE2WIbQ64a9N7NA809dZ8rZFodCUWxqls+DIBYtN3FZw01VL+N1dWPfKnLeAfwo=
X-Received: by 2002:a19:548:: with SMTP id 69mr10031398lff.465.1614691095978; 
 Tue, 02 Mar 2021 05:18:15 -0800 (PST)
MIME-Version: 1.0
References: <20210223064211.120935-1-jay.xu@rock-chips.com>
In-Reply-To: <20210223064211.120935-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 2 Mar 2021 14:18:05 +0100
Message-ID: <CACRpkdbqkCEMuZdwgfPJAhnZBKW1KV0+1MnXqNvTjm300jaS9Q@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: make driver be tristate module
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_131927_588611_24F74F6E 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Feb 23, 2021 at 7:42 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Make pinctrl-rockchip driver to be tristate module, support to build as
> a module, this is useful for GKI.
>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
