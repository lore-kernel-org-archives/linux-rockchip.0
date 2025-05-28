Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC1F6C5B549
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGOD1ZtTuRTM+svk9uR4HZGscqXUqj0D1aRmagPv3Rg=; b=LkeIkPieeBPZZW
	JPrOZp/X5IggBOKy1krZ1iWMPHkmKy61NS2IQ7Hj9zuFiPk+WlJ/qLlxwva+4V08eZlgNQsZVkpMw
	oSYo9VUjsU9kUl01TVd8N6ICpADPi15HEW4k2OJrCpiPr/1oZc9b4qVYlpP55QS+tu2q0CARhQDtm
	GeI6jTNv7EjMymdcVkJmP+MYY4TpuDRmVnsEhEHV486645Y3YHRyedsXtlEZH8FtQc5SXiFD72P41
	RPJFQpF8LZ3Txbng4CZCquuU5jOD/CJ3btXJ+wYtDjErADvfsrT+Z0Uil550+8Kw0jeaoEgLXmj8i
	tc8Mq9ezlr6KPrkUaiDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKJe3-0000000Dfzp-2MJA;
	Wed, 28 May 2025 16:28:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKJLC-0000000DcXq-3Ukv
	for linux-rockchip@lists.infradead.org;
	Wed, 28 May 2025 16:09:20 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S8Uw1v028181
	for <linux-rockchip@lists.infradead.org>; Wed, 28 May 2025 16:09:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0ebk4FuXKBEehQnwIzWbtceY
	5Eq5Hvk7/WPMviultPQ=; b=jATkvto2sObAkLZQpbEMzNj94YJNvCCQ5aSCVBDh
	XTcWBQ2FjoLXpexqv68kpBzYdad4VozIQcq3xnzDnh6oCeqRE8Cx37JVopqaGCqO
	2e7+CzGS4hS53+T6kLKboYju65mFsKpiovPevzTkySJTgNlZNKvX8jHhUERZMyDU
	wlvDVWhnuJ5fzjf03HI1Q4z3j9BX8326ajLkaGaemlnbNYlpSHbXua0nIeutZnFq
	9/aamuWTykZFzcQRz+i0Cs067IbHC+doHuMPO34fglInHZ9aFUBEm5H7MQH+x7tB
	DOe0PnSFAaOqW9g/u3KXCnXVfQ0qYOolg1U13yusYooq+A==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5ek2pq3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 28 May 2025 16:09:17 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-311b6d25163so1600340a91.0
        for <linux-rockchip@lists.infradead.org>; Wed, 28 May 2025 09:09:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748448556; x=1749053356;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0ebk4FuXKBEehQnwIzWbtceY5Eq5Hvk7/WPMviultPQ=;
        b=LDntLr2YgpkdZpxgG0q0WSpw6EhjKGu3/WDhMOeAZXcm2IFEkAy7a7++kZ4rUTmXM7
         trl61AYgLSMD5ogjY66WS85ijkDjS4uAASieYejFepITDYjsLBC8KbK8YDzRgez7wI2M
         9Lg42y/IYgGq3lAnIAeyDb+LE6XCu67iSO1avLSJvLeIUygL6vQLzgFFprZvMS0ShPfM
         9XrjR2lOk6ET2kttTw2ZaWNDYkn9XH3kIBp1mxTfyDznKJ4DWPZA1SjkEE0Jph6gRjiy
         drKrFCBZfXs0I5oJhjiDMyiMrDcAKT9i9E2QfSjsX+Fj+SoT0uqDF3xXjErmurRiwBMV
         87Iw==
X-Forwarded-Encrypted: i=1; AJvYcCWN9MyHqmSyzP4rEyjZCbl+E8PEg8+rd3SsEqmEs9emi0E1xPrd18pzKZoLDl+ogyDKiwA009qeOy1uHgEoIg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzcuksnTYEAj0CbJDs/+ZgAwYJZyJkaNSjALmNpAakGmn1KyCrA
	gfR0dzIPN+F/XN+iYcAwmaN2y8ALIdamhmHtC80ygTelIrFZ2b/i32y6OX3Z/e+onHLlf6kXojr
	Aj7kFm78L0DbUep9P/H0ET6DnoWg7w1tv/4+pMuqqr3gF7ZBFVpq4TQxZcHasKz5/nRtTVG0bB/
	oNyVNTp1gM9Dihreyyd6O4AFIuoQvyXgzH9MSRIKqJDHaDO19HIQ==
X-Gm-Gg: ASbGncsa8rxUxGm1MOwOxYD4sfbHE5Mf3gb6hcgLVnk1eXUNVOp2qWl9dUeecgcPryS
	9EglsnMOjjUwVzXRmBJcQruWtLBZSRA9N0gWrdAC7Dgd1iCOuULOaurO3sI9zuvRL30ncDNyvfc
	sea1JwwVH0tNU+S3Sv6E6wJfY=
X-Received: by 2002:a17:90b:1fc8:b0:311:e8cc:4264 with SMTP id 98e67ed59e1d1-311e8cc4409mr5694241a91.12.1748448556274;
        Wed, 28 May 2025 09:09:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEEyU9Na6w19P6vBrFWsatyjVSIe0mXXTuG1XS0eEc1904ZaykvV6ov/DP09T7xW5vDmnuTXfgVmAxcYzfANhw=
X-Received: by 2002:a17:90b:1fc8:b0:311:e8cc:4264 with SMTP id
 98e67ed59e1d1-311e8cc4409mr5694169a91.12.1748448555821; Wed, 28 May 2025
 09:09:15 -0700 (PDT)
MIME-Version: 1.0
References: <20250527081447.304-1-kernel@airkyi.com> <e2dnvpbze4xuubggduqr3p5nnhg7huk3dnpdcb6tldxbrn2qtn@bfsewz5trfv3>
 <bc321a71-1934-4889-bd8e-3bb593c8feba@rock-chips.com>
In-Reply-To: <bc321a71-1934-4889-bd8e-3bb593c8feba@rock-chips.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 28 May 2025 19:09:04 +0300
X-Gm-Features: AX0GCFsUqNN07CMI1cNHp3U4iz8XhLlLFw-nWKQWlciyho8w9zoePiczSCHemug
Message-ID: <CAO9ioeXLSQyBFuedtt4=_OjEWZW6T9HaaYr8_NiNy2eh4yw-qg@mail.gmail.com>
Subject: Re: [PATCH v3] drm/rockchip: cdn-dp: Convert to drm bridge
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Sandy Huang <hjc@rock-chips.com>,
        Heiko Stuebner <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-Authority-Analysis: v=2.4 cv=GIgIEvNK c=1 sm=1 tr=0 ts=6837352d cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=VwQbUJbxAAAA:8 a=ePr-TV-LAAAA:8 a=s8YR1HE3AAAA:8 a=RRhK3aCThXU4g2SLoiEA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22 a=uGDpjx9DKq9E8W49yboe:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: FMpNtUqZ7d3E90IcOXfZbWsra2PdREmO
X-Proofpoint-GUID: FMpNtUqZ7d3E90IcOXfZbWsra2PdREmO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDE0MSBTYWx0ZWRfX0qRF137ut9MK
 Op+x07KcFGBoL4WqT+ygtlG2NqC14aXyU0PzuZN5HgiAA1OYwr+Oi6yQ96NZkxBoeMKtDwGGvqo
 iTK6QmyUUXZuTw8kYVeb1PUhroCjzPgpiI2Ccq3RW6fPYbZuTdzEYRAIQTA/6nkr2OaEZbpB77I
 hbKl2tgQXQqsooIf79sf28N6b4joS5tSqTsBNBrVmVUt07hYcKOVPIk2z7GFGHegGd7o5qACdDf
 SswM3OQ0awK4DpilLRyxXjZRL/2i4q3gQa02AU3JigERYekww7tGab33yV5ekwKpECIlMcRoJmp
 taFJbBpubRohAW9eKU61Wrad3+hq8wSAKwu8H2r+Hn5l/7zrmnASA1R3azK66gIx7QakZU2j9UP
 ItuTvH9i6qBzoDGbJXxpPE6AsQ4hJ7JWj2V7TXMey77K/7F9E0SueqbrjT/oQIEU6gKaxyRf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_08,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 mlxscore=0 phishscore=0 spamscore=0
 suspectscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_090918_998555_CD192C8F 
X-CRM114-Status: GOOD (  32.05  )
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

On Wed, 28 May 2025 at 04:57, Chaoyi Chen <chaoyi.chen@rock-chips.com> wrote:
>
> Hi Dmitry,
>
> On 2025/5/28 4:25, Dmitry Baryshkov wrote:
> > On Tue, May 27, 2025 at 04:14:47PM +0800, Chaoyi Chen wrote:
> >> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> >>
> >> Convert it to drm bridge driver, it will be convenient for us to
> >> migrate the connector part to the display driver later.
> >> Considering that some code depend on the connector, the following
> >> changes have been made:
> >> - Only process edid in &drm_bridge_funcs.edid_read(), so no need to
> >> store additional edid info.
> >> - Now cdn_dp_get_sink_capability() only focused on reading DPCD_REV.
> >> - Update bpc info in cdn_dp_bridge_atomic_enable() instead of
> >> cdn_dp_encoder_mode_set(). Actually, the bpc data will be used in
> >> cdn_dp_bridge_atomic_enable().
> >> - Switch to use DRM_BRIDGE_OP_DP_AUDIO helpers.
> >>
> >> This patch also convert to use devm_drm_bridge_alloc() API.
> >>
> >> Tested with RK3399 EVB IND board.
> >>
> >> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> >> ---
> >>
> >> Changes in v3:
> >> - Link to V2: https://lore.kernel.org/all/20250523011310.120-1-kernel@airkyi.com/
> >> - Switch to use DRM_BRIDGE_OP_DP_AUDIO helpers
> >> - Remove the dependency for connector
> >> - Remove the extra stored edid
> >> - Code cleanup
> >>
> >> Changes in v2:
> >> - Link to V1: https://lore.kernel.org/all/20250507035148.415-1-kernel@airkyi.com/
> >> - Use drm_atomic_get_new_connector_for_encoder() to get connector
> >> - Convert to use devm_drm_bridge_alloc() API
> >> - Fix typo: cdn_dp_connector_edid_read -> cdn_dp_bridge_edid_read
> >>
> >>   drivers/gpu/drm/rockchip/cdn-dp-core.c | 279 ++++++++++---------------
> >>   drivers/gpu/drm/rockchip/cdn-dp-core.h |   9 +-
> >>   2 files changed, 110 insertions(+), 178 deletions(-)
> >>
> >
> >> @@ -595,16 +546,41 @@ static bool cdn_dp_check_link_status(struct cdn_dp_device *dp)
> >>   static void cdn_dp_audio_handle_plugged_change(struct cdn_dp_device *dp,
> >>                                             bool plugged)
> >>   {
> >> -    if (dp->codec_dev)
> >> -            dp->plugged_cb(dp->codec_dev, plugged);
> >> +    if (dp->sink_has_audio)
> >> +            drm_connector_hdmi_audio_plugged_notify(dp->connector, plugged);
> > I'd say, notify always and let userspace figure it out via the ELD. Then
> > you shouldn't need sink_has_audio. This would match the behaviour of
> > HDMI drivers.
>
> Oh, I find that there are similar usages in qcom msm driver. Is there
> any more progress?

For msm driver it is required as DSP requires HDMI to be plugged for
the audio path to work.

>
>
> >
> >>   }
> >>
> > [...]
> >
> >> @@ -705,8 +681,6 @@ static int cdn_dp_encoder_atomic_check(struct drm_encoder *encoder,
> >>
> >>   static const struct drm_encoder_helper_funcs cdn_dp_encoder_helper_funcs = {
> >>      .mode_set = cdn_dp_encoder_mode_set,
> >> -    .enable = cdn_dp_encoder_enable,
> >> -    .disable = cdn_dp_encoder_disable,
> >>      .atomic_check = cdn_dp_encoder_atomic_check,
> > Nit: for the future cleanup, it should probably be possible to get rid
> > of these encoder ops too by moving them to the bridge ops.
>
> Interesting, have these patches been submitted upstream yet?

Everything is already there, see drm_bridge_funcs::mode_set() and
drm_bridge_funcs::atomic_check().


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
