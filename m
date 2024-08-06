Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCFE8C52D70
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 17:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VToZLiHVs+hgI6tIKlFenXmfsWzwJiTjAsgFw6KjqI=; b=rDIyQXq9L8NXVc
	CnjPvzu/WI86I3db2W9xIUD1gFOC2zAzUYdYYm7XAO4lom/l9IFBkH8t4tXpqnLEYd5o5GfXq/R7M
	CDxnncKne/RFIhKd7TuHo1QCA1u0ZqiTJNvE4MhuMaAoXx0A4as3+YSn9FIqlqPCU5DZXH6D9Ccav
	GmeM/QIRYODjeWlDu+lBfFeBHpLGGELyYD9XfxNdvFUxT1s5QzpNPb5tUMK4G9UZJiGLV7NYEf9fI
	fdtg9VgTWtAQIwDk1qWEKzXnJXspKDI8gAbFgYlC5RhIOs5S/HDBs8+DWBn9hCdh0cVsGKXqm43em
	AnCbIWoLCI4nM6EWXUUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbONn-00000002YAp-0zY9;
	Tue, 06 Aug 2024 17:54:03 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbONk-00000002YAC-06N8;
	Tue, 06 Aug 2024 17:54:01 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1722966823; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RW/feBkNoOFbYSnx+5hvtNPGlVfQQvtVDl9tFw0Fah6EvYgz511EHhEHscHvnaLTtz+zbWIWVt9iNmsGZPMcAn93rgyyDP232uyZNMaa/Bg1IfkOMVe3ytRN+QYjiePZzJo8mWdJMOzqSmvGKC2ngJPbz+nmH1mWK0ps10XTrzI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1722966823; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=vm9Xz4ftCLuaGhJmR6WJfQfgd+gvJMEYvlVmMqFEz7Y=; 
	b=Y57yztyrpnHEgaiI957zxWEVItfIBo3uSQwmXJIlaOCupjy2tykJOAqXy1udOmAIQrO3jg2k4J8K4+y4IPG2ndz994vm7xgyN23ORAJRNksUQQ8fCY3rqI613njLvZ3oySPkg9HjyFw1xNCSSr/7yavdTdYOiM5B4EStqWj0Ydo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=helen.koike@collabora.com;
	dmarc=pass header.from=<helen.koike@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1722966823;
	s=zohomail; d=collabora.com; i=helen.koike@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=vm9Xz4ftCLuaGhJmR6WJfQfgd+gvJMEYvlVmMqFEz7Y=;
	b=Et73oSQCEDClSg3IU+CRumgmoyIfQI+37BPGnN7QIpXl61qVPOCKlmSpq1bxFUhz
	jXy+QcAU87MjJosY+veiMd0aOmKN/ApQrSGt83IkpJx6jyrbiMdK0CZU27V/BVv6IiO
	OAz03sv/087ek79F/0DHc4WEjP9oTIIAXw/4tg2s=
Received: by mx.zohomail.com with SMTPS id 1722966822122477.7651221308056;
	Tue, 6 Aug 2024 10:53:42 -0700 (PDT)
Message-ID: <83921779-808f-487d-a6fc-5a853024791a@collabora.com>
Date: Tue, 6 Aug 2024 14:53:33 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/6] drm/ci: Add support for GPU and display testing
To: Daniel Stone <daniel@fooishbar.org>,
 Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 airlied@gmail.com, daniel@ffwll.ch, robdclark@gmail.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 deborah.brouwer@collabora.com, dmitry.baryshkov@linaro.org,
 mcanal@igalia.com, melissa.srw@gmail.com,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 virtualization@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20240730021545.912271-1-vignesh.raman@collabora.com>
 <CAPj87rOYVCG2A10ruyYan9y6NmMY0fUM6Z5-9ht7dEp_THYmNw@mail.gmail.com>
Content-Language: en-US
From: Helen Koike <helen.koike@collabora.com>
In-Reply-To: <CAPj87rOYVCG2A10ruyYan9y6NmMY0fUM6Z5-9ht7dEp_THYmNw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_105400_166580_0EC02858 
X-CRM114-Status: GOOD (  12.02  )
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



On 05/08/2024 10:11, Daniel Stone wrote:
> Hi Vignesh,
> 
> On Tue, 30 Jul 2024 at 03:16, Vignesh Raman <vignesh.raman@collabora.com> wrote:
>> Some ARM SOCs have a separate display controller and GPU, each with
>> different drivers. For mediatek mt8173, the GPU driver is powervr,
>> and the display driver is mediatek. In the case of mediatek mt8183,
>> the GPU driver is panfrost, and the display driver is mediatek.
>> With rockchip rk3288/rk3399, the GPU driver is panfrost, while the
>> display driver is rockchip. For amlogic meson G12B (A311D) SOC, the
>> GPU driver is panfrost, and the display driver is meson.
>>
>> IGT tests run various tests with different xfails and can test both
>> GPU devices and KMS/display devices. Currently, in drm-ci for MediaTek,
>> Rockchip, and Amlogic Meson platforms, only the GPU driver is tested.
>> This leads to incomplete coverage since the display is never tested on
>> these platforms. This commit series adds support in drm-ci to run tests
>> for both GPU and display drivers for MediaTek mt8173/mt8183, Rockchip
>> rk3288/rk3399, and Amlogic Meson G12B (A311D) platforms.
>>
>> Update the expectations file, and skip driver-specific tests and
>> tools_test on non-intel platforms.
> 
> Thanks, series looks sensible and is:
> Reviewed-by: Daniel Stone <daniels@collabora.com>
> 
> Cheers,
> Daniel


Applied to drm-misc-next

Thanks
Helen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
