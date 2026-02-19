Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04338E9A04E
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Feb 2026 16:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1QJt52P/hxT02rILepIR/lPFBLy+ZkVUQhCPeedgWHU=; b=w1Ebl9SKMWU5/I
	EYnnHxRCOu9FpMos/uuTIx1FFPfnER+bOCcZQZ8Rse596IUKuvYavpYQ9MeYRq3MmKbZTnCo944wM
	YQofoOoBSicH3aHAsCJ7IUCe2rvuSm6bC+1pLsMvkNpnduw+vU1jDK3yDGAI8tuZdEdcb8SzYhJNp
	YojT+lQn5KvXzVwZy/ujGO3u5Pwo7qx5SNDTTF0DsZ+Mo6n6bi8C4ivF6lCvL2m3tCeCdNm11BtDC
	vKypJI+n9rp+B6pMLxTf/l3PdPmelx7gYkyVw+MKvT4Kn50dzzJpJdYkmadIRq178uUhcg0Flwvzr
	6mBh//ceYMK1MP5+ygWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt7FR-0000000BedB-3PhU;
	Thu, 19 Feb 2026 16:51:29 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt7FN-0000000BecU-3pOx;
	Thu, 19 Feb 2026 16:51:29 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 66CE6C2F4F6;
	Thu, 19 Feb 2026 16:51:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id DD6DD5FA72;
	Thu, 19 Feb 2026 16:51:20 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 02A3810368C89;
	Thu, 19 Feb 2026 17:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1771519880; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=KtWJUFwr2nejLGtWeMnXg73B+n8sSCwVl1nqee/L/AE=;
	b=emtHyDpfSn0flo7E/zC9a7V+yot9ZrKtLFqruZ5xew9UH6/ln5wq1OuzAPYQwdOIxuGiHe
	D2nzLEMxgwWQNLHvzGw9ixeEtY5HqSEc+O+MWR8eKEV5HTgGWBJ36X2oqHlo4ZTN+QPNzw
	HxAFPmnv7P/U2jkK25lI1LBfajwlm5POrE3OcJSASiWAPgS2McXGoJHa3GKfRp05Ek+b44
	6/NhetLuCM8D7Usm6fjGtvZXDqprcw3FTXaKphcjkubAdOofDlDW5ON+4TtVMbEZJXeofT
	3RTx/ElcBrj5Hw4kjVdt2eg2F8lXoGlYsq3bB5SRj/nrp3aRlp17exxC3kopPw==
Mime-Version: 1.0
Date: Thu, 19 Feb 2026 17:51:13 +0100
Message-Id: <DGJ3DV155EFE.143J88CZKWBN4@bootlin.com>
Subject: Re: [PATCH] ASoC: rockchip: i2s-tdm: Use param rate if not provided
 by set_sysclk
Cc: "Nicolas Frattaroli" <frattaroli.nicolas@gmail.com>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Jaroslav Kysela"
 <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>, "Heiko Stuebner"
 <heiko@sntech.de>, <linux-rockchip@lists.infradead.org>,
 <linux-sound@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kernel@collabora.com>, "Alexandre Belloni"
 <alexandre.belloni@bootlin.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>
To: "Detlev Casanova" <detlev.casanova@collabora.com>,
 <linux-kernel@vger.kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260218201834.924358-1-detlev.casanova@collabora.com>
 <a024ba9c-f2d3-4bba-93d3-33c0d0bd868b@collabora.com>
In-Reply-To: <a024ba9c-f2d3-4bba-93d3-33c0d0bd868b@collabora.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_085126_386505_F5935A3C 
X-CRM114-Status: UNSURE (   9.32  )
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

Hello Detlev, all,

On Wed Feb 18, 2026 at 10:02 PM CET, Detlev Casanova wrote:
> Hi,
>
> This could also use a
>
> Reported-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
>
> Luca, feel free to add your Tested-by as well :)

Ouch, too late, patch applied already.

Anyway, it looks correct, but I'm going to triple check in a couple days
and get back in the remote case there is any issue.

Thanks for the responsiveness in sending the fix!

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
