Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A87FC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Nov 2021 09:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pLmUfhx0W1On07FT3x8URv7Uo+NpMynhliC7ncl2JwI=; b=O6BUnh9lX+R2krUA12m1872bjP
	wCWuEXngMS0qpsQjm8lEkRjThkzTZ/MaHUr83nmhuIfyGwXw19mIyRAFCLIetbolkKBYDnVBz/dFs
	yXXxa9F5gNZjYC2HGsrMKi37VrEO1AHyzujznmautoVpou0haRblgg9R786rm6xbutRrN1ocNjXcQ
	qsLq6HWZQHFa/aus/Ym6f6sTBhqtASnxV+w2dVqUxmnm8y/cPspspx+5LqBERiOlq0NcN9Xmn2SrX
	46nHD2A18et7DE5L5mPwCAq0SsSLdI3knUUnjFpddz3Z0HZ5uDDm6sQGFiarcyOvrJ+e/B1kZ8X7v
	BzL5S7Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrd6o-000FyB-FF; Mon, 29 Nov 2021 09:38:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrd6a-000FwT-VV; Mon, 29 Nov 2021 09:37:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EB1A661216;
 Mon, 29 Nov 2021 09:37:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABB53C004E1;
 Mon, 29 Nov 2021 09:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638178666;
 bh=Fnp3RhDbBTd+N/Si0zHCqyEEQ8HNT8WuTFzETcIGm3w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lIpx4Bua/YUGNKneTex9+IKZz93W8DKDgMNvLpA7/YIm+CI6Fo1nsCTxThnzgcrmq
 C2AxEOpxrU1/CVdYNjK1r9S/rNsbciftD9jIxnolz2UMUUGEJQP9pCOr/vht3yIiME
 xpCWtiA7hZhER17SB3PEnfpGrinP+D/dtXB+gknWMry9D/QrCDGovzv+VCt54k9E/N
 BOI+KVYFjqL+hF6j1K0ZNLYjqGTauHWz1hM7dUG/tmID0i+e0AYePRluK+dqvG6X2A
 6A9fb1/Cq3o5cSG+W+/gEI4T5LugIS72Z2DRUqeXYuIPe7IeewlidBbuqV9hLNtMn4
 hYgoR0lI7URnQ==
Date: Mon, 29 Nov 2021 10:37:43 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [RESEND PATCH] i2c: rk3x: Handle a spurious start completion
 interrupt flag
Message-ID: <YaSfZxtYtV+SfJqL@kunai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Ondrej Jirman <megous@megous.com>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210924111528.2924251-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20210924111528.2924251-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_013749_098498_21CE4E47 
X-CRM114-Status: GOOD (  11.24  )
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
Content-Type: multipart/mixed; boundary="===============0997703288864553406=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0997703288864553406==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dHdtOdyzSVAJRQNC"
Content-Disposition: inline


--dHdtOdyzSVAJRQNC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> This causes I2C transfer being aborted in polled mode from a stop completion
> handler:

I wonder why this only happens in polling mode? The question behind that
is: is it really a spurious irq from the HW or is it maybe a race in the
driver? Because polling uses the same interrupt handler but just
periodically polls it.


--dHdtOdyzSVAJRQNC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmGkn2MACgkQFA3kzBSg
Kbb2jA//exKS6aQIdTvjz8ryB2xg8jb2xyVFPoVlmNgzqLv5zTKeG6F0sLFEgMWy
sAtUESQl2OHpLbG+XhfN7/hVgIOng97GmAuPQgEluKe75E+U5HUc12izmMEsBdM3
Y/3A1tutxyW+Zv5hddgRE9imPAAgVo+YQw3oc02Sfx+MWhqRgq3zN8ahNnE5EKhL
HwsGqD92nC4YkhENS2DqSbVQdW/FXxqYEHitnjziOploo/M3rbAlGMsZD7y3ZsEp
aSzXw86DWDzzmrLGPaeldx2hr86wnx87ITR4fDqDdFXEGv6HW1x4Kudl8aZGILRL
nbFOd9wN6lFudmSiZL6SRRJjZnz/weghpgG+5XZAWD64YydsmcL5/X/aE1U7Zv1c
UujkXwcYwYySXh9wOFHMJlxAq7A49C+Hu88M8DS+QAcsLUtE/CC+X8anHdEyDbpw
agoocQE2WnQzGRvEo3eJWyk4fHYgPPbyxdNJfOIXy+07XbFluJ1lEkjuDBV/BOjm
tLUrrouuJD4teX10rXDsLHHHmxhYOi2322s3KqTqlPgLuixVbCxJuRD1ht4tVxL/
eKwp+QW8ofgnm9HJpylOo3+/PMK/L44+H41JstGW3rzC9YslypSkit7hXNSk6VzA
AhTZ7APBX3+d4WMONyBE0pNktrz3xync2/B0yrEY8J7FRMvARV0=
=pHYp
-----END PGP SIGNATURE-----

--dHdtOdyzSVAJRQNC--


--===============0997703288864553406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0997703288864553406==--

