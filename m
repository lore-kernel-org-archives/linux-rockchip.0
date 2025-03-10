Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7089C28B2E
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 07:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gs+XM9+Ewn3sji5pHXo6UWV+Z/DiTKdt5s8xmfgeel8=; b=xuFna9feQuxZgG
	TraWLkxpmZG1/MxHkO4p+9VibuxOrsxvc2kq5HIYFNTuHn0uj+R6WZPPb/6NNVaGaaIp9V9cMvbNK
	v1syb8hlIMd3EbcwEpuPiTNXgHs9a8rbArhiXz/ShZGWEjokbERROi0roDk533vm/4SBePnxYNY5i
	tvgXVqdsqE7TAF9o4r78Z6gJOn6ZeSGBv9kicxv/S+6KQOwkCgGTuJ1VLIW4k93VO/vjPYVYYfQz6
	mX7ha8XKUtnfsPztwgTfMdHoFP6SbJHHXA20R3Oxa1aukdWZIez++QS3QyEVmi5Tiwd5RSG/6B+OS
	GBBE1/DduEkvxJdyVzOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trXRA-00000001jIS-38pY;
	Mon, 10 Mar 2025 07:20:32 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trXN9-00000001ioc-3JJf;
	Mon, 10 Mar 2025 07:16:25 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id A9FC82591A;
	Mon, 10 Mar 2025 08:16:18 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0QO2kUGrrvhG; Mon, 10 Mar 2025 08:16:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1741590978; bh=ZSuThKs4RRRiIQBWC7D0j8baNXGHTK3a7S1ckfF9qdA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iCfdHmgtbmqK8KQ3CKJXUznYpU7FQEJMgb78NWQR2d/qNTzzWwFfgdofObg9+B41p
	 LhZlu+K9VHzifZnDVyKdO/xKBRnl+xAU4s4pA4zaQ43aqHj+5N+4M6glv7M4ISRWVA
	 pCl9LPavMwU022eFNBiY7EgPRMCRkmPdT2dN2/yw93HLUaIFYF+/81NzB2ykfQrmMg
	 ABQNBBa4sgKYyoKPyu0cxjPNnNy5cDWLgH7T0czc/YvzGlmoQN6X4a8aO9BbitRkBM
	 dgaH/z7CjJ8qu7bAcXRtSFCWh2Btc1c23VlM4ZJjGlIbsGcjNgrvopi3JMirl4xfpd
	 m66kMTlO7QTmQ==
Date: Mon, 10 Mar 2025 07:15:58 +0000
From: Yao Zi <ziyao@disroot.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: andi.shyti@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	heiko@sntech.de, jonas@kwiboo.se, krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add onboard EEPROM for Radxa
 E20C
Message-ID: <Z86RrlBTvt9d40Dk@pie>
References: <20250309070603.35254-4-ziyao@disroot.org>
 <20250310070023.52290-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310070023.52290-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_001624_243585_C422E29A 
X-CRM114-Status: GOOD (  10.65  )
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

On Mon, Mar 10, 2025 at 03:00:23PM +0800, Chukun Pan wrote:
> Hi,
> 
> > +&i2c1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&i2c1m0_xfer>;
> > +	status = "okay";
> > +
> > +	eeprom@50 {
> > +		compatible = "belling,bl24c16a", "atmel,24c16";
> > +		reg = <0x50>;
> > +		pagesize = <16>;
> > +		vcc-supply = <&vcc_3v3>;
> > +	};
> > +};
> 
> This eeprom stores the device information written by the manufacturer,
> such as mac address and sn. So it should be marked as read-only.

Thanks, this makes sense.

> Thanks,
> Chukun
> 
> -- 
> 2.25.1
> 

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
