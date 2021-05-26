Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11F76C47088
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 20:27:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5EF7613CA
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 20:27:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5EF7613CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAwQ/T0S197NrvIAw6mx1NBPNLokD70g9RXr2ZkPxIY=; b=VRPLSsKtZtSsjT
	Gl24WI5gYV6+3aDrjr8vTvVKKx50dRwaO5uCMKCMSBEfiM5jCy8ybtwJcIMDhRK/dHDEZYevydHrh
	5EuLQ68fFKxbKJ7YpwkEnCFZy3txPBuzNfFgGZ7DIAADN6bawaqvfzo+3IgjNSGq6AoKCTEBtECHf
	cwhWgYdbsNO5HNBobzD3r1/qRc+X2jRQTQVjQ2zWFzIuwGRxuRhD3MK4rGiW2gWlGrFLg/T/uG7IG
	vLDziS1vI+58QJE/YsdwDEY/EA7ne6dD/iF4zzmZni0VadXU7irXvEIRVIYsif6VvM6jlokKX711S
	0VFBzv5RDgCQAVXk9eYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lm07r-00HOHd-0l; Wed, 26 May 2021 20:27:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llzLr-00H1UN-It
 for linux-rockchip@bombadil.infradead.org; Wed, 26 May 2021 19:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XFPiHuMmgB1diVIK7dUPVf8VcVw6JsgY/PRpvldEVQ0=; b=mUzDqkEmTQEBint9L4y2HID7iW
 WdDCBrxZ/9Y+xNxzKot+LLw8JBdrULqxXcV9f50+pKxOjViqNWrRCBOHfayOjM+Fv1XoKYYGT5iI3
 hiU2L4H70dXAGBrEFSE6qCiwXRS5EQI7DAM4867F2+Bg3BBmENUA4MMlVhGlonoNId2VKCYRJ8zQg
 1MeCrlM9Doil1/p2SCS3jaG4jpE02RqAI0Vqfcr/h8s4Wc9CrrCv9edCrEcBuCNjI5RgwvimkAXnp
 lDWTwf6EyPUqRRByqlcNwgdUqlO1nRUbQl1Cn9YcTqukzrc9KduSpDDj2V+5OEAGXU2RCH/Of+h+M
 qQVi654g==;
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llySq-000jRy-5m
 for linux-rockchip@lists.infradead.org; Wed, 26 May 2021 18:41:19 +0000
Received: by mail-yb1-xb33.google.com with SMTP id r7so3439335ybs.10
 for <linux-rockchip@lists.infradead.org>; Wed, 26 May 2021 11:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XFPiHuMmgB1diVIK7dUPVf8VcVw6JsgY/PRpvldEVQ0=;
 b=qaSvn6PI+8BoBElLj/aK5GPJlL6f774Y24z0S6KncRf915wNgynqgtLORZyoSDVquM
 SpOjVNqBDwkEZ2pxfIRMa7bMNtMXBCAhSb58WtU1nsfrAT3XIxRjnmVpPjrSzcNSPb7g
 z5BVFBGZ2KuVuliw9g4hAoOnFHPQ3REKaiRClFkO6tPNNAk89cyfePVQpCAFoUniS/kY
 qBkTpVtuPjfcLaBWOn0SfYMKBxxlE457FedrsxXevhi0w3n+k4iSGSjSZXPt0npjSAdK
 agdh4otT1bi2+sYrYgK2WbafJ0hGlfOEO7Mnh3y7O0fxWY9g3RUbW6jIIOMzZysLqpVn
 a+iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XFPiHuMmgB1diVIK7dUPVf8VcVw6JsgY/PRpvldEVQ0=;
 b=fSw1sPjj+J/osqHbxxmvyQi+TUW4mSWUowi1bfLj83DIQ2g83zilI3SVtbWxMD32Ev
 5Kp/PXy9W7DP5tIbHrAvAXIoo3Yl3fvqcHmTMpyNJovD7BmKdm5CCcAZZuAMjnj3M7T+
 urIvBr7XQseKVSbFCiH51m7TJ9PbBDCz3YGrzb5paN4ojoTx2DqwCkE6RsWtNnFWCfpS
 2lQAAJGPHz/HP7Klss5/SAHZjBUpA1sRnCD4stF01KtW5GRTIBUC6EOkzb0StzK4urI2
 6tYa4B3NNtkcsn1KmNbugeDkiYfzyp0o2nDNHxIboN+SFbDAtqsYgV5PEBFTM0G0xvrG
 IV+w==
X-Gm-Message-State: AOAM532gQi62EDwcfE5nPCC/Gh1tQP8eZpc21gl7var2eMqWPyPJm2AX
 Up9rLuPKmat7t4YiiWCYrKJVqIkrs3bp1P2xzMk=
X-Google-Smtp-Source: ABdhPJwT4k6DNHfY5t+fcuHUkZTxoJn64AyHFKIC91gNYP2lNln/V0r4OROotjDGt6+BPUuDXwodmF+VI6cgRZ3t6Zw=
X-Received: by 2002:a25:3c87:: with SMTP id
 j129mr53760696yba.141.1622054471905; 
 Wed, 26 May 2021 11:41:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210526162342.GA20@8bbba9ba63a4>
In-Reply-To: <20210526162342.GA20@8bbba9ba63a4>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 26 May 2021 14:41:00 -0400
Message-ID: <CAMdYzYpZoKs3P62j02RW-+5BEpqC9JL3apjucTWLWmvNFrOrCg@mail.gmail.com>
Subject: Re: [PATCH] regulator: fan53555: add back tcs4526
To: Rudi Heitbaum <rudi@heitbaum.com>
Cc: devicetree@vger.kernel.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, 
 Ezequiel Garcia <ezequiel@collabora.com>, chenjh@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_194115_197956_C379C611 
X-CRM114-Status: GOOD (  26.25  )
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

On Wed, May 26, 2021 at 12:23 PM Rudi Heitbaum <rudi@heitbaum.com> wrote:
>
>
> For rk3399pro boards the tcs4526 regulator supports the vdd_gpu
> regulator. The tcs4526 regulator has a chip id of <0>.
> Add the compatibile tcs,tcs4526
>
> without this patch, the dmesg output is:
>   fan53555-regulator 0-0010: Chip ID 0 not supported!
>   fan53555-regulator 0-0010: Failed to setup device!
>   fan53555-regulator: probe of 0-0010 failed with error -22
> with this patch, the dmesg output is:
>   vdd_gpu: supplied by vcc5v0_sys
>
> The regulators are described as:
> - Dedicated power management IC TCS4525
> - Lithium battery protection chip TCS4526
>
> This has been tested with a Radxa Rock Pi N10.
>
> Fixes: f9028dcdf589 ("regulator: fan53555: only bind tcs4525 to correct chip id")
> Signed-off-by: Rudi Heitbaum <rudi@heitbaum.com>

Considering the TCS4525 wasn't supported prior to its recent addition,
and the TCS4526 wasn't supported by the driver at all, this isn't a
fix but a feature addition.
Binding only to the correct device ID exists for this reason, to
prevent unsafe voltage setting.

I also don't see the TCS4525/TCS4526 regulators in the current
linux-next device tree for the N10.

> ---
>  drivers/regulator/fan53555.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
> index 2695be617373..ddab9359ea20 100644
> --- a/drivers/regulator/fan53555.c
> +++ b/drivers/regulator/fan53555.c
> @@ -90,6 +90,7 @@ enum {
>  };
>
>  enum {
> +       TCS4525_CHIP_ID_00 = 0,
>         TCS4525_CHIP_ID_12 = 12,

This isn't a TCS4525, but a TCS4526.

>  };
>
> @@ -373,6 +374,7 @@ static int fan53555_voltages_setup_silergy(struct fan53555_device_info *di)
>  static int fan53526_voltages_setup_tcs(struct fan53555_device_info *di)
>  {
>         switch (di->chip_id) {
> +       case TCS4525_CHIP_ID_00:
>         case TCS4525_CHIP_ID_12:
>                 di->slew_reg = TCS4525_TIME;
>                 di->slew_mask = TCS_SLEW_MASK;
> @@ -564,6 +566,9 @@ static const struct of_device_id __maybe_unused fan53555_dt_ids[] = {
>         }, {
>                 .compatible = "tcs,tcs4525",
>                 .data = (void *)FAN53526_VENDOR_TCS
> +       }, {
> +               .compatible = "tcs,tcs4526",
> +               .data = (void *)FAN53526_VENDOR_TCS

Since you aren't adding any functional code, is there a particular
reason you can't just add the chip id and simply use the tcs4525
compatible?
This will prevent you from needing to modify the dt-bindings as well.

>         },
>         { }
>  };
> @@ -672,6 +677,9 @@ static const struct i2c_device_id fan53555_id[] = {
>         }, {
>                 .name = "tcs4525",
>                 .driver_data = FAN53526_VENDOR_TCS
> +       }, {
> +               .name = "tcs4526",
> +               .driver_data = FAN53526_VENDOR_TCS
>         },
>         { },
>  };
> --
> 2.29.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
