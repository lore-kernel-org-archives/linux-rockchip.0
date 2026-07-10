Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7283AC43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 10:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HA0jKvSRa41XQgXe1MICZCy1oAUylZ8r/djvven8Aco=; b=PYKbhQUgt9qoxw
	HawxDf1fmT+qdFKGTgxzoNc6s5+Qa5neQzHJlCGju0L9jsp+XdK5MvhyigbYFpRjj2VFWCR0Sj62/
	mgn1iTaHXxcfs7Z6z9Oh4jtRSyRpMna4lrs1XG+9SzuIDzESkTqJMgH/3dmvWn8XruMX/s5+TN311
	T9tsSCZl9Vt1HCKnj/iWUY94uDD4gDKyU1vfXQvrBG6WaV9ucEM4/AOmtqeJJ7hD9DRdHWUsHMxXU
	jWv2X9VkZ5UZml3vEpswPl+fRGoO8nKG/XlI2RRrG+nvhOXNH6nQH+6Q0zpu1Civv6GOuGZPhVZjV
	/wVJURssyEfrxuu9gTzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi85u-00000004ejd-3vJE;
	Fri, 10 Jul 2026 10:04:30 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi85s-00000004ejJ-3Yl7
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 10:04:29 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-6a384e29a20so573757eaf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 03:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783677867; x=1784282667; darn=lists.infradead.org;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wyZXpBPBL61m8TrV16Lohtok6L4J2DeS9zQ53Rr2MRY=;
        b=XS5OBOC7g4v5CZiVuvgl9h+vURSNutEJvqy/fxTat4bdvdK+VZpfpoGG8A/FSX6zjh
         XH8LuRfUA7h9h7L3nti+7GNhQhs7R/am1rt06C+tIyDqy1rx4L5tH7ryjQPDU463gQX/
         hOToos6aN9oF9kzKg0Su96+olm/G9k0ijnW6xSPQHDQtGUPOIeiwyV9hbS8mNF8J+aTc
         N0KAI52ecnOlsBd+GLXPwuVRkLy41DCsRwYrY3EI7/D7EYV9AQuGTjusTWDzobbSTobK
         xBj85JtxGQXnmepbdhVcQPV+l1ucuecGeM0oHNke9hF2sRUQ35zIZkC7r00qBrkKLOgT
         bCLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783677867; x=1784282667;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wyZXpBPBL61m8TrV16Lohtok6L4J2DeS9zQ53Rr2MRY=;
        b=mwbVnUXsqwSpkPr/WGgBbyUmGmG9uYz9tadkZNM3OljfXdDaDbA8u0JfQO7FerZIl+
         zBMa6X0UJcQwq3dsCUArsaX2qgCVxQA0stiOc7zqvXAadk7Ofh1Bt4ER8eHYp0ZjuNpM
         3xs9qBRx44g52LtIe91RyAiZF89idMaA2AhY8QLN9J9mm1zpqvkgszaSj4xhb+bZ9PL+
         i1+uDvqm5OUjT4T76TvDHAVI9/64RaFj/LPpZ1uH2FUj5EMF10xrFQMIGf7vi9KjwAyU
         UNS6oV/VyywC+cQHXtoxetKpagRny0T5qGoRudwoL59RfmDY9hVnNWkj2Q1kVlWwgXTh
         EMpg==
X-Forwarded-Encrypted: i=1; AFNElJ+pl42c/5lDxAJKWe+QJ3xNWT7HWdEqbZ1nSpS6er/7PMAiEJwS3VqU4ZJjr+sVcLx4Y8junk/WpzKtPfTw3w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yybycf1dyllLBE93N68Bc3SkGWKa5io1KUUeWSYD2waeTj98cI3
	X9iEVbBULYjRBfjT+JTW9z+gbUwyvXCpaJo3WkRxhT28Jmg7WAtI16t5Iw9c0ptwvQD4LA==
X-Gm-Gg: AfdE7ckx9wWpbeFXXLJPdB/CW4NfY+odrvDHfL7ULv1eSLA5BnFtCTt/pFkD0Uc30Sz
	QzG6xUZh+7Fp2Fy381BreH+FbG2P5CfmjJPuhCaTuDEiqTSuy54YNFBKtlaixSbZbVre8Juf0yw
	U5LUoRYbNkv0iUzb2Q8W9eo8ncV+WmhIf5wBGW8RccwfIbK20QruP4PpRdIDKolqr+nUc2eBWaV
	pCqhnpx0xyg15p+ofgWGltfjoLorHPSZgK7CymEhJpmGXbDbC22oXEj9NhuBd+gR0gX4veKidhO
	1oi6IIY++6VLxdK/bAh/CyPewF3LTVdO+V+H2ZwggcTn2/bfPrLQuhu1A/S+oFV07aGMy0LrmcO
	zK0HwdN0msQEM0d1CIK+3PhdKw2NWLTcwUEoObrdRPuoZoc3MVv/06WIOoIVKl0BXuUP61bjXyl
	h7AsDc+WNIid5Ixzs=
X-Received: by 2002:a05:6820:c90:b0:6a1:50e9:d589 with SMTP id 006d021491bc7-6a36da636f5mr7405199eaf.70.1783677867421;
        Fri, 10 Jul 2026 03:04:27 -0700 (PDT)
Received: from localhost ([74.80.182.70])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6a38aab2761sm1591968eaf.1.2026.07.10.03.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 03:04:25 -0700 (PDT)
Date: Fri, 10 Jul 2026 13:04:18 +0300
From: Dan Carpenter <error27@gmail.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: [bug report] drm/rockchip: dw_hdmi: Propagate bus format to display
 driver
Message-ID: <alDDok08ZB6hBQ4n@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_030428_911044_21A17E89 
X-CRM114-Status: UNSURE (   5.80  )
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

Hello Jonas Karlman,

Commit dc70272cc184 ("drm/rockchip: dw_hdmi: Propagate bus format to
display driver") from May 18, 2026 (linux-next), leads to the
following Smatch static checker warning:

	drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c:289 dw_hdmi_rockchip_get_bus_format()
	warn: 'bridge_state' is an error pointer or valid

drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
    278 static u32 dw_hdmi_rockchip_get_bus_format(struct drm_encoder *encoder,
    279                                            struct drm_connector_state *conn_state)
    280 {
    281         struct drm_bridge *bridge __free(drm_bridge_put) = NULL;
    282         struct drm_bridge_state *bridge_state;
    283 
    284         bridge = drm_bridge_chain_get_first_bridge(encoder);
    285         if (!bridge)
    286                 return 0;
    287 
    288         bridge_state = drm_atomic_get_bridge_state(conn_state->state, bridge);
--> 289         if (!bridge_state)

drm_atomic_get_bridge_state() never returns NULL, only error pointers.

    290                 return 0;
    291 
    292         if (bridge_state->input_bus_cfg.format != MEDIA_BUS_FMT_FIXED)
    293                 return bridge_state->input_bus_cfg.format;
    294 
    295         return bridge_state->output_bus_cfg.format;
    296 }

This email is a free service from the Smatch-CI project [smatch.sf.net].

regards,
dan carpenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
