Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BA7ECA1015
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 19:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSWXNCxcIMOojLfGFz0lKoBK69uLY/aw8tl3Z9EI6sI=; b=2vRSalLI9EvG8y
	PWITZGjS7DByh7p0HPW6b3fITvFgv6U2LjFzB0DByKYrLhVxWqQ0YXh9ODs0wm+7XuAAy0NKye0pY
	eGSEKCNq0TdltxCfGUUuVNdmX9SgKI7O3HSajx3Q444qitu/bhuNFfRwDa9/B7sCi7lzSlUPWblsl
	QkAC5NYqrzz2x3Cb4uVa2++FcyADI+FdaDEcMm/Ylphu0g/u+6/exeXPA+TiKJ38f8ON6viVQvpee
	5ELF/RNTxtot1hlgMMLRIwFLjoK6xlm4N8GZouK73u3WXrBFj6LprOKW4hyEH6HOdciwQqiaft69q
	kOa17zU9rdc4ZFB8259A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuG1V-0000000E463-1c2Q;
	Thu, 04 Sep 2025 19:53:33 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuC7l-0000000CbgW-2sfL
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Sep 2025 15:43:46 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1757000609; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Ngqd/d0J8XSNUO/KtRPyFJJL623lECHioy3AP5gZFL43wkQLftfAuO7hfafcScy0kCH8Tl6clO8Io/jVh/b8dqnlrmIZZtaCjZTkqaEyIRmyzKgaBxZiS4nJPS9keTbLYw0RGaluPAAihLmXGZnrnoiVxRLt1UVeJ9CA77F2XDc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1757000609; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=tIoaxid+0bjo9EUFBk5X1+Q8h8mftkxRLwsEL6mj4dA=; 
	b=k4h3NGVH50FrtpetX2RjCfeH2BMVFoyp6Axu3XhkusBmrJd5AphR3X1UIaDYal2PpP+qqZjZykMqJjzxG3qU2moSyu6I7mAvn/AVFTKPl400vEX+3FyBCauuHFOO0VK2ce1t3U0S0WfGuVQIP2QuPWv7hkIWRFbigRkTolmeVo4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1757000609;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=tIoaxid+0bjo9EUFBk5X1+Q8h8mftkxRLwsEL6mj4dA=;
	b=EJIdeJ+rM8uagbR+jpN2kBACdRK4+cQwL2RYwsbqQpS1r6DZJVTRx8mZhZrtQNeV
	oa9F/omLsN4YPTDzXBp5HweVYxS6gFoou8IdvJA5RGzSq6ychuMHGtrPsLp7y9hQ/HW
	PGhveIK+1HoLAn5XoqIo9PEDHS28wqJQemhA1BoY=
Received: by mx.zohomail.com with SMTPS id 175700060827947.89453074437267;
	Thu, 4 Sep 2025 08:43:28 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH] pmdomian: core: don't unset stay_on during sync_state
Date: Thu, 04 Sep 2025 17:43:23 +0200
Message-ID: <3556261.BddDVKsqQX@workhorse>
In-Reply-To: <3332408.jE0xQCEvom@workhorse>
References: <20250902-rk3576-lockup-regression-v1-1-c4a0c9daeb00@collabora.com>
 <CAPDyKFpAOLiBOoAhv+GQcobU_g_AWrB9iyOGmodROLtRmR30JA@mail.gmail.com>
 <3332408.jE0xQCEvom@workhorse>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_084345_797352_8B3AD732 
X-CRM114-Status: GOOD (  42.99  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thursday, 4 September 2025 14:50:13 Central European Summer Time you wrote:
> On Thursday, 4 September 2025 11:17:01 Central European Summer Time Ulf Hansson wrote:
> > On Tue, 2 Sept 2025 at 20:23, Nicolas Frattaroli
> > <nicolas.frattaroli@collabora.com> wrote:
> > >
> > > This reverts commit de141a9aa52d6b2fbeb63f98975c2c72276f0878.
> > 
> > I can't find this commit hash. What tree are you using when testing this?
> > 
> > Are you trying to revert 0e789b491ba04c31de5c71249487593e386baa67 ?
> 
> Probably, I did the revert on a rebased branch and then rebased the revert
> onto v6.17-rc4 so it likely is the wrong hash here. I'll fix this in v2 if
> there is a v2 (it might actually become a different patch, see huge text
> below, sorry!)
> 
> > 
> > >
> > > On RK3576, the UFS controller's power domain has a quirk that requires
> > > it to stay enabled, infrastricture for which was added in Commit
> > > cd3fa304ba5c ("pmdomain: core: Introduce dev_pm_genpd_rpm_always_on()").
> > >
> > > Unfortunately, Commit de141a9aa52d ("pmdomain: core: Leave powered-on
> > > genpds on until sync_state") appears to break this quirk wholesale. The
> > > result is that RK3576 devices with the UFS controller enabled but unused
> > > will freeze once pmdomain shuts off unused domains.
> > >
> > > Revert it until a better fix can be found.
> > 
> > This sounds a bit vague to me, can you please clarify and elaborate a
> > bit more so I can try to help.
> > 
> > What does "UFS controller enabled but unused" actually mean? Has the
> > UFS controller driver been probed successfully and thus its
> > corresponding device been attached to its PM domain?
> 
> It means the UFS controller driver has probed, but does not find a
> UFS storage chip connected to it, and therefore reports a probe
> failure. This is a possibility on single-board computers like the
> Radxa ROCK 4D, where the UFS storage is a separate module that plugs
> into some headers.
> 
> > Moreover, the behaviour of dev_pm_genpd_rpm_always_on() is orthogonal
> > to what 0e789b491ba0 ("pmdomain: core: Leave powered-on genpds on
> > until sync_state") brings along with its corresponding sync_state
> > series for genpd [1]. Again, more information is needed to understand
> > what goes wrong.
> 
> [snip very long rubber duck debugging session]

Okay so I believe I have found the root cause of the regression. UFS is
innocent, disabling UFS just happens to avoid it due to how the timing of
things works out.

The real issue is that the NPU power domains on the RK3576, which are
currently unused, have an undeclared dependency on vdd_npu_s0.

Declaring this dependency with a `domain-supply` and adding the
necessary flag in the rockchip PD controller to use it does not solve
he problem. This is because the rockchip PD controller cannot acquire
those supplies during probe, as they're not available yet and their
availability depends on the PD controller finishing probe.

That's why it acquires them in the PD enable callback, but the NPU
PDs are never enabled because they're unused.

This worked fine when unused PDs were still turned off quite early, as
this meant they were turned off before regulators. Now the unused
regulators are turned off before turning off the unused PDs happens.

I don't really see an easy way to fix this with a patch that's fit for
an rc cycle. We can't request the regulator early or even just add a
device link, as the regulator is not around yet.

Marking vdd_npu_s0 as always-on would be abusing DT to work around a
Linux kernel shortcoming, which is a no-no.

What we need is either a way to register with pmdomain core that
certain PDs need a late init for additional supplies, which is then
called before any of the unused regulator power off functionality is
invoked by the regulator core.

Any ideas?

Kind regards,
Nicolas Frattaroli


> 
> Kind regards,
> Nicolas Frattaroli
> 
> > 
> > Kind regards
> > Uffe
> > 
> > [1]
> > https://lore.kernel.org/all/20250701114733.636510-1-ulf.hansson@linaro.org/
> > 
> > >
> > > Fixes: de141a9aa52d ("pmdomain: core: Leave powered-on genpds on until sync_state")
> > > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > > ---
> > >  drivers/pmdomain/core.c | 4 ----
> > >  1 file changed, 4 deletions(-)
> > >
> > > diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
> > > index 0006ab3d078972cc72a6dd22a2144fb31443e3da..4eba30c7c2fabcb250444fee27d7554473a4d0c2 100644
> > > --- a/drivers/pmdomain/core.c
> > > +++ b/drivers/pmdomain/core.c
> > > @@ -1357,7 +1357,6 @@ static int genpd_runtime_resume(struct device *dev)
> > >         return ret;
> > >  }
> > >
> > > -#ifndef CONFIG_PM_GENERIC_DOMAINS_OF
> > >  static bool pd_ignore_unused;
> > >  static int __init pd_ignore_unused_setup(char *__unused)
> > >  {
> > > @@ -1393,7 +1392,6 @@ static int __init genpd_power_off_unused(void)
> > >         return 0;
> > >  }
> > >  late_initcall_sync(genpd_power_off_unused);
> > > -#endif
> > >
> > >  #ifdef CONFIG_PM_SLEEP
> > >
> > > @@ -3494,7 +3492,6 @@ void of_genpd_sync_state(struct device_node *np)
> > >         list_for_each_entry(genpd, &gpd_list, gpd_list_node) {
> > >                 if (genpd->provider == of_fwnode_handle(np)) {
> > >                         genpd_lock(genpd);
> > > -                       genpd->stay_on = false;
> > >                         genpd_power_off(genpd, false, 0);
> > >                         genpd_unlock(genpd);
> > >                 }
> > > @@ -3522,7 +3519,6 @@ static void genpd_provider_sync_state(struct device *dev)
> > >
> > >         case GENPD_SYNC_STATE_SIMPLE:
> > >                 genpd_lock(genpd);
> > > -               genpd->stay_on = false;
> > >                 genpd_power_off(genpd, false, 0);
> > >                 genpd_unlock(genpd);
> > >                 break;
> > >
> > > ---
> > > base-commit: 5cc61f86dff464a63b6a6e4758f26557fda4d494
> > > change-id: 20250902-rk3576-lockup-regression-5b1f1fb7ff21
> > >
> > > Best regards,
> > > --
> > > Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > >
> > 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
