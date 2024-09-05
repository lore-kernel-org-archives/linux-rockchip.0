Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E43C0CD5BC4
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 12:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+RHqaFTaT53pnGWExqWaXEBnJEWX3s9P7ui+b1Hc+Q=; b=xO6SN7g8MbeQnx
	uXN2IWCIlr91Xo2XPq2eN2JFd6N8lSW9pTPWWzeQ5iJGr0WlB2f8lShprUjBaeMZynnnhXqKwYZ4H
	QeTng+LKv9925yD00kOawXu6BCP26+MG4FxPMjs5VmN2GkblCo8tkTEcKX5ZqHFONEgiXeE5KNreO
	f3/fnihpAkhkr3kvg71DtdATCSOOBlIXC+69s6fO+hy43bfhL8SUZhQHeetu81lULH20bFR1ZAPep
	k9751SSMczbm9u8TnunDboJ7PTBnDLVXBLoZalRScyLCWBrUQH7c+pq2KAI71yy5SwPUrLTn1rDZm
	rr8yCuf2nGwjhwlUf4Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smC0q-00000008Qjq-2Wuv;
	Thu, 05 Sep 2024 12:55:00 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smBzs-00000008QWP-00zu;
	Thu, 05 Sep 2024 12:54:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=S8TgLN4Yw+ZDsSgCEATL+wXj3SWrLc1NWdPu6L5fBE4=; b=21/jZmpjxG4hMR0fX9Je0/oiDg
	Vu0xBtpk4fZ97NHAwFsWx23icchIIbviVUFRVeBa6KYR7Y40UpFyHn8M55LmuQ7HY6EBmt8K2nZt9
	04sYkBacpSWmI2q4o5WuJSgJHe4g7HYCYEaq9I82FebWM+Gjl8QCs2ShgrpzYMOSGNQI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1smBza-006g5O-Ui; Thu, 05 Sep 2024 14:53:42 +0200
Date: Thu, 5 Sep 2024 14:53:42 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
Message-ID: <3f5bcc6c-5ee0-4fef-bb58-f7acf9551fc1@lunn.ch>
References: <20240904111456.87089-1-bigfoot@classfun.cn>
 <20240904111456.87089-4-bigfoot@classfun.cn>
 <6030542f-070d-4d76-9a5a-fbfc6bd433e6@lunn.ch>
 <1e189c70-e677-453d-9e31-6637196c2b5c@classfun.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e189c70-e677-453d-9e31-6637196c2b5c@classfun.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_055400_062209_E7A5C235 
X-CRM114-Status: GOOD (  13.08  )
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

On Thu, Sep 05, 2024 at 07:17:03PM +0800, Junhao Xie wrote:
> On 2024/9/5 01:25, Andrew Lunn wrote:
> >> +&gmac1 {
> [...]
> > This has been discussed a few times. You should be using phy-mode
> > rgmii-id.
> 
> After I changed phy-mode to rgmii-id, it seemed to work,
> but it didn't transmit any data.
> Maybe I made a mistake or should I continue to use phy-mode rgmii?

How did you change the rx_delay and tx_delay?

In general, we want the PHY to add the delay, not the MAC. Most boards
in Linux do that. But boards using the motocomm PHY have got into a
cargo cult copy/paste of using the MAC to add the delays.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
