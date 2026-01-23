Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B445D778B1
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 23:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3UMaJtOaHSpxayEfy5zoiwFVSUkIQw/QfFpIN30zoo=; b=yOqwFxhxCFHJWz
	dPdFVjAuAvk0wUJD1Ry4r8pPt/t8mtvOOCgLODCbkncDlLmMRDRTB6YCikSeB2P3NAC7VTJ6QWe0Y
	u7pilUiFL3sts/ffqqwWYku79VHyl17eoOqCNo/+gxci8xfF1qZ7lMgZuDVP0BohQIAaMQ3xSyUW/
	04u5URdB8rwLySBtGfrojcjyXimxRYY3K6+wmKFDRCgTZRfg9lqTdJ/SUOpo3qxEnZ7MfzjQM+utw
	PYUtR1FYcNHxDk16mwx3T8zipE25Qc0uS9rWqUGZcCArCODRAIipQkQL/njVMk26cPPV8Kl94pDrt
	tmBKjRAcsyODU2G4gZAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjQTQ-00000009a4j-0JPH;
	Fri, 23 Jan 2026 23:21:52 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjQTM-00000009a4G-1Vcr;
	Fri, 23 Jan 2026 23:21:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1769210503;
	bh=DmN8l0gl/0iYG9kIuo80sEYgx6QjhrcS3AqGY7DKOG8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mwa5wJJlSCaF9EcLQ6psmgAP7n/VlkxVHln0aBD4GIiWdnKpQNUhpCpAviFrk8/Y3
	 bzFEzRrWGbWHI408dvztNFkbUxYyd7fMfdSYWEw3yRtXoUQnH2xe6nkMRzPJZNvOoP
	 A4lFLWF8oqrOmbBzCx4LAWOdgkPCXBUYivxKCTDS0ZUFw9NoubGLyDoh1iIVCnUdzD
	 gPjqHceCFupswl6MrPVfeEy84jn1ZhS8E4uA/T/0QDK4kCFdc9csmpXALR6q3lh0ol
	 SYj+Fu6JQlKi5VIsMwd3w/be4Omfjgcu3U+04cRyYuHBq6DR1MjCe/6rmtWTuAOGSV
	 gPY4JHhYbVSUw==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 50D9C17E0699;
	Sat, 24 Jan 2026 00:21:43 +0100 (CET)
Message-ID: <5d775c69-3428-42aa-8517-faa5bd1d9709@collabora.com>
Date: Sat, 24 Jan 2026 01:21:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] Rockchip DRM use-after-free & null-ptr-deref fixes
To: Maxime Ripard <mripard@kernel.org>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260122-drm-rk-fixes-v1-0-3942f185750e@collabora.com>
 <20260122-classic-impressive-marmoset-f4723a@houat>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260122-classic-impressive-marmoset-f4723a@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_152148_569217_1890AE1C 
X-CRM114-Status: UNSURE (   9.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 1/22/26 5:21 PM, Maxime Ripard wrote:
> On Thu, Jan 22, 2026 at 01:17:33AM +0200, Cristian Ciocaltea wrote:
>> The first three patches in the series are fixes for use-after-free &
>> null-ptr-deref related issues found in dw_dp and inno-hdmi Rockchip DRM
>> drivers.
>>
>> The remaining ones provide a few minor improvements to dw_dp and
>> dw_hdmi_qp.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> Just FYI, you'll also need to sprinkle the driver with
> drm_dev_enter/exit to make this actually safe.

Thanks for the heads up!

Cristian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
