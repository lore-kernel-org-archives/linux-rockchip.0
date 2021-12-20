Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A3C3C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 16:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iD02eOdcb+TXG8j6KyDjAqkbjV/bcyg9WSOHcGWdbr8=; b=zoirHQ2gjSeM4E
	axoVQCX576dTAUa4pvjTH5lRCmwvR/kDVRI6p2uPT5KauEySCgBXor5cZgUqpmq/9O6I9JUqUtqc8
	yJjYiTuOb3WoXUb53fnIE5Dia5U7vNx6mM8qtbvTErB7FkQu1p3t4Os2id8YMTTjB+X+/TB13B5nm
	IeZ2kgW464mBCgMoy9Is8woI7WtGX7sl2GmUppyjflgq1zabtdBVV2W4vq8azheSOqgNZlk7tfLj6
	7ujgCuKJ4nDeUZ/I4/gGnfnz/UhRU/uiJF5U4DqEUxx1TGSMQ5upLV7PZG4TjEalsAu/79Nf9YcwG
	ShqXw5ckO4igE7lVvr9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzLc1-003JMu-Px; Mon, 20 Dec 2021 16:34:09 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzLby-003JL0-MA
 for linux-rockchip@lists.infradead.org; Mon, 20 Dec 2021 16:34:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1640018027;
 bh=ZoGhci92Pzfv4A5imxxMOsvZDJ9MRBfoQGXiuCYauk0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Ep0yjZgh6StG1uDzh72pPHSbdH7DwrCB0ibg6AwAqoMsaFcGlV5/ko0HmfhzQxRMI
 HEq5N9fjJX7C5FGmtQERKgTPGl3nNrE8CFb9e45BEQOF/ZhYUzS/WGGmu4cuOW6UqE
 79/gULrTdnmuCaSYoLQFQoCSvBEyGuSr6p2dgRwY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.144.120] ([217.61.144.120]) by web-mail.gmx.net
 (3c-app-gmx-bap45.server.lan [172.19.172.115]) (via HTTP); Mon, 20 Dec 2021
 17:33:46 +0100
MIME-Version: 1.0
Message-ID: <trinity-c54ecce4-7a39-4143-b136-f53c9b40ffd1-1640018026851@3c-app-gmx-bap45>
From: Frank Wunderlich <frank-w@public-files.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Lee Jones <lee.jones@linaro.org>, Peter Geis <pgwipeout@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, Nicolas Frattaroli
 <frattaroli.nicolas@gmail.com>, Dmitry Osipenko <digetx@gmail.com>,
 linux-kernel@vger.kernel.org
Subject: Aw: [PATCH v3] mfd: rk808: add reboot support to rk808.c
Date: Mon, 20 Dec 2021 17:33:46 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20211220144654.926112-1-pgwipeout@gmail.com>
References: <20211220144654.926112-1-pgwipeout@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:aN63Vhyi8qOQ1mrG500MQtjFKWLfORtmIw/m+CLwvNZ6YHqbPNyix4LT8W/d3cYs42HZD
 4YNIGfk43PtdXGS2zZvHeu9BI56Wi5P99XNI+RMrtVWHimHxpyUUDUbkiAIHBahuLjn1q647mpDS
 2V5fWc7j5DxdxEm8nDlvp8nl8b0SVsyV6Yzo3GXd8/pf5O0uAL+hLgu+7CVgb5us+EGlntSrCnlG
 raantmj4zKiTZTiGQlAXuz5gmLG/R6/HmlGuZKjlXaNosFdzB/dbs0XUUtsSUCyIfDHwM6rgzQSw
 /g=
X-UI-Out-Filterresults: notjunk:1;V03:K0:fctntlAvfjQ=:kGkdc0OKd5+rGRtLmFteLt
 o8/vObSJzeeVQIuhF5wDr7EQw61A6gMkmrJQ3teT8KdwZVpEAbc0+cYiDdeLCKsECs1QGRoyi
 8ehf8i4yoz3iqVCiPqMcItcZYVfcxGc9WcsJZXzqTJbH+dYcY/4uTV0CjAXY4rUJ2yLJuEVZE
 7UXBtJreMMefBeslNoVO0GEVv+IE53OPVXECbqQNLdCEO0phYWtge+mKIKE+a9uJHQ8K2Z2vU
 TR2RIn1CpO+Feem/9osZVce7BLyilHtZCwCyeq8wToPDyXLWRdVDLa68pbr7ZXP5+dcD2qqpl
 zAUIJ+jOPy4CvMpZBe2kfVxi8eKjlsrCxA25EQ8hIlH6hjV3O4WRr1wH5kxXOgI5uQEn6vs3B
 4lgjf+UXYuuvmPH5iF6RAoS5AeqzwwvUgmUWXbSihAmYlTEd+KuTeWtK6hnDj6Fg05HE88XIC
 OoUT+TfKTJt36zm1tdyskk/QqaZ7vq/UtiKZSCtvJRaEPiIMr9+mtOmWENe2AxBWsPDUTk5Xd
 WeiC9qhpQN4+Z+BzM1x+9Ox6/odHO4oAU+MN/dwacmQ/mvmz4e/SqHuyNKAh9AsL0NH47fybK
 MynDS3bM1yjjPTptfFMP7KRtOT6Ar1kzv3N3e/LKT5jmQsFNNZWL1lsu/iinSuCe0KZwtbojv
 XTnX2gtbVsMDidbnEmR9mjfdK6GYf4XHeVbiwi3QbkeoYeMYZHZ0VuGl6SITl9EfmBtX/OCVO
 Ovnm3ILG8SjRzDmjyppS16M9Txj7SPaHd2WoLxZ8NrdeLFB+sy8rht24+tUcw9/MkwvscjWPY
 CytY7nO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_083407_068913_537F0338 
X-CRM114-Status: UNSURE (   8.64  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi

> Gesendet: Montag, 20. Dezember 2021 um 15:46 Uhr
> Von: "Peter Geis" <pgwipeout@gmail.com>
> @@ -749,6 +791,9 @@ static int rk808_remove(struct i2c_client *client)
>  	if (pm_power_off == rk808_pm_power_off)
>  		pm_power_off = NULL;
>
> +	if (of_property_read_bool(np, "rockchip,system-power-controller"))
> +		unregister_restart_handler(&rk808_restart_handler);
> +
>  	return 0;
>  }

this change misses a declaration

struct device_node *np = client->dev.of_node;

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
