Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB481C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Mar 2024 14:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTbEMvuQzxmpYHoTvcIXb/qpL/c9lwL5IV3gxkEs74w=; b=dqr7QP8dSDETY+
	1vNDRJ+6Zzh+qexYD5+WUk2sXEHXbOexNp5SV8ddb58FNSAFSoHMAnwDxBN0vIKR/mjbcFazK9lKr
	5+MBdT/DRyJtfwvZGsmUq6J7kovjfy8wIGvBEw37hgUnwJBG52U4GNwRTFrJEeUtSTMdD/BabuABp
	k5aENdOCFnp9cxVQ+wSPR93KgKKRgU/Vh4LjJsA5sQh1FDWdM4myVJI4xD0AGhHfZa+ucMlplxR68
	zo02c2Pco5rYb5T0xdk0OJ86XP0gPWc/O5G+3uj73MR8frKL88W9GiIRCefbdpG8hZfSyaH3AMvYR
	ubO6Ogh3X+MnHRzk+wXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmEIa-00000008rdH-05R6;
	Mon, 18 Mar 2024 14:49:12 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmEIV-00000008rbc-1Oat;
	Mon, 18 Mar 2024 14:49:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710773344;
	bh=USOr6qU9s7oCtYs/hRrdocv0US/SAICnJv0VzvAXOfs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Kt4qR/q+CdWoweti9UtfSuJ0viP1USdpy92jythJySd+nv/6i13t51t8Blr1njkZ6
	 iCi3CoElv2WjMVUkToNLrjDFtiH+30oXu61w0tWoJBWvLuFykq04a0qHusmnF9ztZh
	 XaKVqrx3oap2zxRcSmFNpxYUQsb0vIZokfVBNEVuLtl2IsY8zjOHO0C8VoqJo2XVWX
	 PlukdzC9HBegy4226bnOGpUm0gqyaI66qQfiBD+g+Uof5XzpKXOV++O1zp6ylz2F2g
	 MOCS35dvJQf8ChRUq/fKGJdFpFVylmBCegkflwhea6UpBjeqp61oNxQl/ng+/2Ye26
	 +tqAbm7YEAJPg==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D539A37811D1;
	Mon, 18 Mar 2024 14:48:59 +0000 (UTC)
Message-ID: <9f406611-54cd-3a69-5440-40535f3d30c0@collabora.com>
Date: Mon, 18 Mar 2024 20:18:57 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 03/11] drm/ci: uprev IGT and update testlist
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 emma@anholt.net, robdclark@gmail.com, david.heidelberg@collabora.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 hamohammed.sa@gmail.com, rodrigosiqueiramelo@gmail.com,
 melissa.srw@gmail.com, mairacanal@riseup.net, mcanal@igalia.com,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240306030649.60269-1-vignesh.raman@collabora.com>
 <20240306030649.60269-4-vignesh.raman@collabora.com>
 <CAA8EJpo=OXUitC+NPjZd5Kpq9dF04BSffvgsMYnn7LmmEoh09A@mail.gmail.com>
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <CAA8EJpo=OXUitC+NPjZd5Kpq9dF04BSffvgsMYnn7LmmEoh09A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_074907_727490_A5FC994A 
X-CRM114-Status: GOOD (  14.66  )
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

Hi Dmitry,

On 15/03/24 17:07, Dmitry Baryshkov wrote:
> On Wed, 6 Mar 2024 at 05:08, Vignesh Raman <vignesh.raman@collabora.com> wrote:
>>
>> Uprev IGT and add amd, v3d, vc4 and vgem specific
>> tests to testlist. Have testlist.txt per driver
>> and include a base testlist so that the driver
>> specific tests will run only on those hardware.
>> Also add testlists to the MAINTAINERS file.
> 
> I think we should move away from specifying tests explicitly. They can
> easily get out of sync. A month ago I had to manually go through the
> list of the tests and update it to follow changes in the IGT.
> 
> I think we should directly use testlist.txt from IGT and then filter
> it out using skips.

So we use the test-list-full.txt or test-list.txt from IGT and generate 
a single testlist for drm-ci when we uprev IGT?

Instead of adding the below to skips file for different driver,
msm_.*
^amdgpu.*
panfrost_.*
v3d_.*
vc4_.*

If we have a separate testlist for each driver, we can update the main 
testlist.txt along with individual testlist for each driver. We just 
need to move the driver specific tests from main testlist to individual
driver testlist file. Please let me know your thoughts.

Thanks.

Regards,
Vignesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
