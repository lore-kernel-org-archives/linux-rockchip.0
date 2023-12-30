Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE06EC46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 20:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODArEFQwjIWp3SkpSfqwdhaU159zLxT4IJ2M7kXolPg=; b=hmLlOv6QRsuYb3
	D+NYZxtc55/jcYgPDDKCFJTLK7anf8w9WNBKjFTdFQlFgPq2FMBo/Q6UunsjD95W6MeDzqTLVZkT4
	S6rDbcLWKwVy4EV7aOjvzGhdFPI934fL+bDy0k1NYq1LdsNzbmFAoXbJPzc3b/ddo54VWM9g3DCc8
	PfZ4BS3NSM+Y7TnndUoGjrsvTyD/1FNlD8y0L3n6nLTs4kPiQET6VIt6/F+R59w46dTcq+++MigK9
	Z3eJT8MWa+4xU68lXZ2Jz5Z40E5USVOYbQ9QnCN5rajFGqwyvryeO9/N3kiCUgfjyUciZ/vFkCgDA
	pFHtXY0vHk2uN+hY6rRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJfhS-003Nwm-05;
	Sat, 30 Dec 2023 20:12:50 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJfhP-003NvD-0f
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Dec 2023 20:12:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1703967150;
 bh=48uwgyUepoTSwyC5niR44R50rvv/N7Od8yW5FGvT5tM=;
 b=CwSvrHrVc21lQQfqDKPX8TCsCabekBKSYC+SHd0X6ZS3dIaFBFvV4slhuGiHpCybwX02zt1VN
 mDD2UQDU1B1e+K/hCXkMNJOX3BbVsh5zLDUJTTF1CV553y6fe23e8HN7CtT88ilOpQmVwD4U5jA
 M/vu83g0v0WPu6PN5V+LqchpMRaXNTmZAKZ+mPuMqaCAk2FZVfkzkAMrGFXeJ3Wq/qPvLRXp8qS
 fJpI9/+hPIrP9iD4ca3xK5qLVng4xWUTGZtVH1az5wyrT/4Yd6wiVMN0Nv8qAuzlx4bQd6OjFjg
 aSKtUr5zXKcTjwOAqH7xqGktW6WMln/olg6T3FxBrm7w==
Message-ID: <b9e6702d-4781-413b-8e4c-0b74272e9f22@kwiboo.se>
Date: Sat, 30 Dec 2023 21:12:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] Add hantro g1 video decoder support for RK3588
Content-Language: en-US
To: amazingfate <liujianfeng1994@gmail.com>
References: <97faf49b-0109-439a-accf-251b502ad40b@kwiboo.se>
 <20231230153159.3748580-1-liujianfeng1994@gmail.com>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20231230153159.3748580-1-liujianfeng1994@gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 659079ad220dc6bab27e429e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_121247_297670_3FDD808D 
X-CRM114-Status: GOOD (  11.33  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de, sfr@canb.auug.org.au, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, ezequiel@vanguardiasur.com.ar, krzysztof.kozlowski+dt@linaro.org, p.zabel@pengutronix.de, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jianfeng,

On 2023-12-30 16:31, amazingfate wrote:
> Hi Jonas,
> 
> On Sat, 30 Dec 2023 12:49:38 +0100, Jonas Karlman <jonas@kwiboo.se> wrote:
>> I have only tested this fork of fluster with ffmpeg 6.x, what version of
>> ffmpeg did you test with? I was expecting it to also work on ffmpeg 5.x.
> 
> I am using ffmpeg 6.0 with v4l2-request patches from libreelec[1].

Great, that patch should match my v4l2-request-n6.0.1 branch [2],
and does not have any NV15/NV20 ffmpeg pix fmt patches that could
interfere.

[2] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-n6.0.1/

> Ffmpeg v4l2 decoder in fluster fork is using ffmpeg args:
> "-hwaccel_device /dev/dri/renderD128"
> which make the test fall with hantro g1 on rk3588. After removing it I
> can run tests by ffmpeg v4l2-request decoder. 

Thanks for confirming and testing again, and I fully understand why
"-hwaccel_device /dev/dri/renderD128" caused issues on rk3588 :-)

The commit "HACK: hwcontext_drm: do not require drm device" was required
to run ffmpeg without a hwaccel_device, and I tested fluster without it.

Regards,
Jonas

> 
> Rk3566 and rk3588 are sharing the same results:
> JVT-AVC_V1 test suite with decoder FFmpeg-H.264-V4L2-request:
>  Ran 127/135 tests successfully.
> JVT-FR_EXT test suite with decoder FFmpeg-H.264-V4L2-request:
>  Ran 44/69 tests successfully.
> VP8-TEST-VECTORS test suite with decoder FFmpeg-VP8-V4L2-request:
>  Ran 59/61 tests successfully.
> 
> [1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
> 
> Regards,
> Jianfeng


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
