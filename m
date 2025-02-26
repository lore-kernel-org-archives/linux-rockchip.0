Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5604AC021BC
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 09:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlLkT5WFbbeEB3aI0glcAUQinudBmgaC4WtBEOgTglo=; b=Vm/ST+UG6YYtB+
	dIzEJkDkgHaA8vm+VB0cqnMGOTHLJErzkVfYlvDrm8QA2qxUnrqbF8wwhvPU+2wc+l6sY3jqiiDzr
	a4u58JsBKUNTS8nO/2+c7xGqj38rMBucGMi7i72GMbPmg87KDF7t+ERy0jCsIft4KkitmqVuxDptk
	ivTqF/VgMaMj6h5FkUhch5pMsrmjmx+gfOVZAaOUeMuEzbItDRk4HROUPOIGSeJN9eMT9qAXFrH30
	00i/7hvYB9R0diOAjIL8ARwikfgFuxgS1+7wA87HvUqnCQmeUZj+j1i8z4geGbVu+tLjtV2Vats8p
	kG2m4LlwLsdH19206Wtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnDgA-000000035YF-38zj;
	Wed, 26 Feb 2025 09:26:10 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnDem-000000035HV-26R1
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Feb 2025 09:24:46 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740561869; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=KCb4NYylXhPLcCtlRcYxc2+z9bebyyP+zFAmiQalFIagup8Quw7gnJKP7jTHxQU0+lpnQpUUro5KDs6MencGDmVmi2qdR9RrEVud6II6I2Sc3RbV0dZg31zeZ9iZ+zLVrGHVmAWXAxrknuXh3tdASgc58XBSmcQdbRTHYC75PiU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740561869; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=v64rHJTOh+QwNJ4+f9WHe2WqRnNhrh1i028ev/E/4UA=; 
	b=G2Ue4d+GAqNUqs+LcfxCg245SIt8MpZIeoxf+Ao0FHlqh7Tfrk7AhRyyOUGzbdbXK2iG0T6OLTK/Tg9pjtxghwb/Q/Hlw907glvdm12sPETGLSIyA8vAxH/iBNN4j69vkW6aMy7Gx63Ow27lP4LNwGdEqkYIcVrXNA2ysQyl+RY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740561869;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=v64rHJTOh+QwNJ4+f9WHe2WqRnNhrh1i028ev/E/4UA=;
	b=IPc116QAWR1v4ByKA2qDn3rrCNPzPMDE1INUy2HtcYZsytOJAiXcMSxkS1qvbAe3
	c7yw7et10rmf3w5cr1Ihh6OzuPn5h7dyhIfPJw/lAIyJA15tChzlM25geymHHHLPasO
	9fSNIQEPGHuLV+PFltoL0k0hxW1zwFXYd7VXPssI=
Received: by mx.zohomail.com with SMTPS id 1740561867817714.6694770539592;
	Wed, 26 Feb 2025 01:24:27 -0800 (PST)
Message-ID: <ba3bafcc-b7b4-4237-bbeb-b81c0c9328d0@collabora.com>
Date: Wed, 26 Feb 2025 12:24:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 6/6] arm64: defconfig: Enable Synopsys HDMI receiver
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
 <20250225183058.607047-7-dmitry.osipenko@collabora.com>
 <a8a6c8c8-ee3b-422a-8573-a2cbb61fc3aa@xs4all.nl>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <a8a6c8c8-ee3b-422a-8573-a2cbb61fc3aa@xs4all.nl>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_012444_626521_A6F2BB66 
X-CRM114-Status: GOOD (  13.18  )
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

On 2/26/25 11:31, Hans Verkuil wrote:
> On 25/02/2025 19:30, Dmitry Osipenko wrote:
>> From: Sebastian Reichel <sebastian.reichel@collabora.com>
>>
>> The Rockchip RK3588 has a built-in HDMI receiver block from
>> Synopsys. Let's enable the driver for it.
>>
>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>> ---
>>  arch/arm64/configs/defconfig | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>> index cb7da4415599..3dccc9e1c4aa 100644
>> --- a/arch/arm64/configs/defconfig
>> +++ b/arch/arm64/configs/defconfig
>> @@ -859,6 +859,8 @@ CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
>>  CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
>>  CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
>>  CONFIG_VIDEO_SUN6I_CSI=m
>> +CONFIG_VIDEO_SYNOPSYS_HDMIRX=m
>> +CONFIG_VIDEO_SYNOPSYS_HDMIRX_LOAD_DEFAULT_EDID=y
> 
> I do not believe it is a good idea to default to y for this option.
> 
> The EDID depends on the specific device you make, and you should
> think carefully about whether the default EDID fits the needs of the
> device.
> 
> So if you want the default EDID, then you should manually select it
> and not have it autoselected.

Ack

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
