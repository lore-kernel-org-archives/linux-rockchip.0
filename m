Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8707CFD2F6
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Nov 2025 01:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hk9dg+L0ukJWHJ+A2tanSlpnPQJpvqNGa6dyfcoLKTs=; b=dPEI+flFdSh7L6
	UHNGbfxzchgYzLP5ISusatLAC/ICiq/eQtfaAmK/fTkIW1jViMdXFJSAoiIo9i3nlln4loQhbt+zU
	x81+fVr+ivZwI0HzlTlen2GV8VoTcP9dfCj7b5MticYUHRRG5/L5ptvzBItUdgCVjarrNIvjNHntV
	mFKz9+TtedWcuonJtcIaezAt+OTKq8yJtqxHzGS7ILi4Wy1IGit7Ag3PjHkbwlU9dbCk0CtSAUMdE
	L6HH5fj7O4HGDoZf9d8oz3o4gmZzVnAI//R13tflF+XRLBIzs/0d+xCm7Zpplx+u0upnkvKJFxJU0
	t2hR5jaUxJaiynffTaOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNLeZ-0000000AwYi-18aT;
	Mon, 24 Nov 2025 01:46:07 +0000
Received: from mail-m49251.qiye.163.com ([45.254.49.251])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNLeW-0000000AwY4-1VKS;
	Mon, 24 Nov 2025 01:46:05 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2a99bc279;
	Mon, 24 Nov 2025 09:45:59 +0800 (GMT+08:00)
Message-ID: <c73306de-f3a0-42ac-bfed-ef6b52cf4759@rock-chips.com>
Date: Mon, 24 Nov 2025 09:45:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 02/11] usb: typec: Export all typec device types
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chaoyi Chen <kernel@airkyi.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Peter Chen <hzpeterchen@gmail.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20251120022343.250-1-kernel@airkyi.com>
 <20251120022343.250-3-kernel@airkyi.com>
 <2025112109-glacial-outmatch-add7@gregkh>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <2025112109-glacial-outmatch-add7@gregkh>
X-HM-Tid: 0a9ab38a087603abkunm5871a99e38da02
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0hCHlZDGUIeTExJS0ofGE1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=jFaRCEOC5tnsMOQoZGeJ0Zdgx6p5zsQj8cNYZi/RkN84pJ52JSRZufKH1THClfPoo8DtwqnoQ0GVvgMekScnFuWH9BR5DRj80PaRKV0KeKuZpBEK7cGkPcgAngzJsImZ/9i2H2DZEy0eBEvv86asQkLn4UStVNdivkE8Tjti02Q=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=iFeIe++8q8EPpaof9jHYzhJp6EO127xLsuYKalp+96M=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251123_174604_577350_E7F8D0EB 
X-CRM114-Status: UNSURE (   9.12  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Greg,

On 11/21/2025 10:07 PM, Greg Kroah-Hartman wrote:
> On Thu, Nov 20, 2025 at 10:23:34AM +0800, Chaoyi Chen wrote:
>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>
>> Export all typec device types for identification.
> I do not understand what this means.  Who is going to use these symbols,
> and for what exactly?
>
> Be specific please.

In patch3, we need to distinguish whether the notifiers in patch1 are triggered by the typec port device or the typec partner device. Therefore, we export the various device types of typec here.

Sorry for the confusion. I will add more information later.

>
> thanks,
>
> greg k-h
>
>
-- 
Best,
Chaoyi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
