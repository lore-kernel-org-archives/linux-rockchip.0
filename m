Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 293CAC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 11:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDCWxAwM8H6Xf5SQZR/X8QHqS+ZSNgb/YopnJsw7CCc=; b=0vjvoOIbMg1+Kd
	u99WnC9ccdJUkuU/zTpQ5bLEsJktND2NAmnE7GVFhE+WBlg+G1vH6JL7lrEQv1oEa2e3hCpM9KDWz
	GZUD47Lir3i1nbydm+1kU6inpaDAxnaNQTdEnHJN8PGSY6GGXmbHjnrcXLehnYIO0VRTCzyEIb8uX
	b59j7vykRHCeq4DmHpI9Kq/E/CQckxoRKoLaJZSvbGQGVHKTbkIViC3rYFPJ/NLZoCDzQSacAs9ak
	7OPQywU9a5ddZUsFNo+9Eb3c5gopKENbijXL30bZq54WNA6q0czP4xbGKlcCoHQsY+ni4snGCE3Zt
	sVXtg46slD/oYi9PKBlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2rFb-0000000GHSN-16ZD;
	Fri, 03 May 2024 11:38:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2rFU-0000000GHLi-3LML;
	Fri, 03 May 2024 11:38:47 +0000
Received: from [213.70.33.226] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s2rFO-0000Tc-LC; Fri, 03 May 2024 13:38:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [v2 0/1] arm64: dts: rockchip: enable onboard spi flash for rock-3a
Date: Fri,  3 May 2024 13:38:20 +0200
Message-Id: <171473602995.3469033.6999294628253231263.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409120003.309358-1-amadeus@jmu.edu.cn>
References: <20240409120003.309358-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_043844_881648_834C0235 
X-CRM114-Status: UNSURE (   7.39  )
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

On Tue, 9 Apr 2024 20:00:02 +0800, Chukun Pan wrote:
> Changes in v2:
>   Add missing cells count.
>   Increase spi max frequency to 104MHz.
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: enable onboard spi flash for rock-3a
      commit: 6c7676a2d3cde81f02e2cb7ac40ca5a99c107dec

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
