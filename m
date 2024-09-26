Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFF9ACCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 09:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iu9Lq2IA+M2w+cRB5sOCd0WP3HdsoEXT67gaVThlqPw=; b=GD2N6ywgVI1KoM
	iwMo9tT8roPhcMGFahPqVfYQlzMxGnsKO85KziQ338Au5vIBO0ynE5uGRsvvkepKTzg976PMijSeO
	wcV0vTT9s646oufql2KF9pXrioYd35SNI9bfuqlNbWOVIhXSWb6eHv91uKN8zcb9acfwMM17mIkGb
	Rh4vR8oCPFDZQmpN3j9raA5XEmYwaeb9tIIIGtoG0mQI/j8Txqb6VXyHOG4k6HJOZ/QbkLZArZjyK
	qI1JdOu0be5IXlXRgKSXNKZYB8PuwY5qU3lcUcYDqfvv5/mkXDGKthVhXrmdqFPr5gD12+6P1aZZI
	WxrzLbWCgDZ3kpOElaxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkQV-00000007nhI-3lGs;
	Thu, 26 Sep 2024 09:04:43 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stk9z-00000007kGp-2N2S;
	Thu, 26 Sep 2024 08:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1727340457;
	bh=Vvzgd1LgiFFFjFTb0+aUplSVjTmllj9XrlLOmFGWpvw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=W7qGOs/WXTcXx3RVTvEB2eSz0bFlxfIYGcY9VZKLpS7wzZyyKhJEQKdhfCBCZWKv9
	 9M5yQ2aIMD9mnlwpL3oETbnJqGqSCa7DWtGW9smRY1pQ9sA2H6SXCxDrGePgnGnV6B
	 G7LV/i6hn/yhLeyBfU5SgJw4bZrVOAfBb/FVNK2qn08z9tV1PotXjmwBrJxNjvEv+O
	 C0DoHfqKT8zEw7l+OIobUsRFyHZTP5RgvXDTRAmsqOnK8I+f4QN33YFAnmdJL8ykb+
	 X8sROyY544rjCZ5yvcOvQdlCNze3jQuNlxypIAGUuOIi+k4iULFsbHZFUgYhmh4Qn/
	 sPYjix2VxY4Vg==
Received: from [192.168.50.250] (unknown [171.76.80.165])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 50E1317E1048;
	Thu, 26 Sep 2024 10:47:34 +0200 (CEST)
Message-ID: <9470f582-7873-42c6-b5a5-35f841e4f693@collabora.com>
Date: Thu, 26 Sep 2024 14:17:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] docs/gpu: ci: update flake tests requirements
To: Maxime Ripard <mripard@kernel.org>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, guilherme.gallo@collabora.com,
 sergi.blanch.torne@collabora.com, deborah.brouwer@collabora.com,
 dmitry.baryshkov@linaro.org, rodrigo.vivi@intel.com,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 virtualization@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20240926070653.1773597-1-vignesh.raman@collabora.com>
 <20240926-athletic-gregarious-markhor-cc78ac@houat>
Content-Language: en-US
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <20240926-athletic-gregarious-markhor-cc78ac@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_014739_793453_1147538A 
X-CRM114-Status: GOOD (  17.92  )
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

Hi Maxime,

On 26/09/24 12:56, Maxime Ripard wrote:
> On Thu, Sep 26, 2024 at 12:36:49PM GMT, Vignesh Raman wrote:
>> Update the documentation to require linking to a relevant GitLab
>> issue for each new flake entry instead of an email report. Added
>> specific GitLab issue URLs for i915, xe and other drivers.
>>
>> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
>> ---
>>
>> v2:
>> - Add gitlab issue link for msm driver.
>>
>> ---
>>   Documentation/gpu/automated_testing.rst | 16 +++++++++++-----
>>   1 file changed, 11 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/gpu/automated_testing.rst b/Documentation/gpu/automated_testing.rst
>> index 2d5a28866afe..f918fe56f2b0 100644
>> --- a/Documentation/gpu/automated_testing.rst
>> +++ b/Documentation/gpu/automated_testing.rst
>> @@ -67,20 +67,26 @@ Lists the tests that for a given driver on a specific hardware revision are
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
>> +https://gitlab.freedesktop.org/drm/i915/kernel/-/issues for i915 driver
>> +https://gitlab.freedesktop.org/drm/xe/kernel/-/issues for xe driver
>> +https://gitlab.freedesktop.org/drm/msm/-/issues for msm driver
>> +https://gitlab.freedesktop.org/drm/misc/kernel/-/issues for other drivers
>> +
> 
> I can't comment for the others, but drm-misc at least still requires
> reporting issues by mail, so, no, sorry, we can't switch to gitlab only
> for now.

In https://gitlab.freedesktop.org/drm/ we have xe, i915, msm, nouveau, 
and amd (only for issues). In drm-ci we test i915, msm and amd.
So I will add GitLab links for these and for other drivers use email 
reporting. I will reword this section. Thanks.

Regards,
Vignesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
