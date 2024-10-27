Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A616D10C16
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Oct 2024 10:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5EXjeBZeIni6OECZ4ig3IyftbFrA4b+gVeAJWASIkI=; b=dfJDeKp3wyyt+w
	zyPldW7wOY3BFgFZsdZfzR74A3EgdhBmn3DcMj/zF1cePxxxk+zRrMZqB0GHSV9TGHS7JAC1jSzL+
	hTo7dun4m4XRArA3FUJzAo3o7FJsAWfvM4JhmsYUUcIDoCKGrGaIojb746OHCqzPd3ayqe1lnP0zV
	KEj6CGKTeZwDpaVwk2fImKLlFIkN3QDy2gftlntOt1aOuJL71ksMv3lpuAiRsuBbeFeY4vA1TPPhT
	I8e8KjqbvCtgNNY5yxF/uXAYwgaa71tyg+dcRxrWDEC5o/ySb/Lhp+YsuD9ePIJUKkMapxLCSn5uw
	JeQBtcZQcPN7O9yItB9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t505N-00000007wwN-0swh;
	Sun, 27 Oct 2024 10:01:25 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t505J-00000007wvZ-2cR0
	for linux-rockchip@lists.infradead.org;
	Sun, 27 Oct 2024 10:01:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=/Mb/MAbniH+iTLFgaPUPLoohugvKzOX3bCzKXiE8zSs=; b=o
	fkDbmiKz1M+MBFrLp8PnYIt85i4lzZdK2bLu7EFt8OsDFd9UsCvWDpaP2OVoXGxp
	SIR9yqCtq2UOxp50jPVlFPXOndvbcd935cUDqBoYy4iWTNJItraln3/wqCtqevf6
	i5IJBX5v9hwjBWEyHyiFkNJyMDHRndHudwdEJv2nXs=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-117 (Coremail) ; Sun, 27 Oct 2024 17:58:57 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Sun, 27 Oct 2024 17:58:57 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Johan Jonker" <jbx6244@gmail.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	david.wu@rock-chips.com, andy.yan@rock-chips.com, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Subject: Re:[PATCH v1 2/2] net: arc: rockchip: fix emac mdio node support
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <f04c2cfd-d2d6-4dc6-91a5-0ed1d1155171@gmail.com>
References: <dcb70a05-2607-47dd-8abd-f6cf1b012c51@gmail.com>
 <f04c2cfd-d2d6-4dc6-91a5-0ed1d1155171@gmail.com>
X-NTES-SC: AL_Qu2YAvyZvEko4SGbYelS/DNR+6hBMKv32aNaoMQOZ8UqqTHC6CwvbV1SBFDxyvpExDuGajt87KyUggf9a/E3
MIME-Version: 1.0
Message-ID: <250cdfef.1bfc.192cd6a1f72.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: dSgvCgD3E2zhDh5nyQgYAA--.58001W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0huFXmceAjpw-wADsf
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241027_030122_014950_23B1164B 
X-CRM114-Status: UNSURE (   5.84  )
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














Hello Johan,
    Thanks for your patch.  Maybe we need a Fixes tag here?
    And for the patch itself:
  
   Tested-by: Andy Yan <andyshrk@163.com>

At 2024-10-27 17:42:45, "Johan Jonker" <jbx6244@gmail.com> wrote:
>The binding emac_rockchip.txt is converted to YAML.
>Changed against the original binding is an added MDIO subnode.
>Fix emac_mdio.c so that it can handle both old and new
>device trees.
>
>Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>---
> drivers/net/ethernet/arc/emac_mdio.c | 9 ++++++++-
> 1 file changed, 8 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/arc/emac_mdio.c b/drivers/net/ethernet/arc/emac_mdio.c
>index 87f40c2ba904..078b1a72c161 100644
>--- a/drivers/net/ethernet/arc/emac_mdio.c
>+++ b/drivers/net/ethernet/arc/emac_mdio.c
>@@ -133,6 +133,7 @@ int arc_mdio_probe(struct arc_emac_priv *priv)
> 	struct arc_emac_mdio_bus_data *data = &priv->bus_data;
> 	struct device_node *np = priv->dev->of_node;
> 	const char *name = "Synopsys MII Bus";
>+	struct device_node *mdio_node;
> 	struct mii_bus *bus;
> 	int error;
>
>@@ -164,7 +165,13 @@ int arc_mdio_probe(struct arc_emac_priv *priv)
>
> 	snprintf(bus->id, MII_BUS_ID_SIZE, "%s", bus->name);
>
>-	error = of_mdiobus_register(bus, priv->dev->of_node);
>+	/* Backwards compatibility for EMAC nodes without MDIO subnode. */
>+	mdio_node = of_get_child_by_name(np, "mdio");
>+	if (!mdio_node)
>+		mdio_node = of_node_get(np);
>+
>+	error = of_mdiobus_register(bus, mdio_node);
>+	of_node_put(mdio_node);
> 	if (error) {
> 		mdiobus_free(bus);
> 		return dev_err_probe(priv->dev, error,
>--
>2.39.2
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
