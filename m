Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CCA8C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 18:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GngcOXfIYanBc/UpfQT6mChBZBoPHOyjE8BmBxcUqM4=; b=GKo1qS1wFJYpA7
	kZyUK0pv+13S+sCTbB5ZlhXXauqoNVWof6CLrh6rn90IGCmoW1+lselcYVoZZfmxUBIyNLakbUIh5
	IzXbPm0c4SIIAsoIvJ03YL9gwDlTqw7O/qfAmhsLp72xho+Yx/TFSi4tyPDPXjdc6rMTV95fWR69Y
	Dtka6KT72cSkjkea8883BjNdro0RMNLgD82fCvYqUy7mcf+VJp5EtBxx+S9gENawocZcAJ6IfM+zb
	ynU4+L07DoKPDFNbzzKV1uzbidLJMGX8iOvpeIIz3ZWdLQCgKbF/oV1hu2dPg8TcoU1LNXcMq76OV
	SDO3BF9nTQSufkNHlpGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr1qe-00FExQ-4L; Tue, 17 May 2022 18:23:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr1qO-00FEmC-8d; Tue, 17 May 2022 18:22:53 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nr1qJ-0003jU-AF; Tue, 17 May 2022 20:22:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 kernel@pengutronix.de, Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
Date: Tue, 17 May 2022 20:22:44 +0200
Message-Id: <165281160018.3114782.17441294438347634076.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422072841.2206452-1-s.hauer@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_112252_358369_D8FFB378 
X-CRM114-Status: GOOD (  13.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, 22 Apr 2022 09:28:17 +0200, Sascha Hauer wrote:
> It's v11 time. There's only one small change to v10. Discussion seems to
> have settled now. Is there anything left that prevents the series from
> being merged? I'd really like to have it in during the next merge
> window.
> 
> This series still depends on:
> drm/rockchip: Refactor IOMMU initialisation (https://lists.freedesktop.org/archives/dri-devel/2022-April/349548.html)
> arm64: dts: rockchip: add basic dts for the radxa rock3 model a
> 
> [...]

Applied for 5.20.

The vop2 dt-binding header is going through the drm tree and
the reg-names addition is going through drm-misc-next-fixes
into the 5.19-rc kernels and this is a big bunch of dt changes
so I'm leaving them for 5.20.

[16/24] arm64: dts: rockchip: rk356x: Add VOP2 nodes
        commit: 9b3c9f6e57ef26b8478da64e3d49d0438291a98a
[17/24] arm64: dts: rockchip: rk356x: Add HDMI nodes
        commit: db24799d31e7149bd8495a5f41c408434ca1a654
[18/24] arm64: dts: rockchip: rk3568-evb: Enable VOP2 and hdmi
        commit: f2cdaaae9b947970842196ac93d71b0daad3e629
[19/24] arm64: dts: rockchip: enable vop2 and hdmi tx on quartz64a
        commit: 97d7309a70b03d01a154c4308f423b020f7d397e
[20/24] arm64: dts: rockchip: enable vop2 and hdmi tx on rock-3a
        commit: 281f94d9cbac31c1c112d09883bc42021435f1ad

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
