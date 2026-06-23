Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDCFFCDB46F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jun 2026 10:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tuz8vnTu6KOZx9MlAMvwNAXem0i6oz5mKAObubnWJ8=; b=doany0rM2p8IGV
	ntDh5VIrMEFtdT37Qudo9KrUn+OD2AgXbWUJLXMQNFJZYgng1NkloA9Tg4/kQQsmbeGoO+NhUhR7O
	VFJh7l0Bz2b0X5s4oBI1RORfoYiKAXUVfXwxhvM12dm/0R3jMMGalAYAKuwXyzvmqO+3pGGje7S2g
	rpVCYdOd6VwKHrm7foey9BUEmKxHT15YOV0yJvgyrlw0pt2imr1Bu0jxaWbNE+ch6rAauRLqAKF+1
	Lch5U1Hb5P+j3Cevky0U4ikMqmL7oRIOmeXKFtIZE/AZPek2mAYbGAnvlvI3BfIidsPnzsq5rOy7b
	JTX20qBzYCiMi16821kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbylF-000000067DB-2VsC;
	Tue, 23 Jun 2026 10:53:45 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbylB-000000067Bw-07k5
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jun 2026 10:53:44 +0000
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-c86307c4e6bso2055517a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Jun 2026 03:53:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782212020; cv=none;
        d=google.com; s=arc-20240605;
        b=lSbkzhSyD/3BVdZcIyEZG2hmwsrpKPN7uDEc2r0n5Bt2MZ+tir7/2oT2E8QpngL0Y7
         SWb/4eAgI0cVrMBf/rQGT92orYIgnFJCLJiPBsauNfzGWz9FaqKj5jUkdkSY3zrZOxYj
         yVl82iBrng/sDcl9I8hzrWZKn+t2tS277de6wSXvq1TSRzgBHmHB9ZPXFTZk1Lcmifxh
         xx3B8q/53Ki0pdcFDDBiEs2zcRE3XlLDPkiN0zo85aSvgc4eMLtz2P+U/+bJIQLooum5
         AdjV/toH+KNKJKtogdVfSbp88xKox97kyVLIVIDwA/F6tO5OndVwr9w62VqZJ8/y6w/F
         Nrwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0t8B9KiaKml1jWkv/ehgW2nxgxFMiIhxgi2j8Q8oeTs=;
        fh=W2vklpRpT5Amsxl95CvVppbgn9BpSSVrF3KFRWB4L58=;
        b=YQQiTPzc160RCUzC7pI2DCnYHaY/mx2uEpAzWpMpa5KtsNgMbF4npMg9s/q6ZFrUme
         ThjGzX+KKAyGjxkNy1RjhqoFhqDt3enhYrfVTBXSuxGWw49qRTejWWWUxgxp3CeTn2fe
         3WIGT783OP0n5L3aKuJD3CPgNcTfWc46tZpv67mlH2Ho9ErrNfGPq2hPKkvXe35p6gtz
         L1k2FkVYFZoRPXmwde8htqFSRjKgJO4AUGprjHUtIHGYn6+50evqHxdjqyqv3IlGi2uo
         7LyiZjb7vXxScnFionAY3YkTJ3JTzXYI+/puXZQ276YwcYOBJ4Dm6tq7GKrk/xfao7HS
         DrJA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782212020; x=1782816820; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0t8B9KiaKml1jWkv/ehgW2nxgxFMiIhxgi2j8Q8oeTs=;
        b=jvJtctBFMlxY6TxNpL0jkiOw5Eh6o71lGCg++ZuuL0bA2wDHqTJEEXpzfgcZu5oE43
         RsMb0f7YUrmmHWrb2vqpl9+8BHXAW3zgaIVzk1Hum4FRA/KYh/JxAPtKR6P+f7VmF8k8
         3XVOZL4KjsRR5jrzSTVbxicT394JF29cCkxjMMUZvaVAyfAQhFSxST5kZ8V340rVKIOu
         t2Yx6/ua7EkZ6CSQptE8V0PcUbvL7UA2N0Dews3jDl+O6NG9W6D2rkM/PEcX1lRE1dix
         h3FGmz5/ZUCTF81M4GTuBsOOXZObd/vkYPItx7H/RhPhkmTy/KbImeHNUM+f6F9OW69K
         4gFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782212020; x=1782816820;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0t8B9KiaKml1jWkv/ehgW2nxgxFMiIhxgi2j8Q8oeTs=;
        b=TK/MHq+mAq/adcDsK++KGpZKv0xMxSyuOH1kKp0ur3KzVahfOIVhCU78kVkZdij4TQ
         vMNEatmyfXY5PbaveB8KgmC8bGGIx9CAeigPuO6zE+onTtNbS+wsAwPA1ulzQKAMDTU8
         /bC9u0xu3ceNhl7QbAhAX7l1yHbGUlQA/9mp2esmDqbr+kPrc3ATvcSOsAxTQTUgRijX
         ZBzclYKu5/NSsVdfepEt9um5602rKdXb+1JHn1LoJEZOHc7N96QHr2wv9ucHw7B0eiPH
         wA7JzALn5iIpdua/lv3bQagt502bqXDl5SdpvgXGNtWr2cWYuMyn5SwUTL9Q6TjpQEsZ
         lqZQ==
X-Forwarded-Encrypted: i=1; AFNElJ/ync2/bNHZkcv6jd8MaPgULPMNUoPlx/M7WWn+u6zfYwlqCppfewptEBi7X9ZoTplBs313GnPO+KXxgBkWIQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyenPfBoVzc4gaRSji/UoxEjqsIl93dsk9G7z2riOph3KGG/sAj
	pVK5bZs9KbECPvFG1Eu/9w1wYRM+r1COYjQZGxigP9C5W4islMSnxRUh7dBCogUlMRDALKpyeaA
	zxpWQJSXlb1cfDK/zwfHujdiZVQJKYGA=
X-Gm-Gg: AfdE7cmrCuxys7AXMwMLRFoSLoEQWDP0Kkpbwe34be35j6kK+mO3DbgVnYnMbwsu/sf
	SLsilkfj3om5sd6QbymfKkxsYCYelKxEKROA8ZXZdDqxuv6UPf3rTZQT6qJsx4Z5uAPZx9SwXjm
	WgHekV6wgfqw6H971AEXu9xobs6dv07LLgmF+AIxjPyJQt2EWvu3io2vAOD3RSczNehqLQqlfMD
	UpffpOe1o9hQR1OyA1z/XGk17Anu969Fj1KiLq0fw65/oBHj18SB6H8yCoESKyyeuP0tV2sfbkE
	0jjGuwPjcc8cE+10f3J70pXnKrciCKYOFCnYjQ==
X-Received: by 2002:a05:6a20:d045:b0:3b4:904f:c9cd with SMTP id
 adf61e73a8af0-3bc5181907emr16930605637.6.1782212019669; Tue, 23 Jun 2026
 03:53:39 -0700 (PDT)
MIME-Version: 1.0
References: <20260622005613.21870-1-phucduc.bui@gmail.com> <229ba136-66eb-4a30-a316-58377836b4dc@sirena.org.uk>
In-Reply-To: <229ba136-66eb-4a30-a316-58377836b4dc@sirena.org.uk>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Tue, 23 Jun 2026 17:53:28 +0700
X-Gm-Features: AVVi8CfJTdkORwgI_XliseheOLtan_Kjx0p8qfbLbr6t29reUwoDQB9fLtkHz3Q
Message-ID: <CAABR9nG6BL+-urEg0qDzJHYmowm7O=du_0T4+K2ogdrcD30CXA@mail.gmail.com>
Subject: Re: [PATCH] ASoC: rockchip: rockchip_sai: Hand over hclk control
 exclusively to Runtime PM
To: Mark Brown <broonie@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_035341_089001_018FFECF 
X-CRM114-Status: GOOD (  26.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Mark,

Thank you for your review.

> >    1 Reverting back to devm_clk_get() to remove the implicit devres
> >      enable/disable behavior.
> >    2 Manually enabling and disabling hclk explicitly only around the
> >      early register access before Runtime PM takes over.
> >    3 Dropping the stray clk_disable_unprepare() at the end of probe()
> >      so Runtime PM solely owns hclk afterward.
>
> Note that runtime PM can be disabled at build time so we might not have
> runtime PM at all...
>

Thanks for pointing this out. You're right that with !CONFIG_PM, the
driver only relies on the
two manual calls to rokchip_sai_runtime_resume() / suspend(), so hclk
stays enabled the
whole time. I understand this is unvavoidable in that configuration,
throgh, since there's no
Runtime PM to re-enable the clock when it's needed.

I'll update the commit message to reflect that the driver uses a
combination of Runtime PM
and explicit manual enable/disable, rather than relying on Runtime PM alone.

> > Links:
> > 1 This change is based on the discussion around manual hclk handing during probe(),
> >   as raised by Krysztof:
> >   https://lore.kernel.org/all/20e4754b-ea9a-404d-b529-ec44a7263cbf@kernel.org/#t
> > 2 Background for the earlier devm_clk_get_enbabled() conversion:
> >   https://lore.kernel.org/all/2818018.CQOukoFCf9@workhorse/
>
> > An alternative approach would be use devm_regmap_init_mmio_clk() and let regmap
> > manage clock enablement around register accesses. If preferred, I can rework the
> > driver accordingly.
>
> > -     sai->hclk = devm_clk_get_enabled(&pdev->dev, "hclk");
> > +     sai->hclk = devm_clk_get(&pdev->dev, "hclk");
> >       if (IS_ERR(sai->hclk))
> >               return dev_err_probe(&pdev->dev, PTR_ERR(sai->hclk),
> >                                    "Failed to get hclk\n");
> >
> > +     ret = clk_prepare_enable(sai->hclk);
> > +     if (ret)
> > +             return dev_err_probe(&pdev->dev, ret, "Failed to enable hclk\n");
> > +
>
> > @@ -1482,8 +1492,6 @@ static int rockchip_sai_probe(struct platform_device *pdev)
> >       pm_runtime_use_autosuspend(&pdev->dev);
> >       pm_runtime_put(&pdev->dev);
> >
> > -     clk_disable_unprepare(sai->hclk);
> > -
> >       return 0;
>
> Are you sure that the runtime PM state there is such that it knows a
> reference is held?  The driver used pm_runtime_get_noresume() so the
> device didn't have RPM_ACTIVE set I think?


You are right, pm_runtime_get_noresume() doesn't set RPM_ACTIVE. I
think we need to add
pm_runtime_set_active() before pm_runtime_enable(). Otherwise, with CONFIG_PM,
the pm_runtime_put() at the end of probe() might skip the suspend,
since the core still considers
the device suspended .

>
> The runtime PM API really is a miserable collection of landmines :(

Yeah, plenty of landmines indeed :(
I checked, and rockchip_spdif.c does use devm_regmap_init_mmio_clk() for hclk,
rather than wrapping every register access in pm_runtime_get_sync() /
pm_runtime_put()
the way rockchip_sai does.

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
