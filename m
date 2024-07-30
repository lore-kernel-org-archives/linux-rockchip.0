Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5486C3DA70
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 16:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOuBTW9DWZ1crEH4RTplbEJ9Lb2OH5bt8lItXr46M/8=; b=j26XLK+8j77nX/
	YKbCVDrWxZfzPJq3hrRAkwI/0f1upxeeUM+FSdiyD004zQeIRZ4N/TgrjPDsyxmGJvXDhhkEbPxPb
	UTTJZahs/BG0YnYwRr7ET91uwspPnTKTn9z7gVVb9oW8w3GMYxWkaF7ND98ACAWSyyPIwg4hiAH+4
	Eju9YYE/SkLfFv/++COeLFpGu+TJcfgRTHc4B8CcDIZyPoHzk+gYiXgUeXyQZE0iPTr7U3XrIq8Uc
	U8P6WLC0AgelczjVgxekfMn5EGNGqPTlTVCpwb8XsvFKIoSVtUzEERyvleKd/SJXFIlBAdOv8Y1nR
	mhMEMFRPvG6yi9nTPxvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYpxk-0000000Fuj0-3QIX;
	Tue, 30 Jul 2024 16:44:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYpxI-0000000Fubn-0JXj;
	Tue, 30 Jul 2024 16:44:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8CF1061FFA;
	Tue, 30 Jul 2024 16:44:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEF2EC32782;
	Tue, 30 Jul 2024 16:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722357847;
	bh=Rftd5SMFzgvkrqtKYeOg6P+2kJ52Nckqpi9+qfZgqvc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CLM52lnozQsI4sXRr0KOts2j9HhXwa/TsStKURYBcCScyOTqEwo8mdBIAXfH6uP+A
	 5lOv8LY9BPSu+BifTimHjr6LBDCDVtkMaSFDT3qDbk26yxtgvb5aadvp191B7qTRxX
	 Bi6CW+eHp0OcxJHeKIvmL7ck2PaX3oefXgD3+1Z5QwscC4HXd/3LyH/3rhGLIZeka5
	 5YB0ISkkCiSPR3WjApCOJ5GqCgPlphKBiYx/cwjwTfxoXAeiyNH12chjCkWylQCn0T
	 8qMm1KxBlF9LN+RqaGbRfYibpVLWf5iPPnfh8G/JuHMPtJXb4fGzOg78zlVh9vugS8
	 go6EvMm6NPVQQ==
Date: Tue, 30 Jul 2024 17:44:01 +0100
From: Simon Horman <horms@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	David Jander <david.jander@protonic.nl>, linux-can@vger.kernel.org,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH can-next 12/21] can: rockchip_canfd: add TX PATH
Message-ID: <20240730164401.GD1967603@kernel.org>
References: <20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de>
 <20240729-rockchip-canfd-v1-12-fa1250fd6be3@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240729-rockchip-canfd-v1-12-fa1250fd6be3@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_094408_178139_E69D2227 
X-CRM114-Status: GOOD (  15.82  )
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

On Mon, Jul 29, 2024 at 03:05:43PM +0200, Marc Kleine-Budde wrote:
> The IP core has a TX event FIFO. In other IP cores, this type of FIFO
> normally contains the event that a CAN frame has been successfully
> sent. However, the IP core on the rk3568v2 the FIFO also holds events
> of unsuccessful transmission attempts.
> 
> It turned out that the best way to work around this problem is to set
> the IP core to self-receive mode (RXSTX), filter out the self-received
> frames and insert them into the complete TX path.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

...

> diff --git a/drivers/net/can/rockchip/rockchip_canfd-tx.c b/drivers/net/can/rockchip/rockchip_canfd-tx.c

...

> +void rkcanfd_handle_tx_done_one(struct rkcanfd_priv *priv, const u32 ts,
> +				unsigned int *frame_len_p)
> +{
> +	struct net_device_stats *stats = &priv->ndev->stats;
> +	unsigned int tx_tail;
> +	struct sk_buff *skb;
> +
> +	tx_tail = rkcanfd_get_tx_tail(priv);
> +	skb = priv->can.echo_skb[tx_tail];

nit: skb is set but otherwise unused in this function.

> +	stats->tx_bytes +=
> +		can_rx_offload_get_echo_skb_queue_timestamp(&priv->offload,
> +							    tx_tail, ts,
> +							    frame_len_p);
> +	stats->tx_packets++;
> +}

...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
