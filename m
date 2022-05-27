Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D06C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8M/r5qbttrioPcvPITDhj9JwcO5607UkwD5Vp2Ct+E=; b=VbqRKQcZDZgFeC
	wV0ttfyXNQNNWcN3oc4gIHaiV0OclvSeQx/EN16a3AXGE3WXTS8E8lBBSevquUVa5lh4kg7tCRhyU
	+iZ7ZZfG4/LEdfuU9MUIt2R9nEA0xfDUl60hGXn6XmlxWr3pIQzJlk1MmzpyMXJNTpmhOfjtZGAUc
	Jthc30lxWxANxcd0mUBsjBCNMRJA5+M0wDmB/AahSDY6jAET2eqi79GauCVIX+4Ujh/070UZzH5AQ
	jr3m/zYIMjf3MqyxxPKr1+8RJ6FmC9IA1ZcMl60+qjWCxb9eZP60ekw7mVOhisoeyB5xAt0GJLuPR
	DJtSEAeoyR+rl/0qvCDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nueec-000jKg-I3; Fri, 27 May 2022 18:25:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nueea-000jJk-TI; Fri, 27 May 2022 18:25:42 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <heiko@sntech.de>)
	id 1nueeZ-0005Db-QP; Fri, 27 May 2022 20:25:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip dts64 changes for 5.19 #2
Date: Fri, 27 May 2022 20:25:39 +0200
Message-ID: <4496518.OBFZWjSADL@phil>
In-Reply-To: <4288609.taCxCBeP46@phil>
References: <4288609.taCxCBeP46@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_112541_013653_1A05AAEE 
X-CRM114-Status: UNSURE (   8.94  )
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

Am Dienstag, 17. Mai 2022, 21:36:09 CEST schrieb Heiko Stuebner:
> The following changes since commit bc405bb3eeee4b711830ab569e7f3811b92196ab:
> 
>   arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x (2022-05-11 06:09:55 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-dts64-2
> 
> for you to fetch changes up to 17c0c5b67353b26a46611cffffd80aadd7215cfa:
> 
>   arm64: rockchip: add clocks property to cru node rk3368 (2022-05-17 21:08:49 +0200)

superseeded by v2.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
