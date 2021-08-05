Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BBDC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 11:38:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 24C8160C51
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 11:38:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 24C8160C51
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6vtv1HXpPQiG2gPSVr3dtThQEvJd4+t00qvU6T4HSr4=; b=JIA7QUPQFJH6wc
	pJOMfjlbA6HntthSZAMA1R1Z3CxUz3cccxsLTd5/IFlA/HflOxolkFLSIiWUMKDw+RSThyW7TaivC
	BmW4gbpSCIbYWsHaf2YQYZ2E3uT+h5TlOSlLtVS5CG8tw8nFtoDrEcQ+dZ0Is4Pwn7elbo5jGk9DJ
	y4+hxDB880+XFhRCFTJZYPiz99tnTGfNj1KXRasLw5LJkJd+AUDvvkQ1X4DeUglZNO9fioxG80TJo
	ePlg3FWDW3gJa+AJjKdmbUjEvtS1/m/SuF5daErmczQCweixfrG7GaMwgalyMIm0mFl3D02BTIq/z
	D54hR2wnkgJakMX/mjDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBbhc-009HlN-Oq; Thu, 05 Aug 2021 11:38:20 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBbha-009Hkp-7a
 for linux-rockchip@lists.infradead.org; Thu, 05 Aug 2021 11:38:19 +0000
Received: by mail-yb1-xb32.google.com with SMTP id x192so8584947ybe.0
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Aug 2021 04:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4sNrBXG3cmsa/j58MXPnQY+ureLEZb7SFaI4axcJxYI=;
 b=H8OXe89Tmp4MidjEkZBmS7XtFY8sjphNOTOYu9/ij5S66Qb3c5KocBgfP01ZQVagyh
 YrrqdxdrFzx0Qarw6B0M/H8U6W90XFtHPJm+7R14WRuhZnFuLVbau51Yf3JGUmZiRA8X
 Ii1eYJof4JY4Ea2+kyrX8z+3hcxUUvY5fX1S04QPozNHNjQ5Txh0XfnIbPgB/04sjk5G
 3XwB75A4357/Rk3X4oMa8FCNaq+hqukWR/XlDQFtE3AAhKNkb4OECHprlgQENXZs5VIm
 IGQMJSwhWkm6JIv6mlKXTg777F1U3shiJoBNX6at1WMOE2aVZ3s0i9jeY9WRfuP1BXGA
 yZ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4sNrBXG3cmsa/j58MXPnQY+ureLEZb7SFaI4axcJxYI=;
 b=YSMskhxUqYa2Ya/kQspfKwknyrDYoUs0uVlFTY7I3AyBcCCK7WqeaFaXavp2fUWdGX
 Yd+K4KNOeAdZ5wbGHyQh6jlSSgdSKL6mVTGfiHZraCfcVZkZKJAODV5J3QeKVzMm1kr4
 aS6Vo0NKrSFe+B9QDeDfozp9WqpeSkkJ1yXj05nwFkdDxpAR0+tap5jy7moiI1yOqt4V
 FTL3WBu6gTy9NYw2B5Bbyc9anGHw5PDlmbTeGpl7LAjtcCq4GK7YVH1qowC7SMlQEpDY
 4HScF4bCuT/xJt6571zAHHKZNyDSCD9lWclzP6XRSTDL7AJZTJr+hRBx+ztPqAFaR92g
 FaSQ==
X-Gm-Message-State: AOAM532SPfmNngtliNeZCcZ2DkiNJPduIYpxpq54IBFNeKM/tMUSwA7s
 O2QEJCg4+LoGiEVLTi8Bo4YCkdIHM7Z098ppPxE=
X-Google-Smtp-Source: ABdhPJzNaVthwQzy/5Yu04j/gS54ZLHj33w/D2H88qsv5NOCWA4KIoWAOx6COVtIiUVpXk1pr1ta8u9P0brUJ/vhurE=
X-Received: by 2002:a5b:108:: with SMTP id 8mr5534615ybx.174.1628163496897;
 Thu, 05 Aug 2021 04:38:16 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20210804143357epcas1p1c67eca591d8bb557c11b8175baaa8550@epcas1p1.samsung.com>
 <CAMdYzYrx8pgeyK7u=kcopZ+Wae+fQdr_uM4AuVjqWKfZYikgcA@mail.gmail.com>
 <a9aa636e-326f-a848-dd69-41df87c013af@samsung.com>
In-Reply-To: <a9aa636e-326f-a848-dd69-41df87c013af@samsung.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 5 Aug 2021 07:38:06 -0400
Message-ID: <CAMdYzYr9PX-9=kkCAfGe8Q0-D+gRo_qCwse8SiGVsmod7fffiA@mail.gmail.com>
Subject: Re: [BUG] mmc_regulator_set_ocr can't cope with regulator-fixed
To: Jaehoon Chung <jh80.chung@samsung.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-mmc@vger.kernel.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_043818_335460_AEF44B05 
X-CRM114-Status: GOOD (  38.20  )
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

On Thu, Aug 5, 2021 at 5:59 AM Jaehoon Chung <jh80.chung@samsung.com> wrote:
>
> Hi,
>
> On 8/4/21 11:32 PM, Peter Geis wrote:
> > Good Morning,
> >
> > I've encountered a fun issue with the dw-mmc driver while working on
> > enabling support for the Quartz-64 Model A.
> > The regulator-fixed driver supports enabling via a gpio, but does not
> > have the ops to set voltage as it is fixed.
> > The dw-mmc calls mmc_regulator_set_ocr for vmmc, which attempts to set
> > the voltage first but fails due to the lack of the voltage ops. It
> > then bails returning -EINVAL.
> > This leads to the following message :
> > dwmmc_rockchip fe2b0000.mmc: could not set regulator OCR (-22)
>
> What is vdd value (ocr_avail value) on your target?
> I didn't see its case until now. If there is a real bug, I will try to check again.

What brought this front and center is actually another bug with the
dw-mmc-rk driver (I don't know if it affects other dw-mmc drivers)
vmmc is 3.3v on this board, but with broken-cd set polling causes the
following splat constantly.

[   30.719846] dwmmc_rockchip fe2b0000.mmc: could not set regulator OCR (-22)
[   30.720488] dwmmc_rockchip fe2b0000.mmc: failed to enable vmmc regulator
[   30.763736] dwmmc_rockchip fe2b0000.mmc: could not set regulator OCR (-22)
[   30.764379] dwmmc_rockchip fe2b0000.mmc: failed to enable vmmc regulator
[   30.778231] dwmmc_rockchip fe2b0000.mmc: failed to set rate 300000Hz
[   30.795042] dwmmc_rockchip fe2b0000.mmc: failed to set rate 300000Hz
[   30.798735] dwmmc_rockchip fe2b0000.mmc: failed to set rate 300000Hz
[   30.816591] dwmmc_rockchip fe2b0000.mmc: failed to set rate 300000Hz
[   30.820303] dwmmc_rockchip fe2b0000.mmc: could not set regulator OCR (-22)
[   30.820944] dwmmc_rockchip fe2b0000.mmc: failed to enable vmmc regulator
[   30.834794] dwmmc_rockchip fe2b0000.mmc: failed to set rate 200000Hz
[   30.851606] dwmmc_rockchip fe2b0000.mmc: failed to set rate 200000Hz
[   30.855264] dwmmc_rockchip fe2b0000.mmc: failed to set rate 200000Hz
[   30.873197] dwmmc_rockchip fe2b0000.mmc: failed to set rate 200000Hz
[   30.876908] dwmmc_rockchip fe2b0000.mmc: could not set regulator OCR (-22)
[   30.877549] dwmmc_rockchip fe2b0000.mmc: failed to enable vmmc regulator
[   30.891396] dwmmc_rockchip fe2b0000.mmc: failed to set rate 100000Hz
[   30.911704] dwmmc_rockchip fe2b0000.mmc: failed to set rate 100000Hz
[   30.915586] dwmmc_rockchip fe2b0000.mmc: failed to set rate 100000Hz
[   30.948637] dwmmc_rockchip fe2b0000.mmc: failed to set rate 100000Hz

I looked through the code path and if the OCR voltage is set to the
fixed regulator voltage it should just return success. I think I need
to change that error to output the voltage it tried to set, just to
see if something weird is going on.

Also, I've got a possible fix to the dw-mmc issue, the following patch
changes the behavior to only enable a fixed regulator, not try to set
the voltage. It's a split between the behavior when vmmc isn't defined
at all and when its a variable regulator:

diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
index d333130d1531..b30102980261 100644
--- a/drivers/mmc/host/dw_mmc.c
+++ b/drivers/mmc/host/dw_mmc.c
@@ -1446,11 +1446,13 @@ static void dw_mci_set_ios(struct mmc_host
*mmc, struct mmc_ios *ios)
  switch (ios->power_mode) {
  case MMC_POWER_UP:
  if (!IS_ERR(mmc->supply.vmmc)) {
- ret = mmc_regulator_set_ocr(mmc, mmc->supply.vmmc,
- ios->vdd);
+ if (mmc->ocr_avail > 0)
+ ret = mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, ios->vdd);
+ else
+ ret = regulator_enable(mmc->supply.vmmc);
+
  if (ret) {
- dev_err(slot->host->dev,
- "failed to enable vmmc regulator\n");
+ dev_err(slot->host->dev, "failed to enable vmmc regulator\n");
  /*return, if failed turn on vmmc*/
  return;
  }

>
> Best Regards,
> Jaehoon Chung
>
> >
> > This can be fixed by switching to regulator-gpio for the vmmc supply
> > to the sdmmc controller, however the sdio controller vmmc is provided
> > by a fixed regulator that is always on. Obviously the regulator-gpio
> > isn't an option, as it has no gpio to enable.
> >
> > Removing the vmmc phandle from the sdio node is an option, but then it
> > doesn't fully describe the hardware (it's also a non-standard 4.4v).
> > I had considered changing the check in dw-mmc.c [1] to continue in the
> > case of -EINVAL, but there are other places in the regulator framework
> > that can also return that and it doesn't address the underlying issue.
> >
> > As such I'm reaching out to the experts to see what the best course of
> > action is here.
> > Please weigh in with what you think.
> >
> > Very Respectfully,
> > Peter Geis
> >
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
