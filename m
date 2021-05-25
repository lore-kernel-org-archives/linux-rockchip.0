Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00067C2B9F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 19:29:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B857461413
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 19:29:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B857461413
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dl825ySRuj+6X8fd120bcnNDEzjX4c6+0qqglAnvP40=; b=2j/lFJwLbp/JKO7fl1ZRCjsS4y
	wgvT+4JrXmgQThXMrgPsNTV68roS/qsFmmwbLZRMb5vC8fySiLplNz+UL2FiBPPQTJIf9abPPgFwf
	7uTlbJXTdfJ9pnvTyVw6ojX4Wpi0jAbAQRRmgSSOz2Sd7DBSzRBkHgd4W4W3d1GCh274gOqtZ84LN
	Xy9Nil3xmKRpI0Sg+T0MZIqowa5+iR+ddUMSvS9dtVRgp1TcmPOxZkQTRKc9jaKSrvaJpCetuxg/o
	z419AEO3PGvMlATdX25xfeFPrYRpaCSu96HTzDynH6IeMAW3N7omfXauX2XpGACeCJ9d9RK6SXS17
	VF5h5sfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llckU-007jdR-VO; Tue, 25 May 2021 19:29:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llcQ5-007ZQG-Vq; Tue, 25 May 2021 19:08:51 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7A4376140E;
 Tue, 25 May 2021 19:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621969729;
 bh=erpKjGqAF4AJzuEwJKCEvWLbw/VoBc5b49WkYqtFinA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i/OslaSNt1f+WuDzqwZneA+WCVy7F4O2r4E6SxvQqyzVtvoONE8Oms6MxSsMIgNtq
 Qla5P5gNkT3gVba+Pzicj25w7ka950Z+uebbJHXlNkOiGcof0B+yODgiRtIIRhWvpn
 Y+XhO/LPekhPoxrMqOcEwCg8xQjBoheTspChn8XnAAs/htgGxFBMwXcP/Wkt21EYSp
 +1zhoegPIDbPbh/GCcLaEkMAzz/FMWRebCpoYlACVzxSmcCk8fwrfvkFboLa0xNXYs
 xPbJEJi1K58DRU0iVbUL9FeuhDiW2OYDxt9jKnMKhMuABq2wnXb5OhFFurF1B67L87
 +wg2M+zrDp4xQ==
Date: Tue, 25 May 2021 21:08:46 +0200
From: Wolfram Sang <wsa@kernel.org>
To: cl@rock-chips.com
Cc: heiko@sntech.de, robh+dt@kernel.org, jagan@amarulasolutions.com,
 wens@csie.org, uwe@kleine-koenig.org, mail@david-bauer.net,
 jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com,
 cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org, maz@kernel.org
Subject: Re: [PATCH v4 01/10] dt-bindings: i2c: i2c-rk3x: add description for
 rk3568
Message-ID: <YK1LPjhjci5jejsD@kunai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>, cl@rock-chips.com,
 heiko@sntech.de, robh+dt@kernel.org, jagan@amarulasolutions.com,
 wens@csie.org, uwe@kleine-koenig.org, mail@david-bauer.net,
 jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com,
 cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org, maz@kernel.org
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081151.17558-2-cl@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20210429081151.17558-2-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_120850_119739_5B0AE6FA 
X-CRM114-Status: UNSURE (   8.55  )
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
Content-Type: multipart/mixed; boundary="===============6018757276526451477=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6018757276526451477==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NCc2q0vIdyd+dXz5"
Content-Disposition: inline


--NCc2q0vIdyd+dXz5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 29, 2021 at 04:11:42PM +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
>=20
> add "rockchip,rk3568-i2c", "rockchip,rk3399-i2c" for i2c nodes on
> a rk3568 platform to i2c-rk3x.yaml.
>=20
> Signed-off-by: Liang Chen <cl@rock-chips.com>

Applied to for-next, thanks!


--NCc2q0vIdyd+dXz5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmCtSz4ACgkQFA3kzBSg
KbbpaQ//ZFjmjk57xuPgcUkyVTPY3RLZE602/1iQ5IizdQa2vaxkuYrwoSSg4oH5
TUhCcfrs3oUrEq0ZvFeHevoBcxNqsz/2V2vEpUqGscwRtJnVVEoWwfWpLEZyp33k
8XPx/kEWyoiT8vqV8ZCz2kjEbBYxhZ3JESKGU7Jp3hhGTEE7i3OwKzokRgm05bXY
HRT6XvhR5rQ96Rc4j5YhEAchhDbAnS6TOhUGRzIQlgR/nKZXFUlCIwfozjdpBS+D
THbvK5W3hDqaSkt5y1ff0hujh/NZGl4jU3cOokSLnO+RdOPIZy833SenTp00VYU7
MmK4iB5ZI/wKOgTrJ3k3BlEzvrDZLfWyD9ZFa8dnuDR6yiDigOKv8osaGuHYopIF
fJ2QSMFZ8D0vSEc1nus1Jq5bEacIfMo2ZanOB6ZkImaDKfqajhHaMrNNE0eyhGT0
dSnsyBDSwRKDQdkGFGV3zeCYaYCs9i+Rv5ep6CwbgvfO9pLo7xnMHBK5+qFJIcv3
t/vm6cvy26GAUJEMP86XnWKnZirNLexFvfBFjXsg6qpwSjux1dfM8GjSBuLMkbSZ
Xe0h3C+IfThm2AsHc7LuEXMpiEZ0tlcCkW+vSgr9DG6viM7MLLgQeg3gwxvOAHLb
EWSrivI969UDnwVqd+Ebq8Yjs7vxjfgNCfflbxXOytLmSRkS9KU=
=OqI6
-----END PGP SIGNATURE-----

--NCc2q0vIdyd+dXz5--


--===============6018757276526451477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6018757276526451477==--

