Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 567B0C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 11:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bafdjrCFxnWk5IeJFJrCs706S47eM/Z2LBAw8PqyLY=; b=cjiN8i/bAegc3A
	9jsPLekwis/m0c3Wj8jj4YV5CWA9KO4SsrghaiVfuXztMKde0FQYBm9uk5YYLZHpAdNeY0FDFbD07
	OFJPOWUQdDm11VFFYxD2YTfUYwvYgRqB7lZ+dV742rJQNCTeE9Ml3ATD6hLcDO36POX+OZoBTsOMe
	Eq4IxJX0i9Edsq4UsO951GAEmdMskmXAmUJI29ibdGNyR+UAPWy1IvUdhTQQM08RtmSjhpjriTtCa
	5VU9Ohj+CX1qp032LZ5v2GlCr7QNDQzCK6P02ZTVOtLOEkRWoVGCAbideldnUDmfYrVOpon2acQUr
	xgXUkN/2a2uWBeUv2yWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBxrG-0036mp-D4; Mon, 24 Jan 2022 11:50:02 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBxrD-0036l1-Bi; Mon, 24 Jan 2022 11:50:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1643024983;
 bh=yNy7EZg3mbp0lvINimyGvIkMJmw3Um6hIqmwnMmXJTk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=QHm2H2YsZcUks7oOV0TMT2ZiHWwjOhEF0Cx2YXeJXzb6rjrPVhn6AifVGEwZmAyGY
 m6OMPiD8s78NnV8yHIrOO+2FQR2dTNt2yThoHEmzQDEW+qneAttwpgkcuT1SGyVRWj
 qCtxPYoO6xyCXNgdyu4oyFQ06pD1kSr3BjUGwAzQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.70] ([80.245.79.70]) by web-mail.gmx.net
 (3c-app-gmx-bs10.server.lan [172.19.170.61]) (via HTTP); Mon, 24 Jan 2022
 12:49:43 +0100
MIME-Version: 1.0
Message-ID: <trinity-263c703e-80d0-4663-9a42-21b9b7cb57e5-1643024983188@3c-app-gmx-bs10>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Peter
 Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Aw: Re: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Bananapi R2 Pro
Date: Mon, 24 Jan 2022 12:49:43 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220124110331.GZ23490@pengutronix.de>
References: <20220123135116.136846-1-linux@fw-web.de>
 <20220123135116.136846-3-linux@fw-web.de>
 <20220124083102.GW23490@pengutronix.de>
 <trinity-2e9cf5db-4c9b-4ad7-b684-74541e639edf-1643014505272@3c-app-gmx-bs10>
 <20220124110331.GZ23490@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:bZK1BGXbDbNyasi2iQqJob1z02lSju4CxKtjw7F5Pqt/vKLSqdxkWfw8Wlb8qbvqP+iCr
 U0CDRI3/s5wZS44yl7TWrzWA3MTf6aIgYmaMW00qXDCiXMKDvh7zuwPKxgmMEUi9z3raLRrNR+I9
 UjOwtGNFu+X0/GnMi6HowGf/0Qgj2lwbgXlblMPoEjKmoPa3DiMvxf3l9k/VcgWM9Fx1ncaghdOp
 O7R853vPEwzF1Fmn8Zfmc8OG/L6bkGK6pWkdD9bPci+/a0fPRWtAJgVt34sjiSdZKcjsfbhpFovY
 nQ=
X-UI-Out-Filterresults: notjunk:1;V03:K0:kzCDCNdY4G0=:oyarcQiy9PUsJKUUVdcr3N
 i9VkGktYX1cF/ZRqOfx3MQKwkFg3TfiUGld43GnNR2l3V83F3SC2nR+QoVfHZr/uPqV+94MMD
 1rZKfAZMCmqLzvM5uMbf+XN69DDN0uGzLlyORKZJFTmLuy3O1VTr9FvwyLqsYXl6BmhVGUrsQ
 ZlqlTXoZLSjF1gU218I4QkzZt9ooq4fgXge1rDnzj+ZgXjT4BJgnYTvKIuMmrq4UUzvI9DHi7
 woBEmFTOmfDBnjfsOV2W6iiyQ5QIyFSKIKoDq4KU8nrRf9T6CUxijpWmklPPEmCdwFoIBlw4f
 H1VCg7BEsHSCVhAx7MLErX1+IEMsk4vH+E754/PFF5dyF463lzJFT7hw1CwYhyPJHPLbhZnIM
 BirTdJUoNwKfFEyeIMUyQ2eTKmySoD7oVge1RBOlD+KOv1AGHmwzqT24OzHAu6BjCgJm9+ReR
 EzwJkq8MSVu39/CQ4LmTTd4a2Uf/VqGUoZB8r8kg8ZGUgVpjmBPMnz9G7QUS1bTuVVI6uegk3
 T8gEJVy9ZLD1gfjagwuJcmYZqO/IP/vt7K/CFntUDYdNiwrYmYNF1IlADlTg3MPS7hIbkKiHT
 XKxDOQzeG1M6Zm4y7HngmIxkevHi/v04uAY8fduOFzw/gXJv2vOH6xpbkgxdU/bVLrNgnvFFr
 6B/cL2t0BQ3hCrp2MXysIU0pPhDJ3tmD6R8eYmS2f5XqA+ZPD/4F87/hwf/duKgbhN3k8O/q7
 lLhhzx1OGy2YtYwEs7UJ/paMgrmCyUtDUWruRBp3xS57QX/5g8kxdYPy4qlEXlrXhlk/li76H
 1IJJmLz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_034959_723990_1F2EAB45 
X-CRM114-Status: GOOD (  15.60  )
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

> Gesendet: Montag, 24. Januar 2022 um 12:03 Uhr
> Von: "Sascha Hauer" <sha@pengutronix.de>

> On Mon, Jan 24, 2022 at 09:55:05AM +0100, Frank Wunderlich wrote:

> > took this from the 3568-EVB (like the most parts, as the board is
> > mostly the same), and in linux it's the same and working. The switch
> > have also phy-id 0 on mdio bus #1, are you sure this is invalid?

just to clarify: in linux dts only the basics were taken from evb and changed if
needed (like iodomain, regulators).
mixed this with the barebox submsission where i mainly used the evb dts.

should i add a note in head that some parts are taken from EVB and vendors dts?
As this is my first new DTS, i want to be sure the legal notice is correct.

> It's not invalid, it's just the broadcast address to which other phys
> might answer as well. Anyway, as long as there's only a single phy on
> the bus it's probably okay.

ok, on mdio0 there is the rtl8211 phy and on mdio1 there is the rtl8367rb switch,
so only 1 device per bus. I was not aware that 0 is broadcast.

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
