Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA027CD6E5D
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 06:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPIF9KAnbAudQ2W1KgEubdK1i2G0QBMNazxtLAAuUuU=; b=yvX9Kj5vTx4Dl1
	8MXwdQkFvHq1gOKLGNMJGiA0k4LJd6hEcDa9bsHzblCf80H7vMcteWNdwr05HN1DjKTOiddwK63fv
	9wBRYd55cw2mJxyT0zm5syhU3T+cL6W2gweaNBrcWdEoIHWmP1q/lWjOXevCkErxM2JnCwBv/X8ZQ
	EtgUQZkVmnjpVl9/a7/GyDaiGy4YKqBuq1OBCTYVDsuqNOjj5sHHV/HZf0u9kQwuhODHDnHysg834
	pBBl383JapvDRb8IA5YRlGBqO+KiSCxeQh/VKI9b1Fb17f+AA+hQ0pZsxpmNwF/O9hBBgS27dvVyW
	ekcv1YcdCZwKbyp5ZMUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVO0j-000000009LF-3IVJ;
	Fri, 05 Jun 2026 06:26:29 +0000
Received: from smtp-out2.suse.de ([195.135.223.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVO0f-000000009Jh-3RAH
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 06:26:28 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 1FFF6758EB;
	Fri,  5 Jun 2026 06:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1780640782; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=HDeTQz58PcqGgdo96oHM1bAJcR1truedFGkSCcBXtWU=;
	b=M/ktB3sDGmweoVLgNXTldix/Xe30DbDNLuF62jskgLSpIFP7B4UDIS4DEc9GWvlaocwIkh
	MzYsboaSx1lq9NL9w3sbKI15lcCvSzUUgy7ZrTTgOWI5JEeGHQVF+Ws2+Lxwav5KmNURWj
	H7HdUv9yY3M5Yo7/TUsecdXNj6mQIjI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1780640782;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=HDeTQz58PcqGgdo96oHM1bAJcR1truedFGkSCcBXtWU=;
	b=D+iPx4bIg0cPuvx5LRbbICTL22xfS2wQ++R9gmSJNJXGkWLeJOe6PCy7H2nCTjiItAfI+1
	cns0pwNXGHlJ7fBQ==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=aDw1UW+A;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=vDZD0R3r
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1780640781; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=HDeTQz58PcqGgdo96oHM1bAJcR1truedFGkSCcBXtWU=;
	b=aDw1UW+A6yqS0t9biGU1kM/uDWClp4JVjfCpCKKYRPoi7hW5ZUoHfFiOFzrKmoJNc0yU2M
	uuYUkV1jhYjR/HyaqMqsUUErX8NJH9lMYGWAImrkVnWSpH3rCgRPaSTi+JaduzU9ke3yFG
	pPaTRpMgw/hnrLvIzrceR6N8QmELCxc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1780640781;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=HDeTQz58PcqGgdo96oHM1bAJcR1truedFGkSCcBXtWU=;
	b=vDZD0R3ry92z2A2yziaUK6wGo4KqKPNJ0t6eVE3IfNyctjPaz+BMIL6O1fwV+VQF5YMMcs
	Mw015zl7yJbuC7AA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id AD5B6779A8;
	Fri,  5 Jun 2026 06:26:18 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id KbQCKQpsImrNcwAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Fri, 05 Jun 2026 06:26:18 +0000
Message-ID: <dce03a80-3d6b-4792-9868-d6052fa3ea77@suse.de>
Date: Fri, 5 Jun 2026 08:26:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/76] drm/bridge: Convert all reset users to create_state
To: Maxime Ripard <mripard@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: Dmitry Baryshkov <lumag@kernel.org>, dri-devel@lists.freedesktop.org,
 Jagan Teki <jagan@amarulasolutions.com>, Liu Ying <victor.liu@nxp.com>,
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>,
 Phong LE <ple@baylibre.com>, Douglas Anderson <dianders@chromium.org>,
 Inki Dae <inki.dae@samsung.com>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Paul Cercueil <paul@crapouillou.net>, linux-mips@vger.kernel.org,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Yannick Fertre <yannick.fertre@foss.st.com>,
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
 Philippe Cornu <philippe.cornu@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 linux-stm32@st-md-mailman.stormreply.com, Jyri Sarha <jyri.sarha@iki.fi>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Icenowy Zheng <zhengxingda@iscas.ac.cn>, Michal Simek <michal.simek@amd.com>
References: <20260530-drm-no-more-bridge-reset-v1-0-875d828d31bc@kernel.org>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <20260530-drm-no-more-bridge-reset-v1-0-875d828d31bc@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.01 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-0.996];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,bootlin.com,linux.intel.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,amarulasolutions.com,nxp.com,pengutronix.de,gmail.com,lists.linux.dev,lists.infradead.org,rock-chips.com,baylibre.com,chromium.org,samsung.com,crapouillou.net,vger.kernel.org,collabora.com,googlemail.com,ideasonboard.com,glider.be,bp.renesas.com,sntech.de,foss.st.com,st-md-mailman.stormreply.com,iki.fi,raspberrypi.com,igalia.com,iscas.ac.cn,amd.com];
	ARC_NA(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	RCVD_TLS_ALL(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	R_RATELIMIT(0.00)[to_ip_from(RLqtaqd5djycn6zz3dm1kuwfni)];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[61];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:url,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns,suse.de:email,suse.de:dkim,suse.de:mid]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Queue-Id: 1FFF6758EB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_232626_145778_0FEC2A17 
X-CRM114-Status: UNSURE (   6.67  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkKCkFtIDMwLjA1LjI2IHVtIDE1OjU5IHNjaHJpZWIgTWF4aW1lIFJpcGFyZDoKWy4uLl0KPiAg
ICAgICAgZHJtL2JyaWRnZTogYWR2NzUxMTogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUK
PiAgICAgICAgZHJtL2JyaWRnZTogYW5hbG9naXhfZHA6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRl
X3N0YXRlCj4gICAgICAgIGRybS9icmlkZ2U6IGFueDc2MjU6IFN3aXRjaCB0byBhdG9taWNfY3Jl
YXRlX3N0YXRlCj4gICAgICAgIGRybS9icmlkZ2U6IGNoaXBvbmUtaWNuNjIxMTogU3dpdGNoIHRv
IGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAgZHJtL2JyaWRnZTogZGlzcGxheS1jb25uZWN0
b3I6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAgICAgIGRybS9icmlkZ2U6IGZz
bC1sZGI6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAgICAgIGRybS9icmlkZ2U6
IGlteDhtcC1oZG1pLXB2aTogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAg
ZHJtL2JyaWRnZTogaW14OHFtLWxkYjogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAg
ICAgICAgZHJtL2JyaWRnZTogaW14OHF4cC1sZGI6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0
YXRlCj4gICAgICAgIGRybS9icmlkZ2U6IGlteDhxeHAtcGl4ZWwtY29tYmluZXI6IFN3aXRjaCB0
byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAgICAgIGRybS9icmlkZ2U6IGlteDhxeHAtcGl4ZWwt
bGluazogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAgZHJtL2JyaWRnZTog
aW14OHF4cC1weGwyZHBpOiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBk
cm0vYnJpZGdlOiBpbm5vLWhkbWk6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAg
ICAgIGRybS9icmlkZ2U6IGl0ZS1pdDYyNjM6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRl
Cj4gICAgICAgIGRybS9icmlkZ2U6IGl0ZS1pdDY1MDU6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRl
X3N0YXRlCj4gICAgICAgIGRybS9icmlkZ2U6IGl0ZS1pdDY2MTIxOiBTd2l0Y2ggdG8gYXRvbWlj
X2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0vYnJpZGdlOiBsb250aXVtLWx0OTIxMTogU3dpdGNo
IHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAgZHJtL2JyaWRnZTogbG9udGl1bS1sdDk2
MTE6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAgICAgIGRybS9icmlkZ2U6IGx2
ZHMtY29kZWM6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAgICAgIGRybS9icmlk
Z2U6IG53bC1kc2k6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAgICAgIGRybS9i
cmlkZ2U6IHBhbmVsOiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0v
YnJpZGdlOiBwYXJhZGUtcHM4NjQwOiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAg
ICAgICBkcm0vYnJpZGdlOiBzYW1zdW5nLWRzaW06IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0
YXRlCj4gICAgICAgIGRybS9icmlkZ2U6IHNpaTkwMng6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRl
X3N0YXRlCj4gICAgICAgIGRybS9icmlkZ2U6IHNzZDI4MjU6IFN3aXRjaCB0byBhdG9taWNfY3Jl
YXRlX3N0YXRlCj4gICAgICAgIGRybS9icmlkZ2U6IGR3LWRwOiBTd2l0Y2ggdG8gYXRvbWljX2Ny
ZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0vYnJpZGdlOiBkdy1oZG1pLXFwOiBTd2l0Y2ggdG8gYXRv
bWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0vYnJpZGdlOiBkdy1oZG1pOiBTd2l0Y2ggdG8g
YXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0vYnJpZGdlOiBkdy1taXBpLWRzaTogU3dp
dGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAgZHJtL2JyaWRnZTogZHctbWlwaS1k
c2kyOiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0vYnJpZGdlOiB0
YzM1ODc2MjogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAgZHJtL2JyaWRn
ZTogdGMzNTg3Njc6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAgICAgIGRybS9i
cmlkZ2U6IHRjMzU4NzY4OiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBk
cm0vYnJpZGdlOiB0YzM1ODc3NTogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAg
ICAgZHJtL2JyaWRnZTogdGktZGxwYzM0MzM6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRl
Cj4gICAgICAgIGRybS9icmlkZ2U6IHRpLXNuNjVkc2k4MzogU3dpdGNoIHRvIGF0b21pY19jcmVh
dGVfc3RhdGUKPiAgICAgICAgZHJtL2JyaWRnZTogdGktc242NWRzaTg2OiBTd2l0Y2ggdG8gYXRv
bWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0vYnJpZGdlOiB0aS10ZHAxNTg6IFN3aXRjaCB0
byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAgICAgIGRybS9icmlkZ2U6IHRpLXRmcDQxMDogU3dp
dGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAgZHJtL2lteDogcGFyYWxsZWwtZGlz
cGxheTogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAgZHJtL2luZ2VuaWM6
IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAgICAgIGRybS9tZWRpYXRlazogZHA6
IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAgICAgIGRybS9tZWRpYXRlazogZHBp
OiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0vbWVkaWF0ZWs6IGRz
aTogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAgZHJtL21lZGlhdGVrOiBo
ZG1pOiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0vbWVkaWF0ZWs6
IGhkbWlfdjI6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAgICAgIGRybS9tZXNv
bjogZW5jb2Rlcl9jdmJzOiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBk
cm0vbWVzb246IGVuY29kZXJfZHNpOiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAg
ICAgICBkcm0vbWVzb246IGVuY29kZXJfaGRtaTogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3Rh
dGUKPiAgICAgICAgZHJtL21zbTogZHA6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4g
ICAgICAgIGRybS9tc206IGhkbWk6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAg
ICAgIGRybS9vbWFwOiBoZG1pNDogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAg
ICAgZHJtL29tYXA6IGhkbWk1OiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAg
ICBkcm0vcmVuZXNhczogcmNhci1kdTogbHZkczogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3Rh
dGUKPiAgICAgICAgZHJtL3JlbmVzYXM6IHJjYXItZHU6IG1pcGlfZHNpOiBTd2l0Y2ggdG8gYXRv
bWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0vcmVuZXNhczogcnotZHU6IG1pcGlfZHNpOiBT
d2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0vcm9ja2NoaXA6IGNkbi1k
cDogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAgZHJtL3JvY2tjaGlwOiBy
azMwNjZfaGRtaTogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAgZHJtL3Jv
Y2tjaGlwOiBsdmRzOiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0v
c3RtOiBsdmRzOiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0vdGVz
dHM6IGJyaWRnZTogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAgZHJtL3Rp
ZHNzOiBlbmNvZGVyOiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0v
dGlkc3M6IG9sZGk6IFN3aXRjaCB0byBhdG9taWNfY3JlYXRlX3N0YXRlCj4gICAgICAgIGRybS92
YzQ6IGRzaTogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAgZHJtL3Zlcmlz
aWxpY29uOiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQo+ICAgICAgICBkcm0veGxueDog
enlucW1wX2RwOiBTd2l0Y2ggdG8gYXRvbWljX2NyZWF0ZV9zdGF0ZQoKWW91IGNhbiBhbHNvIGFk
ZCBteQoKUmV2aWV3ZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRl
PgoKdG8gYWxsIHRoZXNlIG9uZS1saW5lcnMgaW4gdGhlIGRyaXZlcnMuCgpCZXN0IHJlZ2FyZHMK
VGhvbWFzCgoKPiAgICAgICAgZHJtL2F0b21pYy1zdGF0ZS1oZWxwZXI6IFJlbW92ZSBkcm1fYXRv
bWljX2hlbHBlcl9icmlkZ2VfcmVzZXQoKQo+ICAgICAgICBkcm0vYnJpZGdlOiBjZG5zLWRzaTog
VXNlIF9fZHJtX2F0b21pY19oZWxwZXJfYnJpZGdlX3N0YXRlX2luaXQoKQo+ICAgICAgICBkcm0v
YnJpZGdlOiBjZG5zLWRzaTogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUKPiAgICAgICAg
ZHJtL2JyaWRnZTogY2Rucy1taGRwODU0NjogU3dpdGNoIHRvIGF0b21pY19jcmVhdGVfc3RhdGUK
PiAgICAgICAgZHJtL2JyaWRnZTogUmVtb3ZlIGF0b21pY19yZXNldCBzdXBwb3J0Cj4KPiAgIGRy
aXZlcnMvZ3B1L2RybS9icmlkZ2UvYWR2NzUxMS9hZHY3NTExX2Rydi5jICAgICAgIHwgIDIgKy0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jIHwg
IDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW54NzYyNS5jICAgICAg
ICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvY2FkZW5jZS9jZG5zLWRzaS1j
b3JlLmMgICAgIHwgIDkgKysrLS0tCj4gICAuLi4vZ3B1L2RybS9icmlkZ2UvY2FkZW5jZS9jZG5z
LW1oZHA4NTQ2LWNvcmUuYyAgICB8ICA4ICsrKy0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9jaGlwb25lLWljbjYyMTEuYyAgICAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9kaXNwbGF5LWNvbm5lY3Rvci5jICAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9mc2wtbGRiLmMgICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAgZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14OG1wLWhkbWktcHZpLmMgICAgICAgfCAgMiArLQo+
ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14OHFtLWxkYi5jICAgICAgICAgICAgfCAg
MiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14OHF4cC1sZGIuYyAgICAgICAg
ICAgfCAgMiArLQo+ICAgLi4uL2dwdS9kcm0vYnJpZGdlL2lteC9pbXg4cXhwLXBpeGVsLWNvbWJp
bmVyLmMgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14OHF4cC1w
aXhlbC1saW5rLmMgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14
OHF4cC1weGwyZHBpLmMgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9p
bm5vLWhkbWkuYyAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9pdGUtaXQ2MjYzLmMgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9pdGUtaXQ2NTA1LmMgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9pdGUtaXQ2NjEyMS5jICAgICAgICAgICAgICAgfCAgMiArLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9sb250aXVtLWx0OTIxMS5jICAgICAgICAgICAgfCAgMiAr
LQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9sb250aXVtLWx0OTYxMS5jICAgICAgICAgICAg
fCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9sdmRzLWNvZGVjLmMgICAgICAgICAg
ICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9ud2wtZHNpLmMgICAgICAg
ICAgICAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9wYW5lbC5jICAg
ICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9wYXJh
ZGUtcHM4NjQwLmMgICAgICAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9zYW1zdW5nLWRzaW0uYyAgICAgICAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9zaWk5MDJ4LmMgICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9zc2QyODI1LmMgICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAgZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1kcC5jICAgICAgICAgICAgfCAgMiArLQo+
ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMgICAgICAgfCAg
MiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMgICAgICAg
ICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBpLWRz
aS5jICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1t
aXBpLWRzaTIuYyAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS90YzM1ODc2
Mi5jICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS90
YzM1ODc2Ny5jICAgICAgICAgICAgICAgICAgfCAgNCArLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9i
cmlkZ2UvdGMzNTg3NjguYyAgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9icmlkZ2UvdGMzNTg3NzUuYyAgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9icmlkZ2UvdGktZGxwYzM0MzMuYyAgICAgICAgICAgICAgIHwgIDIgKy0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvdGktc242NWRzaTgzLmMgICAgICAgICAgICAgIHwgIDIg
Ky0KPiAgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvdGktc242NWRzaTg2LmMgICAgICAgICAgICAg
IHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvdGktdGRwMTU4LmMgICAgICAgICAg
ICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvdGktdGZwNDEwLmMgICAg
ICAgICAgICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3N0YXRl
X2hlbHBlci5jICAgICAgICAgIHwgMzMgKysrKysrKysrKysrLS0tLS0tLS0tLQo+ICAgZHJpdmVy
cy9ncHUvZHJtL2RybV9icmlkZ2UuYyAgICAgICAgICAgICAgICAgICAgICAgfCAgNCArLS0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9pbXgvaXB1djMvcGFyYWxsZWwtZGlzcGxheS5jICAgICAgIHwgIDIg
Ky0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pbmdlbmljL2luZ2VuaWMtZHJtLWRydi5jICAgICAgICAg
IHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHAuYyAgICAgICAgICAg
ICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHBpLmMgICAg
ICAgICAgICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNp
LmMgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfaGRtaS5jICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfaGRtaV92Mi5jICAgICAgICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9tZXNvbi9tZXNvbl9lbmNvZGVyX2N2YnMuYyAgICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9tZXNvbi9tZXNvbl9lbmNvZGVyX2RzaS5jICAgICAgICAgIHwgIDIgKy0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9tZXNvbi9tZXNvbl9lbmNvZGVyX2hkbWkuYyAgICAgICAgIHwgIDIgKy0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfZHJtLmMgICAgICAgICAgICAgICAgICAgIHwg
IDQgKy0tCj4gICBkcml2ZXJzL2dwdS9kcm0vbXNtL2hkbWkvaGRtaV9icmlkZ2UuYyAgICAgICAg
ICAgICB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vb21hcGRybS9kc3MvaGRtaTQuYyAgICAg
ICAgICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vb21hcGRybS9kc3MvaGRtaTUu
YyAgICAgICAgICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vcmVuZXNhcy9yY2Fy
LWR1L3JjYXJfbHZkcy5jICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vcmVuZXNh
cy9yY2FyLWR1L3JjYXJfbWlwaV9kc2kuYyAgICB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0v
cmVuZXNhcy9yei1kdS9yemcybF9taXBpX2RzaS5jICAgICB8ICAyICstCj4gICBkcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYyAgICAgICAgICAgICB8ICAyICstCj4gICBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYyAgICAgICAgICAgICB8ICAyICstCj4g
ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jICAgICAgICAgICB8ICAy
ICstCj4gICBkcml2ZXJzL2dwdS9kcm0vc3RtL2x2ZHMuYyAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2JyaWRnZV90ZXN0LmMgICAg
ICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vdGlkc3MvdGlkc3NfZW5jb2Rlci5j
ICAgICAgICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vdGlkc3MvdGlkc3Nfb2xk
aS5jICAgICAgICAgICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9k
c2kuYyAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vdmVy
aXNpbGljb24vdnNfYnJpZGdlLmMgICAgICAgICAgICB8ICA0ICstLQo+ICAgZHJpdmVycy9ncHUv
ZHJtL3hsbngvenlucW1wX2RwLmMgICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAgaW5jbHVk
ZS9kcm0vZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuaCAgICAgICAgICAgICAgfCAgNiArKy0tCj4g
ICBpbmNsdWRlL2RybS9kcm1fYnJpZGdlLmggICAgICAgICAgICAgICAgICAgICAgICAgICB8IDMz
ICsrKysrKysrLS0tLS0tLS0tLS0tLS0KPiAgIDcyIGZpbGVzIGNoYW5nZWQsIDExMSBpbnNlcnRp
b25zKCspLCAxMjAgZGVsZXRpb25zKC0pCj4gLS0tCj4gYmFzZS1jb21taXQ6IDIxZmNiMjIyZjBk
MWUxYzlmNWIwNGMwOWU5ZmIzNDA4ZTEzYTAyNjQKPiBjaGFuZ2UtaWQ6IDIwMjYwNTMwLWRybS1u
by1tb3JlLWJyaWRnZS1yZXNldC1jYTIwZDVlMjI3NDAKPgo+IEJlc3QgcmVnYXJkcywKCi0tIAot
LQpUaG9tYXMgWmltbWVybWFubgpHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyClNVU0UgU29mdHdh
cmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApGcmFua2Vuc3RyLiAxNDYsIDkwNDYxIE7DvHJuYmVy
ZywgR2VybWFueSwgd3d3LnN1c2UuY29tCkdGOiBKb2NoZW4gSmFzZXIsIEFuZHJldyBNY0RvbmFs
ZCwgV2VybmVyIEtub2JsaWNoLCAoSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
