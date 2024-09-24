Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18624CF9C6B
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 08:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tilezLw3sDKmGrAY1QjJziORDJu2woPKezOuevfarg=; b=xN29CrxsEgd/S5
	50EIzhm/BGwQ5fWBFFZZnAV9PhdsjWSTRLDEFo5kWngAHwZ3+9PCD+F1ymERAx03mhmlpUv15MG4D
	5Ft2nzXp4ywmNMetjav4FZiBGI+FOH5d/+J+wAB8ZcL6bi8gWG3xkdZa9egWiy8XeOIJcjkwdg8S/
	2Pmgvq2/MeEEV+H+rirBbCJROSSSxlUe9MVaxvBR/7ADux2FJ4cbKIrKtRC+mM+GLsZTsBBBfCLLW
	tIwColxgj7NvsoJ9G1UQNQ51F/iNzZzskSlVKFerU3b/Ea/LpqOLCiu1n73Kc0nWUrsDQe/9whCwv
	siA0Ty1sJw2CXg3FJy1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st0Xn-00000001WaC-2kIx;
	Tue, 24 Sep 2024 08:05:11 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st0Xj-00000001WYS-2Scg;
	Tue, 24 Sep 2024 08:05:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1727165105;
	bh=bkob+FdVbT5JvRwKp/3RFu5HC+yR0/AGxmQWAMBAfxw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CvuFzrI0AhizshttZzgCNh2wASf80PcmQTwldXXkfRp3FLPhvWPKcfrWEvbKo1Xfl
	 pYUdAvUXHnxCiRj+ansAs1Y/4qEBT2Zw5XVVCJNP0uIbVQ8vrmon7R8FFrcoXCUH6s
	 9pJCTeDwuMeOV60sdTU3fT/wzcFnRngPhHowoQrpxGM+RtY4qCuVp/9cxh0gpJy1qA
	 vosjvZo289g0RSv045JmPKfysGhGUkc9uWvpxbNbbTk4ORi2A8gXcPDYXBJXyeGyMz
	 H+BP1y/ML/KeP7+lTIDUgycgFbxCGaC693LhuQAEtPJhFvvXYKON7YacpsDKrw3Ovw
	 10HNVyTURjyPg==
Received: from [192.168.50.250] (unknown [171.76.80.125])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3D1CC17E1045;
	Tue, 24 Sep 2024 10:05:02 +0200 (CEST)
Message-ID: <58a9334d-26eb-4106-806a-59e5e728aed5@collabora.com>
Date: Tue, 24 Sep 2024 13:35:00 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] docs/gpu: ci: update flake tests requirements
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, guilherme.gallo@collabora.com,
 sergi.blanch.torne@collabora.com, deborah.brouwer@collabora.com,
 mripard@kernel.org, rodrigo.vivi@intel.com,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 virtualization@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20240924022600.1441969-1-vignesh.raman@collabora.com>
 <CAA8EJprUUUc0iDph-HPrW1anrdnzYju7+JERQdHbwxvznq=H4w@mail.gmail.com>
Content-Language: en-US
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <CAA8EJprUUUc0iDph-HPrW1anrdnzYju7+JERQdHbwxvznq=H4w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_010507_815459_5970AAA6 
X-CRM114-Status: GOOD (  17.39  )
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

On 24/09/24 11:46, Dmitry Baryshkov wrote:
> On Tue, 24 Sept 2024 at 04:26, Vignesh Raman
> <vignesh.raman@collabora.com> wrote:
>>
>> Update the documentation to require linking to a relevant GitLab
>> issue for each new flake entry instead of an email report. Added
>> specific GitLab issue URLs for i915, xe and other drivers.
>>
>> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
>> ---
>>   Documentation/gpu/automated_testing.rst | 15 ++++++++++-----
>>   1 file changed, 10 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/gpu/automated_testing.rst b/Documentation/gpu/automated_testing.rst
>> index 2d5a28866afe..f73b8939dc3a 100644
>> --- a/Documentation/gpu/automated_testing.rst
>> +++ b/Documentation/gpu/automated_testing.rst
>> @@ -67,20 +67,25 @@ Lists the tests that for a given driver on a specific hardware revision are
>>   known to behave unreliably. These tests won't cause a job to fail regardless of
>>   the result. They will still be run.
>>
>> -Each new flake entry must be associated with a link to the email reporting the
>> -bug to the author of the affected driver, the board name or Device Tree name of
>> -the board, the first kernel version affected, the IGT version used for tests,
>> -and an approximation of the failure rate.
>> +Each new flake entry must include a link to the relevant GitLab issue, the board
>> +name or Device Tree name, the first kernel version affected, the IGT version used
>> +for tests and an approximation of the failure rate.
>>
>>   They should be provided under the following format::
>>
>> -  # Bug Report: $LORE_OR_PATCHWORK_URL
>> +  # Bug Report: $GITLAB_ISSUE
>>     # Board Name: broken-board.dtb
>>     # Linux Version: 6.6-rc1
>>     # IGT Version: 1.28-gd2af13d9f
>>     # Failure Rate: 100
>>     flaky-test
>>
>> +The GitLab issue must include the logs and the pipeline link. Use the appropriate
>> +link below to create an issue.
>> +https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/ for i915 drivers
>> +https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/ for xe drivers
> 
> drm/msm for msm driver, please. Otherwise we can easily miss such issues.

Sure, will add it in v2. Thanks.

> 
>> +https://gitlab.freedesktop.org/drm/misc/kernel/-/issues for other drivers
>> +
>>   drivers/gpu/drm/ci/${DRIVER_NAME}-${HW_REVISION}-skips.txt
>>   -----------------------------------------------------------
>>
>> --
>> 2.43.0
>>
> 
> 

Regards,
Vignesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
