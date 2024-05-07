Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E436C25B5C
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 05:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SvmOXRUsdpjUeuMa5o7TwwfBIrSqD2p4DVfh6D+ojA=; b=UNIakGIPT1/6H+
	YBN21cVzNpuVtG4UCq0qW0wdd4UKIBEAlu8fwxNzHvcbPwZmlCK9L44gWNwChq91NKBXHNnswVCtW
	NAYTdvRUi2WJuwYoMMXYSXQjkOMlcfZJlQ5zAjwWZfSXLUFlEdD5oe+3SlgPffv4UZo3g4NsQa4jB
	WyyN5fjhTzl/blTsL+TfBTr2Lc1KVFUZwG6kG/lwWJPk03XfCwy9xxatWDHlRMVuWfn6KhWxDMo5/
	jhP60mVTkCf0jzXyj/ku0F4iKfkrnhfBM0jHdJUAVXgOnax7t/a8h+AAVCWz942tM1x7l7ThRgOa5
	Dl4wHJf8497qr4aQYdcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Df6-00000009jBK-0SvM;
	Tue, 07 May 2024 05:46:48 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Df2-00000009j9c-0ppa;
	Tue, 07 May 2024 05:46:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715060797;
	bh=/NxMfXX51LM6wRVaE17ulyFtkVct5TM0jpzpKe/PK9U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FuNCQ0FcD+ZiIfF/od4b4YLkcRCXp0rGoT+N7WjM9oDvvlxsjT6MHIJpOjY9CAeLi
	 lbBqMMTrBcbEomZO8hEKDPeNiifXlvgQ5BefORRhZ1Nl4clkVZeQIRufHGARJ6C4Gw
	 ng2QdkYlG4zyiHeI4HnDVEmdka24eWcpTLlh2c12W7tw2yxbzZ0CTP2kdUhrl8mvuH
	 4gC+cNIrBnJ4z2e0d93ltIPinESo7lf5c/8fM3QHzetcQ2B0ERSZl6sqToa+s+mZpE
	 su/MOeBms3n85AwVi5jrTulqPOCdt3gcitgUIVAxz94JxzVbcaoK99ml7BLHEgj7Yy
	 jy7JMOcnJtY9w==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 93DFB3781FE9;
	Tue,  7 May 2024 05:46:34 +0000 (UTC)
Message-ID: <0e56241a-859b-45d6-bc7e-da2ed894d01a@collabora.com>
Date: Tue, 7 May 2024 11:16:32 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/5] drm/ci: generate testlist from build
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
References: <20240430091121.508099-1-vignesh.raman@collabora.com>
 <20240430091121.508099-3-vignesh.raman@collabora.com>
 <k7sepoksttro3dgxxtwxfmlxwv5w5zn3aeso7p24mm3n74bo45@kx2dpe2qkqgo>
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <k7sepoksttro3dgxxtwxfmlxwv5w5zn3aeso7p24mm3n74bo45@kx2dpe2qkqgo>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_224644_489525_2C562FAA 
X-CRM114-Status: GOOD (  18.36  )
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

On 30/04/24 15:47, Dmitry Baryshkov wrote:
> On Tue, Apr 30, 2024 at 02:41:18PM +0530, Vignesh Raman wrote:
>> Stop vendoring the testlist into the kernel. Instead, use the
>> testlist from the IGT build to ensure we do not miss renamed
>> or newly added tests.
>>
>> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
>> ---
>>   drivers/gpu/drm/ci/build-igt.sh  |   23 +
>>   drivers/gpu/drm/ci/igt_runner.sh |    9 +-
>>   drivers/gpu/drm/ci/testlist.txt  | 2761 ------------------------------
>>   3 files changed, 28 insertions(+), 2765 deletions(-)
>>   delete mode 100644 drivers/gpu/drm/ci/testlist.txt
>>
>> diff --git a/drivers/gpu/drm/ci/build-igt.sh b/drivers/gpu/drm/ci/build-igt.sh
>> index 500fa4f5c30a..cedc62baba1e 100644
>> --- a/drivers/gpu/drm/ci/build-igt.sh
>> +++ b/drivers/gpu/drm/ci/build-igt.sh
>> @@ -26,6 +26,29 @@ meson build $MESON_OPTIONS $EXTRA_MESON_ARGS
>>   ninja -C build -j${FDO_CI_CONCURRENT:-4} || ninja -C build -j 1
>>   ninja -C build install
>>   
>> +set +ex
>> +export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib64
>> +while read -r line; do
>> +    if [ "$line" = "TESTLIST" ] || [ "$line" = "END TESTLIST" ]; then
>> +        continue
>> +    fi
>> +
>> +    tests=$(echo "$line" | tr ' ' '\n')
>> +
>> +    for test in $tests; do
>> +        output=$(/igt/libexec/igt-gpu-tools/"$test" --list-subtests)
>> +
>> +        if [ -z "$output" ]; then
>> +            echo "$test"
>> +        else
>> +            echo "$output" | while read -r subtest; do
>> +                echo "$test@$subtest"
>> +            done
>> +        fi
>> +    done
>> +done < /igt/libexec/igt-gpu-tools/test-list.txt > /igt/libexec/igt-gpu-tools/testlist.txt
>> +set -ex
> 
> Is the list in sync between x86 and arm/arm64 IGT builds? Is there a
> chance of having a safety net here?

We need to handle arm/arm64 cases also. IGT is not generating test-list 
for arm and it is fixed now with 
https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/commit/1cf83083f855894dd287d9cf84bbcc2952b52d02

Will uprev IGT to latest commit to include this fix. Thanks.

Regards,
Vignesh

>> +
>>   mkdir -p artifacts/
>>   tar -cf artifacts/igt.tar /igt
>>   
>> diff --git a/drivers/gpu/drm/ci/igt_runner.sh b/drivers/gpu/drm/ci/igt_runner.sh
>> index f1a08b9b146f..20026612a9bd 100755
>> --- a/drivers/gpu/drm/ci/igt_runner.sh
>> +++ b/drivers/gpu/drm/ci/igt_runner.sh
>> @@ -59,25 +59,26 @@ fi
>>   
>>   curl -L --retry 4 -f --retry-all-errors --retry-delay 60 -s ${FDO_HTTP_CACHE_URI:-}$PIPELINE_ARTIFACTS_BASE/$ARCH/igt.tar.gz | tar --zstd -v -x -C /
>>   
>> +TESTLIST="/igt/libexec/igt-gpu-tools/testlist.txt"
>>   
>>   # If the job is parallel at the gitab job level, take the corresponding fraction
>>   # of the caselist.
>>   if [ -n "$CI_NODE_INDEX" ]; then
>> -    sed -ni $CI_NODE_INDEX~$CI_NODE_TOTAL"p" /install/testlist.txt
>> +    sed -ni $CI_NODE_INDEX~$CI_NODE_TOTAL"p" $TESTLIST
>>   fi
>>   
>>   # core_getversion checks if the driver is loaded and probed correctly
>>   # so run it in all shards
>> -if ! grep -q "core_getversion" /install/testlist.txt; then
>> +if ! grep -q "core_getversion" $TESTLIST; then
>>       # Add the line to the file
>> -    echo "core_getversion" >> /install/testlist.txt
>> +    echo "core_getversion" >> $TESTLIST
>>   fi
>>   
>>   set +e
>>   igt-runner \
>>       run \
>>       --igt-folder /igt/libexec/igt-gpu-tools \
>> -    --caselist /install/testlist.txt \
>> +    --caselist $TESTLIST \
>>       --output /results \
>>       $IGT_SKIPS \
>>       $IGT_FLAKES \
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
