Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81759106ACE4
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 20:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxsyfTd5jYMFeXE0lWqS1t5vS1WaOgZcOJc82eS5JrA=; b=aE47BTSgM5iQOy
	MO+/A5vm0HODqQet7X6LZVTI3v/JJQlIjqMD2o1lj1d2r+WmY8eURBDv7o9e+3/QdSpQbb4YoMvSP
	mBI8dsfiru+yYL1ljLJo5bN72g9LrFITK630pJm53gSUw9t63KLNjoYsYmnxh0yjZKLGAqF8RL6fD
	hieQqFr4S2vNcF1EgpJs73SjBM+kaiNUYDs3LRopgrMHIQzl87+UhZK6L50fupmpvJDmZ4gQcNd9D
	cEQBXEwM3URmZc+RQOEE2zTv9KnEY192DvtGkGX10vh5AcEQ3nA0PnIargONLUlpCMYzQawBJ341z
	v11/bYprKOXMg7cqWtuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0mEy-0000000FCiK-411h;
	Thu, 12 Mar 2026 20:02:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0mEx-0000000FCh1-2Lps
	for linux-rockchip@bombadil.infradead.org;
	Thu, 12 Mar 2026 20:02:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=i7B7eudNmSYdWeQ3qtAwOPCgi7p1d24fESkZ0Xs12bw=; b=o74JVPSojOvYRM4i5yQIuS3Ekh
	u0Nb/lxC+buWTGvhqdxXcuTXU2O//Uqbh9MkrDf5fyGv9xJYlIRY6nhoTed0eXy7Qj6M9xq85GS2g
	aFDH4N1KmN2ydU7cgBqrLehhYYKQmGFl4Z4lVEMU4p0Z5jhV0Oap5JBwryoihdkSGN+8vBH2QSx46
	TfYoNB0YylehEyuTYNxilnBFK9IsZN4v1mP5lYu25cXKoQxBwyRTHhHJ0jcJTG0OjCNy0/tUZI+z3
	XLooxMfIf5Yhcx8idb74u9KaD0FhLMg2rMe2KfeyZMrYDCOvyE2zybE83E9EsS89q1V4OYNds8aYj
	bsFZNYww==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0mEm-00000001xE6-1tf8
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Mar 2026 20:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=i7B7eudNmSYdWeQ3qtAwOPCgi7p1d24fESkZ0Xs12bw=; b=dfWdfblXRiDcjRAW1ToGXsDdrV
	KprkgEIlrIMT5UOSVq0WgOknBjXQjqqJDsPDlz50Mi17FiPT6MSgCAWuTaHyolrX+J0jmHC274R2H
	eL0/NVNTzy239jBYfGMz0iiybX1J5eoUjTBbVE6cya9Q2AOe0wFAzzYtl+0Zk/DFUeHW7soxonqbV
	PrwsAEgzDkNr1Y4EvUpYJzHWNcbc2H89WShj8To327UhNSrGmb0clwoJZCRO8HOWcxXzfgm8KooVs
	0mgLUT9pdAXCsy2EtdoKtL/0WcgY7OFgDFZGP4U50+J0m0HuxG3SPv4HPima0/LZDjgEfx5U+3QNA
	lT0MU99Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	sydarn <sydarn@proton.me>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct Joystick Axes on Gameforce Ace
Date: Thu, 12 Mar 2026 21:00:59 +0100
Message-ID: <177334565389.2520391.7051459534443371659.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260310134919.550023-1-macroalpha82@gmail.com>
References: <20260310134919.550023-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_200231_079397_A641B34B 
X-CRM114-Status: UNSURE (   8.39  )
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


On Tue, 10 Mar 2026 08:49:19 -0500, Chris Morgan wrote:
> The Gameforce Ace's joystick axes were set incorrectly initially,
> getting the X/Y and RX/RY axes backwards. Additionally, correct the
> RY axis so that it is inverted.
> 
> All axes tested with evtest and outputting correct values.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Correct Joystick Axes on Gameforce Ace
      commit: 2ed11ad1c2b4c191cb2ed6741be127eb99f8634f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
