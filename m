Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 379C2C3DA5D
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 09:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujy2KIM5CQOcrp50gbOBZVpXZprm6+2lgqzvH2j3jg8=; b=GCrYU0IrGr9wn8
	U0nKsLxfESBvDzoXZp+IrKyTEmPF9AGeiKSR/ViIUGHPp95ncYcq3j/2GnbWeim2tV9/rppPBZUvS
	Vjn7Al++9LfGl70CUqhDAjUziWGdHgs+E3EqdZyWZtyQTRtlKJo8z1/bHXekKspomkhDnUmt/TNZj
	Mt7mQTE2Mgzn2Y/OZ4gJ+0TQkdHRP7x6QyQMBMVO49TgAJms2aNrD8aLppJVf0+fL2yTUxoTynp7V
	aZZMHkeqxd0ZvqNzRsvL+CsccXr7z6UPmlfp6Hzk/Ui96QbgruF4SKKRpVutz/oeUVZagh7ByLRgP
	T5zloJ2iPiGZTf7eCPjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWvDh-00000000YB1-0sd3;
	Thu, 25 Jul 2024 09:57:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWvDE-00000000Y6z-3JMB;
	Thu, 25 Jul 2024 09:56:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Subject:
	Message-ID:MIME-Version:To:Cc:Date:References:Content-Type:In-Reply-To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=T/6m9J73acVwBufreH67PzE4y5hANP8CssvHs6cEC/Y=; b=idPMf43oIp3YSVZd1euO3pv0lV
	Bd/tN+c2N1qO0xb+HjFcHxQlhX6pIX8jloeYHdD7hn5Dg7c5tW/ZbhcG4MfE4CljWUskMg0mjicR3
	G3nPnWhrV2QeyvDFBqFLcuK3dHR7LspQ9ZN+AsEEj53PO0Q6wc7oVJPs/zRNrm9cK7wHAXthO/bkT
	JtmeObtqWgiDjMLMq7+whYg2U8HeS8X+XN+3sRHcMLNl+UQMpfqk9Gbdz1O1xdlXSxYi2Bgp0MNT+
	OLQ4vuGFjlITbHRTeCfJrvor1XaHndarerbBaNIhIpi46KqhDG5AXZ1JDhmTvn0tzrseL0qKAqFLg
	FUzj0Qbg==;
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWvDA-00000003yrB-3kc2;
	Thu, 25 Jul 2024 09:56:38 +0000
Received: from harlem.collaboradmins.com (harlem.collaboradmins.com [IPv6:2a01:4f8:1c0c:5936::1])
	by madrid.collaboradmins.com (Postfix) with ESMTP id 7AD8D37811F4;
	Thu, 25 Jul 2024 09:56:32 +0000 (UTC)
From: "Shreeya Patel" <shreeya.patel@collabora.com>
In-Reply-To: <b8f1c80f-0e5f-41fc-bc20-0807db6c31d5@xs4all.nl>
X-Forward: 127.0.0.1
References: <20240719124032.26852-1-shreeya.patel@collabora.com>
 <20240719124032.26852-5-shreeya.patel@collabora.com> <b8f1c80f-0e5f-41fc-bc20-0807db6c31d5@xs4all.nl>
Date: Thu, 25 Jul 2024 10:56:32 +0100
Cc: heiko@sntech.de, mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de, jose.abreu@synopsys.com, nelson.costa@synopsys.com, shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com, hverkuil-cisco@xs4all.nl, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, "Dmitry Osipenko" <dmitry.osipenko@collabora.com>
To: "Hans Verkuil" <hverkuil@xs4all.nl>
MIME-Version: 1.0
Message-ID: <ae40e-66a22180-1-60612780@204847186>
Subject: =?utf-8?q?Re=3A?= [PATCH v4 4/4] =?utf-8?q?media=3A?=
 =?utf-8?q?_platform=3A?==?utf-8?q?_synopsys=3A?= Add support for hdmi input 
 driver
User-Agent: SOGoMail 5.10.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_105637_127208_4A8233C3 
X-CRM114-Status: GOOD (  15.12  )
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

On Sunday, July 21, 2024 14:21 IST, Hans Verkuil <hverkuil@xs4all.nl> wrote:

Hi Hans,

> On 19/07/2024 14:40, Shreeya Patel wrote:
> > Add initial support for the Synopsys DesignWare HDMI RX
> > Controller Driver used by Rockchip RK3588. The driver
> > supports:
> >  - HDMI 1.4b and 2.0 modes (HDMI 4k@60Hz)
> >  - RGB888, YUV422, YUV444 and YCC420 pixel formats
> >  - CEC
> >  - EDID configuration
> > 
> > The hardware also has Audio and HDCP capabilities, but these are
> > not yet supported by the driver.
> 
> FYI: if you want to add HDCP support, then please contact me. I have code
> available for that (i.e. the public API part), although it is out of date.
> 
> But if you want to enable HDCP in this driver, then I would be very happy
> to clean it up and post patches for that. It is something we (i.e. Cisco)
> have been using for several years now in out-of-tree drivers.
> 

Currently we do not have any plans to work on the HDCP support.
But in case the requirement arises in future, we will definitely reach
out to you.

Thanks,
Shreeya Patel

> I will try to review this patch in the next few days.
> 
> Regards,
> 
> 	Hans


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
