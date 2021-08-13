Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABC7C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 16:01:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 70C5560EE0
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 16:01:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 70C5560EE0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KO9iQSNHWtxbg7LHoW+gf65EX8nfwUyhnrmcv9+s/pM=; b=u9k4ufnN1SOmAbDYrx4uXOy5in
	HF1FgaSLqvKObpxblQO+ooLqkn0MufaGieUUFzfFn83LC2XIau+ZOdn7pYqMqHhbRlmz5XyhWCFSk
	YgAlvlak2F50cSEwt1cDMVGZ+fiQNK1blmOIP5zI2h+IfcPodPib54Vr/h0/7WIrK3s/v0zhj/wY4
	TOO+/0qREEdSLT5Fe3so7dcFGC3oR64W+J6cEb4VUsTgUgnVkbBA8DuigNdT6YwILIRa6lL5hUN4I
	YB/CPSmuvrs5tOv7U8j9VX6IYTF1OkhWFAHyIgj6s/4ltJKiU/s89KHl68332GnwCcf+a2WoWiO/d
	udrfegwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEZd1-00D2zP-Og; Fri, 13 Aug 2021 16:01:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEZcn-00D2vS-31; Fri, 13 Aug 2021 16:01:38 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 30C7E60FC4;
 Fri, 13 Aug 2021 16:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628870496;
 bh=eLebXlVu6RTNHtlBr3MavHA+nmxGCpm8/vDDNL6AUJE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TCPNX7RlFSfcKvVLfK2y3Jl5XFpmpFMn/kFwVRo0Yoh5n0Dt39MJ/G2VOFkSu6EaT
 81qqm+Tirad290QNC5mwKRYU1AC01XG7bh1YNmctzFD3PlIyPZIg9KwvYYaAPKPVOP
 exymlxMegRBNS7Sv1uMS4fWU20aC52D/6AGCf70RKaPModZQq+tL4MJDOhp0Zh7b0r
 zz/FnO5Glda91rNuaxbJL6z3+Px/1ru3G0HO056j2qeNaOzhkvPTdbOZWVqXdLWdDt
 s5GSNFMIzjgMoNTI/a6CTsBJ3/6nYaspQ09ogRyn+1Wm5IN2nwX0/zdoYQsRk1UlEL
 0zVjmIWLErASA==
Date: Fri, 13 Aug 2021 17:01:16 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Simon Xue <xxm@rock-chips.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, PCI <linux-pci@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] PCI: rockchip-dwc: Potential error pointer dereference
 in probe
Message-ID: <20210813160116.GE5209@sirena.org.uk>
References: <20210813113338.GA30697@kili>
 <01b7c3da-1c58-c1d9-6a54-0ce30ca76097@arm.com>
 <CAL_JsqJ4Dadf00pJxEDd14zbWyN99s1A2L4fxZSkZddeg2pV6g@mail.gmail.com>
 <81b9a25d-f12f-90e0-0b05-b5e396f14c08@arm.com>
 <CAL_JsqLWVLRDdkR62BSv69oW3QCLVebgpU1TKtxvzZmD4wuP4Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLWVLRDdkR62BSv69oW3QCLVebgpU1TKtxvzZmD4wuP4Q@mail.gmail.com>
X-Cookie: E Pluribus Unix
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_090137_192074_4141D3AA 
X-CRM114-Status: GOOD (  14.74  )
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
Content-Type: multipart/mixed; boundary="===============6178911089031811316=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6178911089031811316==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="imjhCm/Pyz7Rq5F2"
Content-Disposition: inline


--imjhCm/Pyz7Rq5F2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 13, 2021 at 10:57:44AM -0500, Rob Herring wrote:
> On Fri, Aug 13, 2021 at 8:47 AM Robin Murphy <robin.murphy@arm.com> wrote:

> > In fact it's the other way round - "optional" in this case is for when
> > the supply may legitimately not exist so the driver may or may not need
> > to handle it, so it can return -ENODEV if a regulator isn't described by
> > firmware. A non-optional regulator is assumed to represent a necessary
> > supply, so if there's nothing described by firmware you get the (valid)
> > dummy regulator back.

> Ah yes, regulators is the oddball. Surely no one else will assume the
> same behavior of _optional() variants across subsystems... ;)

It would be silly to copy the *whole* pattern!

--imjhCm/Pyz7Rq5F2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEWl0sACgkQJNaLcl1U
h9AWngf9EmuXkHFWSOYnfO7Y0ZVqCKtx2n3Z4yWOugf8kKVfrU/Jl4Vd5eE/P5gF
5OVayvHPX8JCwCtV/EPX6vQQoGbPD6rbNyWmsRkCN73iqT3WBIieZqEDmbvNo9UI
bW30zehOnqz2NuSie+qk0RZ23hLVdhEVbidMVnZjnXUtiPHR8K6e5o4ugdXBnasP
LuAzqewWfVnzglouTgPJbWu52Gf9R6TO/k1OC8UhFEQP+nk8tEnOGZel7nuHMBdD
5E469rHqG/n2gMyGPVVIQckcgGokMjnF1nwyQ6O5fLRMAQVpf4WHRUybcsjzbDx+
KBQxF1a6o8r3bOPWZcAEdLM5DjJLHw==
=NuQM
-----END PGP SIGNATURE-----

--imjhCm/Pyz7Rq5F2--


--===============6178911089031811316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6178911089031811316==--

