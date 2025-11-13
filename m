Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FFD2CD98FC
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 23:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOhJv9/0zDJNOnDki9XD14QXlpzXFZrhg4MTVvqIaIo=; b=VlE6ODHvb8trRP
	eCQgudOOqlx95MRlHTlfLK+7njmo3GylY/ArXSO5TwpDfefMfZTDjl09ZuynUEa3YZ05Q909Ve/tg
	i44cHAwAwh/FLi+PebgbI0S66M57ZCcF+AIwf/3q/miWZm6WIOtAMhTnJS1nMFQMwWkFWTiW7EDgI
	31Ue+JHduKDkjt/VjxB7Cv5E+tQTywXUH6JHtRZ/T0zhdoAKuoHmhtsc+vGm7zJAJt0HUAQvwsWwW
	JzFBFmi4NOihp4ma2uwMhEhE4Z2sHnr7jxcm5ERx4S0A8TKrrU5D4EcoFCxEWLOW4tIv9ljnv5peS
	Y2kXaRpR+EtWmPbFahYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgMz-0000000BEHy-3n82;
	Thu, 13 Nov 2025 23:04:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgMo-0000000BEB1-0YN4
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 23:04:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dCqx29Rc1ck4IsdZkarUioqaw/QiURT/qw2fgwx1ui0=; b=Wk1B+rR9NqqursXSj9rNtf5XF0
	arBqfrURJcrwsYDBSKpjqzHaQAykOAZavsDxc0TH3mw906lLNfnUZyiOjMvMZ6wzcI3isjqa57B8D
	4EMmGzW/7kbnt67+MXGrH2QPZj2cbLf2dhKadpn3si1aMt6I+zPUE8TSVD4jhDVwcDc6FPyvXw93M
	ATbyXgpyNA7vHq2Nv+CnX7ngX5KgMTM/h0SAfrSC2vyAvr5oJjVQMBU+x1Nm4wBFIRw4KW0+R5sWl
	jStwgnOWs/B9NtBnmmCXnawcxzUURlk1MsSm9Uh+6+jgDBCb1iWc94/3vrRNCfCXAExPrpY59YrQs
	me2CMmiA==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMm-0005bo-9g; Fri, 14 Nov 2025 00:04:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	damon.ding@rock-chips.com,
	sebastian.reichel@collabora.com,
	jbx6244@gmail.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable USB-C DP Alt for Indiedroid Nova
Date: Fri, 14 Nov 2025 00:04:27 +0100
Message-ID: <176307502902.495066.1512477613240846697.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251107214724.878955-1-macroalpha82@gmail.com>
References: <20251107214724.878955-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_150438_191260_F0A43061 
X-CRM114-Status: UNSURE (   9.79  )
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


On Fri, 07 Nov 2025 15:47:24 -0600, Chris Morgan wrote:
> Enable the Display Port alt-mode for the USB-C port on the Indiedroid
> Nova.
> 
> Note that while ROCKCHIP_VOP2_EP_DP0 is defined as 10 we need to
> set the address to "a" or else we receive a dtc warning.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable USB-C DP Alt for Indiedroid Nova
      commit: 7230cdc1fc3cd1b6721df1dbf46c1e2403042203

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
