Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66E1CC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 12:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFR4rFHULBWVDop5GAv6VEDUtP6QJcQmYfI1KREl7gE=; b=Yq+51EQ5VQD9Ia
	ZHfqO4lkhWHbCgjU3Z27MhLpb5+j7d6QM/jY1ToWmF/TKbFtKz8JdlSCcyH3Rt7iU5Rsw+8d4X5Ly
	oE+ANu4csJGKmLdYXwm+iVEmwBMOjn/b5eLhG5PM3uNse/p6ta/1OwT3hDXgfgMifSe2CnkHHZx1w
	mY2HCH4Yy/y/U7lnUnTfIX6NWAzW1YBsR35DA3UG1BYimanOiVkvs30RsnnueD0jqpAq26wL+WF7j
	EFVYCicJhzSVvKrxw1QE4kd95pueCkTlN02iCy1CIrms5uLK5sk19FAqprR8z9qK36yK/DG2BKuXe
	9O3qWTF7x49idV1jw8kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKe-00BZOC-Ld; Mon, 17 Oct 2022 12:35:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKR-00BZI1-47; Mon, 17 Oct 2022 12:34:50 +0000
Received: from p508fc122.dip0.t-ipconnect.de ([80.143.193.34] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1okPKN-00087p-6N; Mon, 17 Oct 2022 14:34:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	Aurelien Jarno <aurelien@aurel32.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dongjin Kim <tobetter@gmail.com>
Subject: Re: [PATCH v3 00/13] Add support for the Hardkernel ODROID-M1 board
Date: Mon, 17 Oct 2022 14:34:34 +0200
Message-Id: <166601006781.173248.3484905411255334567.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930051246.391614-1-aurelien@aurel32.net>
References: <20220930051246.391614-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_053447_188554_1D31F048 
X-CRM114-Status: GOOD (  15.02  )
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

On Fri, 30 Sep 2022 07:12:33 +0200, Aurelien Jarno wrote:
> On the ODROID forum, Dongjin Kim said he is not planning to submit a new
> version of the patchset adding support for the Hardkernel ODROID-M1
> board. I therefore decided to address the issues reported during the
> initial review, and I also did some small fixes either because some
> things changed in the meantime on the kernel side or because I noticed
> some warning or issues when using the hardware.
> 
> [...]

Applied, thanks!

[01/13] dt-bindings: rockchip: Add Hardkernel ODROID-M1 board
        commit: 19cc53eb2ce63c0e5adc2fd89494fb16f383ac10
[02/13] arm64: dts: rockchip: Add Hardkernel ODROID-M1 board
        commit: fd35832677032980df230f02509d6c016664cc89
[03/13] arm64: dts: rockchip: add thermal support to ODROID-M1
        commit: f5511bd8498da222b6455038a0cf3e7d2b2dfc7e
[04/13] arm64: dts: rockchip: Add NOR flash to ODROID-M1
        commit: 9f96204b7dcf94d03cad41194447c665d10675b7
[05/13] arm64: dts: rockchip: Add analog audio on ODROID-M1
        commit: 78f858447cb78cac7259093d095fb783328b835c
[06/13] arm64: dts: rockchip: Enable vop2 and hdmi tx on ODROID-M1
        commit: 913404aa2e60610f9cae375069dae97e11d726ed
[07/13] arm64: dts: rockchip: Enable HDMI audio on ODROID-M1.
        commit: 1ca7ddddf36494f0f6afd4f35d37827323271f39
[08/13] arm64: dts: rockchip: Enable the GPU on ODROID-M1
        commit: cb80b3455c7cadc4c1157879930e919f607d557c
[09/13] arm64: dts: rockchip: Enable the USB 2.0 ports on ODROID-M1
        commit: 4685d7b68aaac199ab0d950d2047405bf551f964
[10/13] arm64: dts: rockchip: Enable the USB 3.0 ports on ODROID-M1
        commit: 9984ef562653c8d0beb51021fc286706b6ec4802
[11/13] arm64: dts: rockchip: Add SATA support to ODROID-M1
        commit: 6a5a04d52ccc42e0e59ff69fca9c1db7e08ba44b
[12/13] arm64: dts: rockchip: Add PCIEe v3 nodes to ODROID-M1
        commit: 35b28582aa3dfd7b6861b7ebc72798b0ff50ed41
[13/13] arm64: dts: rockchip: Add IR receiver node to ODROID-M1
        commit: d6882992fe8182e3122be34af3f491948a8b9069

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
