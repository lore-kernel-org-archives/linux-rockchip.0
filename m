Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756D0606A31F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 21:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EPilFyEt;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=NqIpl9pC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVZoMX0fkNzLxK0K2E/D4qGayhpecZE74kEQ+zZagC4=; b=EPilFyEtJb+E19
	q6RQ4filunG/4yF0ZqSwR7CdbSfGA69CBeDhM/hMtmHZyuoQsocP6rr35Lqtw/4/fNf0YRVeEXRwj
	YRRazn0XzOZbCfZcizsbIiYCElsLAAxZ29dBepKfbCn60iJivji461ZZgSwh4AJ0yEVt862rolnFj
	TaTiwcqfZq1XA7DqMnbbN1VFaJPKkIfi6bGmPX8IyEpb6VK1CNBbNh2nNUZrKvncnGTNQKTMzmEK/
	fe9x338v2qNlsBkswakx2+F9VMQOae3uKdMXy3OBR1jd8CxG1aPwG/jHT5VnPSvhaQRFsX69lrdLT
	tEFZ8vZ9leDcJDaJKbcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIufN-00000008MNt-0gKn;
	Mon, 19 Oct 2026 21:13:09 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIufK-00000008MNL-3Lo1;
	Mon, 19 Oct 2026 21:13:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=nag2B8Ch3hK9SXC5XfJia0Hg3V0D0m5XcYZNjThfpdc=; b=NqIpl9pCltsIliKDjXgVxf4lwC
	eoz/IuSR/baG4ak0YWk8mCCIY9AQ5xezNNWWv5SzcgfwZL4tBXAqLKT4uK1exSqs1nvV801XkQgYi
	quUGrzfQtsfGo5W07K/+hv5JVmvlvhyCEiQ1VshMXlcCuBI5GOIAvQ10agAtOC35fzf8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xIuf0-00Bi1J-0V; Mon, 19 Oct 2026 23:12:46 +0200
Date: Mon, 19 Oct 2026 23:12:45 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Miguel Jesus Seron Gonzalez <info@gluon.es>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dongjin Kim <tobetter@gmail.com>, Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: odroid-m1: use rgmii-id for gmac0
Message-ID: <c8860bfb-b8b8-4255-9b98-42c129ecddc6@lunn.ch>
References: <20261019192254.6933-1-info@gluon.es>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261019192254.6933-1-info@gluon.es>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_141306_860055_B3F4B537 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Oct 19, 2026 at 09:22:54PM +0200, Miguel Jesus Seron Gonzalez wrote:
> The gmac0 node uses phy-mode "rgmii" with the MAC delays
> tx_delay = <0x4f> and rx_delay = <0x2d>. On some boards this TX delay
> does not work at 1000 Mbit/s. Dongjin Kim reported iperf3 throughput
> below 200 Mbit/s on REV 1.0 20220613 boards. On a REV 1.0 20211112
> board, TX from the board stalls completely in iperf3 and ping loss
> grows with frame size (5% at 56 bytes, 20% at 1472 bytes), while RX is
> unaffected. Other boards work with the current value, so it seems to
> be marginal rather than wrong everywhere.
> 
> Instead of tuning the MAC TX delay again, switch to phy-mode
> "rgmii-id", so that the RTL8211F PHY adds both RGMII delays, and drop
> the MAC delay properties, as suggested by Chukun Pan. Dongjin
> confirmed in the same thread that rgmii-id works.
> 
> With this change, on the REV 1.0 20211112 board at 1000 Mbit/s full
> duplex, there were 3 retransmitted TCP segments out of 24929 (0.012%)
> over almost four hours, no RX/TX errors and no ping loss.
> 
> Fixes: fd3583267703 ("arm64: dts: rockchip: Add Hardkernel ODROID-M1 board")
> Link: https://lore.kernel.org/r/20250819075522.2238643-1-tobetter@gmail.com
> Suggested-by: Chukun Pan <amadeus@jmu.edu.cn>
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Miguel Jesus Seron Gonzalez <info@gluon.es>

> @@ -200,7 +200,7 @@ &gmac0 {
>  	assigned-clock-rates = <0>, <125000000>;
>  	clock_in_out = "output";
>  	phy-handle = <&rgmii_phy0>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-supply = <&vcc3v3_sys>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&gmac0_miim
> @@ -209,9 +209,6 @@ &gmac0_rx_bus2
>  		     &gmac0_rgmii_clk
>  		     &gmac0_rgmii_bus>;
>  	status = "okay";
> -
> -	tx_delay = <0x4f>;
> -	rx_delay = <0x2d>;

Correct from the DT binding point of few.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
