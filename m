Return-Path: <SRS0=TfDj=NJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 889C5C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 12:27:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B08660EBC
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 12:27:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4B08660EBC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aRqQL3afCoMixBgKG3uve9NLegbHqFaQsvfaOuSH8Kk=; b=MCDPlDZ8suIaK7BjVeo9YmPnzZ
	DJuHjcvzJi7P9Tyse+/rwnn6zHomGVht1lD0TBqE+eMN45XnTMCk6eOmI/8ZH+QDSbL2VAac3+6pB
	h474+FPYwWoEupuWX6Xd8OWfdU9F+K6cqmBaFqU16H4wvl1LmpoZ5K6ifkp5oNncqTOQ7nIoxvDkm
	Ct0ua/HXvzUDFZDTZA3QWftqQCaO6NLZo69f0z1+WwiLzJOhRot1DE6lS+R7yO7r9KFQX1OdY55T0
	oaI//tGRWlZ/uD8OpLflu5DthmqTIIL+LAde+ABcAXc3UM/aF8YU+/xNiBxIAB0ftqKIMvgUXiCkt
	lp1Q54+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGKfW-005Vmm-Gj; Wed, 18 Aug 2021 12:27:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGKfT-005Vm5-L4
 for linux-rockchip@lists.infradead.org; Wed, 18 Aug 2021 12:27:40 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 91DE960EBC;
 Wed, 18 Aug 2021 12:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629289658;
 bh=bpEUVzaX1eNK3ZnCQo/tvZNBYugUCMLTE0xjd3B+BfU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W9DKN5Vw4hllELVywPduB8a27ZK71eSf9iyNYN56BAZh5OsqHUTct0wjuThrv6WOC
 eCU7r5hMfveTIL6BEkmM8R1yDE9r6UwhoVMRGEfeYQmhqmNWZSIKTYty47vvCyFKSq
 MpZzW8o5MhrNwp1xl9El0nH3r2qCqD2NvuA2u6B5TNgtnfAev08RqIVbfDJ/52DCvL
 TBq5qHRcSGC8q6mr/yYCraxYjn5hW+cshWmGTPUKMCfJtZGVsgaNeL63/WJfDefD+B
 qtGdmj/BGqBRzPqay9rjbGXjotm3t3X20I+jeFxhRnHGWbSVsh7Z/g674yu35tBN+V
 UzKGSNbJ9Zarw==
Date: Wed, 18 Aug 2021 13:27:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: lgirdwood@gmail.com, ulf.hansson@linaro.org, lee.jones@linaro.org,
 zhangchangzhong@huawei.com, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] soc: rockchip: io-domain: set 3.3V before regulator
 disable
Message-ID: <20210818122715.GE4177@sirena.org.uk>
References: <20210818010956.1446770-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20210818010956.1446770-1-jay.xu@rock-chips.com>
X-Cookie: She sells cshs by the cshore.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_052739_747319_BA0601B0 
X-CRM114-Status: GOOD (  10.21  )
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
Content-Type: multipart/mixed; boundary="===============4417179639013016749=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4417179639013016749==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cPi+lWm09sJ+d57q"
Content-Disposition: inline


--cPi+lWm09sJ+d57q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 18, 2021 at 09:09:56AM +0800, Jianqun Xu wrote:

> +	} else if (event & REGULATOR_EVENT_ENABLE) {
> +		uV = regulator_get_voltage(supply->reg);

I'm still not clear that the locking is safe here - the notifier is
called with the regulator lock held but regulator_get_voltage() wants to
take that lock.  Have you tried this with the various lock debugging
stuff turned on?

--cPi+lWm09sJ+d57q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEc/KIACgkQJNaLcl1U
h9B1Nwf/fjojVbQdJG3zjebyo27uuMcgr3TN0758aw+pPa5/axCIVbS/Q7VGopBU
vGGdmpNZevaK1tvb7KDT8vy2jHFiy6pCRmBfqwcG/HEP2bD4qron4FJlYVHBt8cI
L3E+D8aei3AjCn+UG/VOQJAyMMwopTSokmIMUe7rM36tuD7WJ4ccrGdGvHVHoKi7
l0zf4MzjbWQ1AGpAuGJ66x5liZWep/WAtfpSYFtbBcvlT6pZEX5ppAAMS1vs6l7n
CtXgqPme2Phpa0ras73Uc3vxMPETK1FYvfBn+Eho5qD1MmaUNGZkVwM1mDu64NM1
C8l2v/1Y4oEEZqQ8wnXZMlLDL5Cusg==
=Hehq
-----END PGP SIGNATURE-----

--cPi+lWm09sJ+d57q--


--===============4417179639013016749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4417179639013016749==--

