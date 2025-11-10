Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E995CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 14:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F5ocr4IuFMu42Nc2Ej8/VjxGU/vyeW74XrUVmEWUpuQ=; b=SdZ+Gdxfk30hI/
	3D/H8dtX3OPJu2FU2JvvXGwykMTER3tH/arh1dQttUMguOxZw26DVrkz3B5MZBnwT3VVd+SgGvvC0
	X5fU2GCpAp6GYLVqprYkyHDXR58r+jc+33bpHSOeU2QOILNkFtpJqs56IaGmJxAPE4KAnRC3BsBzT
	5s+Dqa4CCZ4enCry2R/DmSqZ8FtK/rbB3GH8gE974ymBhcDqQdlzoLGw+onlUzLooxZEXMbNkCcZ1
	Y9YQkf2ZB1o8+AyPQf4BmasrAcl/lr3GBGhniJwu121tmR3BTsHHzgzSVLA9z0FhXZ+IEOMsEYZq8
	iTq6MLGtRhErhGJhAvtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISmr-00000005ZiA-24TQ;
	Mon, 10 Nov 2025 14:22:29 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISmo-00000005ZgN-2Svb;
	Mon, 10 Nov 2025 14:22:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1762784543;
	bh=riqluud7DRBnsD2rjaWhV/ylLC40XHZ/UFfYhjGom0s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ggTb4YvkwduTIa72FOaubny4AQdcIVM0N2hzfb3g9yhsmd7ewtO18d5tPS+IxfSw4
	 GSSnXzjTkEF1e2nCFMvvaE+gZ/HJp+vU99BRjumDHumlyyiVXAGQ+jtpXbZRbIUaWG
	 7r/+tGhHGessAWBxEPgya7AbYzPEbIzHYxA7bb7JN+R5AHMwjAP1hUmfQuZh01Nym0
	 5LQj+ZjiueEI9J5O4Jy8ghyVqZHwUcYjgDNJFAhY/SrkLlS5I88ji9Qb303tZUlSWu
	 1N86wT9NMg7goRR1FVUO7UeYDSNSpX/xQDTBF/xd4GJ8qKYcFSrkcyh8/jZS9Wojd4
	 B+wUHqMNAVpDw==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 61C7E17E1299;
	Mon, 10 Nov 2025 15:22:22 +0100 (CET)
Message-ID: <0e7d78e0-36ee-4115-b224-dbf4bda87ede@collabora.com>
Date: Mon, 10 Nov 2025 16:22:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Introduce BACKGROUND_COLOR DRM CRTC property
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Robert Mader <robert.mader@collabora.com>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Matt Roper <matthew.d.roper@intel.com>
References: <20251013-rk3588-bgcolor-v2-0-25cc3810ba8c@collabora.com>
 <x33zabb5un2boben6r4qp3vvrgca5s37gmseespdwwbajumdxx@mcxe6or5p63m>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <x33zabb5un2boben6r4qp3vvrgca5s37gmseespdwwbajumdxx@mcxe6or5p63m>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_062226_782783_ACDEF165 
X-CRM114-Status: GOOD (  14.36  )
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

On 10/13/25 11:55 PM, Dmitry Baryshkov wrote:
> On Mon, Oct 13, 2025 at 09:27:17PM +0300, Cristian Ciocaltea wrote:
>> Some display controllers can be hardware-configured to present non-black
>> colors for pixels which are not covered by any plane (or are exposed
>> through transparent regions of higher planes).
>>
>> The first patch of the series introduces the BACKGROUND_COLOR DRM
>> property that can be attached to a CRTC via a dedicated helper function.
>> A 64-bit ARGB color value format is also defined and can be manipulated
>> with the help of a few utility macros.
> 
> 
> Please provide IGT tests. I'd at least check that using the
> BACKGROUND_COLOR results in the same CRC as then one when there is a
> plane covering the whole screen.

Done:

https://lore.kernel.org/all/20251110-crtc-bgcolor-v1-1-28669b692970@collabora.com/

> Additional note. I see a value in having the CRTC property for the
> background colour. However it might be more flexible to reuse old
> proposal for solid fill planes ([1]) and instead implement the lowest
> Z-order plane supporting only solid fill colour as an image source.

Thanks for pointing this out.  Will keep it in mind as for now there is no
(immediate) plan to consider the alternative(s).

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
