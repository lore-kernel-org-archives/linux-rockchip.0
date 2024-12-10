Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4725FE77180
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 07:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4iE05nBOwRqhQCLg0UtwXGFcCTeyHLcYjWbDn6dB2QQ=; b=M4B+Mh3fvL3c2T
	2ix+ypZ4XSZrwIeXMhqdwZM9AHl0noCYVnm7X7lk5H0Wq86gB8Wd2HbSdDe57+1btqWIntk01wFrL
	M0gx7CSo1Dau2tX39OTKJfkAJw9/0REHTATWyT7eyGgJhM5bIk3/5qYrJBA/hVfPgtEdPtcoWBjXF
	40qaD0OtgiZLbLBGmowgZ1h0bOTvwi74h6/KE5g14fLxhbkzqf4pFV7cIoo45MpWoyYkrMsYv6whX
	RNCSyDvTIeyuWxvTjtRuku2trGNTUihCkYQxBCGRdOdiU87OUaf9izCb/QLeBO7DhmpVirmq76YcC
	ON8IPBmudF349sJNJn2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKuI2-0000000AV0q-0yXU;
	Tue, 10 Dec 2024 07:04:14 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKuGx-0000000AUrv-0raV;
	Tue, 10 Dec 2024 07:03:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=KsNxn/V9jsZH8S8jVaxxltqPa9bgN7LFDP+cLTpZFt4=; b=K
	IIB39B0ilf71OAen+R8Krs3J1oK6mcpidO3h29l74gkoraTP2mn0Kt3N1bzyQY/B
	JuZGISFW2i80zu9KoxReVM4NBzvftwk7lV7VFoDom0DpOVnI+zbbsdqvi4qdOl2I
	gR9/XfU+0mRsyWM7D1WIX6vtLv/PF8cWXA/V4sclGc=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-102 (Coremail) ; Tue, 10 Dec 2024 15:01:50 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Tue, 10 Dec 2024 15:01:50 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Daniel Stone" <daniel@fooishbar.org>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	s.hauer@pengutronix.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com, 
	detlev.casanova@collabora.com, "Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH v5 08/18] drm/rockchip: vop2: Add check for 32 bpp
 format
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <CAPj87rO0MG2yE_NTndbxQ77rW-p6-ht5kx5vsaOZikQfVmwrgg@mail.gmail.com>
References: <20241209122943.2781431-1-andyshrk@163.com>
 <20241209123215.2781721-1-andyshrk@163.com>
 <CAPj87rO0MG2yE_NTndbxQ77rW-p6-ht5kx5vsaOZikQfVmwrgg@mail.gmail.com>
X-NTES-SC: AL_Qu2YAfSau0kq5imeY+kZnEobh+Y5UcK2s/ki2YFXN5k0tCTI0SYQW29KGUD2y86DDiKsoAirUQVL5MpFRpJHY44bkaXh1iG/7cPZF5Qxw25b
MIME-Version: 1.0
Message-ID: <3576a3c5.6d72.193af5fcafb.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZigvCgD3X79f51dn73o7AA--.49817W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gWxXmdX4aZ9kAACsg
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_230307_615307_0E950C27 
X-CRM114-Status: UNSURE (   7.75  )
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


Hi Daniel,

At 2024-12-10 01:06:05, "Daniel Stone" <daniel@fooishbar.org> wrote:
>Hi Andy,
>
>On Mon, 9 Dec 2024 at 12:32, Andy Yan <andyshrk@163.com> wrote:
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> index bd8db45eeba6..1f101a3c3942 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> @@ -1224,7 +1224,15 @@ static int vop2_plane_atomic_check(struct drm_plane *plane,
>>                                 return -EINVAL;
>>                         }
>>                 }
>> +       }
>>
>> +       if (fb->format->format == DRM_FORMAT_XRGB2101010 || fb->format->format == DRM_FORMAT_XBGR2101010) {
>> +               if (vop2->data->soc_id == 3588) {
>> +                       if (!rockchip_afbc(plane, fb->modifier)) {
>> +                               drm_err(vop2->drm, "Unsupported linear 32 bpp for %s\n", win->data->name);
>> +                               return -EINVAL;
>> +                       }
>> +               }
>
>Please do this in the format_mod_supported() hook, so userspace can
>see the true support of each format/modifier per plane. This will then
>be checked in drm_atomic_plane_check() so you don't need to open-code
>it here.

Thanks, will do in V6.

>
>Cheers,
>Daniel
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
