Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7CFC433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 12:45:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EAC33613C4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 12:45:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EAC33613C4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HZo+W1kqYXP3bKUQq/0H7a/GQUa5ioPqxTjmjQRteeE=; b=CjjZXxqKWHkSzLoe7Z8ZTJ4rl
	k5Qxv5EpPU0iny/WHklD5S1Qfopju0omyPFMnZ0gpTJh/onxpmBQuQa9UIaDJwkkcxwZkZg1ahPq1
	qc4bYMYkMNbyfu9nF5OerTwJP+7b8KFYiL8b1ttl+K9DeJKyupKS5/TjJOv5gHVmN8ABEFH0HmXEW
	7gI7PJ0cWDkz9VL+8Ev3/HM4mdSs+KRn8szvFgKYRZ6cLf7uQ9Mj+ANtB1ANjbLNrhnPsAKF1BmoG
	ADGQTRnUJRYm9H3S0JhqtBAyREmxnvuobzbPpn6U/ryieMIvpQmGqixd2erIkmKCXrrS0/05gVo1k
	UNZvlujkw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYplC-00C7Qr-As; Tue, 20 Apr 2021 12:45:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYplB-00C7Ql-73
 for linux-rockchip@desiato.infradead.org; Tue, 20 Apr 2021 12:45:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=1PbygNKNA9EvrMlkEWK72bdIa0ZxSTl0x8B6/YQXO2s=; b=M89upVqHaQYoC8mL9COaUEnbyH
 Psi67jV6PlqIRjor5GQw8rTkq1HIeu75njRYpLgOqeYsv7g3KDL4Fz/7BcRJAo0JDuWUhPjHjTxpo
 9gn6OMpp5RLoGR+JoRbtbQKeBtAB36WLCUDMGzdKvCiHNSEmju2jaY3yH72xn34nWw41wUoTi3NFF
 x89UyljdyiN/lOkSoFNckxwL2s81KVejrGV7z9I+N5Dk8DyZnzQipwTlWk8jnfjrUDzuIrGuyO8uv
 IVvQ68HSFr0Qv0xbEqCvz6AnW5ROT8PGao1sDJuWO3YvwkL8m+Rbzpdmc//4gN2thgLdZqEg/+2uN
 IJ5CbWXA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYpl5-00C74o-Bz
 for linux-rockchip@lists.infradead.org; Tue, 20 Apr 2021 12:45:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 44796613C3;
 Tue, 20 Apr 2021 12:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618922738;
 bh=1PbygNKNA9EvrMlkEWK72bdIa0ZxSTl0x8B6/YQXO2s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c1REMYIdhU539VDKxORP0yBu2CXY9emWxY4FW/YkH81b81jshxdkBXmKCeT+IassZ
 wXQxmQFduQp1YC78+jDyIbLhZzDNhlgfbgo7mm8+bYIhYmF9gHfYk/OvvRkUVICZ1B
 YtYWfZpl48rBEeUwhIY+P4R/r+oKXi2i3OYKuRYNKFhw6fbDlgiAmntxiV/2mRCuXs
 QIqsDOH6mCqA/rQrWQkAnbPGkcZYwM6HyXWJn6RotsibV5HuaA/B53GQUkfn+IHnKV
 JYYWvOY63af7bMyN/gvC+rljj0LH0lU9qNO0+V8oUC9iLcprsxRf/s2lNje/5U32vK
 zKUQml7HEhInQ==
Date: Tue, 20 Apr 2021 13:45:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
 perex@perex.cz, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [v6 1/3] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210420124512.GB6073@sirena.org.uk>
References: <SN6PR06MB5342B036562B085C95BDAB42A5499@SN6PR06MB5342.namprd06.prod.outlook.com>
 <20210419165116.GE5645@sirena.org.uk>
 <SN6PR06MB534296C9BA80C56C0AD694FAA5499@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SN6PR06MB534296C9BA80C56C0AD694FAA5499@SN6PR06MB5342.namprd06.prod.outlook.com>
X-Cookie: Falling rock.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_054539_466919_2DBE0555 
X-CRM114-Status: UNSURE (   7.89  )
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
Content-Type: multipart/mixed; boundary="===============0686108705448172388=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0686108705448172388==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kXdP64Ggrk/fb43R"
Content-Disposition: inline


--kXdP64Ggrk/fb43R
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 19, 2021 at 12:51:12PM -0500, Chris Morgan wrote:

> If we enable the regmap bits unconditionally, is there any potential harm?

No.

--kXdP64Ggrk/fb43R
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmB+zNcACgkQJNaLcl1U
h9Dqhwf8DwMjOS3ql7o1vVhEAhOHbM0j8T7ks7rSuRBSoqrv5mU+LPb1W0vJovNv
33e7iiwoCCPMvnkxsker7D6+cLPuTpOJXSoeFzXvv93kF07XbcTiBy6jf298mLAq
FyC2cwSQiasp7rS5q+GXmzjMyg7Yymg7O0KswVqM8cqLKFkQN71ElYP8bIL/rQAk
14XnBBevdM7BBYL4AMWHiWOgxr61K8j66w3BkBrSKcZIh7qo4vXdV6j3HdbJElox
WXqejeKgV7bHSRAgg2vXNW8mVFdzJaC3Sq4VhU5jlXZbWj5ozLrHPQgEIC+M/t+/
Fvm2WBosJrq/rwJQGHrybYjkTdt2ew==
=yQfx
-----END PGP SIGNATURE-----

--kXdP64Ggrk/fb43R--


--===============0686108705448172388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0686108705448172388==--

