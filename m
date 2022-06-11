Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0985EC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 16:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/htcLmyObMGl+VkMKZPMBIW+objx4mF9ett8kgR6rQ=; b=MifpC4VB7jfE/M
	WND2YtKgrUZeF9aZL305UQegnGw5gSRPyOi/Xdiq+OOuaSjAOGs1soN643VkXyFdFMpYJZO9SdtJy
	ySnQ2JkBQHbsPVCneZnbBUW0n77BXfrbANEww9/GG0fAxG3umZa2UENonS/t4/6bCe9cnVnmn8zSa
	KLpHPd0afP5EUhkJ2qkUBemlpob7TdSn51Bomoa5JdG0dyVCgdVysfLMPgQhOAxXBBn8AZWykyydt
	ioZpvETuJBCgskIo/L3pusr8JxP03wfoA+1mK8ocY9lDe6wKPrfFYtxqZSbxeM2T/h7NyY1hkeVND
	zLy++kPTGO93WfD+j2aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o045G-00DpCB-D3; Sat, 11 Jun 2022 16:35:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o045D-00DpAr-HN
	for linux-rockchip@lists.infradead.org; Sat, 11 Jun 2022 16:35:32 +0000
Received: from p508fd9f0.dip0.t-ipconnect.de ([80.143.217.240] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o0459-0005Gw-A5; Sat, 11 Jun 2022 18:35:27 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <linux@fw-web.de>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v2 0/5] Add hdmi Support for BPI-R2-Pro
Date: Sat, 11 Jun 2022 18:35:24 +0200
Message-Id: <165496531172.1959830.17360471748222863606.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220606170803.478082-1-linux@fw-web.de>
References: <20220606170803.478082-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_093531_615359_FE11F467 
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

On Mon, 6 Jun 2022 19:07:58 +0200, Frank Wunderlich wrote:
> This Series adds changes to device tree for Bananapi-R2-Pro to support
> HDMI output.
> 
> v2:
> - explain why always-on regulators currently needed
> - splitted gpu patch to have thermal shutdown config in separate patch
> - added hdmi audio patch
>   - needs this patch/series before:
>     https://patchwork.kernel.org/project/linux-rockchip/patch/20211125100836.423808-2-frattaroli.nicolas@gmail.com/
> Frank Wunderlich (5):
>   arm64: dts: rockchip: set display regulators to always-on on
>     BPI-R2-Pro
>   arm64: dts: rockchip: enable vop2 and hdmi tx on BPI-R2-Pro
>   arm64: dts: rockchip: Enable HDMI audio on BPI R2 Pro
>   arm64: dts: rockchip: configure thermal shutdown for BPI-R2-Pro
>   arm64: dts: rockchip: enable the gpu on BPI-R2-Pro
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: set display regulators to always-on on BPI-R2-Pro
      commit: 2cda380102ff195b6f206660344bf59e47b72e3d
[2/5] arm64: dts: rockchip: enable vop2 and hdmi tx on BPI-R2-Pro
      commit: adecf85c9a853adc89c65c799a11a4a3dc1e4a22
[3/5] arm64: dts: rockchip: Enable HDMI audio on BPI R2 Pro
      commit: f48387c005fa91487cad072bd047b929edfb7947
[4/5] arm64: dts: rockchip: configure thermal shutdown for BPI-R2-Pro
      commit: 870b4dada9a10d93d7904ec9bb32169acdee3eaa
[5/5] arm64: dts: rockchip: enable the gpu on BPI-R2-Pro
      commit: 1526c3a09ecc3e3fc08495fe4a7ff82167354ca2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
