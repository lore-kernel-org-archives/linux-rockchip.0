Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE1A4C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 12:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ug7SGkEnaiqJvZZezTcSmKef5sy/NRF9JJhpa7CfJR0=; b=WjtuTKlLE4ctd0
	XRcI/MgH2kZpCE8EdaVPeoN45iD3qkq/cmYCL+U/WBMDtXAIUZ1jOCaVXy7Go3P+3h5dj1Y18imxw
	WxaifOVm7T+n/ztslz5clDF3BfFPwpjhGTwziKBWiJrJhuM74iDRtbtRVnOFu7ZwpbXjp5aqAjaMa
	pHK2or3SJtJTOvmJ/tOyR8vKB9SOKHzbZnRMwCY9qpL9cS6tK7nMvfZ03bWMsRasJ7CcaSKzTk7Mk
	eyONb4jwp2yz1oX3v6FNT4vNHnXY/dijcY1c4r4ltqkz6sFlRuZKi1NUht6unZH3b1iRLQu/OO0+M
	rw4dlaP4qVhwrBj3fVPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPLz-00BaDa-MR; Mon, 17 Oct 2022 12:36:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKZ-00BZMT-60; Mon, 17 Oct 2022 12:34:57 +0000
Received: from p508fc122.dip0.t-ipconnect.de ([80.143.193.34] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1okPKO-00087p-G0; Mon, 17 Oct 2022 14:34:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Lev Popov <leo@nabam.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Dan Johansen <strit@manjaro.org>,
	Peter Geis <pgwipeout@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4] arm64: dts: rockchip: fix quartz64-a bluetooth configuration
Date: Mon, 17 Oct 2022 14:34:39 +0200
Message-Id: <166601006787.173248.7939745921519650115.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926125350.64783-1-leo@nabam.net>
References: <CAMdYzYpdhJ-wWN9UAppQvaNqK8Y_RadYv2v67gD5S_u=1ZXw0Q@mail.gmail.com> <20220926125350.64783-1-leo@nabam.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_053455_247205_B496A5CB 
X-CRM114-Status: GOOD (  11.20  )
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

On Mon, 26 Sep 2022 14:53:48 +0200, Lev Popov wrote:
> For "Quartz64 Model A" add missing RTS line to the UART interface used by
> bluetooth and swap bluetooth host-wakeup and device-wakeup gpio pins to
> match the boards physical layout. This changes are necessary to make
> bluetooth provided by the wireless module work.
> 
> Also set max-speed on the bluetooth device as it's not automatically
> detected.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix quartz64-a bluetooth configuration
      commit: 2dcd7e0c821fe9b663f7d3382b6d2faa8edf2129

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
