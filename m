Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F032EC44515
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YD6etnKXfm5M1MWJR2j0EidBKJ8jwoeCKZuYD+NmUH8=; b=t43gKJYO2FJta1
	Wkg8rTDnh90nbkF8plQZRHR12oIvW3LJUZDQO9KVz+jR6llZgetohdD/jfxn1Jx6664PlMbiPLSvX
	uo884omltFuC4+TTcshdnkdmM1lX+XOXWkxiDIfoybwudWDGpL5GvFlz9o4d2Su9XD1pHTH0RVclB
	BOtPKRoXtkzYJlAAFDzHYUlnDkY9bjjjRejYMCV0GD1Q/f3XUdS+7KJkWkrS7Rimbs/yBkU3e+mcK
	gdIRS1fVpXb7XB6n0CK6E19qrZiIr1GQk5FQ1BnKg6nyXlT5R/HMcfCD+CHrmwcHUSucn3hz7avKG
	Gvb5P2s8rDKOScALM/6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQn-00000001UpB-3afQ;
	Thu, 09 Jul 2026 08:48:29 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viHVb-00000004NXM-3jYa;
	Tue, 20 Jan 2026 19:35:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768937718;
	bh=/A4LHTEaDLHlh1euWJRWHRa4K1G1d6F3Yldk56r6Vwo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HEkB8hj9p8LUeEVWO84jAA1w6imq8/lvcrblLSPIsSdVFuaWpCQFeyddLMEHKlbHd
	 egJd9Dj+j0cp3z6GZ5iTIo2xsxPkXvsbNtrrTr4VxtSDty3h+qxFllrmSYUXemBKRH
	 SdM1+l/XaBTa0a/6JWOcSuTmrsHDbFJBpogFOLbNw0DHNntMl/BKh325pTHNQqE0CT
	 J7VIGf1cE80Xck61pu20DlmoemnH7EvVMGDpV0s2gGAka8NRnBApD8E4I6oKW82YjE
	 DNHOFWvze6eVrxkEFl3jHua9Y4e8PTuh1cgMRaOEC7S/wYFJOg85CsZ1CG5NH9R4/1
	 Wcog+W21XTcMg==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DAA5817E0FDB;
	Tue, 20 Jan 2026 20:35:17 +0100 (CET)
Message-ID: <7722373a-b491-4aaa-9527-a8f091cf22fe@collabora.com>
Date: Tue, 20 Jan 2026 20:35:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: fixup! media: synopsys: add driver for the designware mipi csi-2
 receiver
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, Frank Li <Frank.li@nxp.com>,
 Mehdi Djait <mehdi.djait@linux.intel.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251114-rockchip-mipi-receiver-v8-0-bd1cf5cb9588@collabora.com>
 <20251114-rockchip-mipi-receiver-v8-2-bd1cf5cb9588@collabora.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20251114-rockchip-mipi-receiver-v8-2-bd1cf5cb9588@collabora.com>
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_113524_102035_79E0394A 
X-CRM114-Status: GOOD (  13.13  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

Make smatch happy by adding braces around the initialization in switch
cases.

Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
---
@Sakari could you try the following patch? I think this should solve the
issues with smatch/sparse you mentioned off-list.

 drivers/media/platform/synopsys/dw-mipi-csi2rx.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/synopsys/dw-mipi-csi2rx.c
b/drivers/media/platform/synopsys/dw-mipi-csi2rx.c
index 29119a1a8d38..dc82223e312a 100644
--- a/drivers/media/platform/synopsys/dw-mipi-csi2rx.c
+++ b/drivers/media/platform/synopsys/dw-mipi-csi2rx.c
@@ -236,7 +236,7 @@ static int dw_mipi_csi2rx_start(struct
dw_mipi_csi2rx_device *csi2)
                return link_freq;

        switch (csi2->bus_type) {
-       case V4L2_MBUS_CSI2_DPHY:
+       case V4L2_MBUS_CSI2_DPHY: {
                struct phy_configure_opts_mipi_dphy *cfg = &opts.mipi_dphy;

                ret =
phy_mipi_dphy_get_default_config_for_hsclk(link_freq * 2,
@@ -254,7 +254,7 @@ static int dw_mipi_csi2rx_start(struct
dw_mipi_csi2rx_device *csi2)

                control |= SW_CPHY_EN(0);
                break;
-
+       }
        case V4L2_MBUS_CSI2_CPHY:
                /* TODO: implement CPHY configuration */
                return -EOPNOTSUPP;
@@ -293,7 +293,7 @@ dw_mipi_csi2rx_enum_mbus_code(struct v4l2_subdev *sd,
        struct dw_mipi_csi2rx_device *csi2 = to_csi2(sd);

        switch (code->pad) {
-       case DW_MIPI_CSI2RX_PAD_SRC:
+       case DW_MIPI_CSI2RX_PAD_SRC: {
                const struct v4l2_mbus_framefmt *sink_fmt;

                if (code->index)
@@ -304,6 +304,7 @@ dw_mipi_csi2rx_enum_mbus_code(struct v4l2_subdev *sd,
                code->code = sink_fmt->code;

                return 0;
+       }
        case DW_MIPI_CSI2RX_PAD_SINK:
                if (code->index > csi2->formats_num)
                        return -EINVAL;

-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
