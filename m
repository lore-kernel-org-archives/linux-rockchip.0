Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B228CAC5B0
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Oct 2025 17:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+WPDZkyq9VGoHJPkAnKm2+BVN0ZwilV7fosqwwBxpKo=; b=h/eGfL6EwMCNjt0k7UAaZa/zEe
	6YxZENa9kTXMKD/VlULL52D0qj/qEy8K+L5olNrhML3fQNyTtb4ZW7tnXVp+ZPzDqxoAvCjoYc+Wt
	a3h0E6aGEsKGX2YVRHEGidw48CSv4juLWf8GKRJqcpgOMzwlERjGowb0H4sHK/jQuGGkSYGkRF0tb
	dcOVcuaBjE6i7AKJE3onTZlYqhGR3B9FXZBTPLLSvsfWPTxhhPrlfK+nh5aOmUjoplKik8dOPUNiE
	HkJE20+MupSIMnfbyChuUn7OKd4NUAOplwOgrZ2I6RgFj3UDgpjltqm5T3gai39awCbjnmC9wBYPW
	ykc8O/Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4jQ3-0000000Cofl-3SRB;
	Fri, 03 Oct 2025 17:18:11 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4jQ0-0000000CofL-3jIm
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Oct 2025 17:18:10 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1759511871; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TnERqNCTy/54XPivpX1/MlX1/RgWkwvCDol/EMkcbrSBf4tf7B4ISjWGcmGliEUxZjfi207TGWDA2mmSrPXhejb4JOo3qk16m5H311r5ACv+J+JGSnIp3IR8eq46dD8bMoJC5kOoNgq5ZLp0jqnNUrKoZ0CaAxO9wUYrMMDDywo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1759511871; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=iTtxPATi9X+XvuAEmT4uh9oE4J1XaPTtXNeO2l6zmTk=; 
	b=nh0o74xoKD5iq1r7PHSpJDKS2V7KfUhAqKrDl64Mq8JgLTMa1tO3MS/8KFi+pobYvzLlTFJAr2wv10ODVaK7ghPTdE8+TPJ0fVbhOvgDavHx5x1wJ7xNB6kxLVaolwnZ40E/PWMhaLALjjV1cuKBeGndF18dWEueZAgHn5mKsXs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1759511871;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=iTtxPATi9X+XvuAEmT4uh9oE4J1XaPTtXNeO2l6zmTk=;
	b=a97iW0EtYorh7sTweebXdr8abJ84fFCEKrgWVsvyY4v9UDvmft93auNR7IfxK3Uz
	NnJiQfmFHM5AzH7xh4byMZpMk0VELgMniAL/OPWD+kK69tDLUBl+cmlgS9DtA0sOdJs
	nIUingt5sOG19xNetBkX6gL21D+Enf+00uIMO1gg=
Received: by mx.zohomail.com with SMTPS id 1759511869830463.50099136809615;
	Fri, 3 Oct 2025 10:17:49 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 366A8181992; Fri, 03 Oct 2025 19:17:46 +0200 (CEST)
Date: Fri, 3 Oct 2025 19:17:46 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ming Lei <ming.lei@redhat.com>
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org, 
	Hannes Reinecke <hare@suse.de>, Yu Kuai <yukuai3@huawei.com>, kernel@collabora.com, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH V2 5/5] blk-mq: Replace tags->lock with SRCU for tag
 iterators - Rockchip UFS regression
Message-ID: <pnezafputodmqlpumwfbn644ohjybouveehcjhz2hmhtcf2rka@sdhoiivync4y>
References: <20250830021825.2859325-1-ming.lei@redhat.com>
 <20250830021825.2859325-6-ming.lei@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250830021825.2859325-6-ming.lei@redhat.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.3/259.478.93
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251003_101808_993146_E4BF4D0F 
X-CRM114-Status: GOOD (  15.80  )
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
Content-Type: multipart/mixed; boundary="===============0523566104775476530=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0523566104775476530==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2wwem7qjsaiw637q"
Content-Disposition: inline


--2wwem7qjsaiw637q
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH V2 5/5] blk-mq: Replace tags->lock with SRCU for tag
 iterators - Rockchip UFS regression
MIME-Version: 1.0

Hi,

On Sat, Aug 30, 2025 at 10:18:23AM +0800, Ming Lei wrote:
> Replace the spinlock in blk_mq_find_and_get_req() with an SRCU read lock
> around the tag iterators.
>=20
> This is done by:
>=20
> - Holding the SRCU read lock in blk_mq_queue_tag_busy_iter(),
> blk_mq_tagset_busy_iter(), and blk_mq_hctx_has_requests().
>=20
> - Removing the now-redundant tags->lock from blk_mq_find_and_get_req().
>=20
> This change fixes lockup issue in scsi_host_busy() in case of shost->host=
_blocked.
>=20
> Also avoids big tags->lock when reading disk sysfs attribute `inflight`.
>=20
> Reviewed-by: Hannes Reinecke <hare@suse.de>
> Signed-off-by: Ming Lei <ming.lei@redhat.com>
> ---

This patch landed in the last few hours and I now see the following
fatal error on the Radxa ROCK 4D (most likely Rockchip UFS in
general). After reverting this patch the error is gone and things
are working as expected:

[    2.713204] CPU: 7 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.17.0-g472=
ea195cdf3 #1 PREEMPT
[    2.713956] Hardware name: Radxa ROCK 4D (DT)
[    2.714342] pstate: 60000005 (nZCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=
=3D--)
[    2.714955] pc : __srcu_read_lock+0x30/0x80
[    2.715341] lr : blk_mq_tagset_busy_iter+0x44/0x300
[    2.715779] sp : ffff80008005b8b0
[    2.716073] x29: ffff80008005b8b0 x28: 0000000000000000 x27: 00000000000=
00000
[    2.716711] x26: ffff0000ca718898 x25: ffff0000c1595410 x24: ffff0000ca7=
180e0
[    2.717348] x23: ffffa77abec3f8e0 x22: ffffa77abf5dce68 x21: ffff0000c15=
95410
[    2.717984] x20: 0000000000000000 x19: 0000000000000000 x18: 00000000000=
0000a
[    2.718620] x17: 000000040044ffff x16: 00500074b5503510 x15: 00000000000=
00000
[    2.719256] x14: 0000000000000000 x13: 303d657461747320 x12: 74736f48205=
34655
[    2.719892] x11: 0000000000000058 x10: 0000000000000018 x9 : ffffa77abf0=
96cd0
[    2.720529] x8 : 0000000000057fa8 x7 : 000000000000010a x6 : ffffa77abf0=
eecd0
[    2.721165] x5 : 0000000000000000 x4 : 0000000000000001 x3 : ffff58893ef=
c6000
[    2.721800] x2 : ffff0000c0268000 x1 : ffff58893efc6000 x0 : ffff0000ca7=
18188
[    2.722437] Call trace:
[    2.722658]  __srcu_read_lock+0x30/0x80 (P)
[    2.723037]  blk_mq_tagset_busy_iter+0x44/0x300
[    2.723442]  scsi_host_busy+0x38/0x70
[    2.723774]  ufshcd_print_host_state+0x34/0x1bc
[    2.724178]  ufshcd_link_startup.constprop.0+0xe4/0x2e0
[    2.724644]  ufshcd_init+0x944/0xf80
[    2.724967]  ufshcd_pltfrm_init+0x504/0x820
[    2.725344]  ufs_rockchip_probe+0x2c/0x88
[    2.725706]  platform_probe+0x5c/0xa4
[    2.726039]  really_probe+0xc0/0x38c
[    2.726360]  __driver_probe_device+0x7c/0x150
[    2.726749]  driver_probe_device+0x40/0x120
[    2.727122]  __driver_attach+0xc8/0x1e0
[    2.727466]  bus_for_each_dev+0x7c/0xdc
[    2.727808]  driver_attach+0x24/0x30
[    2.728128]  bus_add_driver+0x110/0x230
[    2.728471]  driver_register+0x68/0x130
[    2.728815]  __platform_driver_register+0x20/0x2c
[    2.729236]  ufs_rockchip_pltform_init+0x1c/0x28
[    2.729654]  do_one_initcall+0x60/0x1e0
[    2.729999]  kernel_init_freeable+0x248/0x2c4
[    2.730394]  kernel_init+0x20/0x140
[    2.730712]  ret_from_fork+0x10/0x20
[    2.731038] Code: d2800024 aa0503e1 d538d083 8b030021 (c85f7c27)
[    2.731574] ---[ end trace 0000000000000000 ]---

Greetings,

-- Sebastian

--2wwem7qjsaiw637q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmjgBTUACgkQ2O7X88g7
+pqUGA/+PcQ72uh1GqNF+Bk3QvZxnVVh4F7iuJQm5TgSHYstW3fKOyugprPnZSex
dF4sOWOGP6VDsaIXx6t8L01oz9pv2GEgxwsWvnsZW5zF8CTY3oYDs4nP9qNMtB1z
PbscQdNHJluIfzMfB3n4Yjffci8sIi3WbshZXg79BBXmauxVkUtWNpFoZskulIvr
NAUpAWat2wn0YCXKYZNW73/g011yGlE58F3ayA2YstDBbqUhAWZHFICT2Gugcdo7
xQLHmt9ahZpusNJ7+ngTIlAITOFdbuz5mMCg9+/Yv2KrX0a4x6NDk+8Ie4Edb5xa
5stx76S8rkLJtDHSNly+uK9F9xCC6pUNzsV/4TSnBsrdbYySCbyLumvs+08ci8+9
Hkosc6r6I05gDpkb060XPM6up24snDiCDc0TvCb+PFXKWF5bCDUSDGrX/RpYg5ON
dbKC9yAABj5Le9ky3hpLhUgWsnhQA4nVIEVuZEvp0rUGi+7D0FGKnKa2E40/l1cG
VXXRIvJvLCtsdaARSeQtomMk9o395zCX6IRkNKfQmO1ymjq5kKXIqtAKR6OQM1xQ
AKpk3iTydbU48nVCavssKoEShzeZOmPB6uTxWSK6IJzbetDNG66oEBdcX4yNWt6o
POdZsTNAAYctjwDRb3evwgzOmHMmT3+3c6VTou9CmT7bppMgZlQ=
=UztC
-----END PGP SIGNATURE-----

--2wwem7qjsaiw637q--


--===============0523566104775476530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0523566104775476530==--

