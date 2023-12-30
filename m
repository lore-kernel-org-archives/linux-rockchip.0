Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4908C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 11:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gY+UJF1o33PVTP6KH7TnfO2Rk9/VjQZvH5Jt7zfJx/k=; b=r0dQL8ew7uvoYk
	tiolfvbkhPWRAYbfBg8FoZO5V7u26Hg+Nnq6rxoo14NHj+9vu9BJNeP5k85wXh00PgLgH0NbVrYH7
	cTuEgxpyiWE9R5paWfywrIWLR2B9byZcA6WL7omlc02n9cdf2X88jX40RlGZChC705kVkpJ/4A6nF
	7IqBNKHkA1Q8BkOhJO+0ugbS7dGSRRbdYE/ffuLxLkFXyb6q9mnSTXRVUOzPYaFiFldKL3CBDxo6j
	+63v6iZC6O4j+NiClIFZTftvJEV6oB07v7RT0IaPPV6lE78AEb2tyeQGTnB0/pXxzwA2kpjSHhYes
	MYfw1r22PB5zUDzTkiFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJXr1-002jBy-2N;
	Sat, 30 Dec 2023 11:50:11 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJXqy-002jA0-08
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Dec 2023 11:50:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1703936984;
 bh=mxaMu8U3QMAFU/y35CQF9vSyxsVfW4Q2ekWUVTmfutI=;
 b=rKacEDg6gxzfbiW3OXa2U6qYs+s8uJAUyDyNJsMRBpJOc6OVocug9j4mzTWadABLEh+JCEQow
 gEWJ5yG+sYQ+aXjBBCPcfYtQHAYQX9ka0n/jAIb7KcmO5VtBj9O6Eggju9ONyGe2+KFIFoGWPKD
 KAK0IqRBrqssiHo22FqgOQpAKaWN9LrKXvG5taIryO8w0TAA7OpK5x8WhZ65KAIImF3aeOhnAiZ
 dnBMaFtoQ9udtJDHuHbPye4tSU2fwZFJxwFvAgCLV6IQSVKDVGIIJFgVs9ml3ZD0JblJ3mhQ5Ts
 95jKBhbp9RZXRzFjQCi+MvQdixFe2sdmAX7SQ0IpREhg==
Message-ID: <97faf49b-0109-439a-accf-251b502ad40b@kwiboo.se>
Date: Sat, 30 Dec 2023 12:49:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] Add hantro g1 video decoder support for RK3588
To: amazingfate <liujianfeng1994@gmail.com>, sigmaris@gmail.com
Cc: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 mchehab@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, heiko@sntech.de, sfr@canb.auug.org.au,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <CAAXNxMT3f68-ptM7Crhrfmn7iwTyJc9pwz4Beob+5beVODaSHQ@mail.gmail.com>
 <20231230095228.3739806-1-liujianfeng1994@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20231230095228.3739806-1-liujianfeng1994@gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 659003d74d40790198022670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_035008_115619_486CBA6D 
X-CRM114-Status: GOOD (  12.74  )
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

Hi,

On 2023-12-30 10:52, amazingfate wrote:
> Thanks for your test with fluster. I also tested on my rock-5b(rk3588)
> and orangepi-3b(rk3566) which are sharing the same hantro g1 ip. I am
> running on ubuntu jammy so I'm using gstreamer 1.20.1
> 
> rk3566 and rk3588 are sharing the same results:
> JVT-AVC_V1 test suite with decoder GStreamer-H.264-V4L2SL-Gst1.0:
>   Ran 112/135 tests successfully.
> JVT-FR_EXT test suite with decoder GStreamer-H.264-V4L2SL-Gst1.0:
>   Ran 27/69 tests successfully.
> VP8-TEST-VECTORS test suite with decoder GStreamer-VP8-V4L2SL-Gst1.0:
>   Ran 59/61 tests successfully.
> 
> H264 decoder test has less test case passing. I think that's because
> of my low gstreamer version. If you have a rk356x board I guess you
> will get the same result as rk3588. That should be the mainline support
> status of hantro g1 decoder.
> 
> For ffmpeg at the moment fluster doesn't support v4l2-request decoder.
> I tried Kwiboo's fork[1] but failed to pass tests with decoder
> FFmpeg-H.264-V4L2-request. I can decode video with ffmpeg command like:
> "ffmpeg -benchmark -hwaccel drm -hwaccel_output_format drm_prime -i Big_Buck_Bunny_1080_10s_30MB.mp4 -f null -"

I have only tested this fork of fluster with ffmpeg 6.x, what version of
ffmpeg did you test with? I was expecting it to also work on ffmpeg 5.x.

Please also note that ffmpeg v4l2-request patches at [2] contain some
NV15/NV20 ffmpeg pix_fmt patches that fail ffmpeg tests. They are not
needed for decoding of 10-bit frames using rkvdec but they are required
to be able to run fluster test suite JVT-FR_EXT on rkvdec. (hantro g1 do
not support 10-bit frames on rk)

[2] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-n6.1

Regards,
Jonas

> 
> [1] https://github.com/Kwiboo/fluster/tree/v4l2-request
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
