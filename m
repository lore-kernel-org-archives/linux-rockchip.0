Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CB45C3600B
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Mar 2025 12:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTqyzJR5JIza/9OY2b7MH+p1J6mibV1KCn1MrZNO0IA=; b=V7BDQT/D+kG7F1
	Olfv3awdAPgXJtDuIHIVMWv52kJ5gdfoqJWNP5wX1zktqzbJ3ci7xWvn1lxs81nWLe94l2Tk9q7Z9
	xQDQ9b0CrRmFXiU0OlWFe/U7buEs8PyUCk+mv2zos/KdO4fz38/QXP3Iw2ox1d21KSi0TEeFBluw9
	WbLAPjQBuhcho5ZXEp+MchAJAWzMCMiLeBCilDjqK6dXHK2G5jEc4Zrv1RlC0wBc/PvZxtVnGts5B
	tqo8GxXbVo4x+bnolcoMEZBMIXTOQfVhVBiklCXjB/8BrGfW4WR687tX5RJ+CZYkBG7ecK8rmnMvU
	hbKpAhXGZSqnWjMbKr/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txmpq-0000000B00R-0j2c;
	Thu, 27 Mar 2025 12:59:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txmks-0000000Az34-22pq
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Mar 2025 12:54:43 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52R5jIJ1022995
	for <linux-rockchip@lists.infradead.org>; Thu, 27 Mar 2025 12:54:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ys0LaI2UcfNwMcZJGrbIWM94BdFxA4cSNIC6NvFfr+4=; b=Y3GQLfWVM090S1Y0
	A8qvgSDjjyRnZe2RuTgUX9FaycDn+/xyENpFmZ1x1d956/MnXxzyd7As5XZZAgOB
	XzprcxuXNZIuRooG/rukCYaCU3oznLslHd5JjmaHIZylMPviffJdJAWu7K3FxXT/
	KRBKH/WK2JzrGai9VtoTMYk1GuFB8fGByhYz1iGyTFFYhZA5DCnZeVem6n2OIJrz
	vnD+j4zKthLRNXdRd5FXyTqxo5N8gwQlD/5AI01TzPQ9OFDf/w2b2IPKkiiE5sFV
	vNZQ5E28Tn7szpPZWNFCtBVqvZmqok9iSTtZST703XlJem6rGsOT55L0G0nezgqW
	jTkzlg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mb9mvts5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 27 Mar 2025 12:54:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c544d2c34fso129630685a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Mar 2025 05:54:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743080080; x=1743684880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ys0LaI2UcfNwMcZJGrbIWM94BdFxA4cSNIC6NvFfr+4=;
        b=uHAhreVzj9p+ZVUcoyfXrdOlyZP2IS6CxSgZtfggx8n52oPRxSkKBK437lcwIJDMfD
         779CvAieZSXoJwpezFdU/SbhFLWHNILlnxWY21/hpAU4BnR7/XNufr6fNSfBcala5KQ0
         TiMvcttQ8ZhPzEYnrFMarGb4QKvRAkFMENgSNu+I9cP7L5lC2+uMbru4DvUtiDxPRBxv
         Ch1wWqYmAiRZaFaNYicLqtLEekKqBtUYZPqW6sfIS40/TSI98r1R/GL17N0ItPaCE3bx
         XFKMH5qMDfmPT108KDjBJNoR0Du5jFAePVjvfZzepcey55OCrHsGXCo8BsKrQIYK4w5U
         QLhA==
X-Forwarded-Encrypted: i=1; AJvYcCVNKlLLT8MdcQgcQpazJmzEN9qwE4E0pG6LZMlB6BxgAvt6WDnpM5wKDCouN4yfKF0TDmib9QCSPiHSGta62g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzewm8/+IHXLCvbNott4V9ReHl+p6QA7OxlzixhTaR6mHpfePqN
	9bT9NDBd8QG8z+8klC6dyEoabPiPMiXBZ/I1/9ei3Wa0VmyAsAn5IJYtla08i8SQpa5rX9O4o2z
	MyY+WbdQn/WOx7kxt9S6NfkCTw4b84VbPBnNzaL5KiGVQx6b8NSFze4ArhQsSphTaLe47Hek=
X-Gm-Gg: ASbGncs+73sdcFwBK9SUQ55cfsinhQjTJzHuHdGxOWoR+BW3oUaFLPwbCfj7y7e4E40
	P143VO8oP3Lk/UhAwOJrAUdxGZ5z0aVw6cKH6fVv3h9PaS8vwPm+fq/J/nWLYkSt86RyMOASS5X
	UVTBl81kf5cHpxlmaiFqL25Ai8Pq2ylQJmsC6OawFLkDtHpl2SXDtZ7iQ41Zf1U4XBi3EUcxRSe
	OwiBEw4v95rKoiBnxprSRDYqLQyplw6wgV4LAa6RtObCh4qVcQpzHBlKQj0iSNWfjqXu7S96ga3
	6uka12ef74qMsP33rf6fnowctoKvyDaoelrWCuKtXkOv0L+CiyMv0xyE6IZ5x7diw1RQUqNK036
	NVAH5bmQaSW3KeIvuUGxSaj2L1FAe56oumxFNBDYwSVo+zqsQOSnxunKCocS2RB4l
X-Received: by 2002:a05:620a:4256:b0:7c5:5791:122b with SMTP id af79cd13be357-7c5eda64823mr589646685a.37.1743080079951;
        Thu, 27 Mar 2025 05:54:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGauD6ziuw0IhIZog9VhQ+0nMgNmotDcQ10Mfm1rBFAYVGZeZbi6W/H9wqWH07z16ItQ2B2DQ==
X-Received: by 2002:a05:620a:4256:b0:7c5:5791:122b with SMTP id af79cd13be357-7c5eda64823mr589643085a.37.1743080079331;
        Thu, 27 Mar 2025 05:54:39 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ac:ffd6:c4de:52f:971e:7ff8? (2001-14bb-ac-ffd6-c4de-52f-971e-7ff8.rev.dnainternet.fi. [2001:14bb:ac:ffd6:c4de:52f:971e:7ff8])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30d7d7fe7b4sm24851371fa.53.2025.03.27.05.54.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 05:54:38 -0700 (PDT)
Message-ID: <0d44fd9e-ab84-4db4-955a-22670d2990ef@oss.qualcomm.com>
Date: Thu, 27 Mar 2025 14:54:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] drm/dp: Pull drm_dp_link_power_up/down from Tegra
 to common drm_dp_helper
To: Andy Yan <andyshrk@163.com>, lumag@kernel.org, thierry.reding@gmail.com,
        mperttunen@nvidia.com
Cc: mripard@kernel.org, neil.armstrong@linaro.org,
        dri-devel@lists.freedesktop.org, dianders@chromium.org,
        jani.nikula@intel.com, lyude@redhat.com, jonathanh@nvidia.com,
        victor.liu@nxp.com, rfoss@kernel.org,
        linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
        Andy Yan <andy.yan@rock-chips.com>
References: <20250318063452.4983-1-andyshrk@163.com>
 <76a55b32.acc9.195d79cf378.Coremail.andyshrk@163.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <76a55b32.acc9.195d79cf378.Coremail.andyshrk@163.com>
X-Authority-Analysis: v=2.4 cv=cs+bk04i c=1 sm=1 tr=0 ts=67e54a91 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=Byx-y9mGAAAA:8 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=vCqhtvarF6LdSwkuyZ8A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: O_vtJAb_c961d2OgOcQgYa8JUtOD4FTE
X-Proofpoint-ORIG-GUID: O_vtJAb_c961d2OgOcQgYa8JUtOD4FTE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_01,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 bulkscore=0 mlxlogscore=999 malwarescore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_055442_656383_6DB0CE55 
X-CRM114-Status: GOOD (  24.82  )
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

On 27/03/2025 14:39, Andy Yan wrote:
> 
> Hello Dmitry,
>       Could you take this series? If so, merging it earlier can avoid future conflicts from other patches.
> Besides, I can update my DP driver based on drm-misc-next.

I'd really like an ack from Thiery or Mikko.

If tere is none (and no objections), I'll push it on Monday.

> 
> At 2025-03-18 14:34:35, "Andy Yan" <andyshrk@163.com> wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>>
>> The helper functions drm_dp_link_power_up/down were moved to Tegra
>> DRM in commit 9a42c7c647a9 ("drm/tegra: Move drm_dp_link helpers to Tegra DRM")".
>>
>> Now since more and more users are duplicating the same code in their
>> own drivers, it's time to make them as DRM DP common helpers again.
>>
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> ---
>>
>> Changes in v2:
>> - Fix commit message as suggested by Dmitry
>>
>> drivers/gpu/drm/display/drm_dp_helper.c | 69 +++++++++++++++++++++++++
>> drivers/gpu/drm/tegra/dp.c              | 67 ------------------------
>> drivers/gpu/drm/tegra/dp.h              |  2 -
>> drivers/gpu/drm/tegra/sor.c             |  4 +-
>> include/drm/display/drm_dp_helper.h     |  2 +
>> 5 files changed, 73 insertions(+), 71 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
>> index dbce1c3f4969..e5dec67e5fca 100644
>> --- a/drivers/gpu/drm/display/drm_dp_helper.c
>> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
>> @@ -838,6 +838,75 @@ int drm_dp_dpcd_read_phy_link_status(struct drm_dp_aux *aux,
>> }
>> EXPORT_SYMBOL(drm_dp_dpcd_read_phy_link_status);
>>
>> +/**
>> + * drm_dp_link_power_up() - power up a DisplayPort link
>> + * @aux: DisplayPort AUX channel
>> + * @revision: DPCD revision supported on the link
>> + *
>> + * Returns 0 on success or a negative error code on failure.
>> + */
>> +int drm_dp_link_power_up(struct drm_dp_aux *aux, unsigned char revision)
>> +{
>> +	u8 value;
>> +	int err;
>> +
>> +	/* DP_SET_POWER register is only available on DPCD v1.1 and later */
>> +	if (revision < DP_DPCD_REV_11)
>> +		return 0;
>> +
>> +	err = drm_dp_dpcd_readb(aux, DP_SET_POWER, &value);
>> +	if (err < 0)
>> +		return err;
>> +
>> +	value &= ~DP_SET_POWER_MASK;
>> +	value |= DP_SET_POWER_D0;
>> +
>> +	err = drm_dp_dpcd_writeb(aux, DP_SET_POWER, value);
>> +	if (err < 0)
>> +		return err;
>> +
>> +	/*
>> +	 * According to the DP 1.1 specification, a "Sink Device must exit the
>> +	 * power saving state within 1 ms" (Section 2.5.3.1, Table 5-52, "Sink
>> +	 * Control Field" (register 0x600).
>> +	 */
>> +	usleep_range(1000, 2000);
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL(drm_dp_link_power_up);
>> +
>> +/**
>> + * drm_dp_link_power_down() - power down a DisplayPort link
>> + * @aux: DisplayPort AUX channel
>> + * @revision: DPCD revision supported on the link
>> + *
>> + * Returns 0 on success or a negative error code on failure.
>> + */
>> +int drm_dp_link_power_down(struct drm_dp_aux *aux, unsigned char revision)
>> +{
>> +	u8 value;
>> +	int err;
>> +
>> +	/* DP_SET_POWER register is only available on DPCD v1.1 and later */
>> +	if (revision < DP_DPCD_REV_11)
>> +		return 0;
>> +
>> +	err = drm_dp_dpcd_readb(aux, DP_SET_POWER, &value);
>> +	if (err < 0)
>> +		return err;
>> +
>> +	value &= ~DP_SET_POWER_MASK;
>> +	value |= DP_SET_POWER_D3;
>> +
>> +	err = drm_dp_dpcd_writeb(aux, DP_SET_POWER, value);
>> +	if (err < 0)
>> +		return err;
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL(drm_dp_link_power_down);
>> +
>> static int read_payload_update_status(struct drm_dp_aux *aux)
>> {
>> 	int ret;
>> diff --git a/drivers/gpu/drm/tegra/dp.c b/drivers/gpu/drm/tegra/dp.c
>> index 08fbd8f151a1..990e744b0923 100644
>> --- a/drivers/gpu/drm/tegra/dp.c
>> +++ b/drivers/gpu/drm/tegra/dp.c
>> @@ -255,73 +255,6 @@ int drm_dp_link_probe(struct drm_dp_aux *aux, struct drm_dp_link *link)
>> 	return 0;
>> }
>>
>> -/**
>> - * drm_dp_link_power_up() - power up a DisplayPort link
>> - * @aux: DisplayPort AUX channel
>> - * @link: pointer to a structure containing the link configuration
>> - *
>> - * Returns 0 on success or a negative error code on failure.
>> - */
>> -int drm_dp_link_power_up(struct drm_dp_aux *aux, struct drm_dp_link *link)
>> -{
>> -	u8 value;
>> -	int err;
>> -
>> -	/* DP_SET_POWER register is only available on DPCD v1.1 and later */
>> -	if (link->revision < 0x11)
>> -		return 0;
>> -
>> -	err = drm_dp_dpcd_readb(aux, DP_SET_POWER, &value);
>> -	if (err < 0)
>> -		return err;
>> -
>> -	value &= ~DP_SET_POWER_MASK;
>> -	value |= DP_SET_POWER_D0;
>> -
>> -	err = drm_dp_dpcd_writeb(aux, DP_SET_POWER, value);
>> -	if (err < 0)
>> -		return err;
>> -
>> -	/*
>> -	 * According to the DP 1.1 specification, a "Sink Device must exit the
>> -	 * power saving state within 1 ms" (Section 2.5.3.1, Table 5-52, "Sink
>> -	 * Control Field" (register 0x600).
>> -	 */
>> -	usleep_range(1000, 2000);
>> -
>> -	return 0;
>> -}
>> -
>> -/**
>> - * drm_dp_link_power_down() - power down a DisplayPort link
>> - * @aux: DisplayPort AUX channel
>> - * @link: pointer to a structure containing the link configuration
>> - *
>> - * Returns 0 on success or a negative error code on failure.
>> - */
>> -int drm_dp_link_power_down(struct drm_dp_aux *aux, struct drm_dp_link *link)
>> -{
>> -	u8 value;
>> -	int err;
>> -
>> -	/* DP_SET_POWER register is only available on DPCD v1.1 and later */
>> -	if (link->revision < 0x11)
>> -		return 0;
>> -
>> -	err = drm_dp_dpcd_readb(aux, DP_SET_POWER, &value);
>> -	if (err < 0)
>> -		return err;
>> -
>> -	value &= ~DP_SET_POWER_MASK;
>> -	value |= DP_SET_POWER_D3;
>> -
>> -	err = drm_dp_dpcd_writeb(aux, DP_SET_POWER, value);
>> -	if (err < 0)
>> -		return err;
>> -
>> -	return 0;
>> -}
>> -
>> /**
>>   * drm_dp_link_configure() - configure a DisplayPort link
>>   * @aux: DisplayPort AUX channel
>> diff --git a/drivers/gpu/drm/tegra/dp.h b/drivers/gpu/drm/tegra/dp.h
>> index cb12ed0c54e7..695060cafac0 100644
>> --- a/drivers/gpu/drm/tegra/dp.h
>> +++ b/drivers/gpu/drm/tegra/dp.h
>> @@ -164,8 +164,6 @@ int drm_dp_link_remove_rate(struct drm_dp_link *link, unsigned long rate);
>> void drm_dp_link_update_rates(struct drm_dp_link *link);
>>
>> int drm_dp_link_probe(struct drm_dp_aux *aux, struct drm_dp_link *link);
>> -int drm_dp_link_power_up(struct drm_dp_aux *aux, struct drm_dp_link *link);
>> -int drm_dp_link_power_down(struct drm_dp_aux *aux, struct drm_dp_link *link);
>> int drm_dp_link_configure(struct drm_dp_aux *aux, struct drm_dp_link *link);
>> int drm_dp_link_choose(struct drm_dp_link *link,
>> 		       const struct drm_display_mode *mode,
>> diff --git a/drivers/gpu/drm/tegra/sor.c b/drivers/gpu/drm/tegra/sor.c
>> index f98f70eda906..21f3dfdcc5c9 100644
>> --- a/drivers/gpu/drm/tegra/sor.c
>> +++ b/drivers/gpu/drm/tegra/sor.c
>> @@ -2666,7 +2666,7 @@ static void tegra_sor_dp_disable(struct drm_encoder *encoder)
>> 	 * the AUX transactions would just be timing out.
>> 	 */
>> 	if (output->connector.status != connector_status_disconnected) {
>> -		err = drm_dp_link_power_down(sor->aux, &sor->link);
>> +		err = drm_dp_link_power_down(sor->aux, sor->link.revision);
>> 		if (err < 0)
>> 			dev_err(sor->dev, "failed to power down link: %d\n",
>> 				err);
>> @@ -2882,7 +2882,7 @@ static void tegra_sor_dp_enable(struct drm_encoder *encoder)
>> 	else
>> 		dev_dbg(sor->dev, "link training succeeded\n");
>>
>> -	err = drm_dp_link_power_up(sor->aux, &sor->link);
>> +	err = drm_dp_link_power_up(sor->aux, sor->link.revision);
>> 	if (err < 0)
>> 		dev_err(sor->dev, "failed to power up DP link: %d\n", err);
>>
>> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
>> index 5ae4241959f2..f9dabce484a7 100644
>> --- a/include/drm/display/drm_dp_helper.h
>> +++ b/include/drm/display/drm_dp_helper.h
>> @@ -566,6 +566,8 @@ int drm_dp_dpcd_read_link_status(struct drm_dp_aux *aux,
>> int drm_dp_dpcd_read_phy_link_status(struct drm_dp_aux *aux,
>> 				     enum drm_dp_phy dp_phy,
>> 				     u8 link_status[DP_LINK_STATUS_SIZE]);
>> +int drm_dp_link_power_up(struct drm_dp_aux *aux, unsigned char revision);
>> +int drm_dp_link_power_down(struct drm_dp_aux *aux, unsigned char revision);
>>
>> int drm_dp_dpcd_write_payload(struct drm_dp_aux *aux,
>> 			      int vcpid, u8 start_time_slot, u8 time_slot_count);
>> -- 
>> 2.43.0


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
