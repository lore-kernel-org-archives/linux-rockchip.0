Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20C9CC25B7D
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 May 2024 06:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cbj/wFxmv05fvzvtcKPJwKNoKuNtleUxjEmluEtTRLE=; b=0fS97CErw/VqQB
	Y+sJcFlrluubLVtPjcnWLxKMM70FNrzxofkNWaZJDoDS8DGy2Ig6RbObBLx8qkwQbY/G0NOQSkZVz
	vC/1DpHV1zotURhU8nYRjklKayW+9QnAh3iBnWjoqgKV0AY0hPEA/evRXziimAU0NVMsqGWR7qVTk
	LEDZ3V2fQaGlqrwIobY1Z1E1o1eezXGa7JhdpUsFOR/mA/4KTkD4i1oI1FJi2v69aHBxn72ChJSvA
	eQ6mC36lzKzEMFzqGEwsPDG4Y040cTSO0158QhsGihbaBfjMLOJ/kOcc2SU4z06LBBx62sIQWRJV0
	MLRPzlR5LnthoP9xLAuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAOhC-00000008CZP-46Dx;
	Fri, 24 May 2024 06:46:30 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAOh8-00000008CXJ-0aSv;
	Fri, 24 May 2024 06:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716533179;
	bh=0x62kCjeY+J4sbdaaUkUR2ly1ES+mb2DRDWplkfWUds=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SJsYf8+E0w6OSLbVoUwUSsolkuQTmZhNQnLJw0QsNGkjkGYFd8n2xohI2RvX5otBP
	 89R+6Situxt4jvifcn/oo6h1jodewOReqLFgkPyO9orxk+p9HUp+wYrFC7qzl8HDEZ
	 7Iug8I4CKu6KR7NsudZhhVAhPKnRF6vR5VhCUZOUF9nMO8lRZLiU3gcIdSKk4hzLK2
	 yLDS4DuHt67z9bG4pm8+ip4ABXYYphDpTcBSlhEfnasesHdepNcZs58eczinwd+R6J
	 KPTwxQuv4O3Nj8hmmAISzONjCXIq08lvpx/QwLGR59wg8MJT17+g5O+Y2/eECAIvcT
	 1XQUtvRcgYCTw==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id CC0FA3782112;
	Fri, 24 May 2024 06:46:15 +0000 (UTC)
Message-ID: <b695a2a3-2b4f-400d-a0b7-5d436926f49a@collabora.com>
Date: Fri, 24 May 2024 12:16:11 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] drm/ci: uprev mesa version
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, david.heidelberg@collabora.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 mcanal@igalia.com, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
 <20240517092502.647420-2-vignesh.raman@collabora.com>
 <2qzmfv3oc6feihwxu3tl37rg6w3qsj2vddu5olvqk6vhqr26cc@bxu5y6ijvtfa>
 <9cd0667a-12ee-4d45-80e8-dc34259bf01d@collabora.com>
 <CAA8EJprVVkQO7aPkehwL2zhYkGRkm4Foc13ErfuY6ikBA_4nLQ@mail.gmail.com>
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <CAA8EJprVVkQO7aPkehwL2zhYkGRkm4Foc13ErfuY6ikBA_4nLQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_234626_508159_6FA00478 
X-CRM114-Status: GOOD (  17.17  )
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

On 23/05/24 15:29, Dmitry Baryshkov wrote:
> On Thu, 23 May 2024 at 09:07, Vignesh Raman <vignesh.raman@collabora.com> wrote:
>>
>> Hi Dmitry,
>>
>> On 20/05/24 16:13, Dmitry Baryshkov wrote:
>>> On Fri, May 17, 2024 at 02:54:57PM +0530, Vignesh Raman wrote:
>>>> zlib.net is not allowing tarball download anymore and results
>>>> in below error in kernel+rootfs_arm32 container build,
>>>> urllib.error.HTTPError: HTTP Error 403: Forbidden
>>>> urllib.error.HTTPError: HTTP Error 415: Unsupported Media Type
>>>>
>>>> Uprev mesa to latest version which includes a fix for this issue.
>>>> https://gitlab.freedesktop.org/mesa/mesa/-/commit/908f444e
>>>>
>>>> Use id_tokens for JWT authentication. Since s3 bucket is migrated to
>>>> mesa-rootfs, update the variables accordingly. Also copy helper scripts
>>>> to install, so that the ci jobs can use these scripts for logging.
>>>>
>>>> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
>>>> ---
>>>>
>>>> v2:
>>>>     - Uprev to recent version and use id_tokens for JWT authentication
>>>>
>>>> ---
>>>>    drivers/gpu/drm/ci/build-igt.sh   |  2 +-
>>>>    drivers/gpu/drm/ci/build.sh       |  6 +++--
>>>>    drivers/gpu/drm/ci/container.yml  | 12 +++------
>>>>    drivers/gpu/drm/ci/gitlab-ci.yml  | 44 +++++++++++++++++++++----------
>>>>    drivers/gpu/drm/ci/image-tags.yml |  2 +-
>>>>    drivers/gpu/drm/ci/lava-submit.sh |  4 +--
>>>>    drivers/gpu/drm/ci/test.yml       |  2 ++
>>>>    7 files changed, 44 insertions(+), 28 deletions(-)
>>>>
>>>
>>> [skipped]
>>>
>>>> diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
>>>> index 8bc63912fddb..612c9ede3507 100644
>>>> --- a/drivers/gpu/drm/ci/test.yml
>>>> +++ b/drivers/gpu/drm/ci/test.yml
>>>> @@ -150,6 +150,8 @@ msm:sdm845:
>>>>        BM_KERNEL: https://${PIPELINE_ARTIFACTS_BASE}/arm64/cheza-kernel
>>>>        GPU_VERSION: sdm845
>>>>        RUNNER_TAG: google-freedreno-cheza
>>>> +    DEVICE_TYPE: sdm845-cheza-r3
>>>> +    FARM: google
>>>
>>> I see that this is the only user of the FARM: tag. Is it correct?
>>
>> No, we need to add FARM variable for other jobs as well.
> 
> Why? Even if we have to, we don't have them now and the change doesn't
> seem to be related to the uprev'ing of mesa. So this probably should
> go to a separate commit.

I will move them to separate commit.

Regards,
Vignesh

> 
>>
>>> Also we miss DEVICE_TYPE for several other boards. Should we be adding
>>> them?
>>
>> Yes, device type needs to be added for msm:apq8016, msm:apq8096, virtio_gpu.
>>
>> I will add this. Thanks.
> 
> I'd guess, separate commit too.
> 
>>
>> Regards,
>> Vignesh
>>
>>>
>>>>      script:
>>>>        - ./install/bare-metal/cros-servo.sh
>>>>
>>>> --
>>>> 2.40.1
>>>>
>>>
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
