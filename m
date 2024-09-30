Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5005CF6491
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 07:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2Km7WSh4RNs228rl7Xe1myNw9xGAlzEfQ3RB/gEnBk=; b=CsPyYSJvvK5wr6
	ZFGfRpUxn3q4f9DHf+HwTHqUCuaMhK9ecMBtgISw8qbE7aU2s3jyhv6R/uyE/puOobGarD5MR7pNs
	PzfueeX2NEEnIbl/857QLtbLtqqLu00c0S46g2q29EnQFi8Zu2VDZfsS3C5fV+nHjhAr/Y0GJycVI
	wK1SnY58IaNrKpuADnQcni2zUTRX7Kdiuc6V2zof/epTlqg89igUuA9MzdKZf43a7w974szlGn5Ad
	+7kWBjUziJEFcmo5hNHDyiMKWcE73vSz4ZMS+pwokS19Rtl2iUZBmk/DZB4UUr2z875tzo52bhN2B
	HHp0b6iI1xxb36PXDddA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svAto-0000000GBVw-0Oy3;
	Mon, 30 Sep 2024 07:32:52 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svAtB-0000000GBL3-37AN;
	Mon, 30 Sep 2024 07:32:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1727681531;
	bh=M3ZGR3m5dE/OcpAuJgNW07sMzVd9xcG6hbRIN3GQi5s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Oz0MJoD/WjoceXAqgBvUNpAstd9dV0jBR191CXDs3DaHEQv8fB6tEEkb3khrgiisE
	 nh7tdsJ05/IcW/muYpcMYD2UbZ59bvLNKjDb7A7RsthSIIYy9ISk7EtNcjZZJJ/j4b
	 46HY0ZSLujeCZ2Euue+8cxgFYaU/00AGdTSqrFGu+tvTdK4XrGCbrxAmA25H//DWD1
	 gnBnOgQkZjyB3Rxtdykg0mDYBmcB8VRkDHDSZOdUCxlY8BYcGNoed0Ur7HnpY3zSJe
	 +ONzA6kcS7zMAeoKr1mZ7/oMykf0KM1jTOBErKvVlvh8ykoNrOxERefW/OQ7/gJea/
	 VGMkeeuORJQXg==
Received: from [192.168.50.250] (unknown [171.76.80.165])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9E73717E1047;
	Mon, 30 Sep 2024 09:32:07 +0200 (CEST)
Message-ID: <5fd48673-571a-4750-9704-e172f7ea372f@collabora.com>
Date: Mon, 30 Sep 2024 13:01:55 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] docs/gpu: ci: update flake tests requirements
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, guilherme.gallo@collabora.com,
 sergi.blanch.torne@collabora.com, deborah.brouwer@collabora.com,
 dmitry.baryshkov@linaro.org, mripard@kernel.org, quic_abhinavk@quicinc.com,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 virtualization@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20240927052416.1833889-1-vignesh.raman@collabora.com>
 <ZvbCzqvyeTI_j2cD@intel.com>
Content-Language: en-US
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <ZvbCzqvyeTI_j2cD@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_003213_985418_ADDE2CCE 
X-CRM114-Status: GOOD (  16.94  )
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

Hi Rodrigo,

On 27/09/24 20:05, Rodrigo Vivi wrote:
> On Fri, Sep 27, 2024 at 10:54:14AM +0530, Vignesh Raman wrote:
>> Update the documentation to specify linking to a relevant GitLab
>> issue or email report for each new flake entry. Added specific
>> GitLab issue urls for i915, msm and amdgpu driver.
>>
>> Acked-by: Abhinav Kumar <quic_abhinavk@quicinc.com> # msm
>> Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> # msm
>> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
>> ---
>>
>> v2:
>> - Add gitlab issue link for msm driver.
>>
>> v3:
>> - Update docs to specify we use email reporting or GitLab issues for flake entries.
>>
>> ---
>>   Documentation/gpu/automated_testing.rst | 13 +++++++++----
>>   1 file changed, 9 insertions(+), 4 deletions(-)
>>
>> diff --git a/Documentation/gpu/automated_testing.rst b/Documentation/gpu/automated_testing.rst
>> index 2d5a28866afe..03769b4a17cf 100644
>> --- a/Documentation/gpu/automated_testing.rst
>> +++ b/Documentation/gpu/automated_testing.rst
>> @@ -68,19 +68,24 @@ known to behave unreliably. These tests won't cause a job to fail regardless of
>>   the result. They will still be run.
>>   
>>   Each new flake entry must be associated with a link to the email reporting the
>> -bug to the author of the affected driver, the board name or Device Tree name of
>> -the board, the first kernel version affected, the IGT version used for tests,
>> -and an approximation of the failure rate.
>> +bug to the author of the affected driver or the relevant GitLab issue. The entry
>> +must also include the board name or Device Tree name, the first kernel version
>> +affected, the IGT version used for tests, and an approximation of the failure rate.
>>   
>>   They should be provided under the following format::
>>   
>> -  # Bug Report: $LORE_OR_PATCHWORK_URL
>> +  # Bug Report: $LORE_URL_OR_GITLAB_ISSUE
>>     # Board Name: broken-board.dtb
>>     # Linux Version: 6.6-rc1
>>     # IGT Version: 1.28-gd2af13d9f
>>     # Failure Rate: 100
>>     flaky-test
>>   
>> +Use the appropriate link below to create a GitLab issue:
>> +amdgpu driver: https://gitlab.freedesktop.org/drm/amd/-/issues
>> +i915 driver: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues
> 
> Probably good to add:
> 
> xe driver: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues

Sure, will add it.

> 
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks.

> 
>> +msm driver: https://gitlab.freedesktop.org/drm/msm/-/issues
>> +
>>   drivers/gpu/drm/ci/${DRIVER_NAME}-${HW_REVISION}-skips.txt
>>   -----------------------------------------------------------
>>   
>> -- 
>> 2.43.0
>>

Regards,
Vignesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
