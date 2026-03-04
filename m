Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A14C4EB7ECD
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 11:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3l+m+OHvB2Gmor1L/k71QvfSf7LVbYVFfd3LBjo8dx0=; b=vgLrk4r8D22IvE
	HEBEyPR1ZWdSu9d41/lINYMcGGvi8PO6+oCRPWfxp/MxPtQtimioKgK6NUMQGRRTmwddB5Alw3szy
	Bireoa/RxLyviRP7l0p4sLTsw0/sWlmQGWHKQ8CPyHFbdhPqhsjqy0RC/+a4Ff8g4gp+u1Hl01dP6
	esmVzhLITms9qeKoHb7Il8bJd72sc6qaPnl0dkfQWG9N2yrnr6N5i4C4ebEPaeRvLGurhX06bR/ra
	xo99JPWCV2uy4o0fWujhfureJoDyX/Qqi7QLUwNhyQMhWzCo40Nnwu57f3bJt4b5B3d6Tb5XsyfeT
	c25VSv9ISJOMJjzwYCiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkM9-0000000H5by-2qLe;
	Wed, 04 Mar 2026 11:25:33 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkM7-0000000H5b2-0tQO
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 11:25:32 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-38a2cc31e20so10690431fa.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 03:25:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772623529; cv=none;
        d=google.com; s=arc-20240605;
        b=Te1MI+o2+SrqVPXGfWWBF5IoNA8+lxxsHLRGKVdH4SIXxBSu26BOwVzHDS3/Co9QlF
         sdCGOA6UxAoUabFkGAeM4cyPXLwaOHQQhwlgwWTcd1Q1lxDkCQjw47TqMxV1uFcjHqoR
         vGTVLjyW4g99q+TJjBj9d0J04N947gWBx0mkJ1bk8P2gxfiz3eOdhfh8bFoVJ4Gujgbx
         HcGfjeKMOFyqU3lpilK6FJf941F6Fm1T86gCMcJ22Yz6LssJeMu0QQzZrp8QVkNQI4r6
         KaN0ZhVWsDVvq0q5hiV5+0Vr9vcPwD4pCqkGjYAoNMDy9+qNPqSlu5X/i8y4QEgx3uLI
         +MCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9EMh8wUgn0IgQJLSLJ0VUslGZv8eXjoOaloL2TpWxi0=;
        fh=HKe9D3xSSI5XFk9QMr4Mu72d93kMJVfOn4KxPOgpBPg=;
        b=AqiZXY6lP9z+LolZpECuWB3slLhsEjepXjCaS40tTwgWq9K6V3JHPMXIRaeZ2hMUtK
         ecb8Ea0gEigrDbskEpfNr7kBRB/9oW30aFRN6lJ7PvZlTX58qQuWgJVRiLB7fmRuMVRK
         S3/IHm7jLX9uswBtj5fu1fefgt1qfeOh53h7C9qywpcTyg9cVZUUngOPmigTY4I5bBC7
         SOrO6Gtl2HFWb6hcs5cksKpvp0Q6cwr8dGlN2eM4asYhKyU2mPrREVY6SGOLeqllVcdx
         MPqdpxk+HJExTewXdVOig5yzpaKw3pmwS8Nl3B3Sj5iDABwafmz3lWcAZt+rN27OjNFa
         9uqw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772623529; x=1773228329; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9EMh8wUgn0IgQJLSLJ0VUslGZv8eXjoOaloL2TpWxi0=;
        b=S/42Vk4vH+Pdo/oOMYYEQVLIVy306vsKQP3gwj2VCnZoca7DWUCmTn2U9KYLTQAOxj
         jbw83dIDqD3Vlp/kas8F/Fam5hh+er/Qr8MllvPQYbE/b4FlOFG0prX8VcRIX5MIKmZ8
         hFXXh9lGGATafuN62nzYHLre+BgH+oSmkwjW6G10wI2p0zuSk51KiMuiDXj5YY5JD/+X
         U2HcJp0PhFyiSvGpSVama+dPYG897/fNpKGZpxTNtkNxq5OA7pk0CYjn6SEZ812jTZrC
         QvweyGOKFiCI2H8Fewf7GAYp3LnhlnXQQWnKUdHR8gmbnD3/NL03yIgk8XCXcOUAs93t
         2ezA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772623529; x=1773228329;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9EMh8wUgn0IgQJLSLJ0VUslGZv8eXjoOaloL2TpWxi0=;
        b=ViI87Urvf9q1yZitkKn3rLkBLxVcG0FjArOBLuED0LPa2nej0D6DmULCEVyFk1n245
         5HIDvuLG6sx/vmX88+BpYu3b/vu+fpN8z5uXnIcxR6dUVV0bzuwV24v7G0D5xveN7zId
         r+djigVxtVp3Dw9Pj8q8TMHda6nvfNgDPyqW3VpZutQtuUJIFKItTHtO2WDice0kvtPU
         mHT9iF5uly2kZJyvmrBJI7mpj7Y2YdjseXpluKrVZWlv1f/+q9mLn2eu70SkrDBT6hNI
         azaZ52lreKJxpDrbBi2PskCFsEwHJszJinSKzMZMbnmPkeNUbPE5AKnG5Etv1YWTTv8E
         xpPg==
X-Gm-Message-State: AOJu0Yw54jNQ2FNOqT6LwDtpPPVmvqdV2GOCrMvAgPLhQ4WjFPBErKTs
	+WhZT2CxM5ixYNdYGbLPj3IraUlgTLH8LowdkQEMyP6ylEjovy0hTk4YnAzZcb2297fnc9kJkdm
	6BbjCfR/7bGdpSP2O67DuUgWN7xUAQKJHFydz/BMQpg==
X-Gm-Gg: ATEYQzxCzq2nI75y4DfwMA1Pg99D3hpKSdYI8PMmbHVjkOLPhmMjebjqYuUS/mQNMpk
	n23IQSPsV/bnnLqxdyc4SXS8kBSUQBChkTyY02itJJDcFMpoWydp+GjS2iaYeCEHLkvi/X83m5c
	qzpj0GfxqRGOktx7QUmISb8uA0W5p6MTts9jbZVfAUEiXQeCu8kz2CJQblDlmIfAC2NSVlT3LXu
	7oRvxnMPYmDnyUaaCPsgdNQ/5Lo6SlpCgZ5y27OCjmgn80MkllJV/g0/RnsffCoHuIlfmyrMc0V
	n/7JtY8n
X-Received: by 2002:a2e:9659:0:b0:38a:1eb8:b435 with SMTP id
 38308e7fff4ca-38a2c7c6255mr9876541fa.38.1772623528965; Wed, 04 Mar 2026
 03:25:28 -0800 (PST)
MIME-Version: 1.0
References: <20260130163102.51757-1-macroalpha82@gmail.com>
In-Reply-To: <20260130163102.51757-1-macroalpha82@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Mar 2026 12:24:52 +0100
X-Gm-Features: AaiRm51vwLJRv4uMlhHz56lEDfVHnRw03Pv2ZO-dJihRDJQnOhTHepTLjORfXlA
Message-ID: <CAPDyKFpCp+EJRmaPhSZQ0fmitM=+0ocGzjKx172Nv9UhKH8FAg@mail.gmail.com>
Subject: Re: [PATCH V2] pmdomain: rockchip: quiet regulator error on -EPROBE_DEFER
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, 
	jonas@kwiboo.se, pgwipeout@gmail.com, finley.xiao@rock-chips.com, 
	kever.yang@rock-chips.com, shawn.lin@rock-chips.com, 
	sebastian.reichel@collabora.com, heiko@sntech.de, 
	Chris Morgan <macromorgan@hotmail.com>, Diederik de Haas <diederik@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_032531_267973_17D80459 
X-CRM114-Status: GOOD (  17.82  )
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

On Fri, 30 Jan 2026 at 17:33, Chris Morgan <macroalpha82@gmail.com> wrote:
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> Change the dev_err() to dev_err_probe() under rockchip_pd_power_on()
> to prevent errors early in the boot process when the requested
> regulator is not yet available. This converts errors like the following
> to debug messages:
>
> rockchip-pm-domain fd8d8000.power-management:power-controller: Failed to enable supply: -517
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Tested-by: Diederik de Haas <diederik@cknow-tech.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Changes since v1:
>  - Simplified return to single line
> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 997e93c12951..6d3fb18f4ab3 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -705,10 +705,9 @@ static int rockchip_pd_power_on(struct generic_pm_domain *domain)
>         int ret;
>
>         ret = rockchip_pd_regulator_enable(pd);
> -       if (ret) {
> -               dev_err(pd->pmu->dev, "Failed to enable supply: %d\n", ret);
> -               return ret;
> -       }
> +       if (ret)
> +               return dev_err_probe(pd->pmu->dev, ret,
> +                                    "Failed to enable supply: %d\n", ret);
>
>         ret = rockchip_pd_power(pd, true);
>         if (ret)
> --
> 2.43.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
