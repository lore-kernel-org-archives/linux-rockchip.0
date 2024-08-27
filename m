Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BFCEC5320E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 09:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mDcLOHnqB46+Tfy6jKYSq13EYbPLiXsBZnSif0tUlyc=; b=R2rdjKIeRZn6LwtP8wj97+RuIh
	9hwyfv+JzNrDyXtDzEL1wsvEx0rpmcCyoN8Izg0d6fogbX3X1EPd1Hs9bR2ILmTcKghm1PETLsVHu
	exnkYRTLHPKa4H+FR6PrEuLwnqnMuMRRn6D+FLu1cY6z17yNXelTEyJFCJyjd786EFY1YJxJX1cTM
	sceRVhFBIaNakF0tXQZGBWpMmX2/EtG97yIAlOe1jp8PUvkOkptP+fJDnjCRpnt1HA7Rq2zIQegDQ
	v9dzChlXG0jrG8XH8UfXiM/7cQyhi8LT1lNUFD4wDwcQaMGVUxXq2vg0ircaQpkJ7dba78jUE7lKu
	lU8fucIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sis45-0000000AUsp-1cpp;
	Tue, 27 Aug 2024 09:00:37 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sis2W-0000000AUbM-1k0u;
	Tue, 27 Aug 2024 08:59:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 128EAA41688;
	Tue, 27 Aug 2024 08:58:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D68EC8B7A5;
	Tue, 27 Aug 2024 08:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724749138;
	bh=brMwUnoxrTvNJcSO2RG6nxbRHtnEcIrTU0qQDmJE/7U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SkFzgDgDObrJZ62sKyhzDaQWPSu69zfgIIlt6JriR+Pd+4k0BmqKPB5RbGnecjA+g
	 qrGPlLmMaEkmKURMJdZtNLM/xOqwwECLm25Is6vmmxu4L3+ZRXd+ZdvABVItbUmZ4S
	 /T1q9GAaxJgA06eVBchBKVVsoeQfjkYnrsjNIrwOPhYwTTF/XtFvX5ZDqw94r0x0MC
	 HDe8z9qhw+nsOizgwq0aPnslhBS2LAXKi/fU7D1LcyI1BQQP9y+MwNcCDlNTRf3Ohd
	 MH0JYXGNSbadD7+cswhubahggRqDZMbRHcFYw0ZvTvIm7gvhwoBy07crol/e58A2A+
	 ZH5UQRyzp3JFg==
Date: Tue, 27 Aug 2024 10:58:55 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>, 
	Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH v4 2/4] drm/bridge: synopsys: Add DW HDMI QP TX
 Controller support library
Message-ID: <20240827-armored-magnificent-badger-ffb025@houat>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
 <20240819-b4-rk3588-bridge-upstream-v4-2-6417c72a2749@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240819-b4-rk3588-bridge-upstream-v4-2-6417c72a2749@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_015900_540699_4EF8D488 
X-CRM114-Status: GOOD (  13.29  )
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
Content-Type: multipart/mixed; boundary="===============7394212706171186170=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7394212706171186170==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="7d6czoxivc6cezpy"
Content-Disposition: inline


--7d6czoxivc6cezpy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 19, 2024 at 01:29:29AM GMT, Cristian Ciocaltea wrote:
> +static irqreturn_t dw_hdmi_qp_main_hardirq(int irq, void *dev_id)
> +{
> +	struct dw_hdmi_qp *hdmi = dev_id;
> +	struct dw_hdmi_qp_i2c *i2c = hdmi->i2c;
> +	u32 stat;
> +
> +	stat = dw_hdmi_qp_read(hdmi, MAINUNIT_1_INT_STATUS);
> +
> +	i2c->stat = stat & (I2CM_OP_DONE_IRQ | I2CM_READ_REQUEST_IRQ |
> +			    I2CM_NACK_RCVD_IRQ);
> +
> +	if (i2c->stat) {
> +		dw_hdmi_qp_write(hdmi, i2c->stat, MAINUNIT_1_INT_CLEAR);
> +		complete(&i2c->cmp);
> +	}
> +
> +	if (stat)
> +		return IRQ_HANDLED;
> +
> +	return IRQ_NONE;
> +}

If the scrambler is enabled, you need to deal with hotplug. On hotplug,
the monitor will drop its TMDS ratio and scrambling status, but the
driver will keep assuming it's been programmed.

If you don't have a way to deal with hotplug yet, then I'd suggest to
just drop the scrambler setup for now.

Maxime

--7d6czoxivc6cezpy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZs2VRgAKCRAnX84Zoj2+
doR9AX9jVRhemySX3ezsY45XTCyYbffOw0vhn1iAZ9FcKrlkjaZ1jF3VuvQVlqV+
CgkFKFwBfRfYZWXSy78SdiB2VLCDGrHhrKCyjwCWW4R2Le9bIP4lzSh1HDBv4FFA
JXPD9gbLhA==
=OVt5
-----END PGP SIGNATURE-----

--7d6czoxivc6cezpy--


--===============7394212706171186170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7394212706171186170==--

