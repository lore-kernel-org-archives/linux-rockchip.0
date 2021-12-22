Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EF52C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 11:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bI3yKmODrKD58tZ0tJwk4LSSUbD+Tz4a91Jy8k5aleE=; b=lxRadZ4F2mY2SE
	U7Aq8om8ejbf185cFrhtcbXeZnogCU68iP2uQMe3HrhmSQ8RDqeE99UpQbTRbdKvvjX5ai/l5Sy62
	HvHNAs7Hf6GUZ5e2gYGyuwQleCaBT0/TYaymAccgoexmF55ejBZik7Rle60P1tLMvJcCcASRdYdfs
	ZAlKRx0L2+m7oOw1DMvHG1rONmvv4QHmwO9I2pHRmrPPnUBwy5VKAhaOZjrnTNKtzc5KtPjLekHU2
	3Tt4XOAq/dkBeeF4Vg+QqWgbDYIuyDEEVcgSKh9z/Sy5NTz0t3zsUFG1p/xqOTG7kjtcTfR2BKeq1
	uGplRk8/kaxlxYxxCVOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzzqI-00A7iD-Cz; Wed, 22 Dec 2021 11:31:34 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzzqF-00A7gn-6N
 for linux-rockchip@lists.infradead.org; Wed, 22 Dec 2021 11:31:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1640172673;
 bh=MdM7kzBDgVNWTP51iMDRW70b9sRcwz8d6Hl3mr0489E=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=UNOmH0q8xEM73PFVubxgwrSNyQ5F6t89zvM6uNKBTpoAcb2b5B+kEyTXHB0B/GhF1
 Yv3GYrlbpwscf4JIlpPi2Qiq+aeGLFxYCCdrTm7aSkbFdRY0g1eY92clXaa2ZRliAr
 aWQzgQaSJh+qxFu4l2xQ+Cy7Hv85WJV1L2I7HQwY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.158.107] ([217.61.158.107]) by web-mail.gmx.net
 (3c-app-gmx-bs44.server.lan [172.19.170.96]) (via HTTP); Wed, 22 Dec 2021
 12:31:13 +0100
MIME-Version: 1.0
Message-ID: <trinity-4d94e8dd-1499-4d5f-84c3-85075a4085dd-1640172673779@3c-app-gmx-bs44>
From: Frank Wunderlich <frank-w@public-files.de>
To: Lee Jones <lee.jones@linaro.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Dmitry Osipenko
 <digetx@gmail.com>, linux-kernel@vger.kernel.org
Subject: Aw: Re: [PATCH v3] mfd: rk808: add reboot support to rk808.c
Date: Wed, 22 Dec 2021 12:31:13 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <YcMHhJTsQMLDRRsN@google.com>
References: <20211220144654.926112-1-pgwipeout@gmail.com>
 <trinity-c54ecce4-7a39-4143-b136-f53c9b40ffd1-1640018026851@3c-app-gmx-bap45>
 <YcGU6pQqfEPBqjrO@google.com>
 <4963E4A2-63B4-48A1-BDDD-5F9D07D71598@public-files.de>
 <YcMHhJTsQMLDRRsN@google.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:KGEgF5qQ21JQN01aGdoEOA62OA061J+/OnVHxn4ML35EA/ptxgN38i6eLG158yz5gmtA9
 bY2AX0Di93cd4zzM17Ous7KXSrAftUz7/+l8aL0Yc9Q4Ag6Sr/ml5fLshWyUDKkREC8FFznkMFAV
 CfaHYRpddc9I7l+sOhVQhyBFrWEYrrOM9/gFd5ZYc/u2iA9BhZqNHYPy8JdKgMDixYj2PfqW5U6z
 zu8DX5Z0Yp5Ue33oFT2DMmsJQYpnEE01UATU6v7Wkh1MTQ0VjU6XC/ZHNEPHRfTKXmxvKOYcltPR
 4U=
X-UI-Out-Filterresults: notjunk:1;V03:K0:dFwgK6+7/7c=:5aAQXyipNr8rH+YeaoQCAI
 HAuWxI4apX2+Z5zjk0tZlLo0n0n7D+fkeZohBK3u0qhmAZbpv28LvqEnwHbFFWISWgWcwZsE5
 9dQZXsDoJwG1n8ROdS5l9KXRfjZ6Bv6YVuwP6KizmRXr4itpaxgLsManOSetVM8uUDBvjE7uf
 7mrxwuQVAL1BjqQl3c/TmgxdhxmW3MbnoJty0NDEm36WhfK2LzIR6xnWkKSBEFCZjvX4vfxSd
 ee/6JEuHAJJOFYWLMmjnDIUW4DmR8Cn2HAx8+GyRWJ+FBm6bfSDdJUsbuBoMgGThNigH3Qc62
 9v+hdwXvg9tBairj/DTnqL2ugXCbsq+l0PWM+yOpdiGiyhz9DN5mHsKGRmKE7ZULv/3damDGA
 FLM5bAIRxK6Rl3Xj75P748MGS2wjQONvh5Li+4R81B/JO777MAP44tCFs3CZ2tZXzEPpEQRr0
 cCkGwHEEWKoLU9IQMw2Jo23l81ok86IiXA0vfK9hMmKucJA6P3DkgSMImsZn7uIvcXHEn9rWL
 en7MGzx2hSOO0YzCLEt0KLP7ktKwDqede0QLMLt/sLFuNTxDXIm9y8DWCBpS77NPv8kzwLcD/
 Y9r+HIZ6sVPzrkiLmyooocO+2RsuFbnrFSm5TNpyLyDZE2e28HB1pa0c7wzD3jSGR5vmCNufh
 fCGY7ydQBoSxUb3iOfNiBzBhWraDV7r0HDGHuab/NhR2mF5VWfRuxn6c5qAErL/z6CY7LX+Y7
 TK32IMRQ9a+0Ij7a3pw6gyyZe3gX+dqJb7yoR9Jel7NpcNsIWtjfLfK3gg7JT/WOAfW3qgN5s
 lcmFc3G
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_033131_569975_CF33FBC2 
X-CRM114-Status: GOOD (  10.46  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> Gesendet: Mittwoch, 22. Dezember 2021 um 12:09 Uhr
> Von: "Lee Jones" <lee.jones@linaro.org>
> An: "Frank Wunderlich" <frank-w@public-files.de>
> > Here i have squashed the change in:
> >
> > https://github.com/frank-w/BPI-R2-4.14/commit/06430ffcb6d58d33014fb940256de77807ed620f
> >
> > With the change i can compile it...
>
> Not sure I understand.
>
> Please make sure all patches you send for inclusion into the Linux
> kernel are fully tested.  They should also be bisectable i.e. not
> depend on patches applied *on top*.
>
> > But in v4 (patch is tagged as v3 too) the of_property_read_bool was dropped completely.
> > regards Frank

only v1 was sent by me :)

v4 is compilable and works on rk809 (Bananapi r2 pro)

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
