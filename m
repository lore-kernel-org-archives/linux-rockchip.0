Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7334C07548
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Nov 2023 17:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p9bLnKTgQF7sYn6x8XRMMk4YGcnJd4PvVE42i8NVEgc=; b=vro1RnhE730B5ISiqJMQFRTr/K
	/802TddbJ3av91W2r2S+QVzNILbbJ1CJUiEBd4XdyiuQeDhbuM68qI9UDxmqjFndrLMqkCdGWGp8V
	HaEfUtz4kTyDJgF2we1PCgI91EhAxpcLrZNMRw3CjwkA7HiutWpUZRS/69PC3lniVgj7C/mc2Wjrf
	BVjI/qr+8wuZzf65PkbHKUa7/5M6HSSDUx7VoidsTjpe08cP+JtR1Z45hGKwpfUEQe5D4w2WenVyW
	ugqDTx2shkM/58tXiMBx04HXLeA7fDQxEDT3hnf3Mg+oPd1Gmz1qNLE2MW/E18zZ43ZEsTnV7OLu5
	wWCH+o2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2b4X-00ER8h-0g;
	Mon, 13 Nov 2023 17:50:05 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2b4R-00ER74-0A;
	Mon, 13 Nov 2023 17:50:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 1DF57B80EF4;
	Mon, 13 Nov 2023 17:49:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4991AC433C7;
	Mon, 13 Nov 2023 17:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699897796;
	bh=OlVdpAafS+/TnL2gNZWocfkiT+WXch7O/Gj4jH3CWTI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LIjkaZQjXatW09ZeXbTIPo+q5RrNWjCsOk0HG3uQ9jZx/Jj/JwWg8masZL8QKT0ZZ
	 WQhSyQhVc2mhkpHTByG3kY/lTylyhO+Jz5Xe32ZS4JAfPZ3uZEtnt2UfkpAMfVaYra
	 Z3MLkka6LfZyMsAw09xuTPN7X38dJDuZgUxM5ddajimSmVXShqJDnkUemjsy82m6XW
	 kfYKsF2y/34lhawChlHd8v7/XDDz13zS5JPzIQ0wGWvUiEcJxhx8/E8P39xxN3f2nj
	 yON8dcggobGU7B0jvYDgW8cWNd2lF2xwMBQwNELv/PcH6ryjBoTuxjmxRgM7bnhZrW
	 B1cIyTJrNKMmw==
Date: Mon, 13 Nov 2023 12:49:53 -0500
From: Wolfram Sang <wsa@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, linux-i2c@vger.kernel.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	linux-fbdev@vger.kernel.org, amd-gfx@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jocelyn Falempe <jfalempe@redhat.com>, linux-sunxi@lists.linux.dev,
	linux-mediatek@lists.infradead.org, Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
	Xinwei Kong <kong.kongxinwei@hisilicon.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Yongqin Liu <yongqin.liu@linaro.org>,
	John Stultz <jstultz@google.com>
Subject: Re: [PATCH 00/20] remove I2C_CLASS_DDC support
Message-ID: <ZVJhwSS16+/Zzt0f@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	intel-gfx@lists.freedesktop.org, linux-i2c@vger.kernel.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	linux-fbdev@vger.kernel.org, amd-gfx@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jocelyn Falempe <jfalempe@redhat.com>, linux-sunxi@lists.linux.dev,
	linux-mediatek@lists.infradead.org, Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
	Xinwei Kong <kong.kongxinwei@hisilicon.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Yongqin Liu <yongqin.liu@linaro.org>,
	John Stultz <jstultz@google.com>
References: <20231113112344.719-1-hkallweit1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20231113112344.719-1-hkallweit1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_094959_376284_BA4D972D 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============3881744490885265488=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3881744490885265488==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Zxnb7iIcQAl5ewYC"
Content-Disposition: inline


--Zxnb7iIcQAl5ewYC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Preferably this series should be applied via the i2c tree.

Are we in a hurry here, i.e. does it block further development of the
i801 smbus driver? My gut feeling says the patches should rather go via
drm and fbdev trees, but I may be convinced otherwise.


--Zxnb7iIcQAl5ewYC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmVSYcEACgkQFA3kzBSg
KbZH2w//eUnZg+R48cg2NHPwlDqb/Y0KJdo6xOk9tXkaIu+sNP9+GauuCw1EMTe3
AIDZoh7pkBamF2ZsoBRIOQOkzRpNj4bN+2L9mbd8SrPSpxaRa8jU3E1prJ7+/NS0
FJUPmwO6XA9JCOmTtkNvivsp16QjSQfVE+UjbBT0qH0+lKo6RQ9PDbwtIdkmzVOZ
vGvEqYzOpUB9UkUekEYESgJ/SCbm2lm397qC+d79JXapjDjD8AZliufTjd/jiOCG
MTVbm6mw9CPGThQsyNd9bjUbaNnqyoz3D0SjxKUG3NPlEYy9uigCj853+J56xO27
JjENHBt0RFz/oPHWpKko6kfMaDCS7m/aNnETGRuZ4fHBb6rviz/3EGLWYc0HoRds
6kw7kmMfmh4T0ZMERMDnRsgRiLHzueUujA9Uhh972jiX62CCaWuSjQm/s6lXpAzC
TT+UETbrdSSX6IJN5eP4E9Rg6ouyKxWGT1N+B4/NPMEjPUfzMFQQgna0ph8aHNcd
JEI9d/HAUvjvf8tQwo2+1UajwmmX1Yf/C905CT+IGqOLF21LsX7B0zoXELDRsPMD
ISj6RpuOXI0jhWV6YPlFTA8pFvqvG+lFfpP6kW1VEkYnXMwSbp+K8aN9bcYITWeH
4OB/vXxnxxEtQ8CgH6yC+jwJWW6jd7KllJQjmD5qi+F4xxOCzwY=
=fxbp
-----END PGP SIGNATURE-----

--Zxnb7iIcQAl5ewYC--


--===============3881744490885265488==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3881744490885265488==--

