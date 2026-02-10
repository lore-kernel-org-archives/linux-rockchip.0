Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B811EA3F15
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Feb 2026 07:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xRFZ6xHMHuHPq/PRxX5MBBLb33iM5TIM4ywZj3LYVU=; b=MznPc2i4pRUCSI
	fPpKLqwR2rFzGg20CBkR+MdChosawph2vVXfY1akdW6/VaQifimYpoJLnPe5EaVBaYn4LN+GF1TSP
	xf8J9/tHYjolgJaYapvCOjEQNpLeZVH1hDgaRJaqubwC4CLbIhpKUSyi42g2zusmnO8HDRnfYYR3O
	YaevQvU+1xahlE5oABWdtawDT59QsFJha27XZ0TTJ340Z8qy5Of/bDxSz0AUzOwFq9zJl2FGhf1RS
	y65dkqCck2xTL825UFsvyIjkskWvc1OyJ5eI4+NG4eci55zCkFve8yAixJ69UlRXi28gOKN7bjiRm
	BiL1toY0y7Xp4IGJgbCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpi2T-0000000GcZG-3DyO;
	Tue, 10 Feb 2026 07:20:01 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpi2Q-0000000GcYD-0hLZ;
	Tue, 10 Feb 2026 07:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770707995;
	bh=mXytY2lL2wi8cjZeNB2IcAirtUMY2l1nJ77qqr3eRgI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cORE1bB6JiXPP7MxYMEIB9mnMgtmqwgQWX81FlF2vw5eQto+1TUUuWBeugjetaSV8
	 Hj+Ua2UaDoaOn3wzQBLNmooz3DV7UbKMkaVOSRxOlRZWasCebnpSw3TCi3wavrMIPR
	 VAF1c/3QFj1yh3vT9Abs/Xzwp/B9+EPUKy3EkSI0xnN/DW0r3RvRro0opIMTKzU4E4
	 uhPC1u5cw0mgJG1qxpa3eSkS6XE0xImmDJtUcFxDzPlTvUnhr6AmuPM35XvHS2uN1u
	 0lUvIGnc7IC+qf+frLWojZ/ioO6Fx2k2K1yWxtkXE4ChKnpDTrOx/y6p8Yjiev5gZL
	 PDXhRtW/OBwxg==
Received: from [192.168.50.190] (unknown [171.76.81.211])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 36D1717E13A6;
	Tue, 10 Feb 2026 08:19:49 +0100 (CET)
Message-ID: <5ed6508c-78ab-4606-b503-9bc54f5cdea9@collabora.com>
Date: Tue, 10 Feb 2026 12:49:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 6/7] drm/ci: uprev IGT
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch,
 lumag@kernel.org, robdclark@gmail.com, robin.clark@oss.qualcomm.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 valentine.burley@collabora.com, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20260127104406.200505-1-vignesh.raman@collabora.com>
 <20260127104406.200505-7-vignesh.raman@collabora.com>
 <zi7frtnecrzyei4fl4nmwmth3icnsyycxxobbrcwovbqfsfq4z@eh25dyfrjkqz>
 <9949e82b-6ec2-4975-939b-d6a709ecf43f@collabora.com>
 <5vxrhiilcsaull2airasmc3pjqazvswrtojozz264i5vk3m6zl@pgkdwq46p4ho>
Content-Language: en-US
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <5vxrhiilcsaull2airasmc3pjqazvswrtojozz264i5vk3m6zl@pgkdwq46p4ho>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_231958_392761_A72DEFF1 
X-CRM114-Status: GOOD (  10.43  )
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

On 27/01/26 19:55, Dmitry Baryshkov wrote:
> On Tue, Jan 27, 2026 at 06:26:11PM +0530, Vignesh Raman wrote:
>> Hi Dmitry,
>>
>> On 27/01/26 18:01, Dmitry Baryshkov wrote:
>>> On Tue, Jan 27, 2026 at 04:14:01PM +0530, Vignesh Raman wrote:
>>>> Recent IGT [1] seems to be broken on MSM hardware, with many tests
>>>> failing due to the old_primary->index != 0 assertion. Uprev IGT to
>>>> the last known good revision where the tests pass, and update the
>>>> expectation files accordingly.
>>>>
>>>> [1] https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/commit/a909ab05
>>>>
>>>> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>
>>> It is not clear, which parts here are due to Mesa uprev (yes, there are
>>> some of those) and which are due to the IGT uprev. Please split into two
>>> commits and make sure that Mesa-uprev passes more or less clearly.
>>
>> The mesa uprev and the IGT uprev are already split into two separate
>> commits. The IGT uprev only updates the IGT version in gitlab-ci.yml and
>> xfails.
> 
> I think I was not clear enough: Mesa uprev also causes some of the
> xfails. Those needs to be a part of the Mesa uprev commit.

I have created v2 where the mesa uprev commit also includes the updated 
xfails. I will send IGT uprev as a separate commit/series.

https://lore.kernel.org/dri-devel/20260210071138.2256773-1-vignesh.raman@collabora.com/T/#t

Regards,
Vignesh

> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
