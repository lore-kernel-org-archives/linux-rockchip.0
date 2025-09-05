Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 324F7CA0FED
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 07:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7O62Etn3C4J5Z/41VPPNPLTOscI7fEtr8CQuh0JXh8=; b=rSWlSz32C134Uj
	Tjm2C7QoVf5Y3xztnDh4wrOW1sWTM2YRZ5K0Dm1xxdmwcdWCBoQT5Q5QDbpcgkOlkt/+U6xxx8qqX
	MHPbgChAC3wwRDqP1oF6iyPE2R5LGhQ8ksN2eMfmDo3wJ6jB/3exhb2T8mtGEKxuLxd1lnj3vwSg4
	6XDzhQwb3TBoJmeQ5m0bM5YP89Jwz88sFETi06kS+mcxDbbFYMgrKPtqlwPlqRu+H0Dv3bdoCV9eX
	bd4cFqwz+JT1o68veiBIAYgV0iTjNbggZrLrS+Zqo8r6OCkGrE6ZPdkc5ocMR67Ppf1UPF6JKvM/M
	w2FZtT/k7T/Yw48nTyAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuQtt-0000000021v-1Ytr;
	Fri, 05 Sep 2025 07:30:25 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuQ02-0000000HIfk-40XP;
	Fri, 05 Sep 2025 06:32:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1757053958;
	bh=+7T7YDi0eC3wFyrqKUeCl1oFOAZDbzc81FLfZBDTU+k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=e6uAehnCU3Tqg7vgAX2kr5jkq6WsX55n8IXGAc6naznjJwO31ev0KLB4nHeIga/u6
	 s/Tw5J83/aamEgYEr9O7VKjAh9gltJ1IcMeZg+n5z3jqlsy7T9p/xGZuDALzsm1Lx/
	 sJRg5riQaNwg4JEWscp3bkG13Ema7go57AwL6s9VuebsvlpMUVs/I8bNGNY6LfCB6I
	 mYumHDp7L+YBH46ak/A+NsEk8egyxk7fPwNMzKhNQDrNfBlrxcCay25FfBfxxY8Nw3
	 W2Ygtj5WKMrphzQO4jV+7AH/Sg+9JSq6xklGpvL8DJkKetA8dF+7Zfzdh7azuq9Oxr
	 2nUbBnORDUv9Q==
Received: from [192.168.1.90] (unknown [82.79.138.60])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 64EFA17E0EB8;
	Fri,  5 Sep 2025 08:32:37 +0200 (CEST)
Message-ID: <b8d068ef-d083-4bb1-b34e-b8ddaa62b436@collabora.com>
Date: Fri, 5 Sep 2025 09:32:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/6] Add HDMI CEC support to Rockchip RK3588/RK3576
 SoCs
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Algea Cao <algea.cao@rock-chips.com>,
 Derek Foreman <derek.foreman@collabora.com>,
 Daniel Stone <daniels@collabora.com>
References: <20250903-rk3588-hdmi-cec-v4-0-fa25163c4b08@collabora.com>
 <ncmsmxdcvhj4jec6wmqf5abrb7nijx7ac2i33tvvcc2prljez3@uks2cb6aunnx>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <ncmsmxdcvhj4jec6wmqf5abrb7nijx7ac2i33tvvcc2prljez3@uks2cb6aunnx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_233243_154284_690A4235 
X-CRM114-Status: GOOD (  18.22  )
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

Hi Dmitry,

On 9/5/25 2:48 AM, Dmitry Baryshkov wrote:
> On Wed, Sep 03, 2025 at 09:50:58PM +0300, Cristian Ciocaltea wrote:
>> The first patch in the series implements the CEC capability of the
>> Synopsys DesignWare HDMI QP TX controller found in RK3588 & RK3576 Socs.
>> This is based on the downstream code, but rewritten on top of the CEC
>> helpers added recently to the DRM HDMI connector framework.
>>
>> The second patch is needed for RK3576 in order to fixup the timer base
>> setup according to the actual reference clock rate, which differs
>> slightly from RK3588.
>>
>> The following three patches setup platform data with the new information
>> expected by the HDMI QP transmitter library, while improving the error
>> handling in the probe path.
>>
>> Please note the CEC helpers were affected by a resource deallocation
>> issue which could crash the kernel and freeze the system under certain
>> test conditions.  This has been already fixed in v6.17-rc1 via commit
>> 19920ab98e17 ("drm/display: hdmi-cec-helper: Fix adapter
>> unregistration").
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> Cristian, I'm sorry for almost off-topic, but as you are working on this
> driver: would it be possible to support HDMI (vendor-specific) and SPD
> InfoFrames in the dw-hdmi-qp driver?

Sure, no worries.  I'll be on leave for the next two weeks, but I can handle
it on my return.

Regards,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
