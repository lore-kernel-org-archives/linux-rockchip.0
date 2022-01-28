Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 069A2C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jan 2022 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGPR0lIvxTG2Jo8UE9RL04HdTz8JKojiUvq1qz6K/cY=; b=tKGiZ25Rm7Vffp
	T+0VSwzCvMGvYUZkaKsj8o8wYpq3/fSbY3CoBQ5AAOMw9Yq9PvXal2waaWhSj/XDdvC0pnG6m/Zkj
	0nuCjwBFlUGB5w2tYV30rLdBuyFyzzNEmcTeEIDjtzYNgqmVT5eDU/EGnHjMRbaXTnbd3mOvPro5n
	HK1PvxtwVfOf5rgSBgB1sQIwVJ6IuPOzT2++3D+SvNAEpt5pvbKqltcNMUQ3S8CW8Nsinzzvi6rN4
	QloBRyCxVmCGWlUKt8MWc2vKVgbmQReaHOL5r6TRKAk5R8e5QZ/Le5ZrDL0yXk10HasJRjsNpmMkF
	jhh3hQs4Icf/g7v2t5fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDTUX-002m3o-DO; Fri, 28 Jan 2022 15:48:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDTUL-002m0Y-EE; Fri, 28 Jan 2022 15:48:38 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nDTUC-0007d7-G7; Fri, 28 Jan 2022 16:48:28 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: daniel.lezcano@linaro.org, rjw@rjwysocki.net,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: robh@kernel.org, lukasz.luba@arm.com, arnd@linaro.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v7 5/5] rockchip/soc/drivers: Add DTPM description for
 rk3399
Date: Fri, 28 Jan 2022 16:48:27 +0100
Message-ID: <3660693.PMFMTDrQKU@diego>
In-Reply-To: <20220125171809.1273269-6-daniel.lezcano@linaro.org>
References: <20220125171809.1273269-1-daniel.lezcano@linaro.org>
 <20220125171809.1273269-6-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_074837_511440_B0CE3303 
X-CRM114-Status: GOOD (  15.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Am Dienstag, 25. Januar 2022, 18:18:09 CET schrieb Daniel Lezcano:
> The DTPM framework does support now the hierarchy description.
> 
> The platform specific code can call the hierarchy creation function
> with an array of struct dtpm_node pointing to their parent.
> 
> This patch provides a description of the big / Little CPUs and the
> GPU and tie them together under a virtual 'package' name. Only rk3399 is
> described now.
> 
> The description could be extended in the future with the memory
> controller with devfreq.
> 
> The description is always a module and it describes the soft
> dependencies. The userspace has to load the softdeps module in the
> right order.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>

Reviewed-by; Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
