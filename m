Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0EBFC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 17:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGY2pL+MFywehWmYVLseIVHRBxB0+5j9iOEV2c24aPE=; b=rB+WvIqpKyk8h5
	V0zKkstz/MMPB5AtgO1Fw+1+HMqkSAcGKcWa/AY6hp+QvYuPX2oSFAjcjxkPGXeDV+JtdQZVex8ZX
	mHCRIxXVVa4lXBkFKKMSWbTYsgf0AnC3lDLzKJ7I0zj7188+tv4l/ASvPN6kpeBW501ENlMSZXwJU
	6PVVvFKGjpRiLHrXs5napkNRUGaOEGh2K3JThVL75X2U3sdUiTiFYuzEck0UpCYNuUb6ugTMbBQYu
	TVq4f+0HOcylJXeykU20WEmUeyujkFXGoQx3PCK8UlvxN+q0rbs6oeIyt95j3PmBBxubHVnBkD+UD
	c6cqV+eC5k8dUqgbFUMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTouH-006QT2-MA; Mon, 14 Mar 2022 17:54:57 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTotv-006QNR-Us; Mon, 14 Mar 2022 17:54:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 119FF1F4393C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1647280471;
 bh=fRgxT5WkJ7NuU4VbpKCZFdzHN+lDN6VQ4I3+jNbDVzQ=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=JuwBL3EQF80XC7WCgf4/IskhHlOOOXVtfbQvKrZkHuk1nn3Tp1XCIWEskDBmIgk/J
 xa/NrI5tGJpCJkx7zeEiQJTDb+dQf/dtqIvotjgPsm4WXTz3pTeKYUZHOlHshmN5Ft
 Grgz3XNrTRVid1vkBK8uiCjKdyFLFwwNuZO88amNpu/613KEpD3BLvY3OEn73Qf9y9
 9dcRhTqHLf27HGJBA4Fbb82NkwqlP90CnBIzxNYyXBnfcBoTZIf5n640XP10JfwWrl
 LjIP3O4r3n8X7Oai7OLalGApk9f1/RFA0i6f8v8LWeCVuk6+AkBzyaLP6ArkkURdNS
 a/z5k63/ptTyw==
Message-ID: <96e3682c-51ff-6af2-ca07-6ea1b952dd70@collabora.com>
Date: Mon, 14 Mar 2022 20:54:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v8 09/24] drm/rockchip: dw_hdmi: Add support for niu clk
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "elaine.zhang" <zhangqing@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-10-s.hauer@pengutronix.de>
 <4712e128-8a14-e361-0819-911dc3453372@collabora.com>
 <20220314081834.GK405@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220314081834.GK405@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_105436_160728_3340C24A 
X-CRM114-Status: GOOD (  16.03  )
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

On 3/14/22 11:18, Sascha Hauer wrote:
> On Sun, Mar 13, 2022 at 12:07:56AM +0300, Dmitry Osipenko wrote:
>> On 3/11/22 11:33, Sascha Hauer wrote:
>>> The rk3568 HDMI has an additional clock that needs to be enabled for the
>>> HDMI controller to work. This clock is not needed for the HDMI
>>> controller itself, but to make the SoC internal bus logic work. From the
>>> reference manual:
>>>
>>>> 2.8.6 NIU Clock gating reliance
>>>>
>>>> A part of niu clocks have a dependence on another niu clock in order to
>>>> sharing the internal bus. When these clocks are in use, another niu
>>>> clock must be opened, and cannot be gated.  These clocks and the special
>>>> clock on which they are relied are as following:
>>>>
>>>> Clocks which have dependency     The clock which can not be gated
>>>> -----------------------------------------------------------------
>>>> ...
>>>> pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
>>>> ...
>>> The clock framework does not support turning on a clock whenever another
>>> clock is turned on, so this patch adds support for the dependent clock
>>> to the HDMI driver. We call it "NIU", which is for "Native Interface
>>> Unit"
>>
>> This still doesn't make sense to me. You're saying that "pclk_vo_niu,
>> hclk_vo_s_niu" depend on "hclk_vo_niu", but HDMI doesn't use pclk_vo, it
>> uses pclk_hdmi.
> 
> pclk_hdmi_host is a child clock of pclk_vo:
> 
>      aclk_vo                  2        2        0   300000000          0     0  50000         Y
>         aclk_hdcp             0        0        0   300000000          0     0  50000         N
>         pclk_vo               2        3        0    75000000          0     0  50000         Y
>            pclk_edp_ctrl      0        0        0    75000000          0     0  50000         N
>            pclk_dsitx_1       0        0        0    75000000          0     0  50000         N
>            pclk_dsitx_0       1        2        0    75000000          0     0  50000         Y
>            pclk_hdmi_host     1        2        0    75000000          0     0  50000         Y
>            pclk_hdcp          0        0        0    75000000          0     0  50000         N
>         hclk_vo               2        5        0   150000000          0     0  50000         Y
>            hclk_hdcp          0        0        0   150000000          0     0  50000         N
>            hclk_vop           0        2        0   150000000          0     0  50000         N

It was unclear that the pclk_hdmi is the child of pclk_vo by looking at
the clk driver's code, thank you!

Won't be better if the implicit clk dependency would be handled
internally by the RK clk driver? For example, by making the common gate
shared/refcounted. Have you considered this variant? Then we won't need
to change the DT bindings.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
