Return-Path: <SRS0=nVt2=EK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D434BC388F9
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 16:28:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 60BEA206D4
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 16:28:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2EOM6tCJ";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CYyTnjZ9"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 60BEA206D4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QySpLc15xXx8GUJtmdk+x8JmNDlw14O0rrgjn5N5cK0=; b=2EOM6tCJLyL8RL/6YL0ZAaqJU
	QrMN6knpQFk1aDierlTwC6lxjBqVqnc7169tE4wQ7cY7TJKHpmZyCWSgS8m6Aw/MXOeSxZG1w8civ
	xyP/j4jBLA8NHCwhCzTcGUU/mUI2BpoPNd1sQrFu71sVNBkrfaIXBqYxGYVd09SXyUyXqvbnssk+r
	lS8CT0NvoG5nvMJhmwUUTfhaokbCvzcLn/fQ+L8VoaXH46vxlEcgup7uZmfGkZSMWnbnU88LmJ6OG
	tXUl/W6VU6cLUly7kUf5cqgSFB2UfCEvAL4rUwN/7UkYf86ONG5dMPZUTg2Ci0vg5DagoEUqerEFa
	ScEMZgfvA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaLds-00047a-7W; Wed, 04 Nov 2020 16:28:12 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaLdo-00046B-1q
 for linux-rockchip@lists.infradead.org; Wed, 04 Nov 2020 16:28:09 +0000
Received: by mail-ua1-x944.google.com with SMTP id q4so2095402ual.8
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2020 08:28:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LjuXhQKMkVF/DFnAs8lSgplGwULXo7VijpW+tg4xDRo=;
 b=CYyTnjZ9sT5OzEIgvIcFGZuSxN+Eid8b5mYJi0Nf25q32LAUY54og5lkDHh40Aba16
 LH63QeOb6L4WxI5TKhvVzq3fugcyltMxwbtRFqilu5XPRVURd3DTemYhTopb7D8fQFWL
 Xzsdh7fnY7Z9kQZojTdOMe9r9rq7AtR5hF0FQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LjuXhQKMkVF/DFnAs8lSgplGwULXo7VijpW+tg4xDRo=;
 b=hcbiKmwdwfmT1KEt0koTm7OgPZpTqZ9ntEaCmKu9l8DerKabQUVE7xMheO7rNHX36c
 ISOvuvujuT+EO+GrUXPuZKLg9sxjBIdjEFP5TZbm8e9Du90OOZSv1NcK8EuBVRltzEsC
 5FIZjS6EfXbE2gEK/ZlxWTYhMsQgAOBv4nrl7K0syV9wOfTQYlJ1hPnorJ5/L2bFyC8e
 Hf7u38m0MwoGz4PVTgeupHg8J3xIWIOz+nmu5Ji2PFcsw5VnM9U+oSu6ku1IGqGf13Jr
 LkycClx74rmL9odTVuwFYIUlS9eHwqE/NS+Qxa0RD9vFYwZMatMJaM7aS9m+lE1ZxJWw
 fPvA==
X-Gm-Message-State: AOAM530bQhIETJEoUa6oVJzmpBgOdvp/YXEAsdVDwiKpiBYa5xLxhrll
 RA4KaKvPPKvTkQE5jliTSHYZ5GbjX3mFIA==
X-Google-Smtp-Source: ABdhPJynN7Hd746bBhaMbXiPUzCm+g0XZpwFdaLKYOaxrlQC3BY55+4QCTvYrqgRX/lEhVDWbdBAcw==
X-Received: by 2002:ab0:31c3:: with SMTP id e3mr13573650uan.142.1604507285856; 
 Wed, 04 Nov 2020 08:28:05 -0800 (PST)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com.
 [209.85.222.41])
 by smtp.gmail.com with ESMTPSA id t71sm327605vkb.7.2020.11.04.08.28.05
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 08:28:05 -0800 (PST)
Received: by mail-ua1-f41.google.com with SMTP id q20so6219824uar.7
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2020 08:28:05 -0800 (PST)
X-Received: by 2002:a9f:2f15:: with SMTP id x21mr14344167uaj.104.1604507284609; 
 Wed, 04 Nov 2020 08:28:04 -0800 (PST)
MIME-Version: 1.0
References: <20201104162356.1251-1-m.reichl@fivetechno.de>
In-Reply-To: <20201104162356.1251-1-m.reichl@fivetechno.de>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 4 Nov 2020 08:27:53 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VdcG_DQs+er5g-p=pX_G79Nzciv=M0MDZDhTr2c4sh8g@mail.gmail.com>
Message-ID: <CAD=FV=VdcG_DQs+er5g-p=pX_G79Nzciv=M0MDZDhTr2c4sh8g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Assign a fixed index to mmc devices
 on rk3399 boards.
To: Markus Reichl <m.reichl@fivetechno.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201104_112808_108450_0D32BD1D 
X-CRM114-Status: GOOD (  11.91  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, wens@kernel.org,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Wed, Nov 4, 2020 at 8:24 AM Markus Reichl <m.reichl@fivetechno.de> wrote:
>
> Recently introduced async probe on mmc devices can shuffle block IDs.
> Pin them to fixed values to ease booting in environments where UUIDs
> are not practical. Use newly introduced aliases for mmcblk devices from [1].
>
> [1]
> https://patchwork.kernel.org/patch/11747669/
>
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
