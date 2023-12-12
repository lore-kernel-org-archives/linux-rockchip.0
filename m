Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4754AC35274
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 20:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDkUWsIVv+Sutp8hppRUU+fz11aBLfuVa91Qeh79tyk=; b=oiUIpjklnX9Hqx
	WslpNUWushWkqi/vGEBYHGi5lPjsGGEL2J3SzREhT9IEAtpw817/VXefFhQU+zLFVXTsMv0aMDNVh
	pI1zcFn/8cEB0/zSvFllpALRUGSx+6eW2KDKatPfZ0V2bexsIboF6vDsToaltXmIv9eWuihzfBRSn
	GunzPu/dGD1qv7VBt8kPHsDg11r2Cxf0vBZwzAzpCX47WYaeMaYMAVNEAVL1GDBr84o6vipQZ4+Fu
	FRWStj1lhaEmIvwQI1j+sb8K4gW/DlXGQTgoX12qrIq1d/chGtwWG9uWvG2kB8SkWCnvezuTvMU+N
	VXDptsiKY3HWl61UN5ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD9B5-00Cg80-1D;
	Tue, 12 Dec 2023 20:16:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rD9B2-00Cg6t-17;
	Tue, 12 Dec 2023 20:16:25 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rD9Az-0006LK-Kb; Tue, 12 Dec 2023 21:16:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org
Subject: Re: [PATCH 0/4] Remove ethernetX aliases from the SoC dtsi for RK3399, RK3368, RK3328 and PX30
Date: Tue, 12 Dec 2023 21:16:17 +0100
Message-Id: <170241214697.534713.17361998299651815805.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1702366958.git.dsimic@manjaro.org>
References: <cover.1702366958.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_121624_382077_F4EB7EF3 
X-CRM114-Status: GOOD (  11.53  )
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

On Tue, 12 Dec 2023 08:53:47 +0100, Dragan Simic wrote:
> Unlike for the I2C buses, GPIO lines and UARTs, the Rockchip SoC TRMs and
> datasheets define no numbering for the built-in GMAC(s) or MAC(s), if there
> are more than one found in the particular Rockchip SoC.
> 
> Moreover, not all boards or devices based on these SoCs actually use the
> built-in GMAC(s) or MAC(s).  Thus, let's remove the ethernetX aliases from
> the SoC dtsi files and add them back to the appropriate board and device
> dts(i) files.  See also [1] for the initial discussion.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for RK3399
      commit: 8030063ca9b019f9dfb90a654f557d8bb15a97a5
[2/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for RK3368
      commit: 7aab60df473c70f74880267500884b12151b160b
[3/4] arm64: dts: rockchip: Remove ethernetX aliases from the SoC dtsi for RK3328
      commit: 20a9a7667af6b11b7369073d0186d9c92e52db04
[4/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for PX30
      commit: a69907a915e4c15bf7e632cd324ec5c3e38c3afc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
