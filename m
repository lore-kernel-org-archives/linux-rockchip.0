Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 341E6C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Mar 2022 21:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liVuyw8nMbX49rHI0YgK7qfp3anxLbHJYXnpEdkk40I=; b=smFOrI+NmVebcf
	/EkOHVcatU9TvhLtGp1cJUqd0d52xU+JZAZmpLjjNdi+T9L53op3e2pbSrDHhdnL9Sv2DZxJ5d2kV
	yBa7yqMgEWb7lu7l1xhDmYnoV/7onPURKbiEg4gGrFYIqFNRqUpBq4jL1yW+8aPPUTPC3FQScs2Sf
	Q2vxlDj3ewen2Vb/oGHC7h1OpRxaNQ7o5rvhUuXA1Z+MhTVpHTi0mvL+muLhJrbPRFt+qTuFhrt6K
	ghMSEtx8BWB2SehBDYmhFuNwMylhPKglHiDUS9cKwGQsx0zBr5+tP781f1EyxvkErR+myE93VEn7W
	JEdyAH0FEAWSZ5kr6egw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nT8yH-001qyR-7P; Sat, 12 Mar 2022 21:08:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nT8y4-001qwx-B8; Sat, 12 Mar 2022 21:08:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id AE00E1F4595D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1647119280;
 bh=wLExJO5a7BmNAEjWa2vEXI65hZUlcnfDKIQubmXYQnc=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=QYeUEH+ikY/Ro0+JeLJULZFKaxxIFkAzMFLOhDP83klBIXSO/dTzyh02Ta91Msvkz
 Co7Da98R4PxLxTf2su/UBioVU1YgOlfOenhHw9yjbvlMiP8/WA1Qld7GSG3cGG4J7x
 EZUrFmknuwGh3ws+Cq61njszuQwOgN+ztZthFrmQDfnJpw6xvxp6h9urLbStLUAE94
 sby0sevwi1CxegYfipUaMpooeK8yJl7rIW2Pfy90HqIgLTzifmmpOgC03xlNdjseFg
 UorG2by37kNYSuDTChgTvPzoOxNyzudZ62M5A8MCmVbQqawTlFPPQSLjS4XE456Bl4
 FAnhceRnDkSWg==
Message-ID: <4712e128-8a14-e361-0819-911dc3453372@collabora.com>
Date: Sun, 13 Mar 2022 00:07:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v8 09/24] drm/rockchip: dw_hdmi: Add support for niu clk
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "elaine.zhang" <zhangqing@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-10-s.hauer@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220311083323.887372-10-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220312_130804_615747_7B178F11 
X-CRM114-Status: GOOD (  16.58  )
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

On 3/11/22 11:33, Sascha Hauer wrote:
> The rk3568 HDMI has an additional clock that needs to be enabled for the
> HDMI controller to work. This clock is not needed for the HDMI
> controller itself, but to make the SoC internal bus logic work. From the
> reference manual:
> 
>> 2.8.6 NIU Clock gating reliance
>>
>> A part of niu clocks have a dependence on another niu clock in order to
>> sharing the internal bus. When these clocks are in use, another niu
>> clock must be opened, and cannot be gated.  These clocks and the special
>> clock on which they are relied are as following:
>>
>> Clocks which have dependency     The clock which can not be gated
>> -----------------------------------------------------------------
>> ...
>> pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
>> ...
> The clock framework does not support turning on a clock whenever another
> clock is turned on, so this patch adds support for the dependent clock
> to the HDMI driver. We call it "NIU", which is for "Native Interface
> Unit"

This still doesn't make sense to me. You're saying that "pclk_vo_niu,
hclk_vo_s_niu" depend on "hclk_vo_niu", but HDMI doesn't use pclk_vo, it
uses pclk_hdmi. I don't see how these "niu" clocks are related to HDMI
from your description. The pclk_vo should remain being disabled for HDMI.

I already said before that the datasheet suggests that hclk_vo needs to
be enabled in order to ungate the AHB part of the VO module, which is
needed for CPU accesses. Elain, could you please confirm this or clarify
more about why hclk_vo needs to be enabled for HDMI?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
