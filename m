Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28463D74976
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 09:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKPl3cD2FwkM8hr288T3B0O2xORZ4bguZUZ0X+4mWCA=; b=TZscnaKcb+MPI4
	WyjWjv2+Abiwhj7XDH+qNXGeP9F20eHdwXOjtTcL2dx7qBFqzCXozxa6yDak7cz1LGAVvOeEloqBz
	ziFZzAWGULSumeNzdFKnI+I0sYsPYvWHgJf5ptfHd2n0FcinRMPG2hvWSOqZVEqCOo6yMWPwldDeT
	e/2hbMRH7+7nmqR3sBsaOCW5A8D2hlIigZZpLM6UohnRtIfPc7ulywKgp4DCETKcwgQ4IHZ8+giay
	jq9D+hWbnk92LnQ6hrkvzjqDaLQQJ5SbZ6RYnlmutqdw/H61rY8qlLZbSGSygLbdZje7Jkoa2uO2W
	JDlJGxMnoHTwe8T6QdqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXEA-00000009zsu-03gu;
	Fri, 19 Dec 2025 09:56:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXE7-00000009zrZ-0XB9
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Dec 2025 09:56:49 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4cBvD4145506
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 09:56:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k2n+SE5qOjIgQy6DMMGVLWGLkjFAmY3VbtNAYsRbVQs=; b=mBvM2WnoXkzYN/kC
	SJGG65cEd1jX1y37nhMNwPXoYap3kWJQ87NpviuiG/9EpW6RY1R2+65CQo0TacQK
	sg5g261EgUkzpSZNRyIQ5Tbq94grrpgA54RJf6dw7RiPrt9VvtizQFAgaUOcEl8M
	GWgnCmPqSj0yr1tNRU87wP08XWkpyiLLJXDEohVRQEIe6jqZ3UEAy9xpKoaXIU/+
	ForMEEIzdxlOZtKRPSjpS3PmCX2Ly5oARuhQGWCswtUnUjrxx7VjBJaXw4Eu3pbN
	YXSBkcSKxsz957JQmEVhedqMLHHF9ABw3MrRhNod1hp64Yv1Ut2wd6spRjrh8MHF
	YF2vfA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2dt7fm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 09:56:46 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a31ce8214so35790536d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 01:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766138205; x=1766743005; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k2n+SE5qOjIgQy6DMMGVLWGLkjFAmY3VbtNAYsRbVQs=;
        b=cI/7wvEiPQgLwa/srrbZdMEVvfeuZXfPYsE5kUgGdbIHqVHuYn1IJ+vWHyk5YpqlWA
         ZXiEtvwgJ4n8qmrmdeHzhHd4OV1lDLH3o33yOofVihPooNg+nYZdriaxpydpfbouGYc6
         z+oc8QoJY/7J1kBBSJNmFaxk2E/jL5BZzFknSnInWs1J9wGBMlV08iFetPnXmPL9+Yu3
         gQe7rMCoNqKiYpbIIvrypGpmc3IIUxephVQpp8sDmuo5pexTRnFVC71Ex0Lp7bJECVH2
         arRz9NGgfgiNtR1b/orCzdwYZJ4Iygl60OzH3agLXME61MdOq9e2Q21tZPrlepHjRbN0
         1CeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766138205; x=1766743005;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k2n+SE5qOjIgQy6DMMGVLWGLkjFAmY3VbtNAYsRbVQs=;
        b=cwycHs9xYjSmBRzjWY7DVKvz4t3XI9hOtHEYiLc+poLOdhoPRnDqfrCnPJV/Yck1gG
         pUdF3hf/ZKzYjH3Y980QRACmcn5FWMXbRqLlpkQwlzNj4koqfRHqiaQpUCMjW46I97xc
         df14LhvDNzFUclSqytcaPnrtHbhdw4NjK+OcSJJ2LBW4azq3C0v/YZVTjls6xPhlN8RY
         mi3AU7VZrPa1wlsasvckN8A7jCusTRK5uSROQ97k/r9fM1OoaSd2IXBTL0PJAoAoDWib
         UfoSNQbgzyLy+fitzbOjy8UJaNpJBh/gYFjVGUsyw0LMoKB7j3WOQDPPErt+AXG1HuHg
         FhoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtW4eKDiHuzif2Qn4oKOPs+FiRv4Uuekax2z5WooHmTB+FJRyjMHhFFTNm8kiwng342x30J4VmF16q1Wg3CQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YynlGhvuFcee84gnDCS6LoY8Qkun7HW/QrsnKI23D/ifCp3/OVa
	pUy6+je43Qw25rhnbAiIdtLcEbaqcIyKL5KcipUf1qA5VRx3VPNNikzP3jAHGYeW3rzgV9zkw4p
	7O+Tfyy3g5f6gF9Z2dcTnVsZdgV7kh1FPghtaD7Erya2CQHfSCIulNhJfEqUQxIR5zxAcp5acuH
	U=
X-Gm-Gg: AY/fxX7Cxo9tgt5tAOgC3Mw3NWRZ/W6AVhOOPLuPvz7rwUw3k8PY2RRdwU1GVADuV9X
	2s7FZ+W+iLolIEDsaGIXp4kUtdlnp4Cmd0f1wzQBs2uyxfobjMUoo9tg0K9VyZxjNDhc3z5W2e8
	1yzqLlpUtV7cmtPWiRI1ZfVKoMXTIXE0Bg7X/1T1cd5ZAcT9znFVKOIAF6A9tdr+HtdDwJEuwuM
	q5yhcw2dOGBrODZgOSAbDdNNeAa1aHTkyR4SXiPuUk7X4+uyk6RLHfxuBpuPGtKaBS6UZ1LcmWe
	vcdNywh9pjUY6PfwW6Zlmquw7dxwghjlz1aFwrH1SFDoahC2khiWUvACXvCWbMVIHgxyNmHY/to
	SB+1/GL1NVOwk/XO9e0epcVG+lIyt3bJrBvemdw8IcWrF4ffH1RtbWqmA38G6FUeo3fAQ
X-Received: by 2002:a05:6214:1c4a:b0:880:4ed1:ce32 with SMTP id 6a1803df08f44-88d833b580bmr40114726d6.45.1766138205418;
        Fri, 19 Dec 2025 01:56:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEmL/9SGkWyvSpj/ayO4oxzYHHhXmjwsfj/l32rWMsHt4VSUg1NRyyPchBsCrruiDNCaZinHA==
X-Received: by 2002:a05:6214:1c4a:b0:880:4ed1:ce32 with SMTP id 6a1803df08f44-88d833b580bmr40114456d6.45.1766138204950;
        Fri, 19 Dec 2025 01:56:44 -0800 (PST)
Received: from [10.193.196.209] (82-128-196-119.bb.dnainternet.fi. [82.128.196.119])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a186f957asm542852e87.28.2025.12.19.01.56.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 01:56:44 -0800 (PST)
Message-ID: <a0acccc3-00d9-4235-9b4a-f4498b2896ac@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 11:56:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/11] drm/connector: hdmi: limit infoframes per driver
 capabilities
To: Maxime Ripard <mripard@kernel.org>
Cc: Daniel Stone <daniel@fooishbar.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Liu Ying <victor.liu@nxp.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
References: <20250929-gregarious-worm-of-memory-c5354d@houat>
 <itgffxygopi7etkt7xhvmyuvyl5ad3k43nsxvjzw3ubtwiikn7@ocugfdaigtu7>
 <20251003-uptight-echidna-of-stamina-815305@houat>
 <zpygq4kapil3swsmhhqkdwny4ry2dznnzixsw5rkza5p2kqnvp@abvf2vxlbwif>
 <2a5fitdzr2bz235fj6rvqzxr6ckszkjbazjfszlvnizdh2cvbt@w3ypjo7vahhs>
 <pibxhl5hlcpuk3zsgyienfdlda5cwuxrnofwlw356scuzzplqy@zw3ofelgvwik>
 <bsoqyzxi45i67jpzhwr2d4illufa5ghqf25z6flbp67lsbvh22@rrlcihp2oxea>
 <cgzclxjubj5oca3rdnv44qwrkmpddxve4tlz76cc6p3b4hz3oc@3l7mt5ha7do6>
 <20251201-enlightened-zebu-from-asgard-5a20be@houat>
 <5dyhjur3hkhvtlwrl4h2m342byor7f3ssvkunj4cggnhbhlmnb@l2mfz7ypjj37>
 <20251219-honest-slim-crab-02e932@houat>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20251219-honest-slim-crab-02e932@houat>
X-Proofpoint-ORIG-GUID: PezI7mLZ8k7Mxg27R8YRN3Hp2GRkaCvc
X-Authority-Analysis: v=2.4 cv=A7ph/qWG c=1 sm=1 tr=0 ts=6945215e cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=UP4AmmvVc3sGQHJQO2VA4Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=wWkPZpA8QBIs0yCpxSwA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: PezI7mLZ8k7Mxg27R8YRN3Hp2GRkaCvc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA4MCBTYWx0ZWRfXz6GqzVtQ7QzE
 9F6oTgvOdUyphTO2mDcXhFzXXL4/cPbCm7dVnsGP1jVQrm5wmUoFt9LZqsTYbi2UrtVTARbumAc
 YBIetmEPtWwiE9JoFxQ1GgAYSVBl1yvc6mOFQiXuSC5Hvyk4BCBsr2dlFFIa0Fm2ukI0U1re6qr
 GjloQs63nlZrHvls5MbfIj5eN0XEw+fQ9w//KoigQ1ZlNYN/8kS2hSbpSSOp2Q4HmpGl5xq8RhN
 xdsOcYwHB8M7NceocfeyMDQH/Z6tOe3GPwoWb6+VUce922h+t1hXEUULyN41mgetlxV8wcQX+3q
 XLa9pBNk61N3mSJ31CWwYYYRyWF4SCK9YnO01sS8KnZRk8QKPQJUXMmxbWwgazgCU03/Hr9rYlx
 ihe7UiDo5Pgs717MIheU1IReUtwuyunnkaca2cytXJEp1e/A1m3/5TsD+NkirfvD3N2CGyD1wu0
 asiZdRCAKBRhC2CkG1w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0 spamscore=0
 phishscore=0 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_015647_306343_57DC8C75 
X-CRM114-Status: GOOD (  26.57  )
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

On 19/12/2025 11:54, Maxime Ripard wrote:
> On Sat, Dec 06, 2025 at 01:28:14PM +0200, Dmitry Baryshkov wrote:
>> On Mon, Dec 01, 2025 at 06:01:56PM +0100, Maxime Ripard wrote:
>>> On Fri, Nov 21, 2025 at 07:09:01PM +0200, Dmitry Baryshkov wrote:
>>>>> So it's not really impossible, you just need some hardware and a day's
>>>>> worth of work.
>>>>>
>>>>> There's no reason these should get a pass, it's breaking the spec for no
>>>>> reason.
>>>>>
>>>>>>> For SPD, It's really not clear to me why atomic_check should do that in
>>>>>>> the first place. Your initial concern was about exposing infoframes in
>>>>>>> debugfs that wouldn't be used by the driver.
>>>>>>>
>>>>>>> If the driver doesn't register a debugfs file for SPD, and ignores
>>>>>>> whatever is in the atomic state, what's should we force drivers to do
>>>>>>> that?
>>>>>>
>>>>>> I really don't think that drivers should mess up with debugfs on their
>>>>>> own. Making atomic_check() disable the unsupported InfoFrames makes the
>>>>>> picture perfect: the DRM no longer tries to program them to the
>>>>>> hardware, DebugFS files stay empty, so the whole state becomes
>>>>>> consistent.
>>>>>
>>>>> In the "bridge has no access to infoframes" case, there's really no
>>>>> infoframe. An empty file is "the infoframe can be there but isn't used",
>>>>> not "we don't have access to it and can't report them". Only drivers
>>>>> have those infos.
>>>>>
>>>>> If we do split up write_infoframe into multiple functions though, I
>>>>> guess we could create the debugfs file only if the function pointer is
>>>>> set, which removes drivers' involvement if you don't like that.
>>>>
>>>> I'm fine with not using HDMI connector framework for lt9611uxc.
>>>> Likewise, I think, it's fine to have empty files for the infoframes
>>>> which are not being sent over the wire for any reason (hw not supporting
>>>> it is one of the reasons).
>>>
>>> I can't think of any other example in the kernel where an empty file
>>> means that the driver doesn't support something.
>>
>> Okay. So we need to sort out implementing the split write_infoframes in
>> drm_bridge_connector. Any suggestions there? I'm asking, because I don't
>> want to end up exploding it.
> 
> I guess it's only really a problem if we want to make it const, but we
> don't have to? We could just as well allocate the structure directly at
> probe with a drmm helper and fill it as we need to.


Yes, I wanted to keep it const, as we usually do for all function 
tables. I will use drmm_alloc for it.


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
