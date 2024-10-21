Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA82BD15DB3
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 15:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E55Oxfc5VIYr0EMBONRSbMAK1649XE9yb0O5wbrQAF0=; b=pVp0qSiSYuEAFG
	3Uo977NcwgVml332ErYtcYrD5D1xSByVeBDdKIVAgl097cTG+SA96BKOftB55FS8dPkg7mTd+NugR
	7XQ1lhF4cQ3dQ2a3jqqlAn/V1lstU14R2sBB39BV8x1fMhAzBIjEh7z30IulXSSEZGUvnFwQaFQXx
	A21vFAY6s6UN8hnTOncDbaITXrwqTXNI7tZzimN+CfD5MMWvuBSzLplTbmmy5cNghWOao8DLJ9BbB
	mf/uhIEZePfydT/2gsN5/xhr5TxSdTIdsr004Oaq0yjGF8Jd7G4Z0LwVSP+R+d35rFOCUSdgHFE9P
	GioR0xRq7x+UtCHuP+uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uaK-00000007qDC-1asw;
	Mon, 21 Oct 2024 15:44:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uaI-00000007qCe-1bsZ;
	Mon, 21 Oct 2024 15:44:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZFqUWUYVKQfYjVjIVoyPAgypYvN0JyBpBGjvuN4/2aU=; b=rxbEmSVNrNAPEhP6zHqMTwoc2W
	wU9lMMLycOLCvVQAc1mmTCf3p2ul3+CXI+zopIZFPiPr+Ti0rXsnPe651IzL7ETvYSJ3Mw+Y/s7Js
	3DPOBhvgsEehfXcCKNq5J8yWdApl6LoJsflMs2S3mpuoyJA4NvAeDCBca6ZFrmroIvEArakzEqJ7y
	Aa2p8DlfoieughJJmumLpogRQf78V8qlotm/SfVpuRbklwAznpnuqZ4I83PXppMGKnazQFe13N3W2
	Zk9A7y0wKNH3AF6hul+91omAjEIUQrl4bG8YZKGH1KdLJGZeLF6jgbEfXI/AQ975+eq/iwPKwa3ZE
	5vnxsA1Q==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t2uaG-0005jR-LE; Mon, 21 Oct 2024 17:44:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Drop invalid clock-names from es8388 codec nodes
Date: Mon, 21 Oct 2024 17:44:32 +0200
Message-ID: <172952545659.1342338.7302771759427165029.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241019-es8328-dt-fixes-v1-1-ca77d5ce21ad@collabora.com>
References: <20241019-es8328-dt-fixes-v1-1-ca77d5ce21ad@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_084442_440000_475E8A56 
X-CRM114-Status: GOOD (  10.90  )
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

On Sat, 19 Oct 2024 03:38:10 +0300, Cristian Ciocaltea wrote:
> The binding for Everest ES8328/ES8388 audio CODEC doesn't support the
> 'clock-names' property:
> 
>   rk3588-orangepi-5-plus.dtb: audio-codec@11: 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
>     from schema $id: http://devicetree.org/schemas/sound/everest,es8328.yaml#
> 
> Since the related audio driver is also not making use of it, drop the
> invalid property from all es8388 codec nodes.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Drop invalid clock-names from es8388 codec nodes
      commit: 6df447d57800b7f9adb8eb673f1853331be20bb3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
