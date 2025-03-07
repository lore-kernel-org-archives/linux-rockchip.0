Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D60F6C19F32
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 09:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AezUtThNDFovkWtNvKTWMNweGjDbO7iVWfEm8zE8GsE=; b=VZ4s5iU25AY7P7
	yoUPNzTaZweP2XuO7XvTZtyFV5QGruvqcVDH168d7DavvyyNIewrt9KiUW4YpIevIPFVQjVLy5Twi
	nnlPS3V0upC9YsYAS4OpHw5LXd5h0CNJ+UxorvhviadpVmiUfJfPKCH18sZgvqsKJxpEbZO6V2L8L
	w25xaMEEwXa746bbBZ/02vWWdBChsBMcBzOj0YGB6Wc0O8neC+d/fHpsLnfu4Dh349b0Zz6cVtQWy
	MjNigJp5IeEfsu80jicLvE7HB8LMYHZYBt42YWRhH+NEgnaLUyY5WWEQuo2Nz7spdAehCpzzj09oM
	ZwbtxFRjBpOejPyppACg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqUTT-0000000DmBe-37Hi;
	Fri, 07 Mar 2025 09:58:35 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqUTR-0000000DmAz-0FRJ
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Mar 2025 09:58:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741341500; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Z/PR+U4MA9bcDqOgjLzb9aFLSqOfjQCNLN9CWXAeqCSaQ2wexkyxP1Bg/xD0fmk8RquwWyFiArD1B3UiqE6iMXVnW0hOKgSKOfNSoAQ7i813gQ0JRMIYg6WGxknxMtOD7rLnAWQBM9LWalrtEwE1AUWt1bi4+pu17mNed8EyYb4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741341500; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Sd6Z99EJ8ZfYhr95vBuuNjDtXLH/fo9bgS3ZF5FRe+A=; 
	b=Qpm3aURsAO+MlocU75G0A8cgylgrCbRoof3nsZVioW00rCGtdvFtOkxb0Zo7WVk0HduFlADq+lK3HqVMdKEetK1JNFes7+ErPFf+Sqf6gI+FLG1s/IqdhmyB7APaBA43BVR8JxIBG/nza1zVBNPQUJS9G8STIDAD2GZ0s5+5UL0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741341500;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Sd6Z99EJ8ZfYhr95vBuuNjDtXLH/fo9bgS3ZF5FRe+A=;
	b=YHysda3AUKg7FgH3xrjjMNnd/QXtAkN7B6bo8cAoMMwJY15V3jJuq1aiK+6+6CiF
	s8++XPd6/7Q7/zbieDWC6pTp8jK8u/U1Mj3yAnCBOQDOD8lpjR58007bAdKrqLz9k3t
	j/M2fjCiBh4+PgCjsVqhunTNhuwUajm8YR3Fyry4=
Received: by mx.zohomail.com with SMTPS id 174134149797959.40961357397384;
	Fri, 7 Mar 2025 01:58:17 -0800 (PST)
Message-ID: <64f8d179-9d0a-47ca-872c-aa92e44e7772@collabora.com>
Date: Fri, 7 Mar 2025 12:58:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] media: platform: synopsys: hdmirx: Fix compilation on
 32bit arches
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tim Surber <me@timsurber.de>
References: <20250307092113.646831-1-dmitry.osipenko@collabora.com>
 <8cb4af0d-935a-4305-a204-9c2f187e0593@xs4all.nl>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <8cb4af0d-935a-4305-a204-9c2f187e0593@xs4all.nl>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_015833_181335_26BF8CF2 
X-CRM114-Status: GOOD (  13.63  )
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

On 3/7/25 12:54, Hans Verkuil wrote:
> Hi Dmitry,
> 
> On 07/03/2025 10:21, Dmitry Osipenko wrote:
>> The pixelclock is specified as 64bit integer and for this driver it
>> won't be above 600MHz. Fix the 64bit division of the pixclock for 32bit
>> kernel builds.
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Closes: https://lore.kernel.org/oe-kbuild-all/202503070743.WnRxStlk-lkp@intel.com/
>> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>> ---
>>  drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
>> index 4d42da7255f3..7e342bbde967 100644
>> --- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
>> +++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
>> @@ -291,7 +291,7 @@ static void hdmirx_get_timings(struct snps_hdmirx_dev *hdmirx_dev,
>>  	hfp = htotal - hact - hs - hbp;
>>  	vfp = vtotal - vact - vs - vbp;
>>  
>> -	fps = (bt->pixelclock + (htotal * vtotal) / 2) / (htotal * vtotal);
>> +	fps = ((u32)bt->pixelclock + (htotal * vtotal) / 2) / (htotal * vtotal);
> 
> I just merged:
> 
> https://patchwork.linuxtv.org/project/linux-media/patch/20250306-synopsys-hdmirx-fix-64-div-v1-1-dd5ff38bba5e@kernel.org/
> 
> So you can either leave that patch in, or provide a patch on top.

Missed that patch you merged. No need to do anything then, thanks!

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
