Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01F09C02193
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Feb 2025 08:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PZOqyH3vYZfCyrIii8psUDoiphhhf3ywb1NdoBPeBY=; b=ocYW+mJmckktee
	4UdYsdRK3EYMb0QZ9ad2KOiz7jfpsvAG8F8Ds2LsKrl5obPkERNN2H4a7oD1CDqt4P6A6oGafeG4F
	tbe0G6g+6lsqClvpfDOItslzhScFsIBhgY0YuNFfAaMN+QBMoM3AKiEj71nUWLBakRw4lPPnFD9/Q
	X7SjtMe2sDM0lYEEZCc8MrYbE56JKQOSyh3+iACUqGw+D/0D2GWi5+BHlvdIILi+rKiT7jPmj1RYm
	QWNYF7xtB3NknK7RWqdQKG1LnNGf7uk4QYbXMh62/DDl28ZxqVeZTBw9jUZY8rU9uSCGnGQPz6yz0
	cezg1FAHot9ztWT+o8nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1terop-0000000Eq57-2KHq;
	Mon, 03 Feb 2025 08:28:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tercw-0000000Enbs-3Whb;
	Mon, 03 Feb 2025 08:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=r24954j0p83e4iaisXbIHzASJ/hedULNQIzGrOvva9U=; b=MVBkHUZqYiC0jbcoOvC2m9tlao
	uS8bSj5DCT7Rh72PREbBtwNYnwXwvZcN415feVn9KvXYFUE7b51dH0r4Clr/RAOucJLzpN5SfbtYV
	+c1/mGBTHTTAjPFOsLNxT7kph9lUXjuj1aoHzFNlcRxABgzHKNB+fKJCTsFz96zzvuI2rs3ltm/eL
	QaQbvRje1PyjItf9Vt67pymwMiQuhsN2O86vEjNYHrlZe4n8PQB0Wm8Nqld+QmaCMgWsbAMzkL4M4
	cmJz4xmmW9GSp1yQFCe8xeGZnFGqDbDWX7xC2YHQpmqI+ZcbKFWXOMvmijpAos8Y/klI/+ji+nWei
	8ObiVG/w==;
Received: from i53875b5c.versanet.de ([83.135.91.92] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tercm-0005Vr-Kz; Mon, 03 Feb 2025 09:16:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable HDMI on armsom-sige7
Date: Mon,  3 Feb 2025 09:16:00 +0100
Message-ID: <173857053621.78657.10703057328583669922.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250115023327.2881820-1-liujianfeng1994@gmail.com>
References: <20250115023327.2881820-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_001618_884112_1B0BE061 
X-CRM114-Status: UNSURE (   7.95  )
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


On Wed, 15 Jan 2025 10:33:21 +0800, Jianfeng Liu wrote:
> Add the necessary DT changes to enable HDMI on ArmSoM Sige7.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable HDMI on armsom-sige7
      commit: 1a6a05d15195f74596d5209b4fd8b781a33b7fbe

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
