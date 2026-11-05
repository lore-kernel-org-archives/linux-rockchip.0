Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EA0D606D804
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 12:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MDHmDFY6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=H5DzTiBh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bus/d0pzsykREKVo/ylH/M/3hxZ7cKBYNgjeswGEPyE=; b=MDHmDFY659fJd++ZuMP/pFUP5U
	3YdqWMF3bGrMYK6A6vhgOYkNWHs3i7w2knDCyFUBqsyBImm24yXTyw4KWTyQm6mEo0+JJX+kG6Hlx
	jNcwD/A8aVM+XNU55SFiIGavAn+zxvRNxwJrTvooMWWoF10BpzGw3UAWk85HdmUiNeYtjzyEo16BU
	ssEJgvnLX6WKlLhxzDoJCfeA2sMBTY199373iCRAY7Ar++SYV8gAn9Vj/jNSZzdpkUErDqdoNdI3Z
	RNNPxVIrVKs0wzb4pF12kDfvpi/nlu2HXX7MLmr01hbGY1X5MhZQnlP8b7RZz2nObTCdr3zSDQS6x
	3LHi6BGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwH2-00000008qFc-2E67;
	Thu, 05 Nov 2026 12:08:56 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwGw-00000008qB5-0Rk7
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 12:08:52 +0000
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-cd61cef87f1so812441a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 04:08:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793880529; cv=none;
        d=google.com; s=arc-20260327;
        b=OaQKt6ZBozBhu9uZWJ4R9aG6PFXY+mUp7Q4NLDSuKtVRbkWynckJ1II6g7P8F42EQO
         BzJNfqUEvIFk+0j9ZOtFPDz354Q/DsQENPZv9W6uXrCxk2X+9IfrIvqBAqAC+NuXW4RO
         rBqAda1PKsTl5wWJvSebgadruT86HBiIC0Vb0GO7Fyyd7sB9vEyUmBcAPpIyPykryXCv
         ath6jBys48/JZ82qCQUkkvfI9sDJDfS35QNjxEH5MnD4IEtRgkm4jVTtGEBAR8jH9iN/
         rWHsrKzVZk/9bFqWds/bNMRGHaHsxy39ooCCV8jp3SwdLmne6aaozbqgsluXmgaIETNM
         3qAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/0iceX90IqV9oL5wqkzDxra2XjMzLEXwA9jTMie2zR4=;
        fh=HRjLbYRhn0zwsm5gug8JM/orAuZDtmo73ZnlHhn3csE=;
        b=U7A1FoNG2NoM497oLEz9SQu2GsiW/QrYNhQcqqJHQ1ntqsZrAILfUnzpKPR34YcK6P
         hm35HWXkVOBRry4X8clOrA0HAsusrvKH2zrVt9CpZeIbvy0ttssxYaC5/uTyXOuy8KA0
         M+VGSgjKsmq2NfzKjwjrOfxdHCJUh148V0zstOALzfyRJ+UjHy9UsoGBdu6OQPHdDmht
         VQgljx59jNCE61Z4TDTLl9byti510U4poj9U6Pdk5nX2CFVH5n8m3nytYUqUFkKVmkwt
         iysvSw3/AiYxqmy8fdav43IzaJZQlyXV7nOfM7Amp08Y9Zc1/JA65MM8gw9BP2x3xbir
         XVVQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793880529; x=1794485329; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/0iceX90IqV9oL5wqkzDxra2XjMzLEXwA9jTMie2zR4=;
        b=H5DzTiBhEcwjut3CA1Xa4+TQQ2hk5+UwvyF66Gw/buFSXF6ayoK+/81IeE2ZfWxN5K
         lRp65opw71w06tPLkkj7FyoPKHE7fWDISbflvRi+F2mIpmrSq6hL9c6Z3uBIeqrNk6gb
         +aq7fOwkDzgRv/ZnmtK1d+iiXaKZdvWe2h9guwtxsPNNBhsXI8532L9uoB0sz86QlaF6
         c8/mftsoma6jY3CgsMkNc4pVQ1T+r6cjkj5qfc6+5lT4vqjkoBbCXF9Js/q1cjrsUB3c
         okclcyYADBNxwsYYMOuDgq8QSyoor8xkxGi9vqZ0r9+f40GPw+AdJhMv5G7+k36e7CNE
         aqTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793880529; x=1794485329;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=/0iceX90IqV9oL5wqkzDxra2XjMzLEXwA9jTMie2zR4=;
        b=iqFwjaE3a2Qk8lbp1i3pNiisIuO4EwxOCC85MqWyutL9/b5cgiS93ArkDBBFwKhDBv
         TRUGHfWFU7Dt626DQvxB46dfxbLn6L4lAYNupDyeYursQA2aUVlg8KOMUZzjcHUv5EyI
         3LGfGqlABzPTsntcBNcMhWZb2Sm70YrlDVYjG41mk9wbOt+x//pmGciUDlccvNxz5VgT
         VFngHYMDZ/g6QhV1p8+y2GlR7zsLDZMHotV8zn4KaEE3ZMryjIuo3ikNaB6HQvYIrfdK
         yeX9CRf/VGHSjAWwj8F4QQ4xwy80+kmSDt0hJxwaY5e+ZschWDkmLy9xGBSJgwGxX5NM
         Psww==
X-Forwarded-Encrypted: i=1; AKwUvBxehmhrpUf6PUOo6GUlIdPbt3VEkexDAFjtvkO2kilBhaxS9DSi99v3yG5+LOwdITfoB+Svb90zGxyn6L5Djg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/IrxaH7fe2V/B1AD4c2GqLsP9mhJ58EM34es9EUZFZiEu29KHn
	ROgfC3Cav5legkTor76AkPTeNwoKhLtA2teOeh9tH2wQYo0Cu2WSuFdfn9dilQzl/3YboYclKwZ
	IalOsxGLNpbtEl6lvhmH1hUmtGUeTNdr/FLW3cnsp7g==
X-Gm-Gg: AYBFou1Rf4IId9CZ29Fh87dHjkBrxxSePl6XadoGAMBlImQz5En2+dd0ZyL2gz9Or37
	sm9zHvYmu68g2OkG+CtrGRU8xMTf8wY2C1bfLDtV4oNkkqPTLEG5fQGVRsAvQOQPXCh/qWKds0a
	d+bwQVHVwlFLI+4TkiWSLQFtMXlIf6DApg3wjMrsE0jDmbQoDqzjB4M89kPIa/1rXa7qZrqhAJy
	oPyXCwO0BbsyF3hw+hWwOfwruE9A9TQbcEtPhL5FNKVo3GQ0a9y5nkMAHNKjv1mbt2GnjUKbAcm
	dgwHPFKz5zCfjEkaO7FD8i/vQdt0QXiprxHk4IvqUi1ArY5ia8rL5txeYiPu+H+nwz8YkT/SdaO
	vwfMJPQJIle1Oq5+ihwaIFYBnuOUN2WuMdnyc
X-Received: by 2002:a17:90a:ec90:b0:3b0:c11a:902d with SMTP id
 98e67ed59e1d1-3b0c11a91c6mr1036738a91.10.1793880529265; Thu, 05 Nov 2026
 04:08:49 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com> <20261105-dw-hdmi-qp-yuv-v6-13-1bb63ef5766e@collabora.com>
In-Reply-To: <20261105-dw-hdmi-qp-yuv-v6-13-1bb63ef5766e@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 12:08:38 +0000
X-Gm-Features: AclHuK9SHkBLRSAoFwhG6L3qgKeNZAN0mhWE5mO5no7yjWFPSRU-9JZ6TzN2VOg
Message-ID: <CAPj87rM=D4h-EfkTdqbumrM159M9Mb89nJt0K1AgcTrqwAqM6w@mail.gmail.com>
Subject: Re: [PATCH v6 13/15] drm/rockchip: dw_hdmi_qp: Support 10-bit YUV422
 output format
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andyshrk@163.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Daniel Stone <daniels@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Igor Paunovic <royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_040850_178030_1BF71DD4 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, 5 Nov 2026 at 01:01, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> Rockchip DW HDMI QP encoder supports YUV 4:2:2 output through
> ROCKCHIP_OUT_MODE_YUV422, but was limited to 8-bit depth via
> MEDIA_BUS_FMT_UYVY8_1X16.  Add support for its 10-bit counterpart
> MEDIA_BUS_FMT_UYVY10_1X20, which carries two 10-bit components per clock
> cycle on a 20-bit wide bus.
>
> The HDMI PHY scales its PLL output by 8/bpc to undo the deep color
> packing, such that it matches the DCLK rate expected by VOP2.  However,
> YUV 4:2:2 is never deep color packed, as it always transmits two 12-bit
> components per pixel, regardless of the color depth.  From a clock-rate
> perspective this is equivalent to three 8-bit RGB components, so
> configure the HDMI PHY with 8 bpc when YUV 4:2:2 is in use to keep its
> output clock aligned with the TMDS character rate.

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
