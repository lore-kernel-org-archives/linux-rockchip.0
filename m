Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EBE0C6FD20
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 09:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zt9nEAWTSIxCqJDZN+Qp0jRfdrU626okFvc0x3CDhKo=; b=YACYSFFrK+KZuQ
	mZAZ0p/ogjdbTbwW7KWXSGgfqi0NUYeqVzdkExUzO716QPe+9dpeXEUEehmnxsq4D+3+E/IMFTUF/
	DAfsspy/zB75MtHcvqDIODS8iXJ7+NPaiaQqqn2ziQQ5gW9kq+YfkJlzuOrK5uJAsK7zyemEqSnXX
	n7yi5I2IycFribCKD3/gsIkhRB/Ed2+20RscaHU2IIHiX7AO89OoK/0OHMt+zWuuHEoVv9Xcd1mpz
	w1dTSocUPF7MMxdppSJr18uUME2XazQD766CLJU5fdBaWI9z6WpaxJYMSm7YlolHCxwTrpLfOpScC
	mOutisJVAAS9Lm0nYQlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfdrW-0042gD-0b;
	Fri, 24 Mar 2023 09:37:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfdrT-0042dW-1Z
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Mar 2023 09:37:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pfdrD-0006dN-EY; Fri, 24 Mar 2023 10:37:11 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pfdr6-006LkN-S4; Fri, 24 Mar 2023 10:37:04 +0100
Received: from pza by lupine with local (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pfdr5-0003E2-Ny; Fri, 24 Mar 2023 10:37:03 +0100
Message-ID: <e5c022a6d045c6fde70a059b42c5202f112f1452.camel@pengutronix.de>
Subject: Re: [PATCH] media: hantro:
 =?ISO-8859-1?Q?use=A0devm=5Freset=5Fcontrol=5F?=
 =?ISO-8859-1?Q?array=5Fget=5Foptional=5Fexclu?= =?ISO-8859-1?Q?sive=28=29?=
From: Philipp Zabel <p.zabel@pengutronix.de>
To: ye.xingchen@zte.com.cn
Cc: ezequiel@vanguardiasur.com.ar, mchehab@kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 24 Mar 2023 10:37:03 +0100
In-Reply-To: <202303241107315726171@zte.com.cn>
References: <202303241107315726171@zte.com.cn>
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_023727_520292_AD003609 
X-CRM114-Status: UNSURE (   4.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fr, 2023-03-24 at 11:07 +0800, ye.xingchen@zte.com.cn wrote:
> From: Ye Xingchen <ye.xingchen@zte.com.cn>
> 
> Switch to devm_reset_control_array_get_optional_exclusive() API.
> 
> Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
