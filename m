Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F7E8C197A0
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 07:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dX/jOKrmXa49O8XoZj1kj4QRn2iMEHSxerLH0zU9nZw=; b=qqd5CZn0eyPfAL
	dZ16/G7cFaUV5VX6nE9J1V4C9wXxM8BvkU/GV221yKUgNesowQdoX39Qurj/u8UcsoNS/tj/QxFLn
	qV5zWVCMcV1J6riWerSArQH9t2Thks/ZERbeGMCSVo4T8CTvyCplchmpAGqlehCFLl9H81dSKrmqr
	KH2PO5e0mSt82ixhVJ3tx7p6/QIw8D3ZxHe/gbSlFkBbyXddhWMxsWVIneryJFtBZNuBpl2wcADMz
	5ZE77TsnkGdAJFXRMv+/Ei61MC6O8GczON1uUKFqvpLpouKgsFO63YyWao6zWHkGtJHEqsxKScxLk
	bYmB67KkmqluPAYfMySw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3swo-005nWV-0q;
	Fri, 17 Nov 2023 07:07:26 +0000
Received: from mail-m12763.qiye.163.com ([115.236.127.63])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3swk-005nW3-2S
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Nov 2023 07:07:24 +0000
DKIM-Signature: a=rsa-sha256;
	b=Nu292DN2E6gfuHIj233Rh8Mdr+z5CJlMWHO8NWBfbI4ao9MCcWWM5VLf2BnX2BVH9c92Fx09CxiX4W8gRKqXwKDxiAREUGNt1I7x/DpyeAWDV6rYxLJjP9k4eRtbglzyPG0EIa1YuA5UhPKtrAj8LITcaYyVn1FdDw0padxAVRs=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=at1ne/rWq7oflyNTr5NsoIEOTljtkrgIcuWxm4pqXDc=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 6C5477804C6;
	Fri, 17 Nov 2023 15:06:35 +0800 (CST)
Message-ID: <3e011d52-017e-4360-86b4-781535ef61ad@rock-chips.com>
Date: Fri, 17 Nov 2023 15:06:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andyshrk@163.com>,
 heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 chris.obbard@collabora.com
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com>
 <20231115090823.GY3359458@pengutronix.de>
 <8f2ebc81-51c5-44d5-b27b-633a6cc85d0d@rock-chips.com>
 <20231116134757.zu7axb6cvriqjm6y@mercury.elektranox.org>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20231116134757.zu7axb6cvriqjm6y@mercury.elektranox.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR5DGFYZTU8fSEIfSk5LHh1VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a8bdc1a5771b24fkuuu6c5477804c6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NxA6Dgw6KDw5MDhKPzJKLA0o
	DyIwFCFVSlVKTEtLSUtPTEJNSU5PVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSE5ISzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_230722_996241_E81887C4 
X-CRM114-Status: GOOD (  10.33  )
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

Hi Sebastian:

On 11/16/23 21:47, Sebastian Reichel wrote:
> Hi,
>
> On Thu, Nov 16, 2023 at 06:39:40PM +0800, Andy Yan wrote:
>>>>    	vop2->sys_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,grf");
>>> This already lacks an error check, shame on me...
>>>
>>>> +	vop2->vop_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,vop-grf");
>>>> +	vop2->vo1_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,vo1-grf");
>>>> +	vop2->sys_pmu = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,pmu");
>>> ... but please don't duplicate that.
>> It a little difficult to find a proper way to do the check, as not every soc need all these phandles.
>>
>> Do i need check it per soc?
> I suggest adding a u32 flags to struct vop2_data and then have
> something like this:
>
> if (vop2_data->flags & VOP2_HAS_VOP_GRF) {
>      vop2->vop_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,vop-grf");
>      if (IS_ERR(vop2->vop_grf))
>          return dev_err_probe(dev, PTR_ERR(vop2->vop_grf) "cannot get vop-grf");
> }
>
> if (vop2_data->flags & VOP2_HAS_VO1_GRF) {
>      vop2->vo1_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,vo1-grf");
>      if (IS_ERR(vop2->vo1_grf))
>          return dev_err_probe(dev, PTR_ERR(vop2->vo1_grf) "cannot get vo1-grf");
> }
>
> ...


I can do it like this if Sascha is also happy with it.

>
> Greetings,
>
> -- Sebastian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
