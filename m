Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDB2AC5B572
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2026 12:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZopN+OPBwVseOjW+IEkxbqqDmHxdhLFmkp5Klta7fM=; b=WiF1wbpznauKSj
	A1o31x4fSOVv6nLqdbNn/XRep1i4FvD+WHIvRUgIBl5sR7nZlKK+tbPyfigloWHONeLpZxa34nWW7
	A4kwLRh9688Ds+h2JhcPeCvLICHDbxNUF/12SexDdwEmNeMLTU9yuYwQbPmKxMJAMabgO1w38lC26
	nEJDSZgbNJXFHsLsiDY3x+EmjPneyJvB199nWLO4exuhL7vj2RkPb9hiekmZtnfu1AS21lS4MdciH
	q0D4+b4yW2YsNI67xUiVYwuICmQYaAxre5BIgqq7CCW5QuSX9r49gQ5/DYcpi4zsiuQdrJyu0W053
	Hc1A3k1FS0de19bjsYmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaQr-00000004mNG-1tes;
	Sun, 16 Aug 2026 12:57:45 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaQo-00000004mMq-29dQ;
	Sun, 16 Aug 2026 12:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=CsxiuRuiaXu9QWdEGxKrQ+0iwvXtHK0dR2ygl/r7rJY=; b=A
	dixgLQ8GC3uzAWJbog6oeDzbXOg+KYg4PYHW9QyWBaYKli3okIqzibs0W1QXzhxA
	Q91olqreEchq5209hGRHErC1oKiVriA7PfLBJDbwUSmo6WYXpDCH+7+PtWD81twm
	/OMsWWj33RaVLGV1iBJLWzhDXjVP1nfMThEEp2qdJ0=
Received: from andyshrk$163.com ( [61.154.14.86] ) by
 ajax-webmail-wmsvr-40-100 (Coremail) ; Sun, 16 Aug 2026 20:56:29 +0800
 (CST)
X-Originating-IP: [61.154.14.86]
Date: Sun, 16 Aug 2026 20:56:29 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: "Sandy Huang" <hjc@rock-chips.com>,
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	"Andy Yan" <andy.yan@rock-chips.com>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
	"Maxime Ripard" <mripard@kernel.org>,
	"Thomas Zimmermann" <tzimmermann@suse.de>,
	"Andrzej Hajda" <andrzej.hajda@intel.com>,
	"Neil Armstrong" <neil.armstrong@linaro.org>,
	"Robert Foss" <rfoss@kernel.org>,
	"Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>,
	"Jonas Karlman" <jonas@kwiboo.se>,
	"Jernej Skrabec" <jernej.skrabec@gmail.com>,
	"Rob Herring" <robh@kernel.org>,
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"David Airlie" <airlied@gmail.com>,
	"Simona Vetter" <simona@ffwll.ch>,
	"Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>,
	"Luca Ceresoli" <luca.ceresoli@bootlin.com>,
	"Philipp Zabel" <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
	"Dmitry Baryshkov" <lumag@kernel.org>, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	"Alexey Charkov" <alchark@flipper.net>,
	linux-rockchip@lists.infradead.org,
	"Damon Ding" <damon.ding@rock-chips.com>,
	Sashiko <sashiko-bot@kernel.org>, kernel@collabora.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re:[PATCH v11 08/21] drm/bridge: synopsys: dw-dp: Free output_fmts
 when none are valid
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260511(2e539873) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v11-8-0d508505f383@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
 <20260806-synopsys-dw-dp-improvements-v11-8-0d508505f383@collabora.com>
X-NTES-SC: AL_Qu2TBPSTu0Ej7yOdYekfmUgWjuw/WsG1v/Ul1YBSP556jCrp6yoHelRJMXX9zsmrEg+xlzSHfCNT0M9dRK11eZMXHZfeFpAM1yEHZl4OkKR0hg==
MIME-Version: 1.0
Message-ID: <136552e4.194d.1a00aa521b3.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZCgvCgD3HxJ9s4Fq48cyAA--.25348W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7R0HZWqBs32X8QAA3R
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_055742_865892_83F5ABB5 
X-CRM114-Status: UNSURE (   5.81  )
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



Hello Sebastian,

At 2026-08-07 01:02:14, "Sebastian Reichel" <sebastian.reichel@collabora.com> wrote:
>If dw_dp_bandwidth_ok() returns false for all formats, *num_output_fmts
>might end up becoming 0. In this case functions calling it assume that
>nothing needs to be free'd, so free output_fmts within the function to
>avoid leaking memory.
>
>Fixes: 86eecc3a9c2e ("drm/bridge: synopsys: Add DW DPTX Controller support library")
>Reported-by: Sashiko <sashiko-bot@kernel.org>
>Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

  Reviewed-by: Andy Yan <andy.yan@rock-chips.com>

>---
> drivers/gpu/drm/bridge/synopsys/dw-dp.c | 5 +++++
> 1 file changed, 5 insertions(+)
>
>diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>index 8ceb139f1a72..d35dcd4a413f 100644
>--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>@@ -1820,6 +1820,11 @@ static u32 *dw_dp_bridge_atomic_get_output_bus_fmts(struct drm_bridge *bridge,
> 		output_fmts[j++] = fmt->bus_format;
> 	}
> 
>+	if (j == 0) {
>+		kfree(output_fmts);
>+		output_fmts = NULL;
>+	}
>+
> 	*num_output_fmts = j;
> 
> 	return output_fmts;
>
>-- 
>2.53.0
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
