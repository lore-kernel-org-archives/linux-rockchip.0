Return-Path: <SRS0=qGYK=M6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45F50C4338F
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Aug 2021 10:37:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0933B61104
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Aug 2021 10:37:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0933B61104
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHTy20+W1prroAv2ubtYrnokGrHo3nyWU6mmBHf3N5A=; b=pE/kwcv9MJk/wC
	4Ibf8zB/A9O4nueZI+2i3XX15MpeExRUk6eXknpzhffSuSJeMiD1eC2An2Gc/uUBELq2M4vXCkSx7
	RYaXo15gCzjxhWNBzUyHm9v92/E+ZkZzadhVMRjN/CZvl3UvQYcsmxTdWQuQWDkI7OZSSL7w5O6/K
	1BVM/aJllKU5jrSLj0410RMdrorG1dFX92XTOL4ID+MTR1IrsGa4X2qZrGv0OvzPwdl4vAoTWgu4x
	ZR9oy9SeeeNwqqkyape2d2pXRAf2Cupg2qxEAYvY+bbvG2iFR72d4IH4mjwW2MWTXtlL1WPUY/sQ2
	xYRTnatmd7yFC8JP50wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mCJhv-00EaJg-OK; Sat, 07 Aug 2021 10:37:35 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mCJht-00EaIq-CL
 for linux-rockchip@lists.infradead.org; Sat, 07 Aug 2021 10:37:34 +0000
Received: by mail-pj1-x102f.google.com with SMTP id
 u5-20020a17090ae005b029017842fe8f82so12651841pjy.0
 for <linux-rockchip@lists.infradead.org>; Sat, 07 Aug 2021 03:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cOqop49TO9y4iKlVvaZlNAFE274ACz5k07MpZwKL26g=;
 b=Bv3rSHN2iQk1YdtOZV+oPO7kNdI+98gUGdMBh0AkIr7PitjVuURcz5/0vDDB+3p2x4
 tYzks2qCpGrhtPHMwfEu+N4pAZ56oYQ8euVtIKM6d8NJaRiWmV+YnUxbi+ExQcZ4pcPD
 ikCzjnn7QJWqoOU7Av/VbazABcQ8VHBQq80u373HKqvoMTz5mOFVSBEE6vdZE+TR9fjd
 6jAIaaSTuZPfuyUva2R4ElvjmcHItJEg34H+ds2EziQmN1sm3fImMI9gZNt8m7UJ4048
 nqY+yQ0i606NKCO+leA0fvjRbOZm1hsUX3o1mDb7u2rRzveemXHSNrSirX8zPKZUDCbh
 i2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cOqop49TO9y4iKlVvaZlNAFE274ACz5k07MpZwKL26g=;
 b=ihhHa4M4TixmQo8S59wwoBr2Y2ahDUQJ6aRwPRTD3Qx1aA2MvtDx74iFvGkCcXbUjn
 +BFI4KaxwGiZHGkMZVbNOZ+rgeZCc6hHHfkZ4Q5liiR8B/mjkvl34Bxolr7b/8n9YSzK
 qj8IasJh4v9dsoy2WNsvFOKnMbbcOzyPktTN5xTlq+ekjFwJaoCswYEURDlNTp/9iCMj
 uIHuFvc5IL+UR2mFtYo51DSJJ/yygjY0ls6VHGAbGu71z2tfR+ScLrGrhh+EoeZK0cAY
 tLUHlZ91Yn/N0bzD+P8OczU/xVsDyFkIfYxBTE80qu7SIx6Rvkq9xeBfQn+MCNS4mEpt
 PqCg==
X-Gm-Message-State: AOAM530rPBrvkvj+zhfEEh8p+Ai+S2XHe/5sfMzTF9F7BMArxIrlZ60W
 J8vu8ymNKhzYHj3pBR9wTCVrV5ihirlzSWRc4+c=
X-Google-Smtp-Source: ABdhPJyZkbcJ7w1Xu92vuQiCpBzQFI/sjQ2dQTNJrwxePMa9aUSvWB445uc08XeRtyzX/MrA+0VvHZl0zuKpcrQnVLQ=
X-Received: by 2002:a17:90b:33c5:: with SMTP id
 lk5mr26016485pjb.129.1628332652567; 
 Sat, 07 Aug 2021 03:37:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210806105524.231838-1-xxm@rock-chips.com>
In-Reply-To: <20210806105524.231838-1-xxm@rock-chips.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 7 Aug 2021 13:36:56 +0300
Message-ID: <CAHp75VcSMx3CPt9cgzdZ63xRrowm1H+Jpbhd5W74oeVBUY34WQ@mail.gmail.com>
Subject: Re: [PATCH v2] iio: adc: rockchip_saradc: add voltage notifier so get
 referenced voltage once at probe
To: Simon Xue <xxm@rock-chips.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
 linux-iio <linux-iio@vger.kernel.org>, David Wu <david.wu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210807_033733_478342_9A310451 
X-CRM114-Status: UNSURE (   8.44  )
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

On Fri, Aug 6, 2021 at 6:24 PM Simon Xue <xxm@rock-chips.com> wrote:
>
> From: David Wu <david.wu@rock-chips.com>
>
> Add voltage notifier, no need to query regulator voltage for
> every saradc read, just get regulator voltage once at probe.
>
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: David Wu <david.wu@rock-chips.com>

The order of SoB tags seems wrong or Co-developed-by is missed.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
