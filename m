Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F17EEC76196
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Apr 2023 20:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IoNVuc5yPqCvZem43hwz52o0dnmiqEYTvgJD4mw+emk=; b=PXNkYz1F/aLv7s
	9K2vb7eXwweiL1oev7rqyTtfuRp7lJNRLzUUy3xtq7ieKuCRNogGQj028kTs4RWVJ4Ji6sVz5mMAv
	kzVpMSQyEN3XNShhWizAL4MhEAjr9I8QIGbuKlPGh4ZH0ekh+svfApr03yaDJZ919NRmXHrOUNCM1
	hlwqQr3VJxotFlDBzWD80TWMbh1P7EmccSDM91ATFAkFAVRuhl4pQ4Go1vYOyUhfgFuRkMat+eW+A
	T/Qc6s3OkTTydZpVR+jMDoigpnQXnslX6giu5KvV0cLYxH/6VIaEhEnEWHeAn2q9K3c/zpnvxqKG3
	+q4iXCZU1jcxNHAJ3dfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pj4BQ-00DDKb-2a;
	Sun, 02 Apr 2023 20:20:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pj4BN-00DDJS-0P;
	Sun, 02 Apr 2023 20:20:10 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pj4BE-0002YN-3t; Sun, 02 Apr 2023 22:20:00 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: mturquette@baylibre.com, sboyd@kernel.org, abelvesa@kernel.org,
 peng.fan@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject:  Re: [PATCH v2 4/4] clk: Remove mmask and nmask fields in struct
 clk_fractional_divider
Date: Sun, 02 Apr 2023 22:19:44 +0200
Message-ID: <13622701.uLZWGnKmhe@diego>
In-Reply-To:  <680357e5acb338433bfc94114b65b4a4ce2c99e2.1680423909.git.christophe.jaillet@wanadoo.fr>
References:  <cover.1680423909.git.christophe.jaillet@wanadoo.fr>
 <680357e5acb338433bfc94114b65b4a4ce2c99e2.1680423909.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230402_132009_187407_D7F75ED8 
X-CRM114-Status: GOOD (  10.37  )
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

Am Sonntag, 2. April 2023, 11:42:07 CEST schrieb Christophe JAILLET:
> All users of these fields have been removed.
> They are now computed when needed with [mn]shift and [mn]width.
> 
> This shrinks the size of struct clk_fractional_divider from 72 to 56 bytes.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
