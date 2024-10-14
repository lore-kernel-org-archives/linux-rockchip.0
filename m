Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F3D7D1A429
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 03:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=os77CTaB7NGF+iDK+TXUx5KtwVyIemn3SOEkZtIMZBM=; b=gLPvw6ddZLB61PbT9cDdWgOPgr
	/CaJa/I7QRV4FswaDlrihFJtYb1QafErb3Xj7eQzcoTApRcpJ60kVNgZD6i/ywzIdDhboAzFDPpY1
	lFtSXIuxQVlX4peSRlmXB6VA0bUgnqHV7d8vchhgagsj4E6KP3GouC8JZlw9mlYDvSNsfKePIVoUz
	28mKC4OVdLFUokf2zAwqTD1NbIu5vuCVAJS0pQwxgbuSCEC/I3xfkSHH8CxYGG2LSCH8sUoKK1eqC
	d3QrOO3KEtUVEYdoQk8jg/98+0L4kEatKbMrT1VhrM2OudnAiNzfw911jrMeuamV57MpM/j76R/Hj
	5x+vXHNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0CAr-00000003ePZ-1chf;
	Mon, 14 Oct 2024 03:55:13 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0C9R-00000003eF1-1imM;
	Mon, 14 Oct 2024 03:53:47 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728878022;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Y1kR0sfl5tb/JBd/o562F1YUU5L9dc/UgrNB2JP6zYU=;
	b=LjmScu4vRNphEIqQE9JBQ026JkApI3Iyyl5w66rT93cJil/Myh717LkU0GzqG7H++9WrfS
	mW5qWEK4F3QVP0naYvBhnvZNglv6b3jyePG5qWSXQcwKTG80KBWBqhfLJJfY7Px9KsQ6Le
	6NBxMnjPw3jooKBGoumcA1fblFfd0/MSGd8iQO+SHLU/5MynnT1EYqBBnJYaYT2thXFYT1
	DyXnos9TPh5aEDsO85u9iaC3d+a8h2li/ocjL4e2z/wxA9DAKqJhQ4cc5/sYsXSCp2bRRI
	5HGhI0L1IZTEit3YQQ6USZfYuapcO8QiahyKNfqrakF1r3wvvl+FtEVbcI8phg==
Date: Mon, 14 Oct 2024 05:53:42 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, yubing.zhang@rock-chips.com, Frank Wang
 <frank.wang@rock-chips.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip-usbdp: add rk3576
In-Reply-To: <20241014020342.15974-1-frawang.cn@gmail.com>
References: <20241014020342.15974-1-frawang.cn@gmail.com>
Message-ID: <00175534f48f419c44836129f9cacbeb@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_205345_951629_8886A136 
X-CRM114-Status: UNSURE (   9.71  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Frank,

On 2024-10-14 04:03, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Add compatible for the USBDP phy in the Rockchip RK3576 SoC.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>

Looking good to me, thanks for the patch.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git
> a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> index 1f1f8863b80d..b42f1272903d 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> @@ -13,6 +13,7 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> +      - rockchip,rk3576-usbdp-phy
>        - rockchip,rk3588-usbdp-phy
> 
>    reg:

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
