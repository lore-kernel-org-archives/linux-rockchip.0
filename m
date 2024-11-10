Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE9ABD12D53
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Nov 2024 20:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvE0wS1nCZdytOQ0H3JunMRb+sVJWBEV6nojLvQLurE=; b=q7R4jUgLhBk3Rl
	v4qgaF/7vQYa8MXFIEQRIk8Y5KkaAcmnr3DbcRSG9nbULoDniD6FgClMiSHsQDo+W/DnfaMyJkxYG
	vDpuxPcMZK3A/ht40Axg5dPBY3SFeEjZ4lIyvrfeGWH0DumhVjSph2ww45ja1KsBBhjT/68TgsBDR
	PseFSMchXoJJVHJrBLBeLNveubGShoiDBkGOT8Pnk9E1OOO3u5gqPTrV/uBzvj6bgLKiyi/0BshRx
	gKvSsV768K1fPbW3km9iqiGE/uF7D3QgwId2FmEmV3Dy1YYLWFH49yYwLiQ1tkxS+LMORFDF1mEBY
	Vv/0UyIe848bPVpnT/vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAELW-0000000FWmA-19x7;
	Sun, 10 Nov 2024 20:15:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAEJk-0000000FWbs-2Csn
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Nov 2024 20:13:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qe+qEuZ4M4Vih2OwgcPCfyY3UjgVJWJN3vbwXtwXFb4=; b=s7bdxTyO1NEakYrJV+E5qMsYQP
	xp4klZ349Jbs2CCXF9VmzsXacr9acCGTYRe87P/OLIpYW6Oumjf2Uc48Z3vxLRXsbVwh99PI94jo/
	iSOMe+X5Q7ihPT3evivm02xPu0kHMrS/tyf3Pq/9V87qoTUd6qPdb50zYjmu62pv7Gz+t7+6XbmZs
	GDdx37tmpoCuRNUk703ZskZ3cdB3Pd9GmOJ2K1VPIx2PIX9HCsE+ODiWyVJSywxSGI4f6rldxsK30
	4iUHo2s3fZBxL9s3uOuPFpE3iuGuxSuQt4TkSTrNYOGunAJIP1BqAfZriJVRFBb0pipcL8kAJeDmc
	0hQy2w6A==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tAEJg-0006eU-Cx; Sun, 10 Nov 2024 21:13:48 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	amadeus@jmu.edu.cn
Subject: Re: (subset) [PATCH v2 1/2] arm64: dts: rockchip: change pinctrl-0 name in pcie3x1 for Radxa E25
Date: Sun, 10 Nov 2024 21:13:41 +0100
Message-ID: <173126942620.136493.12138212981184100161.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240918073236.648-1-naoki@radxa.com>
References: <20240918073236.648-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241110_121352_688111_6BEF8C63 
X-CRM114-Status: UNSURE (   7.83  )
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

On Wed, 18 Sep 2024 16:32:35 +0900, FUKAUMI Naoki wrote:
> to avoid conflict with sdmmc_det, change pci3x1 pinctrl-0 name.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: change pinctrl-0 name in pcie3x1 for Radxa E25
      commit: be41da78a9738514d3b6c1acfaf156bbf380ce57

Didn't take patch2. As you know from the sdmmc runtime-pm thread you were
in too, that whole thing is still in flux, so using cd-gpios does provide
us with the safest and power efficient way for card-detect.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
