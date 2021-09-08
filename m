Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E880CC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 05:12:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B7A4761152
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 05:12:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B7A4761152
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvvJXq9KC6IycokLZ0Q9S73QZ1UCGUAaeVx8qYayy1Q=; b=u2FlJi5afy91eh
	QNpbPkS/KJktMEq3icG5cZj7ZSTwDk480E9/W/qj0W8nYeV5WtxXaD2rDgHSGlGsfT0qcbs8pEpd2
	wBsTe3YIMv4qmTCoBCJ9cIH9dW08uq/ZaTkPj700syK/Xe6NZT+mM4RqyNbQdbSafYF9KCGM5UhNZ
	NnjK9ZxOo/OwYSnwhxCVRPHFuP/hMF4khs1cxZEg/vBvC11Y3YwaoimXbU4tnqTZoJFIDx1mnh15E
	o05C5+WEonLXd/YXRGHryaYmpoSdBHUDMGV85pc1z7x2qUpMvD0VEv4Ax/Ypi8B3pvcJbvc3XLudQ
	QW7iYcc3PnjPIjQkIVRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNpsm-005OWf-NU; Wed, 08 Sep 2021 05:12:24 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNpsk-005OVw-A6
 for linux-rockchip@lists.infradead.org; Wed, 08 Sep 2021 05:12:23 +0000
Received: by mail-lj1-x22e.google.com with SMTP id h1so1378954ljl.9
 for <linux-rockchip@lists.infradead.org>; Tue, 07 Sep 2021 22:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cEg9j5PHH4GrveK8S9hlpJRiAHD5wKCWS95UHHv0q00=;
 b=N4InN9Bj8fK6jG56hBNBpJBevxf+zsjhr7g+bMTchVecF318z1bCZNQ7q8LjKHJ+rY
 FgI1xNRgaljSEjyEWdJkhHCYF7JA+S7v3h1Kmo8J0p5GjZuXB38rvOI1xcsBxJS0cNGf
 IEReRyPR8+eORygkamDmkpP366EyiO4cBCUPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cEg9j5PHH4GrveK8S9hlpJRiAHD5wKCWS95UHHv0q00=;
 b=YPrQYnkDtX7I/iTIQ23H5wbgomh1RLFKtnZjX1dZwFYQihqGA5jCAwUve2w5DNCtI9
 MtLr7AbVH4oYy8sE7eW7SFPgGYhTC5nvOlAiI8AFhZc0/iy2kXGJH7vC0ENzfQUVJXLY
 FbgvBskuiPzVqB5YN2c04FIIUMt4ZUeIFG5bIALodFRpE4iaxSyE+7cOt3cXZSmU2N/+
 RRrVOteCp6oF/lNIzAlzz4rYfanicZ1LENHjEeDRrAYLT2kPKTy+5mdcUlQqiXYsqApk
 m/NzmFm7wy6++7FgrqaWy+hxsikADisqmWbtkgMV3p5PW1rbIjOAQMkIz0EXWs+gjmXN
 S4+w==
X-Gm-Message-State: AOAM532wBkEZ6yWXpWg43E5JQeaLT5+icC1O4ShUMN4fzC/ZJpL4buRc
 k1eOpBMvMihwbabDLGoiiGreyg8zU0w294ZYN6aFLQ==
X-Google-Smtp-Source: ABdhPJy1eiw/GhIkayI2GgkNyxQN+8Yh+FdEG4Rp52WWFbHlAo3RxV1qWk231DHeycdNYZPN6u8599LpZ1rHJ4OzvW8=
X-Received: by 2002:a2e:9a44:: with SMTP id k4mr1320396ljj.201.1631077940431; 
 Tue, 07 Sep 2021 22:12:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210907094628.RESEND.1.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
 <20210907094628.RESEND.2.Ibc87b4785709543c998cc852c1edaeb7a08edf5c@changeid>
In-Reply-To: <20210907094628.RESEND.2.Ibc87b4785709543c998cc852c1edaeb7a08edf5c@changeid>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 8 Sep 2021 13:12:09 +0800
Message-ID: <CAGXv+5H9q7PZCBADk8ncTRYde7W_pgRT=+WNNUdg2jNSt0LtkQ@mail.gmail.com>
Subject: Re: [RESEND PATCH 2/2] arm64: dts: rockchip: add Coresight debug
 range for RK3399
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, 
 Douglas Anderson <dianders@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
 linux-rockchip@lists.infradead.org, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_221222_414782_71DE66E5 
X-CRM114-Status: GOOD (  10.12  )
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

On Wed, Sep 8, 2021 at 12:46 AM Brian Norris <briannorris@chromium.org> wrote:
>
> Per Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt.
>
> This IP block can be used for sampling the PC of any given CPU, which is
> useful in certain panic scenarios where you can't get the CPU to stop
> cleanly (e.g., hard lockup).
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

The datasheet isn't clear on whether the debug subsystem has a separate
power domain or not, so that may bug us later. Otherwise,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
