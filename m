Return-Path: <SRS0=DOys=JT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B730C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 00:05:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 04D5C6144A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 00:05:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 04D5C6144A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WQtsrOaokbA/N3U/BygAtfHV1+0IMD10T/v3svWLoPI=; b=L0JBYQg30UowbnW/7PUSUW8bH
	33z9VPBcJXVMpzvE2LAsxsOWLOgRs6Y8NFraf10tYgCEBW+iQsl3slVvVAk6w4RHcNPUGKWZ73cdM
	zv0+Vd58O+C9RS07ndHQm9YChqsjBCzVXr5Bl6UdPcob/YWlL3bjLPS63qzp+GIFAyPDyhEuNohbt
	WZ7krmZqv82ed1gbRhiPyEJmD7SYPuuGPa5unBME2SSmxbt7TC32g/8Mps+jRJpzHya5kfv/Y7yrE
	pBKqgrfrJB0HnvGlhxNN9oiNDoflBSOmNvD8gXJnllDD6BRAIizMNxOoIzmqWGQhXMWHEtLJtC3RK
	QKwPvwmkg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZMq8-00FQwz-KH; Thu, 22 Apr 2021 00:05:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZMpr-00FQtm-NY
 for linux-rockchip@desiato.infradead.org; Thu, 22 Apr 2021 00:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Q6eQLFu/iZ23p96P28yxRC3p2GNrQXWzyQQzuio77pc=; b=d+KwXQcnUNvDeJ3CsPLrl/fxyi
 ZZVOpvIEza+Mm7qGX9qgVI4r9FyJONAxSp13c2LoqOzN9pbVyrOzZfTKzFVarfCw4ch6jTI9k/ZmA
 BewXTk3l7JMOg3hEc9KPhU0b+Xjyf0LGpLJwbuDmEP4Bo/bPxDXoQDVlWhRFIc2bEpgWEX42qj7Q0
 8H9R6Ll45eNTs1weLzOe1YXe+ROcANEvuqCeQZ6ZwBv327KeRQcnxXq1BAFzU2C8z4zkY1k6Mk2l9
 j1GQJ1xff5bSIAD7H9W6/juHQpIaucmI4sUVYr4jK0m6gwYwghYL8sRdOoSyldZgVGptAxHW4fVuq
 ofEqRLog==;
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZMpp-00DH3I-CW
 for linux-rockchip@lists.infradead.org; Thu, 22 Apr 2021 00:04:46 +0000
Received: by mail-lf1-x132.google.com with SMTP id y4so29185887lfl.10
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Apr 2021 17:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q6eQLFu/iZ23p96P28yxRC3p2GNrQXWzyQQzuio77pc=;
 b=SPP4om4R4AMTV7IgofXTXIm3i9K8bYuNHWnGTz853l7ml5bkGZLceTQQg3nM6j36+H
 HR8t6ggUMkXBkiY5E0uiOZ9GAyK4OnQ0+GgyeZVeGfMzV82TccJry/scpZEksIt903jf
 pbdVZUdDi1+Oq2BKy7Y8DWBpiew+3oS6ED/8T7+YSqiH37Ytgi4/MCuo0iwkTiaBR5gH
 fUecbzygzr6HxI8EaHApHZs05K9sMa+dBEnYocuYwY38HEOzomlDH3QmsY596kg98vPo
 fLXDXVX/+Xbei+odWGlZzKXMKWhZbqg/TNlFl3+F1aNmBEJboyzxiC5MQRvoKyOqCoDL
 V3aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q6eQLFu/iZ23p96P28yxRC3p2GNrQXWzyQQzuio77pc=;
 b=PPDJuIJJYkHnucVrAuKAWKST2GPAXaZz2dXIovmrPy7n+FYhuo1tQMwAzjmTmEue8u
 3kKrss5JTXmPFwSTyV2R4jsKlG1qECo6nYHYsAbPUNVt1jz9q2gOIOvDVew/KPwDfeVh
 nSWLGfBLFrwvJRH1Gur+cAyBkhEOcoHmlh5RNJL344bHUoQlDCgZLFaTobi3mYSjvvPL
 xZVlc+yA146hbts1gQ+VG4jwzXgl3bo1CkgmwkemscDbQqVoxMbgJXEBXnfGaUAP0g//
 nDy1OyIbFO0AojOrN2SLkJqrdDc8MHBcZTXcFSQTdBIm6Ru8F3Vo1mXSykqAANVd7RYR
 tFKw==
X-Gm-Message-State: AOAM530QxVpYIEr3JFamDB2qfX3OCjHouMV1bjLKd6wa37IBS9YAL5Zl
 wxYfyDgyU2TR3UtMrdTi+z3rrOlSHt55XrmcppTGMA==
X-Google-Smtp-Source: ABdhPJwgc/YDtMjvbV7CtzwS7CT4zWpF9qjte+U5TKOZomL/y0KBiiuFLFwV9D+0JXT0kOz2toGEOElNbvV6CUAa3dw=
X-Received: by 2002:a05:6512:3a85:: with SMTP id
 q5mr492634lfu.465.1619049882524; 
 Wed, 21 Apr 2021 17:04:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210412223617.8634-1-jbx6244@gmail.com>
 <20210412223617.8634-2-jbx6244@gmail.com>
In-Reply-To: <20210412223617.8634-2-jbx6244@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 22 Apr 2021 02:04:31 +0200
Message-ID: <CACRpkdYv2vmFgFaEbQhRUGJ60oGYMdy+Zsbkg+0CQKonRp=7Ew@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: change gpio nodenames
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_170445_434540_A617D4AF 
X-CRM114-Status: UNSURE (   8.06  )
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

On Tue, Apr 13, 2021 at 12:36 AM Johan Jonker <jbx6244@gmail.com> wrote:

> Currently all gpio nodenames are sort of identical to there label.
> Nodenames should be of a generic type, so change them all.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
