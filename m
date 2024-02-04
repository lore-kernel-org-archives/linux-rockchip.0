Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DC22C4828F
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Feb 2024 11:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6tnsydqULmyoscNj9YqNCFwqLIFLR08CFna6x4ayPQ=; b=PmaW5QwLW+7LTv
	CjHVvBegn5u9vDxyaaej2LTk4obxK+Q6eIc6EVg4umIFfOz2hL5ACjCJS6qeNM8MYA/UDwYS0DGs8
	Vl1NVX6ZkOEGAjZPr0j8CJIexUJ31H6j0ZP1IsyxqsxLvU5tFxgw3/PIsMBlgdQPcxjxiU//MZIV+
	9KUfBgrBLPLDPpxGlHJFEIbnD4y2md+nhxvVlfGd1kWQ//T3UY+vCM3LmptTYMrRclJiIFaqVJBPF
	su8XtZXKXVM+ClCDWJ5CBGNVLakHBG9r1sWLbMBZ5XlaX7Igu22e7CBKwrb5IzQOKnICu6iTqzdx+
	bkW6e8jhJC1WCGDx6A7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWaZ7-00000000egj-2RWD;
	Sun, 04 Feb 2024 11:21:37 +0000
Received: from mx1.riseup.net ([198.252.153.129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWaZ4-00000000efU-1Wrl;
	Sun, 04 Feb 2024 11:21:35 +0000
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx1.riseup.net (Postfix) with ESMTPS id 4TSRsf07MjzDqQx;
	Sun,  4 Feb 2024 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1707045686; bh=Vb3YmF683066tIPoSuDUcl9qbopdPekEaMtsmpdpHsE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=o2N7X+iU499azt0/4WdoUiz0OneM3eANP3GSZW+PdMWUoM2dOgJwJCj1s6GCufrJc
	 tsOtvmRttNDhWvnaUYxXePrE5iH2J/KF/cpRSdYm7VlhOD+TayX6g8ccu8bCuH+mme
	 JR+Fhl08DP2R0PCAIM39iBJHAcQ/NuZZHWiSUlpE=
X-Riseup-User-ID: F3B69E510B5B8F6ACC69F1E225E5734AF332A64007D9BE214E89A2D8B174F445
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4TSRsV2pvdzJntZ;
	Sun,  4 Feb 2024 11:21:18 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>,
 Ondrej Jirman <megi@xff.cz>, Manuel Traut <manut@mecka.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>
Subject: Re: [PATCH v4 4/4] arm64: dts: rockchip: Add devicetree for Pine64 PineTab2
Date: Sun, 04 Feb 2024 11:21:05 +0000
Message-ID: <2724385.mvXUDI8C0e@melttower>
In-Reply-To: <20240127-pinetab2-v4-4-37aab1c39194@mecka.net>
References: <20240127-pinetab2-v4-0-37aab1c39194@mecka.net>
 <20240127-pinetab2-v4-4-37aab1c39194@mecka.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_032134_429546_6DA93A77 
X-CRM114-Status: UNSURE (   8.37  )
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

Tested-by: Dang Huynh <danct12@riseup.net>

On Saturday, January 27, 2024 9:48:45 AM UTC Manuel Traut wrote:
> This includes support for both the v0.1 units that were sent to developers
> and the v2.0 units from production.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
