Return-Path: <SRS0=fzRm=NH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB821C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 23:05:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7B88760E09
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 23:05:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7B88760E09
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbsJKCD/qZrBJLcodViNSRY7w9alz6cqZxZ90FgZI1s=; b=XOIEx2qCjvkU3m
	9P1X/61ErAalXdzrt6eemy2d0cd1bnEJZqQvahEng4pMs3L6rJkMEdpwc2w+znntGL+8SDlPsgNXm
	GjmggEnmvv3+P09rn641MQBb+dzC+61bBbJqeca2Aqxawjev2CMYlCxGhX+ORfWmvvYNRrmHFqTCy
	jdUgIfp3jKLaG+hWnKc0B8QobwLJoOx0JeaFCDIqw+SY5q/0cHg3YzqI3TBNWmpJrh13At7IaVrln
	fOdm+j4ialkZcJRzlNy6sXZvPbCbhG06EHMmbG5OsKA9a+W1iGIjHMcKTLzqv1sYvQOB97qrLm4JP
	D+InRCLPeVFqHaO3twdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFlfG-000TeW-K0; Mon, 16 Aug 2021 23:05:06 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFlfB-000TdW-Hx
 for linux-rockchip@lists.infradead.org; Mon, 16 Aug 2021 23:05:05 +0000
Received: by mail-lj1-x234.google.com with SMTP id y6so13010148lje.2
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Aug 2021 16:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lj2dLqJ9pyYOjsECo/lSTtBJ835kttkCZJ43TYZ23RQ=;
 b=QZ0ArbXT9/B+Kg7FSkdPaBvXoC1IXNemdZn9zn5hHGl8DBDLJiJeKzGqjnMHcq31kU
 amRu+f2bG50wNYadysjF9juYcloVrnTx23n7jEpNqX79hDf1hrFb2pzMZfVmD7Ee/iJ8
 o9S5EhBOL0qHFgU+EOi/dw81a7+WhfZ2ZIJP1gdSTcP3PdbHPqNpHFJmH1VP03xNRJg4
 bdo3sctrvoPWc8pCiu2dqFPwEDJmRCPbjVXIrqDO+zz1Ke3/hx3Z31L1vWVR8C13gPNP
 JfIpw8k3EPNTTBQHLBw8xSFARDTNfzlnZx+vsrzXv2k2ZbZFN/Z7RIUvcDlrBC1mhz9/
 hDog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lj2dLqJ9pyYOjsECo/lSTtBJ835kttkCZJ43TYZ23RQ=;
 b=ofpv1WwwfLqYPch+qvlxkiWaBIgPa1RsSV7u619+hEONrO+FU0gdwwLX6+OnVbM39A
 xMDWURUonO+SpSL6CYw5Y//5nKna/bEMBoCWXhro/e5ofckXoFMrUicvV7Z1cnnhJt9x
 TTFwM3mZXPk8QF/XxFSiQNdizHfEpfs+J+Tu+1yPR962AILzCX69O7N2TexsFEsvm2BU
 JK+xVyh0kXOy7ZQUX7QYdgpDKicn+Q+Q2h5L/blpFWd3K1hDUza5jAtOM+h2M+4u2GBG
 a95m7vzgG2Kcv2mM/hy5I5Ub5ZbUIVCxIp1lLK7yh7UToL1MHiX0yxpmrZBijqLUAqxv
 oNOw==
X-Gm-Message-State: AOAM532pw6vwMexYKBk0/pBrCq02rITX40h6D004R3LBiZIKvX95oWcX
 Aef74M/cQJ1Ee0AWevcBXaiY7DZesxwWm3a0VKUfkQ==
X-Google-Smtp-Source: ABdhPJxpngVDILQkYsQuzskdLl1PgOfY9XcdWYa9WAFWHXbDYqBy4QG/NrpOSQl08X4uPllHJTi0bYwlx4bzggm47vk=
X-Received: by 2002:a2e:88ce:: with SMTP id a14mr465713ljk.467.1629155098850; 
 Mon, 16 Aug 2021 16:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210816011948.1118959-1-jay.xu@rock-chips.com>
In-Reply-To: <20210816011948.1118959-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 17 Aug 2021 01:04:47 +0200
Message-ID: <CACRpkdaVJn9UosC5VwkQ5fTdrymtHpajc1h8HMomVS-R6vggbw@mail.gmail.com>
Subject: Re: [PATCH v8 0/9] gpio-rockchip driver
To: Jianqun Xu <jay.xu@rock-chips.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210816_160501_696302_8C91BA7E 
X-CRM114-Status: UNSURE (   7.05  )
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

On Mon, Aug 16, 2021 at 3:19 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Separate gpio driver from pinctrl driver, and support gpio v2 controller.

I merged this into an immutable branch here:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=ib-rockchip

Then I merged that into my devel branch for v5.15.

Bartosz: pull this into the GPIO tree if you need it, e.g. if you want
to fix stuff on top.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
