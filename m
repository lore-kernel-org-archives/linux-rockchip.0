Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FE48C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 10:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Kb4BP8u6QIL2qPJ5HMbEtW+qHnu81b7f+EW+krtoAM=; b=Uq5LIZFf3G67RP
	Sy+VL0cuJDqhRboIbKxzyVYcdBlPFTcx8cTP/ixKZh+Nfb2FnKJXpi5Wro0t2Mrmanz/DwW+5/IxW
	Y/Oi17bsPZnG2fqop28TUxLlR5B0Hv/CUZxQkoNaNeccgXqmECU4vSpMjyin32pX7S0BkkgpHTjKf
	tTS0jJomcNOXbz6i+H2tR1tozOjYkEVYnJhREcRi+K6DwkikGVc/D6Zz9GlltGARVYL0kK6vUoH4h
	R9p5yHZjQX8rTLlB7+SNR/Jh54KUb/s9GUR2g8m7wAaGxNAnvTI5cKoSJBEzF6EjLrHR+esBC+qyM
	pDPszMr32QzIVmXaa19w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi8B6-00000004fZn-32IP;
	Fri, 10 Jul 2026 10:09:52 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi8B3-00000004fXy-2iLQ
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 10:09:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1783678188;
 bh=FDg1r4G8mrvviKfhBFq/arYf1DlfLAJ4FBPR1ruq5Wo=;
 b=jEN7HRM+Q8H/X1kmwqIUHAPAwT43TaK0c2AF/KBuzNKJqsL+r1r+tQ8HZso9f/LZWEO6zS/q+
 L2aUYa9OmlLCnCul8AFoZNw9yHCJJkF5qTr9vujQ2jMnxn4Re8aOR98Hd+LNRkuCgHVFXjVzWs3
 m7xqF9DUqKXjS33N1LCbH2zWPW6UORUCjQ/D5ElqRbEykgQxwFf8dXbW9QRLJU3Us7F3tB5BHUw
 DmokpBylcy/5Bh0TetiCXzcv8H1acJ0zPfMvJVu6FdpQmMQ2yaqex/Ln/IkmqlGb/rZVy3xi8IP
 WC6vR4UrxVGAA6mDnOc1M6aYzn35NVZwm+W7C9a6JGvg==
X-Forward-Email-ID: 6a50c4e899bdaaa2453e9f64
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.10.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <e739edf6-8531-4e30-83a7-c941acba1ee2@kwiboo.se>
Date: Fri, 10 Jul 2026 12:09:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [bug report] drm/rockchip: dw_hdmi: Propagate bus format to
 display driver
To: Dan Carpenter <error27@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
References: <alDDok08ZB6hBQ4n@stanley.mountain>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <alDDok08ZB6hBQ4n@stanley.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_030950_108198_BB18F056 
X-CRM114-Status: UNSURE (   8.71  )
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

Hi Dan,

On 7/10/2026 12:04 PM, Dan Carpenter wrote:
> Hello Jonas Karlman,
> 
> Commit dc70272cc184 ("drm/rockchip: dw_hdmi: Propagate bus format to
> display driver") from May 18, 2026 (linux-next), leads to the
> following Smatch static checker warning:
> 
> 	drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c:289 dw_hdmi_rockchip_get_bus_format()
> 	warn: 'bridge_state' is an error pointer or valid
> 
> drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>     278 static u32 dw_hdmi_rockchip_get_bus_format(struct drm_encoder *encoder,
>     279                                            struct drm_connector_state *conn_state)
>     280 {
>     281         struct drm_bridge *bridge __free(drm_bridge_put) = NULL;
>     282         struct drm_bridge_state *bridge_state;
>     283 
>     284         bridge = drm_bridge_chain_get_first_bridge(encoder);
>     285         if (!bridge)
>     286                 return 0;
>     287 
>     288         bridge_state = drm_atomic_get_bridge_state(conn_state->state, bridge);
> --> 289         if (!bridge_state)
> 
> drm_atomic_get_bridge_state() never returns NULL, only error pointers.

This issue has already been addressed in the patch "drm/rockchip:
dw_hdmi: Fix error handling for drm_atomic_get_bridge_state()" at [1].

[1] https://patch.msgid.link/20260701030835.2662123-1-nichen@iscas.ac.cn/

Regards,
Jonas

> 
>     290                 return 0;
>     291 
>     292         if (bridge_state->input_bus_cfg.format != MEDIA_BUS_FMT_FIXED)
>     293                 return bridge_state->input_bus_cfg.format;
>     294 
>     295         return bridge_state->output_bus_cfg.format;
>     296 }
> 
> This email is a free service from the Smatch-CI project [smatch.sf.net].
> 
> regards,
> dan carpenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
