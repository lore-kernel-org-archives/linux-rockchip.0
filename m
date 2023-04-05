Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DA82C761AF
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 17:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65e7QIwmJS+2RMRCjPTpgeIq12x7jTHhs4r51rrQlzo=; b=ZlpXWfDhcHj2tR
	JIB+lSCEkWm1ON7iLeoSciMZxrG5VBFsGuiv7q1d855oBEWBO0pl4PsDdllUMO6q46LJTC1QUE8vh
	u3rjPEz1F3uGN2Z44Lke2o+C+BCz7vlKT9hMhqfXFPkM42ZKuDryUs6FvqBGZR8m35CxTmpfI1/U2
	Rw7lt1DzBCSy0s3GTVyqR953hq8oRH4OQZ2G83XtoRkJS6mjIeXj72wwegxluPtyGMOZCv0BL5oeU
	fwfBLcvfYB3MCBpG580cw7imOY/7wJ0l+QR9aKQEjQ4MylW5ESdr/634bjDkJUFGyAG6YuKOGI4VT
	BJiOgjHluughXoFH/3Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk7D7-005IBY-0J;
	Wed, 05 Apr 2023 17:46:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk7D1-005I7s-2i;
	Wed, 05 Apr 2023 17:46:12 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pk7Cu-0000Me-Qh; Wed, 05 Apr 2023 19:46:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	Shreeya Patel <shreeya.patel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Christopher Obbard <chris.obbard@collabora.com>,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: Enable RTC support for Rock 5B
Date: Wed,  5 Apr 2023 19:46:01 +0200
Message-Id: <168071663556.3186456.192019947395019850.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230405082711.46303-1-shreeya.patel@collabora.com>
References: <20230405082711.46303-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_104611_876204_2BA6D094 
X-CRM114-Status: UNSURE (   8.28  )
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

On Wed, 5 Apr 2023 13:57:11 +0530, Shreeya Patel wrote:
> Add DT node to enable RTC support for Rock 5B board.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable RTC support for Rock 5B
      commit: 1e9c2404d8870ec08bfc338ae7113c3f7fe0b171

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
