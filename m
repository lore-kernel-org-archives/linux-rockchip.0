Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E81606A31E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 13:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZwJgFSP4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Mwr1txn7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lLB5RJTFosm8cMM4zCM5143f4mU3fp2TPuzUGSaJNQI=; b=ZwJgFSP4kfDzypciBRdk++B1m2
	ikpx+ZfLGiqfmnJNaf6nmdiCAGoQXVr4rsSzPRmf1haJ9TNRAQ93/qalySESfcYjMEgwpCdNJuCso
	664bwdry9iedM8LOoapNQVXrowuZP0HhLc8UcQgtAinEEJXLWoIf8gwUi00cLYzYKmmUNkFpQxfYX
	bePxHCZOjHr5Hq7j+qaE1r9X5UVx2uhyv3S7LxuPnAIy9Sf9FTkkySLDXgT1yBhfXZu5mn4I7msTr
	tr+ExEXCPzD6lmevby7rR755enyOkrZvQHxyMzw6wqEENrmblcgxWLW8AX3itSpRD0rnoebj4QJ56
	Kv0ew6Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwSw-0000000GJpy-0zrS;
	Fri, 27 Nov 2026 13:58:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwSv-0000000GJpa-1NZc;
	Fri, 27 Nov 2026 13:58:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7D70961DCD;
	Fri, 27 Nov 2026 13:58:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E9461F00897;
	Fri, 27 Nov 2026 13:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795787895;
	bh=f1cpR8UC2K9Hh290rl3zoXoR37d6lYjg5P7GDWf+Pv4=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=Mwr1txn7jxQbejBY5GLGQ0t+lgUPqvLYv6L9blRBfMR7VxoKA4rZm6Dmm7ILpH1gW
	 o/Dm9uuaxFmgpPqYLRGdXbE2hghbvSsphBP3k6S6pYnyQYKvK/VC1O6W0wAjj2o8jK
	 BFSOXBhJiocESx7bjUz8XyD8Xki1y7dymQIHMlb+vuMhNaRdSsuMc+vzs+Vy/7OMYC
	 dQYhtmcIw8YGWicI2iUJx4ezMLQHA8B4/KsNKLH7a/6QjZJa896fOK/0ATMJR4uVt5
	 AdnISnq9i30+Teum8o+Jeh9iDXUXGYqjlzsV016HNoS/+ceXxqDGpmfxzv23X+0FUh
	 rAGob45wrO+Pg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: rockchip-usb: fix reset control leak
From: Manivannan Sadhasivam <mani@kernel.org>
To: Xia Yan <yanxia@cmss.chinamobile.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, 
 neil.armstrong@linaro.org, mani@kernel.org, heiko@sntech.de, 
 p.zabel@pengutronix.de, ayaka@soulik.info, kishon@kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, yana06070@163.com
In-Reply-To: <20261115042640.426517-1-yanxia@cmss.chinamobile.com>
References: <20261115042640.426517-1-yanxia@cmss.chinamobile.com>
Date: Fri, 27 Nov 2026 19:28:07 +0530
Message-Id: <179578788741.13164.8538367481844332594.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2030; i=mani@kernel.org;
 h=from:subject:message-id; bh=2LC0gv6PbFQzQ2shw21mBeIjq7U/AJqmn3yIRLpECSI=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCYxy/tnNAqKySBaZmAGd4rkFqYGz3dced8FzB
 MTfEoh13lWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmMcgAKCRBVnxHm/pHO
 9VN+B/98sdGMuznYvCHZlcxI085NqcsaU/rEbhG5UbvhGEpYFkj6/u8oKd3mooQvZlX2tGjFKdV
 PgcK55C6Fo0i/ducIa1zXTckPf1O7vvQvzY0EgqgyWHs2PKM8GAzMU5vZ+34tmkjZRdtNGHZz40
 9aWNyUo26t4Ww9pu+b9GUPYPWWZiU+Yl2/5s53mBHmYoJP2R0Y8KJxoqIt3WMBJKEIXUa8bYSuE
 LC6txnqr4S9bB/hm0prdJI1G3U+1qWV+oTNJEgt7Yit7OlshzUtFgRgKPMi+3gmeRP8rhOueZf0
 Ak4FJMjVf2PMxwknn5y1NRgYRiapdx6ymbozXFKFnU5DH/d1
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-15 12:26 +0800, Xia Yan wrote:
> rockchip_usb_phy_init() acquires a reset control from each PHY child
> node but never releases it on probe failure or driver detach.
> 
> The leaked exclusive control prevents a later probe from acquiring
> the same reset. Since lookup errors are converted to NULL, subsequent
> PHY reset calls silently skip the hardware reset.
> 
> Register a devres action after a successful lookup to release the
> control on probe failure and detach. Keep the child-node lookup and
> the existing handling of lookup errors.
> 
> Found during review of reset-control lifetimes.
> 
> Fixes: 0f74ab59ce87 ("phy: rockchip-usb: use rockchip_usb_phy_reset to reset phy during wakeup")
> Cc: stable@vger.kernel.org

Stop CCing stable list for these minor fixes, please.

> Signed-off-by: Xia Yan <yanxia@cmss.chinamobile.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-usb.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usb.c b/drivers/phy/rockchip/phy-rockchip-usb.c
> index c5a2853a63d3..79b3315b6590 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usb.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usb.c
> @@ -183,6 +183,11 @@ static const struct phy_ops ops = {
>  	.owner		= THIS_MODULE,
>  };
>  
> +static void rockchip_usb_phy_reset_put(void *data)
> +{
> +	reset_control_put(data);
> +}
> +
>  static void rockchip_usb_phy_action(void *data)
>  {
>  	struct rockchip_usb_phy *rk_phy = data;
> @@ -219,8 +224,15 @@ static int rockchip_usb_phy_init(struct rockchip_usb_phy_base *base,
>  	}
>  
>  	rk_phy->reset = of_reset_control_get(child, "phy-reset");
> -	if (IS_ERR(rk_phy->reset))
> +	if (IS_ERR(rk_phy->reset)) {
>  		rk_phy->reset = NULL;
> +	} else {
> +		err = devm_add_action_or_reset(base->dev,
> +					       rockchip_usb_phy_reset_put,
> +					       rk_phy->reset);
> +		if (err)
> +			return err;
> +	}

Why not devm_reset_control_get()?

- Mani



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
