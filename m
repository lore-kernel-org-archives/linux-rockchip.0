Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56879606A320
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 05:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IWTu7rac
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=0QEJ+HcUzFAUgTZpqYYPlGnvnMJIQoFxg+HfDraZyp0=; b=IWTu7racw/Fir8ObD83fMAJYww
	l/+kRfddNl8MHSnFw6mluR3ad6/Q8Zi7b4w5EJIuNimygShuRw3m0GYYZqyj5KUOMN/m+3vK8Jtpw
	s/Nf5I3UwHCrwPu9iTkkWUkeMPA8+dXNLP4vOUvoE13G2zp7rwtsn7AeWyGCGDruBuvaX1Ft94DL9
	smYSomnExP5s+VYGTKP6w/rKaPDRxWtY094FRy+6beRWwjl0znW1AFtr8P/lVh5gkwlayfFw5d+nf
	LoF2eh59MMUBBlQd9xR3W4HO3RMQrHeupyytrmZwtLDYPjvF58mwDGl3iSeMtwSyvINAPTz8kjUd6
	QxHLWoTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV0UM-00000000kum-1Vei;
	Sun, 22 Nov 2026 05:51:46 +0000
Received: from mail.hit.edu.cn ([202.118.224.62])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV0UG-00000000kuC-2Tnz;
	Sun, 22 Nov 2026 05:51:44 +0000
Received: from 220110626hanxuechao$alu.hit.edu.cn ( [219.223.233.19] ) by
 ajax-webmail-mail-appserver03 (Coremail) ; Sun, 22 Nov 2026 13:51:27 +0800
 (GMT+08:00)
Date: Sun, 22 Nov 2026 13:51:27 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: 220110626hanxuechao@alu.hit.edu.cn
To: linux-rockchip@lists.infradead.org
Cc: "Heiko Stuebner" <heiko@sntech.de>,
	"Liu Changjie" <liucj1228@outlook.com>,
	"Alexey Charkov" <alchark@gmail.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC] arm64: dts: rockchip: rk3576-lckfb-tspi-3m: sdmmc0_det_l
 question
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2026.2-cmXT5 build
 20261015(8d7e304b) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-0670b814-d594-4118-92e0-dc1bc2f00e12-hit.edu.cn
X-CM-CTRLMSGS: =?B?4U4dcjiH6nJ5xwDR7hwMki1N8jM=
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-ID: <5e6ebf68.3773.1a201cf3894.Coremail.220110626hanxuechao@alu.hit.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: P0WgCgDXlYffggJrW6MxAA--.1562W
X-CM-SenderInfo: yssqiiaqwslx5dq03vpfkd0qhdoxhxllwovvfxof0/1tbiAgQTAGs
	BgIcYVgAFsz
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_215141_059857_7F3AAEAD 
X-CRM114-Status: UNSURE (   3.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.2 (-)
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
X-Spam-Status: No, score=-3.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FROM_STARTS_WITH_NUMS,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Heiko, Liu Changjie,

I have a question about the SD card detect configuration of the LCKFB
Taishan Pi 3M.

The &sdmmc node uses the board-specific sdmmc0_det_l group:

    sdmmc {
        sdmmc0_det_l: sdmmc0-det-l {
            rockchip,pins = <0 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
        };
    };

which muxes GPIO0_A7 as a GPIO, matching

    cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;

The SoC dtsi already provides sdmmc0_det for the same pin, using the
SDMMC0_DETn function instead:

    sdmmc0_det: sdmmc0-det {
        rockchip,pins = <0 RK_PA7 1 &pcfg_pull_up>;
    };

and other RK3576 boards use it together with cd-gpios, for example
rk3576-evb1-v10.dts and rk3576-evb2-v10.dts. Both groups configure the
same pin with the same pull-up; only the pin function differs.

I tested the node below on a Taishan Pi 3M with mainline v7.4-rc2,
i.e. with sdmmc0_det instead of sdmmc0_det_l and cd-gpios unchanged,
and card insertion and removal are still detected correctly:

    &sdmmc {
        bus-width = <4>;
        cap-sd-highspeed;
        cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
        disable-wp;
        max-frequency = <50000000>;
        no-mmc;
        no-sdio;
        pinctrl-names = "default";
        /* GPIO0_B6/SDMMC0_PWREN is not connected on this board. */
        pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_det &sdmmc0_bus4>;
        vmmc-supply = <&vcc_3v3_s0>;
        vqmmc-supply = <&vccio_sd_s0>;
        status = "okay";
    };

Could you explain the reasoning behind using sdmmc0_det_l instead of
sdmmc0_det here? Card detection also works with sdmmc0_det in my
testing, so I would like to understand whether the board-specific
group is required or just a preference.

Thanks,
Xuechao Han
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
