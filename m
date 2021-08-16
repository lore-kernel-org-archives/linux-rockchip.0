Return-Path: <SRS0=fzRm=NH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EADBC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 12:01:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E1A2C61BF9
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 12:01:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E1A2C61BF9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=No7+E6OxW2AibXXLio6mLB+niG4npAVB55A2BvpKl/c=; b=0RuLbN5QBmK3QGEQfywf95qcYB
	IrKCSwl8C2STbl3h+ffJ8VgCNwWCBgzTJ3Y7Ts2jAlG7e81bnWG5n2GPwZUmk3ZKXMuLFAxomYLPW
	RTWifH0MWeO8UUnbwnNvMRBGhEmI7kk8Bg1Q0yRjVI+28WHcUvlc4HHBHTW0uYeFW7I8pjSmCWGeF
	JloF6pEMCvWsS/rfXrM5ZWwCNPmhLp3NWEyBFxHpVY7S18B9a4lmBdDimbzTMpCeUi6rg+rCmzFfl
	7HtaTKLDN7m2wBPZodUnjA31dD+jKbtaiQol9zvxgO+XYzH02/u3t/ymubXDaAiQjB7gNwuPo12Kx
	ybZSw+7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFbIy-00Gv10-NJ; Mon, 16 Aug 2021 12:01:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFbIw-00Gv01-7F
 for linux-rockchip@lists.infradead.org; Mon, 16 Aug 2021 12:01:23 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9744361CA7;
 Mon, 16 Aug 2021 12:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629115281;
 bh=oFhyqYhu/cnaPtB7Ouj9mKCaRNEd2PP0TOXALGyaCoE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b3ZV2Y9TOtzj/FOVEi0b79qKUyfuhOnBvQvd3IUhorRuCoO5REDadgLL83+mjmWWY
 FhewmYHn/C1tNkLkEQNL5Qc5VIXzuulETHmo9ZbM7AsqIZaebQFye6pOqxHSOpvEex
 fxqG9krozeYu8SJK9xmArkljfkTRzmYLDXjfxoFcGeDdaCAmH4Mg8nJfXh79uuT9lc
 kwTC1ES9pqcLvtamSs8Dj2em+qWftE2s8rwkavXzzZXTgCUWwHbiFM5hUvweVn5lmp
 cEYlfy2fY343H62H7aACSp/8zgt8K61GZLPqM1ike4N7jnTqLa3MvcvD3tr3/QChFq
 UH64sLb23pMyQ==
Date: Mon, 16 Aug 2021 13:00:59 +0100
From: Mark Brown <broonie@kernel.org>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: lgirdwood@gmail.com, ulf.hansson@linaro.org, lee.jones@linaro.org,
 zhangchangzhong@huawei.com, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] regulator: core: notify regulator enable with the
 voltage value
Message-ID: <20210816120059.GA4253@sirena.org.uk>
References: <20210816032003.1162779-1-jay.xu@rock-chips.com>
 <20210816032003.1162779-3-jay.xu@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20210816032003.1162779-3-jay.xu@rock-chips.com>
X-Cookie: Allow 6 to 8 weeks for delivery.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210816_050122_326230_F6455B8D 
X-CRM114-Status: UNSURE (   9.96  )
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
Content-Type: multipart/mixed; boundary="===============8932073449222464013=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8932073449222464013==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline


--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 16, 2021 at 11:20:01AM +0800, Jianqun Xu wrote:

> +			ret = _regulator_get_voltage(rdev);
> +			if (ret < 0)
> +				ret = 0;
> +
>  			_notifier_call_chain(rdev, REGULATOR_EVENT_ENABLE,
> -					     NULL);
> +					     &ret);

This is going to be really expensive for devices without a cache and
it's going to be *very* rarely used if ever.

--MGYHOYXEY6WxJCY8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEaU3oACgkQJNaLcl1U
h9Ammgf/elam/sdPO7wekIt2w26E2ss+XgyM4ZNWpaZK7SutyRMXd3715wC2W7FK
zlCZtzHBG2wfbtOxAMG+pZ9JzuO+dEstWnj8tn+QhSkfJxixKc12tSwMuAChQjQH
ODoULsO2FhjUcAByLnfWe2sHSIMxn48t0LQ7QsIyFM05nDSHZfPfX7KQ0rZW+6y/
8QnknnvLfnn0pvPMYbg/Iy71DVu/SPwYncBhFF5aIl7+8axSA0/QxVxdECEd9AkW
yXcquGNF3728F/MVNo2voyk/G96rUf4nXv+0ibROJYsPPo1gu97VnQ7gpk+qv5pC
u/7b35pBWnb6lKBINnO2InBGJdJ8dA==
=6JaO
-----END PGP SIGNATURE-----

--MGYHOYXEY6WxJCY8--


--===============8932073449222464013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8932073449222464013==--

