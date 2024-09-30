Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CCB3CF6497
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 10:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5fWWdbIzLWRON/itJ6F/FGfeqkMemX/7o8G7hVRaso=; b=Yi9Ti/RX4Bjtta
	RMic1JznH8N9tMsilmIeR2Wl/yv7W2f86OEUhMPI8vaSefUPtscZASO+8471C55e84APN90bDye1k
	IFZhu55Z3qYXjepoHht6M1jALMqAKuCIKrqN3KcK3FlKneqXU53uKELzMJz94GZUitoqYbXCjuO8+
	ZDe2IWm4S9oqJp+FHBgqGPFXllCaDCXIOouRe3A7vyeKRmKz1JVcjkkRmVLwhpRM+zqdAbCGCDEju
	2aASBXyWlgC0YQ4AE5SWXisUYn+7Z2FgGbwU7KM7HsJMzQWWt20ncw2gEXDRrlZZkefRC3C8MBcUs
	eAEFoXAdMBCUZFtgYNow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svE4I-0000000GlOe-3f9i;
	Mon, 30 Sep 2024 10:55:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svE4G-0000000GlNh-18th;
	Mon, 30 Sep 2024 10:55:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fZdmT2Y0FjWQhc/Q7mHALrHHviCf4Pz3Rvc6tuz0lCM=; b=0RTURJFCOln+oQC65hFfTKgsZx
	9xAnSvWF7QNxOzC0oijqiFwQi9gbnQW9ULoNY2Dfyt7Z9h8ddQ/iXw27RsGuOFTiwG9ZLd6FGQXy4
	eaxjsIN1pFgbfstbL37HkW8dAK7MHbxNccXQq1+gpmYLdqSWlsOxZ/mjONbC+68m3j+WiJD74JRpn
	9n6tUzIFDE7Hk5a6FNGDQD2ZN6XBx7XBqvrotcLJoXf25AAbeEQ9lv7j2QLP5OvWBT0QylT/nk9ZQ
	RE8VHpVAinI92upi9QYhpGd7n7MjsNy9aCYdl5BFq+XPGF1AzR1cBqvcQiTHyXanUKrxzzcvshbtP
	JzhY51ZQ==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4E-0004Xd-BF; Mon, 30 Sep 2024 12:55:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	alchark@gmail.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Start cooling maps numbering from zero on ROCK 5B
Date: Mon, 30 Sep 2024 12:55:36 +0200
Message-ID: <172769365132.1880381.2922815232409278625.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <335ecd5841ab55f333e17bb391d0e1264fac257b.1726954592.git.dsimic@manjaro.org>
References: <335ecd5841ab55f333e17bb391d0e1264fac257b.1726954592.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_035552_355350_7C5499B3 
X-CRM114-Status: UNSURE (   9.12  )
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

On Sat, 21 Sep 2024 23:39:05 +0200, Dragan Simic wrote:
> The package cooling maps for the Radxa ROCK 5B were mistakenly named map1
> and map2.  Their numbering should start from zero instead, because there are
> no package cooling maps defined in the parent RK3588 SoC dtsi file, so let's
> rename these cooling maps to map0 and map1.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Start cooling maps numbering from zero on ROCK 5B
      commit: 6be82067254cba14f7b9ca00613bdb7caac9501f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
