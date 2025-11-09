Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C543CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 21:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApNXpYmgWxSIUXjpRXMMsQdEwqWGpwSjlhdn6g5s2xY=; b=Ls4ozecgioLzCL
	z5NKvyKS5nOWJROdM+7rhs+FImTfAsgoHBqpwyzaA91WO39DnY9Jv6miDXgFpBgibwvA9mZZs7TCc
	YBv8picahCloXiJDLdty7CviaM3erqLRu432Z84VPfnXBsozP2d7RSd371Yi317dcj0q7XD4EqDbf
	kFhyi2rnhqPhAPifZFGq/Q1kJj6vSIMCM9ARHqg2gp0GCw+idDG6LiVGZyzi3Jvf+77D2/z13mUcw
	kwTHYqZPfcbrDCdsvcj9uElFpT/gVpN7dsrO0Jh9iXJNjNzA19JBkld/MqgbuNY0Q/FyVD+S0oZbA
	Um4lp0L7HCrwDzbwmPbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIDKo-00000004PLA-2O8q;
	Sun, 09 Nov 2025 21:52:30 +0000
Received: from out-177.mta1.migadu.com ([2001:41d0:203:375::b1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIDKl-00000004PKm-01OP
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Nov 2025 21:52:29 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1762725142;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GVKL4KOVVv4PCmD5ezWsnIkKKizZfKpAXP3Rk6TFCXo=;
	b=jbwX5XIgZ8KOC3TVlB//6JQ/2kAXWBJGhA0dKdSFOqj/VDG/CeKyypetqde568lvHcMXH7
	IXVm4g5KN9LfH/87jG7giUY7IogeDCjHJyEnzmRt6+FhC6Nb5q9EDgZndFRmrQBUNlPAsz
	GexmkfW3kuSNiP+KbyGpt29nil3281My5V9ibaknzsttsbrjrEo1umJ7PC5F8s8hlh2fra
	ldeIsCdy9VsBdtjXT0Kpnmd8RpJ0R5yNW9VOElzkyTjH56yRnDFAuoLgCfkpwcq6oVdV+S
	kfWeW3TYhVTeUPwwOOtb/7nliT3Nk0VfYBy8Y+MJ51YO6E6Uo66oShq1sqHRsQ==
Date: Sun, 09 Nov 2025 22:52:13 +0100
Message-Id: <DE4HWR95IFVW.1GG1O5GO9GKKV@cknow-tech.com>
Cc: "hrdl" <git@hrdl.eu>, "phantomas" <phantomas@phantomas.xyz>, "Dragan
 Simic" <dsimic@manjaro.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH 0/2] Fixes for PineNote DT validation issues
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "Samuel Holland" <samuel@sholland.org>
References: <20251109-rk3566-pinenote-dt-fixes-upstream-v1-0-ed38d200cc04@cknow-tech.com>
In-Reply-To: <20251109-rk3566-pinenote-dt-fixes-upstream-v1-0-ed38d200cc04@cknow-tech.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_135228_161859_EF73723C 
X-CRM114-Status: GOOD (  11.71  )
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

On Sun Nov 9, 2025 at 6:05 PM CET, Diederik de Haas wrote:
> These patches fix the following DeviceTree validation issues on the
> PineNote dtb files:

Please ignore this patch set. Sorry about the noise.

Cheers,
  Diederik

>     Warning (graph_child_address): /i2c@fe5c0000/tcpc@60/connector/ports:
>       graph node has single child node 'port@0', #address-cells/#size-cells
>       are not necessary
>
>     usb2phy@fe8a0000 (rockchip,rk3568-usb2phy): otg-port: 'port' does not
>       match any of the regexes: '^pinctrl-[0-9]+$'
>
> And with these 2 fixes, there are no more DT validation issues :-)
>
> The fix for the 2nd issue also fix these kernel errors:
>
>   rockchip-usb2phy fe8a0000.usb2phy: Failed to create device link (0x180) with supplier port0 for /usb2phy@fe8a0000/otg-port
>   rockchip-usb2phy fe8a0000.usb2phy: Failed to create device link (0x180) with supplier 3-0060 for /usb2phy@fe8a0000/otg-port
>
> Cheers,
>   Diederik
>
> Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
> ---
> Diederik de Haas (2):
>       arm64: dts: rockchip: Simplify usb-c-connector port on rk3566-pinenote
>       arm64: dts: rockchip: Move otg-port to controller on rk3566-pinenote
>
>  arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 27 +++++++++--------------
>  1 file changed, 10 insertions(+), 17 deletions(-)
> ---
> base-commit: 6146a0f1dfae5d37442a9ddcba012add260bceb0
> change-id: 20251109-rk3566-pinenote-dt-fixes-upstream-1fb32eff43ea
>
> Best regards,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
