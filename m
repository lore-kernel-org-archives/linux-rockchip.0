Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40FB0C25B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 19:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjEXuMm2X02u2ozmpPGtlIHtbED3/WwafqPuZM/xGck=; b=odOYbebKXrItjE
	rKHvN2WWpbyHp7tPyomb3lv9guATm6QMwZ4nuj95UZTglLh5USV3FAGaG2jDaFprr+7buD3O8HWel
	NUNAjq1ztpEOgBi4jcllfHiddST1UPUQJs1+ARRRpPmbaD99qSnMuUJE35rJKZtOKMRZee9LVKsMz
	PR7atlZ12rSF6m2LFCZKUzuBUHR7NVRK2CeyKjpC8D7WhqKx5+ch3//ipVdZ7BXHp0KqnE7PEUwJ5
	2BP662+oB73O0wr4EMkU+gg0ptqaNL2xmZfnQMQHuZ8P1b1bOex0celIJ4CsmATSHOkHxv2PJ/cbI
	3RsOZ/KnE+IUWv4F/CZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEa4w-00000003dPk-3sl1;
	Tue, 04 Jun 2024 19:44:18 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEa4r-00000003dKe-18ld;
	Tue, 04 Jun 2024 19:44:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717530247;
	bh=oGz3iRzmdqum59ggsBZtJboMbceE1QjBtHdfjHHfQLs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Fe0wWaxK5i/OnnlAWeSBrvGQEwhZIT2S2xwBn9HEJab+3UIrADowsdecA4JA22FXh
	 w9b7Oy0FXpEWDWqVYyje3Kvb5rl/4nvNyh+w0w8hWYPNyoBG3DP6g5vsaiMh8/gp8q
	 /OsEgimp++IEeQuz8wrh9Ms2tw7kKECrNuP0iZpcYq49qyduwajbXfFkFk3C1k/d0B
	 WyWtko6z9NySVS5p/dRimGdJhs0xcLSqqYFYANANHYRz9KrToiMNCGn0MyrwJow/Ac
	 PK2ugOK2mxf/0gFtgLLxeyPcl31CDzcOajWN2uBQQNTYG4u0LGjXdvHrIzH15S9bbN
	 206gavtDqdMHw==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 33EFE3782146;
	Tue,  4 Jun 2024 19:44:05 +0000 (UTC)
Message-ID: <892b2070-2fd0-42b2-a8c2-811dc7382b0c@collabora.com>
Date: Tue, 4 Jun 2024 22:44:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <a5jlj5hncv2p7lxk6pbgynkqfovlg3lzz2muzrbrkd73afiopu@n5tmd4zfyeik>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <a5jlj5hncv2p7lxk6pbgynkqfovlg3lzz2muzrbrkd73afiopu@n5tmd4zfyeik>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_124413_823526_6B7A0176 
X-CRM114-Status: GOOD (  12.41  )
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

On 6/1/24 7:32 PM, Dmitry Baryshkov wrote:
> On Sat, Jun 01, 2024 at 04:12:22PM +0300, Cristian Ciocaltea wrote:
>> The RK3588 SoC family integrates a Quad-Pixel (QP) variant of the
>> Synopsys DesignWare HDMI TX controller used in the previous SoCs.
>>
>> It is HDMI 2.1 compliant and supports the following features, among
>> others:
>>
>> * Fixed Rate Link (FRL)
>> * 4K@120Hz and 8K@60Hz video modes
>> * Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
>> * Fast Vactive (FVA)
>> * SCDC I2C DDC access
>> * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
>> * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
>> * Multi-stream audio
>> * Enhanced Audio Return Channel (EARC)
> 
> It would be really nice if you can take a look at using the HDMI
> connector framework (landed few days ago) with adaptations for the
> drm_bridge / drm_bridge_connector ([1]). Your comments for the
> drm_bridge patches would be defeinitely appreciated.
> 
> [1] https://lore.kernel.org/dri-devel/20240531-bridge-hdmi-connector-v4-0-5110f7943622@linaro.org/

I will definitely check and try to use it, but I'd rather wait a bit
until this gets stabilized and focus instead on the mandatory changes
required to upstream this driver. That's mostly because my limited
availability and expertise on the matter, while trying to unblock other
work depending on this.

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
