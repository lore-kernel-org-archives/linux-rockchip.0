Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E629AD10C16
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Oct 2024 09:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YITNkrmqR61w4v0eM9EKw+QoNHcvDdcRgkieyKol0hE=; b=jnYKxYf5yu6AIc
	twNLAexa63UxYZC31ugHPjASHrfqu0P+rrxmQ5dKbNTXvplIXi4iiMcf+041QP3WWBA6rqSAi3tnW
	OIUfr2cQfZAUeDaO7t0R3LxRrdFLCpOcT0qJlc4MCbdL30eVqHCYPiweXnDZ53KKclRckzcuF+1o0
	DmxZ5bCe++SswKyKF0WR27X6tKRHemAxAxz1Ndqt1Gni633uSf0Tpj/u5S0IOVwFaZZVZAUay5ogR
	1nG0+w+MUxaCCZLMN70RadWKSCMXH/SJ6AjVCm4cQDHYF4ZwtfWoLDMY2QZ8ZbxryFZuMMajRsr22
	N6y80K893eAGx/HWIJWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4znR-00000007vKM-2Od1;
	Sun, 27 Oct 2024 09:42:53 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4znO-00000007vJv-1UiF
	for linux-rockchip@lists.infradead.org;
	Sun, 27 Oct 2024 09:42:52 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a9a1b8d45fcso33097066b.2
        for <linux-rockchip@lists.infradead.org>; Sun, 27 Oct 2024 02:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730022168; x=1730626968; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YY5DrXBKhx+MfbfGjjReDCLRQB1YXc8GnyEu7fo66wA=;
        b=CDLoGTRNwe0Mp8BjacfYrZY9GZ2aiw+ap3QPCZ3MMTnZKWczKbvKW+FodiFT+Rh5Ny
         Ls9qQZ+UAPIR+dti2WmxcmhrvUtw0MGEAlG8SQkBhA7NzPJRqRkuOFMfVL2qFC0UgJ2+
         oiCDi8YXdA7qWN8MozFpj24pzADuMgfitgxw90u9qMwW3DSUkVV66zwYMfE/yRvdKZnP
         enaGhn9Bf5JHrHMzkLMy7m2bsvNa/To0aCrKFJdXzK3dLmK97lZBRwGcjOwYyeGsxbXM
         PBbTrxMKWY8WuHTxt9FySCO43vw+76EkeEYOXUKAearuwIWqhVX1QdBEmdPOeMjNXgfd
         pb9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730022168; x=1730626968;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YY5DrXBKhx+MfbfGjjReDCLRQB1YXc8GnyEu7fo66wA=;
        b=npekDsij8JjABsKTnyq030NAEFidb3JtpZak6YH0R+Q90p9eaGUQx1ESM1LG9F89hb
         hv4z2t3BkGp5u7Vj0u1pI6X3ypRjRnZ6q85xJGdujuD32UmEwyeKLgQe3EF2Hze6keLI
         cGj6Plc4Awash+4kbN1AYAZceZwI47VP6Sb8GZFR+OQYfBB8t0v7XTVdFe5CKmKTqyi+
         bsRlI3GpXLtBMwpbVzG+qZcceIrXcURzM+rRCJtBQB1OTHz4Ol+JlRduDSG5+SZC7fPp
         y/oix45yPfF6GRke50BRhLXCu9/60bTWa8wXaUGoArjo8fBU2vYukioIABM1GWopjCNI
         ojew==
X-Forwarded-Encrypted: i=1; AJvYcCXKbhq4yU1P5yyIoJvfxhplbVZJMCTzfCS3rohXOkeZQuFkCKmyjyHTtudeCuWHTWWi969z3+z2dBboKJ61+Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YyWBGaNeb0wWx0jaPkeJfbuSgvB0cRsnJHwzrSMhCOJZrslrI1G
	7C0WNsoGtaFOWo/AdIGLCPpzvihwkxVMvWQZj5NwX/p5Lcjns9Dx
X-Google-Smtp-Source: AGHT+IGIfRkTGbie0sdxgr2bFkrqd9cYqI0s4fuOvHAN9dPLLBBZC22W2WV8T+zFBGXb2tJ7Jzf87w==
X-Received: by 2002:a17:907:9815:b0:a99:5a3d:3cb with SMTP id a640c23a62f3a-a9de5f30d18mr136124566b.8.1730022168220;
        Sun, 27 Oct 2024 02:42:48 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? ([2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b2fe2af87sm265968866b.143.2024.10.27.02.42.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2024 02:42:47 -0700 (PDT)
Message-ID: <f04c2cfd-d2d6-4dc6-91a5-0ed1d1155171@gmail.com>
Date: Sun, 27 Oct 2024 10:42:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/2] net: arc: rockchip: fix emac mdio node support
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Cc: david.wu@rock-chips.com, andy.yan@rock-chips.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <dcb70a05-2607-47dd-8abd-f6cf1b012c51@gmail.com>
Content-Language: en-US
In-Reply-To: <dcb70a05-2607-47dd-8abd-f6cf1b012c51@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241027_024250_431352_48E98E7D 
X-CRM114-Status: UNSURE (   8.89  )
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

The binding emac_rockchip.txt is converted to YAML.
Changed against the original binding is an added MDIO subnode.
Fix emac_mdio.c so that it can handle both old and new
device trees.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/net/ethernet/arc/emac_mdio.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/arc/emac_mdio.c b/drivers/net/ethernet/arc/emac_mdio.c
index 87f40c2ba904..078b1a72c161 100644
--- a/drivers/net/ethernet/arc/emac_mdio.c
+++ b/drivers/net/ethernet/arc/emac_mdio.c
@@ -133,6 +133,7 @@ int arc_mdio_probe(struct arc_emac_priv *priv)
 	struct arc_emac_mdio_bus_data *data = &priv->bus_data;
 	struct device_node *np = priv->dev->of_node;
 	const char *name = "Synopsys MII Bus";
+	struct device_node *mdio_node;
 	struct mii_bus *bus;
 	int error;

@@ -164,7 +165,13 @@ int arc_mdio_probe(struct arc_emac_priv *priv)

 	snprintf(bus->id, MII_BUS_ID_SIZE, "%s", bus->name);

-	error = of_mdiobus_register(bus, priv->dev->of_node);
+	/* Backwards compatibility for EMAC nodes without MDIO subnode. */
+	mdio_node = of_get_child_by_name(np, "mdio");
+	if (!mdio_node)
+		mdio_node = of_node_get(np);
+
+	error = of_mdiobus_register(bus, mdio_node);
+	of_node_put(mdio_node);
 	if (error) {
 		mdiobus_free(bus);
 		return dev_err_probe(priv->dev, error,
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
