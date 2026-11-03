Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415F4606D813
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 08:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TaYne0ym;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=RKxmNm5D;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=hWQ1s1kM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SaODyrW5OO6Reo5Pk3nYjkcY43Pm36FSDJUtb960fbE=; b=TaYne0yma8VdZWxzAxoC07l11V
	YiJnhUV8F7/bWzJMrhM6JZqxP5H+nHt2Bxi967j9SeIKxOJyuannrce2eFQLZGpJfodP3MdwXqOsX
	6XiqZ/NK5u1vBM6gGxhm4HBgCFd4ihfOxqwYy8SZgE6SOaR80DJUEix2iDy7wTPjKxolyeH8bOtcn
	dCM17uV4sfz3Z6VRwKT9WAAYRoVTK9jmhRDqu+75BEv5L3WHHbvlQTdCutl52E/KIiha6hlIYELNG
	wGG6FMtzjnWCf12mc7t25hA1v3uRWnBppEPak4O7/ZrESMgITJipu9ZE/jEeVbvz38Ci+JQSBRNer
	0DFznafA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO9aw-00000001UfV-1uF0;
	Tue, 03 Nov 2026 08:10:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO9ai-00000001USu-3c0p
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 08:10:04 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A32C7oN2106925
	for <linux-rockchip@lists.infradead.org>; Tue, 3 Nov 2026 08:09:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	odAVPr4oB61PcSl1pou9FnZOPHlwMEJDC6odo0jXzVk=; b=RKxmNm5DxoxoiGgT
	B3sbHr2wgzNR+8A41QXJGvh6YVGXLlmdXeTKcmoPev4Y3tnsICOkZJCO7slNxxF3
	JGrRG4DIt2DEYS8UVlVYDSiIFua7z/h0x2UUOx0h1xfrrc+NPVsFRS8W6v1+0IlR
	lqKXuDxIt2RNL2y2wXVUrfcLa4eqQ+GUPJzomtp6gTtKdBKnAMcaW6prXij698An
	uDuhHYYY3MooCRv8rS+hveYAE1mC8MlPFrN+VQnQAf27WkhU6kYOGb8sKvwY+k44
	/8Q7yGIJenTqzwwtGETnW7nNc9dsZq7YkXCAzyeS0metK73TtIU4z8i+6XyXtYoU
	nA/Zhg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq6m996k0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 08:09:58 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93f5844cb60so94325585a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 00:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793693398; x=1794298198; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=odAVPr4oB61PcSl1pou9FnZOPHlwMEJDC6odo0jXzVk=;
        b=hWQ1s1kMqQX+uEk5lBCI7gYXr/TX7S09gtyajal3SplLHn9q/jQcstZ4RH3Gzu6KUk
         5/Md16O99bOeAkhCyPd+BgVvUtfy4C+UiqRpurl65mqq7NKQzCjQ+mXtguVd9nMo+Wa0
         8lH2TgZbxeQT2EJhmAgKJSWbVobLx1EI5HwEwZRLgfxYzynmd+LKMFC7f2Gs78ayF7mo
         +iWs6Lza8ulEIXXmOKecNju2BJmeL7V+o8BZEBwFJfqYC9VO4593oz6CK7Nj1Sk8Vnso
         5u9CwYAMlq9q+pjAsIhn1K06ySNh+hU7V64Ycio97YqZxx7FJph8heV9Z9N8JKyAo8/C
         bCVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793693398; x=1794298198;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=odAVPr4oB61PcSl1pou9FnZOPHlwMEJDC6odo0jXzVk=;
        b=nmieE5T3XYfkd3W9/KjA13GjfHE3rSypYaYY7nUhNV0dPPzTJuUHO9aNxJny1zKe9+
         50Vj3XZwLlNFz91nSPesARJPLq2UAGsFbyLptXTOsFh6JoDHdI/wInhtFmJSxd2+lbO/
         4oOH5Et0a68BFLHLFxnQN0H+AiKxaV0JTNBX1oNx3rgmbTIPblITryulu1EFbzBx6ey7
         Tk+xUxvEWToPpdCLbGu/g/UKA7/A+n1vSoXqoEpAdKzFDjh7GWsJLgRH48+oeoZ6Czzg
         AUWuNvUJL5PBp/JuSGQQL9yIDrkQGbfu8pFunMFt1XJrTxRzbyqd8VypVU8l5T6loFJg
         4V9A==
X-Forwarded-Encrypted: i=1; AKwUvBz9gKT1rGVk8bEWLCGgbLGScJMc3i7Ru9V2Epw+0ZhSWiF3S2u7I2EK0oI3w0y/B2kPx202DjMsYhCb8wDiDw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+DwgvjQAzQG6eXDidKo0ZXclqz6nK6ZnTrF5adsRjYPxBAlYi6
	svEituukg5nJwdLrpSFVpRnkI/ZlatnW4ASYEtzTodB65uf1mZyMumDIw97U7eAcIPhn8YaMiOM
	+F23KjjzI0wKLfb1sSYUmgmQ6iS4hpbychXAAJ7stE+OGuxTEeFqnl3rvTXL/kjYe0hoQo9HN9m
	U=
X-Gm-Gg: AYBFou1aA9INkeRL44loxLm5t7XgfhH+lBHe0kylW/3TOddw2VmMr5C7tnwg2lJmFsj
	T4pw5x9uIGmpkCze40MkP6P2SfsIfDZGAK4FAyNP2NCs9r6CV/XJBI6NvPwghhVrpTbJJaJNz5T
	kMGd0X1qAxB9RmiDBK8+U0BuCSvbwa5XM1o6dRoxmVJuAkQPL8xsWFFkE4dO4HsKVcUK6sj59ht
	UEwBVXcQ5UIGd7+S3qDf7B5B9V6mtUvowHpp+4C9pTRlNRLX2fgv+dF0J4ims0wDrVhaOEMJtCe
	WWbHRsK7EsFEGuAIosR0QtFGVuie52sYRxmfpkocOB7sCVzU/PaY8b7lBDjFKAnRaPqpmVy76cZ
	JPQwAmh5pHlcUCL+2bQOgygbAI4DI9zH1sYQH48U96y8Nv8xW/NQf1MqDS4itZXrms40YXOi/4a
	kiJMvxFeEAVrRB
X-Received: by 2002:a05:620a:4405:b0:93f:31f0:6a77 with SMTP id af79cd13be357-94413358cf9mr2305348885a.11.1793693397753;
        Tue, 03 Nov 2026 00:09:57 -0800 (PST)
X-Received: by 2002:a05:620a:4405:b0:93f:31f0:6a77 with SMTP id af79cd13be357-94413358cf9mr2305346385a.11.1793693397285;
        Tue, 03 Nov 2026 00:09:57 -0800 (PST)
Received: from [192.168.25.64] ([94.155.124.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4ac0a66caefsm259580725e9.5.2026.11.03.00.09.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2026 00:09:56 -0800 (PST)
Message-ID: <25952c4c-36db-4361-9ab6-0ca1b1f960bf@oss.qualcomm.com>
Date: Tue, 3 Nov 2026 10:09:54 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] media: v4l2-device: Add struct v4l2_device.flags
To: Daniel Scally <dan.scally@ideasonboard.com>,
        Tomasz Figa <tfiga@chromium.org>,
        Marek Szyprowski
 <m.szyprowski@samsung.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Dafna Hirschfeld <dafna@fastmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20261103-rkisp1-suspend-and-resume-v1-0-08f863b6fdc5@ideasonboard.com>
 <20261103-rkisp1-suspend-and-resume-v1-2-08f863b6fdc5@ideasonboard.com>
Content-Language: en-US
From: "Gjorgji Rosikopulos (Consultant)"
 <gjorgji.rosikopulos@oss.qualcomm.com>
In-Reply-To: <20261103-rkisp1-suspend-and-resume-v1-2-08f863b6fdc5@ideasonboard.com>
X-Proofpoint-GUID: Ojbb8a6h4NlV1wTcBWRlE1BKutx-S1-y
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDAzMiBTYWx0ZWRfX596n2jYi01DC
 azGEcMrKFhGNKDvbfl3Xi9gbrhzc8fUPx17zy9LHMERL2Z9+HlxiMLJjPfSaPWqW0UHUolabg3C
 bA2+NMVTsNT2XKVZOFupMqTeumoCQbg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDAzMiBTYWx0ZWRfX92gtBQfAYvQZ
 i0dQ8Gj0yKCpCx+CPv6wU3Rt7zDHMh0O+UrpxYWS+rfxj/C2qNyMtyEd5HQ/BdNN2F4DTBsYzSD
 bJ9jBzf0MTjKJmlF4EpFtQI4FlTjmUBfI0eo5bois49mlfMDMCCQDbQduz21UMzpnWXPvAyu6xF
 2QmVVWz6D5OgxojI/BDZ1HEeLAYLaeEPEefGpXtCU7+7CMhNZwC0KHC1igUcW64f1OUZ5e1OyxK
 cHu4AVIBAWZk7O8MRan9NlAA5uxrycG3/ZJG7o+LlvmR5///SAhZLqEjQCLf60WvWb8+EU0cE8p
 cC2+/S3GHrANqki8WlphhCssIobXgFthzpeducko1HU4IP4rQjplqXC6mrHU8bk+sW4KXouGrDd
 zOW5gQLSRUmVonM98MY6U6pnTHeN05z64kofkhDoPBV87B+oU9GXFIc24h3Yn61+384erOKMtD9
 LjiFcqnSZQ9/BwOgxCA==
X-Authority-Analysis: v=2.4 cv=C7B8WgP+ c=1 sm=1 tr=0 ts=6ae996d6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=eGCDHFSXubCXFTSSGhjuOA==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=P1BnusSwAAAA:8 a=ZPX-x_UpDkASuRsfLV0A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=D0XLA9XvdZm18NrgonBM:22
X-Proofpoint-ORIG-GUID: Ojbb8a6h4NlV1wTcBWRlE1BKutx-S1-y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_01,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1011
 impostorscore=0 phishscore=0 priorityscore=1501 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611030032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_001001_061705_8C51275E 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Daniel,

On 11/3/2026 9:40 AM, Daniel Scally wrote:
> Add a flags field to struct v4l2_device, along with a single flag
> value that is designed to tell v4l2-async in which direction data
> flows for this v4l2 device so that it knows how to set up device
> links between subdevices connected using the async APIs.
> 
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> ---
>  include/media/v4l2-device.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/include/media/v4l2-device.h b/include/media/v4l2-device.h
> index 25f69b1b8db03d077f7570471d5c6910fcafe110..9b17916d63641ba637cf8c37aa925749bd4e2134 100644
> --- a/include/media/v4l2-device.h
> +++ b/include/media/v4l2-device.h
> @@ -15,6 +15,9 @@
>  
>  struct v4l2_ctrl_handler;
>  
> +/* Set this flag if this V4L2 device is an "output" rather than an "input". */
> +#define V4L2_DEVICE_FL_IS_OUTPUT			BIT(0)

Just for the clarification do we change the meaning of output->capture to input->output?
I know that output is confusing for everyone including me but somehow i get used to it.
However to clarify what this means will be helpful :-)

~Gjorgji

> +
>  /**
>   * struct v4l2_device - main struct to for V4L2 device drivers
>   *
> @@ -30,6 +33,9 @@ struct v4l2_ctrl_handler;
>   * @ref: Keep track of the references to this struct.
>   * @release: Release function that is called when the ref count
>   *	goes to 0.
> + * @flags: device flags. Can be:
> + *   %V4L2_DEVICE_FL_IS_OUTPUT - Set this flag if this V4L2 device is an
> + *   "output" rather than an "input"
>   *
>   * Each instance of a V4L2 device should create the v4l2_device struct,
>   * either stand-alone or embedded in a larger struct.
> @@ -54,6 +60,7 @@ struct v4l2_device {
>  	struct v4l2_prio_state prio;
>  	struct kref ref;
>  	void (*release)(struct v4l2_device *v4l2_dev);
> +	u32 flags;
>  };
>  
>  /**
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
