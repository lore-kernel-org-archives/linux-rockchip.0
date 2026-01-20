Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C77D2ED0F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 10:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPVhzIf/dYqGijQu8qLoOU3+Aq46onCGbr4OMZzZ+qo=; b=gqMPB7aue9hq0S
	jnFNggd8ddzJHHxGQIIg3WTz+ICBYWoukzHBir7rXLbncMFYzWgaWEAAMcfaJm8m6Ibw8IyxkUZYP
	+wyz8DXmLZvXdotN8ZVSa431lfWYG7MA/JkCYf2LBI2sHkMVSojD8FMs2/y6/XY9mFFfds+b1h31Q
	jbj01RcvFdzVfKmKMXXRWKdxCOh2aHk7LG1RFQJUKJw0zy8eHkDKSzyAdSYFf4DxetbkzZQM3fjY7
	LlhrR8IJaTdeKAGuyK+BqMEuAoOqSU03/4CQyjZUiz54qP3F7hlW9fcXCclSLd1cs8iq+e2RdGjN4
	qxSp4ZU+ar6gxwV3bUKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8p5-00000003bsU-2BxR;
	Tue, 20 Jan 2026 10:18:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8p2-00000003bqZ-2k2B;
	Tue, 20 Jan 2026 10:18:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=KvGx6Or8ias90RT455/oVqLcS68YBnWBSqTrvMmBBH8=; b=IGiJBjx9sLG1WDZtn7YEIixkM1
	WCWdCS8CjvAWaMalOOIcRQx5jbsYzorENUfhKdBtS7FP/82fQIsosNCMWbgMKU3GPqSsGFbbhRTbe
	enswYEj63x/zI0OYzVnvGeIGwrDDtnMlOhUG2V/Ow3z+Fz/kexlGrKg2Q0zOqLWdLSwHb/ZK8vi74
	xIYc+CLyG+epmbUf26U6Ncg8M+hKl664fSt6Fzp1TpCcrto4cZVMcBCyySMT8mL/aDy49oKGbb42g
	h79OtZ0qsK26Vbe3esjmdn7nteAX4hwm58B4OupJmVSiX6OPgbNMYS+sBFSHvAwEsgSGNxPFMHuL2
	hn0AAe9A==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vi8oq-003MG3-T8; Tue, 20 Jan 2026 11:18:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Hotplug detection fixup on Rockchip DW HDMI QP
Date: Tue, 20 Jan 2026 11:18:37 +0100
Message-ID: <176890429962.373062.7112333256096366430.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260115-dw-hdmi-qp-hpd-v1-0-e59c166eaa65@collabora.com>
References: <20260115-dw-hdmi-qp-hpd-v1-0-e59c166eaa65@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_021852_691567_741938FC 
X-CRM114-Status: GOOD (  10.83  )
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


On Thu, 15 Jan 2026 18:24:42 +0200, Cristian Ciocaltea wrote:
> The threaded interrupt handler on RK3576 responsible for providing the
> HDMI HPD capability is currently unreliable, since it's affected by a
> bug leading to a broken hotplug detection in some cases.
> 
> RK3588 is affected by a similar implementation deficiency, however it
> doesn't seem to cause any functional breakage.
> 
> [...]

Applied, thanks!

[1/2] drm/rockchip: dw_hdmi_qp: Fix RK3576 HPD interrupt handling
      commit: 5f7be8afc40c5ccf1be0410514703e50a49532c0
[2/2] drm/rockchip: dw_hdmi_qp: Optimize RK3588 HPD interrupt handling
      commit: aa156ad92523b21b12bfa5bb261d6affb4b1597f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
