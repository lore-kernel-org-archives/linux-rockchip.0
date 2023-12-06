Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54D05C10DCE
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 11:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/VachYpAh/S0pmBHUEl46PBA88X1Wk0000LeHEIDEl8=; b=hUoTjDk65e+1vD
	dTOYfG1GQJplG3EaBRNFcju0VrcJRiEeuexhuUniTnZNaUS+XDsMRcBS6PZRkoOMNG75qZRo2wdxP
	/Yw62S3Nu3JM2dSrZjL0gwamAqlKF9RePxUeOhlx+yW6F2Kqfg04wjmmb8CAaJx/S+FdN56ANjOqB
	l4/Yc8xjsZtTKoyowxIdfMjTpKqavxC1FSOhyJNUsftldSdOIqe6Tx8ZwRCYHwKwLfDqRn1g1J+6h
	8DKMxHigDktk0bcTGX10CkuosxYmkDPUb7nu+zECqsK6lawCyN/BOzk/XNxO2EM7TPBDCk6BKKYdt
	TvmbUX1EM85nruRlmFfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rApxf-009ujc-20;
	Wed, 06 Dec 2023 11:21:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rApxc-009uiz-3D
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Dec 2023 11:21:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rApxY-0001hA-I4; Wed, 06 Dec 2023 12:20:56 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rApxV-00Dwmh-8D; Wed, 06 Dec 2023 12:20:53 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rApxV-005XuA-5K; Wed, 06 Dec 2023 12:20:53 +0100
Date: Wed, 6 Dec 2023 12:20:53 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Andy Yan <andyshrk@163.com>, heiko@sntech.de, hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com, kever.yang@rock-chips.com,
	chris.obbard@collabora.com
Subject: Re: [PATCH v3 12/14] drm/rockchip: vop2: Add debugfs support
Message-ID: <20231206112053.GA1318922@pengutronix.de>
References: <20231130122001.12474-1-andyshrk@163.com>
 <20231130122449.13432-1-andyshrk@163.com>
 <20231205091541.GV1057032@pengutronix.de>
 <593f1092-3f5b-42ab-bc6e-dbd0fc8fb8ba@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <593f1092-3f5b-42ab-bc6e-dbd0fc8fb8ba@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_032101_057101_B9F951E0 
X-CRM114-Status: GOOD (  23.77  )
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

On Wed, Dec 06, 2023 at 06:20:58PM +0800, Andy Yan wrote:
> Hi Sascha:
> 
> > > +	unsigned int n = vop2->data->regs_dump_size;
> > 
> > 'n' is used only once, it might be clearer just to use the value where
> > needed and drop the extra variable.
> 
> Okay, will do.
> > 
> > > +	unsigned int i;
> > > +
> > > +	drm_modeset_lock_all(drm_dev);
> > > +
> > > +	if (vop2->enable_count) {
> > > +		for (i = 0; i < n; i++) {
> > > +			dump = &vop2->data->regs_dump[i];
> > > +			vop2_regs_print(vop2, s, dump, false);
> > > +		}
> > > +	} else {
> > > +		seq_printf(s, "VOP disabled:\n");
> > 
> > There's nothing following after the ':', right? Then this should be
> > "VOP: disabled\n" or without the colon at all.
> 
> the colon will be droped in next versin.
> 
> > 
> > > +	}
> > > +	drm_modeset_unlock_all(drm_dev);
> > 
> > This code is repeated in vop2_active_regs_show() below. Maybe factor
> > this out to a common function?
> > 
> 
> 
> Do you mean all the code between drm_modeset_lock_all and drm_modeset_unlock_all ?

Including drm_modeset_lock_all() and drm_modeset_unlock_all(), yes.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
