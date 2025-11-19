Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86C68CF58C3
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 17:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNQQBwoT7UMaBj+PJHq2ePTu+MBshTWTOVi64iJoV70=; b=zGoN5nNvPWgfZu
	9JslQVu086RPrUu8DUnbYIjneynG7308y2IPEEJe/JAg2HbFeN3J5oLKJ6aMFwrOaFoDnjtavyH6e
	eF1tqn25SXzHLMyPVWklbPytyUYYvx3q4lKsFlRzmCmBjPC+yjl4S8G7QibrXIC6KM6D+DncU99q5
	1/V3f9n+9bDp8b2NFWLKPKTEEUsbZ22yryCzc20DPcz8EhQEHaJX5UfK4Ti9T2X2TPW1w8kRb2gVp
	6PTqN8jC127St3+s/GsLGF22LeDZL+Q1pXzVPy94gbHEdn/CWBbLSvMH+JZ/JzzbZ2k3eBc7LD/T9
	QVn+hJg+VxkFRprp+j5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLmJ8-00000004HV9-1fXX;
	Wed, 19 Nov 2025 17:49:30 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLmJ5-00000004HSB-0M8S
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 17:49:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763574564;
	bh=0pCFD5KvzUtit4qot1VdPXe6ibLJK2CITkuwqA5TScg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TrA8ZFroebQvyS5jU9CL/zRGJhsEpJo8D4mLi2orYcd3pgwklhxlmTC+IyC7Y8sJ0
	 3FGQ1lfHcOg9+mFQT8Ty4/GEsAQSk9Pdi4llNmPp7nFd/y1RsiJLYFyetKugjJVh8W
	 WOf7oKthWTrw7Uh9Q33s9BG/An5JOo9inkqcvRP4tGC1+qPXVrYG4BJ/qTDzt5/h+m
	 NRFBPNTJEHMeZGwzYNgQc+C4h4+YlLqZF5X4ygz3L37hqoTnNhgFrnTrSMpEfXB32Y
	 RxmZ33hDjpTksYZd4go/C4sRALybMV5mCH5t8/6298ffbhMNfYGPp5fV3A+5yoiQwK
	 b8bxS41uNLgSA==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C85FB17E0FFA;
	Wed, 19 Nov 2025 18:49:23 +0100 (CET)
Message-ID: <485c4a78-c20b-492a-8c27-07ef63323735@collabora.com>
Date: Wed, 19 Nov 2025 19:49:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing
 HPD
To: Chris Morgan <macromorgan@hotmail.com>, Maxime Ripard <mripard@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se,
 neil.armstrong@linaro.org, heiko@sntech.de, sebastian.reichel@collabora.com,
 jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org,
 andrzej.hajda@intel.com, andy.yan@rock-chips.com, krzk+dt@kernel.org,
 robh@kernel.org, Laurent.pinchart@ideasonboard.com
References: <20251113192939.30031-1-macroalpha82@gmail.com>
 <20251113192939.30031-3-macroalpha82@gmail.com>
 <avdnpwnxs6cql7eyckdt37szpcf5ztgxlc7juwu6tqj5xxu56a@nrwljig2p67i>
 <SN6PR1901MB46548ED8D4BA1184E0EA7DC3A5D6A@SN6PR1901MB4654.namprd19.prod.outlook.com>
 <hgwfztkwk4qgvefwo2cdedzas3rzlhx6yek6dgldkgaq2jskvw@exxqujjpa6bl>
 <SN6PR1901MB46542ED12EF34220E3119460A5D7A@SN6PR1901MB4654.namprd19.prod.outlook.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <SN6PR1901MB46542ED12EF34220E3119460A5D7A@SN6PR1901MB4654.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_094927_301249_5526653A 
X-CRM114-Status: GOOD (  22.14  )
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

On 11/19/25 6:24 PM, Chris Morgan wrote:
> On Wed, Nov 19, 2025 at 10:02:23AM +0100, Maxime Ripard wrote:
>> On Tue, Nov 18, 2025 at 02:36:09PM -0600, Chris Morgan wrote:
>>> On Tue, Nov 18, 2025 at 09:46:04AM +0100, Maxime Ripard wrote:
>>>> Hi,
>>>>
>>>> On Thu, Nov 13, 2025 at 01:29:38PM -0600, Chris Morgan wrote:
>>>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>>>
>>>>> Add support for the dw-hdmi-qp driver to handle devices with missing
>>>>> HPD pins.
>>>>>
>>>>> Since in this situation we are now polling for the EDID data via i2c
>>>>> change the error message to a debug message when we are unable to
>>>>> complete an i2c read, as a disconnected device would otherwise fill
>>>>> dmesg with i2c read errors.
>>>>>
>>>>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>>>>
>>>> You must also disable any mode using the scrambler when there's no
>>>> hotplug interrupt available.
>>>
>>> Is there a simple way to do that? I'm not seeing any references to
>>> scrambling in the current driver.
>>>
>>> Should I just limit the rate to HDMI14_MAX_TMDSCLK (340000000)  under
>>> dw_hdmi_qp_bridge_tmds_char_rate_valid() if using EDID polling? A
>>> document I found online from Synopsys [1] claims that scrambling is
>>> used by default at rates above 340 (if I'm reading it right) and used
>>> opportunistically at rates below 340.
>>
>> Yep, that's what you should be testing for :)
>>
>> Maxime
> 
> Thanks, though now that I dig into it I'm a bit more confused on the
> best way forward. It looks like for today the driver is hard-limited
> to HDMI14_MAX_TMDSCLK because scrambling isn't supported. I'm assuming
> it will be at some point, suggesting that we *will* need this in the
> future. Is it sufficient to just add a comment there noting we need
> to check, or should I add a check there (that does nothing today)
> to ensure when we do support faster rates we are ready?

I plan to work on upstreaming the scrambling support soon.  Adding a TODO
comment would be enough for me to take care of the rest, but I'll still need
your help to get that tested, though. :-)

Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
