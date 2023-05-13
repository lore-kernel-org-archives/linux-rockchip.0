Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B07FBC77B7D
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 16:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFxce2nFmeXcYGR3W5a/TAbKSJ8lXUIpUN3sFIGGmkg=; b=RP/+aAl21JCSC0
	nbXCT9qk4wFKHvmPVxRBJ+HHLye15ULM2NJJB0g1q22aIXlQwG2irSfzoTu6VapuFqGu5UcK8FPno
	X80r/tPevJOn2eG1AoXd8COY6YBHnbWbNH/YuBfdH2ozYvv9r1GHihKatrhoTqDvrBhLwe0s1R9NP
	FqkKTrwM6oK248zNsz8aeBgd/5lzPho8/HakWOnffXfon2p+AlT52Ai+t/TaWwP1n6xIvkseioj+X
	Jbyao4F9nssEN8zzND5W78qYYcX1JLdKPs0Iv77J8yJAmWQjRHla7L3iSaezmKd6QCU8qoUcOSb/o
	jvav7L22z7ps/2nAKHXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsMZ-00FQ43-0S;
	Sat, 13 May 2023 16:44:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsMV-00FQ3Q-2S;
	Sat, 13 May 2023 16:44:52 +0000
Received: from p508fce4f.dip0.t-ipconnect.de ([80.143.206.79] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pxsMR-0000UJ-C4; Sat, 13 May 2023 18:44:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Wolfram Sang <wsa@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-i2c@vger.kernel.org, kernel@pengutronix.de
Subject:  Re: [PATCH 60/89] i2c: rk3x: Convert to platform remove callback returning
 void
Date: Sat, 13 May 2023 18:44:46 +0200
Message-ID: <5672742.DvuYhMxLoT@phil>
In-Reply-To: <20230508205306.1474415-61-u.kleine-koenig@pengutronix.de>
References:  <20230508205306.1474415-1-u.kleine-koenig@pengutronix.de>
 <20230508205306.1474415-61-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_094451_802373_F6CB7649 
X-CRM114-Status: GOOD (  11.14  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 8. Mai 2023, 22:52:37 CEST schrieb Uwe Kleine-K=F6nig:
> The .remove() callback for a platform driver returns an int which makes
> many driver authors wrongly assume it's possible to do error handling by
> returning an error code. However the value returned is (mostly) ignored
> and this typically results in resource leaks. To improve here there is a
> quest to make the remove callback return void. In the first step of this
> quest all drivers are converted to .remove_new() which already returns
> void.
> =

> Trivially convert this driver from always returning zero in the remove
> callback to the void returning variant.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
