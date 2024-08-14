Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B4B6C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 19:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IH9rpJWTZMJkyPSYl/oIB30ofzgYWMzqFWx7J6CxMAw=; b=vcis0i5zDQYQmbZSZP8mskMXGk
	XLOEzmrpW/J1nuT4KQQOXbpBYEAUxf74F4ohjvXm3+3n11sFaq9QQ8EfYvDY7B1FJKRvJjjP3ENzP
	/CCCCWpJEAul5lLmaDOOWZYMtxgr6jEdOeL3FkCu0KB9MY7aIgjbcb/ZGDHuPAFEcVAwx7LDr1bAX
	vV6ynAjAS0mAVZKB4RJKxD/SRGFwFDhl7lEV9yjv8RgNpJl0JHZapV1JkTSIcMun0Rjhdc88hTtLt
	ATqEMeWj9D8s+O7tktqRUWXA9a66IlJKsQRlN+CH6Y3Wo59+3JsLS4HS9MYINTtK799NnptDlOL/F
	+pAVKkjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seJI6-000000080VA-0aFG;
	Wed, 14 Aug 2024 19:04:14 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seJI3-000000080U4-0CaH
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 19:04:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1F979CE1A99;
	Wed, 14 Aug 2024 19:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8603EC116B1;
	Wed, 14 Aug 2024 19:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723662247;
	bh=7Xz6pBG+qSrK50w3VXgHUrQmAhO3oS7A6lvUtT+QsgE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BEghxd/ZzWxAP4IrxZFx2XrMQ5iaKO0HhEBNXld9/4cJNju8EqGSmoYfbox21bbZ8
	 KyTlKX9bl+ul433U53mhR9iwStARk4cY3YlTz7SmpeDus/w5ju7DmhwRv005RcDqFs
	 sbY/2Dp+n+SPyLdkSc3o3ftJgSG2gSff9Nuc5P+LfE8ouGfHcm+64b4Kt8vjOc25Ur
	 a/iqgH+Ii29LPZGUUAMRyNYRunsDc/cdW22OQSYLzxvVUaa52XyAKjXFGTOM/79Lc/
	 8IdhA8DGNUAw9umU5+0JMHn+CPnkAABPgGBYbbkYw2D9bRV+sY34Ltbc7H+8e6GIWm
	 E+4UNM5+hOUog==
Date: Wed, 14 Aug 2024 20:04:02 +0100
From: Mark Brown <broonie@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RFC] regmap: maple: Switch to use irq-safe locking
Message-ID: <4a8c9f85-3785-4cbd-be9b-dc6da9bd7324@sirena.org.uk>
References: <20240814-regcache-maple-irq-safe-v1-1-1b454c5767de@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240814-regcache-maple-irq-safe-v1-1-1b454c5767de@collabora.com>
X-Cookie: The second best policy is dishonesty.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_120411_460512_C722F366 
X-CRM114-Status: GOOD (  29.11  )
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
Content-Type: multipart/mixed; boundary="===============7645283424917960065=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7645283424917960065==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="E9iZTvKWBfXQlXYI"
Content-Disposition: inline


--E9iZTvKWBfXQlXYI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 14, 2024 at 01:20:21AM +0300, Cristian Ciocaltea wrote:

> Commit 3d59c22bbb8d ("drm/rockchip: vop2: Convert to use maple tree
> register cache") enabled the use of maple tree register cache in
> Rockchip VOP2 driver.  However, building the kernel with lockdep support
> indicates locking rules violation when trying to unload the rockchipdrm
> module:

> [ 48.360258] ========================================================
> [ 48.360829] WARNING: possible irq lock inversion dependency detected
> [ 48.361400] 6.11.0-rc1 #40 Not tainted
> [ 48.361743] --------------------------------------------------------
> [ 48.362311] modprobe/685 just changed the state of lock:
> [ 48.362790] ffff0000087fa798 (&mt->ma_lock){+...}-{2:2}, at: regcache_maple_exit+0x6c/0xe0

Please think hard before including complete backtraces in upstream
reports, they are very large and contain almost no useful information
relative to their size so often obscure the relevant content in your
message. If part of the backtrace is usefully illustrative (it often is
for search engines if nothing else) then it's usually better to pull out
the relevant sections.

> The problem is that the regmap lock could be taken by an IRQ context,
> interrupting the irq-unsafe maple tree lock, which may result in a lock
> inversion deadlock scenario.

> Switch to use irq-safe locking in the maple tree register cache.

I'd have a bigger question here which is why the driver is using a
dynamically allocated register cache in a hardirq context, especially
with no defaults provided?  Anything except the flat cache might do
allocations at runtime which might include in interrupt context unless
the caller is very careful and since the lockdep warning triggered it's
clear that this driver isn't.  The core will be doing atomic allocations
for MMIO but that's not something we want to be doing as a matter of
course...  I would generally expect drivers to try to ensure that any
registers are cached outside of the interrupt handler, usually by
specifying defaults or touching all registers during setup.

Without having done a full analysis it also looks like the marking of
volatile registers isn't right, it's not immediately clear that the
interrupt status and clear registers are volatile and they ought to be.
None of the registers accessed in interrupt context look like they
should be cached at all unless there's something triggered via the DRM
vblank calls.

It might be safer to fall back to the rbtree cache for this device since
rbtree doesn't force an extra level of locking on us, though like I say
I'm not convinced that what the driver is doing with caching is a super
good idea.  Though probably what the driver is doing should work.

> Fixes: f033c26de5a5 ("regmap: Add maple tree based register cache")

This is obvious nonsense.  If anything it'd be the conversion to maple
tree, though there were issues before then as it was a conversion from
rbtree that was what added the extra locking.  Please only add Fixes
tags if there's a clear link between the issue and the commit being
pointed at.

> +#define mas_lock_irq(mas, flags) spin_lock_irqsave(&((mas)->tree->ma_lock), flags)
> +#define mas_unlock_irq(mas, flags) spin_unlock_irqrestore(&((mas)->tree->ma_lock), flags)

It's clearly not appropriate to add these outside of the maple tree
code, especially with this naming - this should be with the other
mas_lock() stuff in the maple tree header so added as a separate commit.
It also doesn't seem like a super good idea to unconditionally force all
maple tree users to save interrupt state whenever they need to do
allocations, the spinlock is a bit heavyweight already and this just
escalates it.

My first thought here is that if we've got a regmap using spinlocks for
the regmap lock and a maple tree cache we should arrange things so that
the maple tree lock is used for the regmap's lock.  That would however
involve some unpleasant abstraction violation, and possibly some macro
fun since we'd need to elide the locking from the cache itself when
using the same lock at the regmap level.  I think that's going to be a
case of choosing the least unpleasant option.

--E9iZTvKWBfXQlXYI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAma8/6EACgkQJNaLcl1U
h9DIagf/YgQj///4gFrd6tFfvVari6Z6rZJOh2h+HN/KaPaH0OCNpuFaZm3nC84Q
4ko3LC3XiTmofedbIYWjxjWSsA5Nc/wG9pjyjBLgTbTAxmR+L4vOjpsX4jaqUtX4
CRkE/zrizlh345Ku9uMMeHvuaXVU4NP9SKO06T8Qh2oBwaVvS0pkofunKl/1Ci2s
pmEv2oO77YwXRbIe8SFY6EBOLw/6TeyDYra4wLeb+29RW0tLcIne2ZRsJ9gAt+rU
JkeA5twV+SUIUAgYLUjNsGC8suOZsCzBGRLEinZb7lbTAeLS1MZrgsH6Ow/zgOfk
IqFzO0ks1cyt/CTMTYye3jRG/iIiIQ==
=7uYG
-----END PGP SIGNATURE-----

--E9iZTvKWBfXQlXYI--


--===============7645283424917960065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7645283424917960065==--

