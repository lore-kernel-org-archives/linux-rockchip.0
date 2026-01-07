Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E81C2CF6BFF
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 08:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bk7vlPfgNxZkrckwrai7JHDrVrkVGC8PHT0F1V5LCw0=; b=dTptRUoJd/bDx1
	gDQYBawLY8NjTu5yIi9iAFzB6scoY17nEhS1NBk2HkCA0K7yxcCSfI+LIOTan3AZI4Bx5RdWWeqXn
	br+j563Es+eJGvsdHiAzQkiguLRu17CDYOBUm8Un2ytGccgK2G9gxpbN0a7/kdog1l8knJ3rzA6da
	jDxX/nK8eQ9AqTxqeJckQELbSoIXCTWHZYeuZIOnHHoS6yvbscrgdsp/tCWqPDd4Torswaro4ZNPp
	yKVRWJ3vZeHeao9pxRAHWLEhzU+yrXtcWTlsFQ6SQtcTLX1073sWr4XaN6i/JxUXh9uJkPwV4NYdZ
	JLI7hT1hWYf+MbdJl3Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOx6-0000000EQ9Z-3ry1;
	Wed, 07 Jan 2026 08:31:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOx3-0000000EQ7u-0e2p
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 08:31:35 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6075EBtI1462600
	for <linux-rockchip@lists.infradead.org>; Wed, 7 Jan 2026 08:31:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sO93H+QFa37P7vkvoHhZpkzVYY5lod2ZRIVKd4EtCKM=; b=YAf3ePHDs3CaRRWl
	db3WyP0IRzXYAKProK7DkpioG0z/c1Ec3mPHK3x0oIpzV3ugmxYMq46Op6nciCp1
	FgvXVcV87pUwboJc+pseSupjohRijHuJedKtmp/aPxEBw5/9SBSHeW6NBgxk7qxY
	CPe1MfwMN+ZHfxi3xR2VSvN5WP/QYod1slvq6/GM0CCvxBU+s36zLnjcimzfuqX6
	zKOrj/9/wtaMxXBoEt+j6ZRA/qc9ablPUG5GoSZKnud6heFuyor9gvra/PVlmeak
	Ja6o6C+XBt40qpMTHdccdW4Mxk6EndKBM8Xc04kIirgoHUe8OVnfKPEtcX94Pu5o
	cnNQQQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh0vm3j0a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 08:31:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee0995fa85so59491201cf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 00:31:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767774692; x=1768379492; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sO93H+QFa37P7vkvoHhZpkzVYY5lod2ZRIVKd4EtCKM=;
        b=fDxR96/ERJJJdaMyhftsi124Uo1JIUN+Lho4LenMe6cwxO8OJ7FNeu3+cwkEKutUvP
         FNDSpYVCPHThder1MHuHSMg8d4AO+vUhJE7x2m5D8tOttSePhJj+4LXCO7NFbyLgC0dJ
         2qynnviUvcEAH0MNqCgDsw7MP+Y6H0U+c4DsA2C3crY4iVm25Y5PQJwXIz3S+SGK9SpV
         iJGIn7gtvL3rGmJnnyaGNF08MUkRK07QgvrVNsgl+dUhiqbycQUPa2pkrHLWBojUS6iu
         adPVyN1e4Il2wvJxhQivNzV8Pwl66VBR3klL2lDEfHFpB2vqxZwDtQZUY+klsu23SMhb
         eDFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767774692; x=1768379492;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sO93H+QFa37P7vkvoHhZpkzVYY5lod2ZRIVKd4EtCKM=;
        b=peyEm2S4bL/3KFFP3QUzXcLcnEoAxhqyuoiwuYzXztiyPEgV4YwBU0v7XRI1fknHya
         l4ji2AZLNxsfkq8pUMl37O0ppDzpSUgBYRBKGuxcHfVq9g+JiFo4ez0llPz0AuzSH+0m
         V2zWribPo8fdPR8VFMeKdtTKwfM4ZiBBS7Zo+eVRmswKtDokOQ5KKOrMCBKmKdqRaGGy
         7UoU2xkf1mRSP1tXgVauctH7TtxILDCMKKcijEtW2ID4t7DDCpCreaetcbnxW7sq4jy6
         thwTJxOMM+Wv1oVJ4DFN+hU4aHFv1ZRwNNCh0NUGT5fFbhx6DHCGIwkxoM2mcUUyEcei
         OCMA==
X-Forwarded-Encrypted: i=1; AJvYcCUZo10591B/OxgPEnST9tXYwvJEcKyjoJgYEWXtI0BnbWnydu/VRXIene9pauSxAnbBPWFi3kWI3KGWJUH0jw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzUPORfA3+SmSlvoSwS9VXOA6r+Ep6IxzSBn7k1ADudp/9NDtDG
	kz8hjv6EZIQaEejQHvoNe6Wf2vg0eSNzn4iVILKp74HqIzCVU9Y1rKUSoTnG8VNBuB7BsKcGNNV
	Hmv6N1T2WKzRDR13md/1adZERQkqVyqpcYupVBMMt1f6S0XRwNpIufkwju/34il9mxyEA8HrHv2
	k=
X-Gm-Gg: AY/fxX6zjN0shDr0XqEQXNMjovIhvwgW8klxvOCRQziv1+xWxje5PPliqsUg5Agt+wo
	f37Kg5NnkwiV4gxHZJjS3IPca+dE3oDNAR0yeJuMusQeCdWDA7aCwvYMiE4d4LC1C81q4nuo7cB
	aKNkdAuQhoxicUus6V1HvAi2cgeO+HSdBjj7brFLLfI229pF+zDaEQg7R6Px/35ZfCLcBGk/0Lc
	L1U3ETeW6xZiE+ovBdq+QNEE38g2CxFTMx5r5Zeh9zhc3FbKiYYGA5rKrSumeYiMOhyOhaft3ZK
	C78GVToBXKPe38yP4tEVvpGQ/50ycVgdvRr82hPbPrz7u/6A8GhAev7Xks0i5yqHzqMJZ9gLY73
	/O7RMTXIzLEU62L0rxcjgMHLosMa0MN+jfUrVxg==
X-Received: by 2002:a05:622a:5c8e:b0:4ee:26bd:13f3 with SMTP id d75a77b69052e-4ffb484a739mr17380031cf.8.1767774691657;
        Wed, 07 Jan 2026 00:31:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF6IltAcpMqDUqZxq1/vVtnQVTIeTGNYCG+LcMYOkprAjPOhqleDalrgIZfMVCirRonr53pXQ==
X-Received: by 2002:a05:622a:5c8e:b0:4ee:26bd:13f3 with SMTP id d75a77b69052e-4ffb484a739mr17379801cf.8.1767774691272;
        Wed, 07 Jan 2026 00:31:31 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:b90b:ec1:e402:4249])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f703a8csm84793845e9.13.2026.01.07.00.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:31:30 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH] gpio: rockchip: mark the GPIO controller as sleeping
Date: Wed,  7 Jan 2026 09:31:26 +0100
Message-ID: <176777468354.15022.5475399715540988905.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com>
References: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=Pa3yRyhd c=1 sm=1 tr=0 ts=695e19e4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=R-3ehz3GvOBFeWroKLcA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: PQiv6zN2wyuD5lbRNnVYh26cA0D1xIEd
X-Proofpoint-ORIG-GUID: PQiv6zN2wyuD5lbRNnVYh26cA0D1xIEd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA2NyBTYWx0ZWRfX8JTEY/o5he8I
 z4cE6lIjZXwWJWG3J5jxAt7YhKA7joKH9gViZl8jiSUhS7vA6kN9Esf5WtmVHG9VUD2CKd2/4FM
 vMslpJW1HQ53csiSHWydOZ23p83a/xrmAaD7ex1Dki1WwJmiLs284ocuybXBC2G+DY48NM99CzS
 GtghqFBX8hIkaEIoe/EQxedS16LKeNBfTqbc2R47lPaVE2X+9XF4lT2/24BDS56zsXh4s1YC1vz
 DGPSOg9IKWwNZJx1ixRx1YJAvh9M/hfjg5c25mg2z0GF5lIFjsLLetuR3ZMK+XuCADxeDd13NNo
 Ol0wyQ3auIHco5NQioH0cVemKAQET5fhb1mHTziYSfFls1foJR2hViJr6JOYIcxCIO1z6TYGecE
 h4x3zxEJ02gfOi56Tw1wKTrwgK6vImLVJpd1pwwP8kpLoRF8NiPIfFcpPEJ7nzTS6HbzrIbknph
 2TTsY1RrR1on3X+v3rA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_003133_194137_9550C72A 
X-CRM114-Status: GOOD (  14.25  )
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


On Tue, 06 Jan 2026 10:00:11 +0100, Bartosz Golaszewski wrote:
> The GPIO controller is configured as non-sleeping but it uses generic
> pinctrl helpers which use a mutex for synchronization.
> 
> This can cause the following lockdep splat with shared GPIOs enabled on
> boards which have multiple devices using the same GPIO:
> 
> BUG: sleeping function called from invalid context at
> kernel/locking/mutex.c:591
> in_atomic(): 1, irqs_disabled(): 1, non_block: 0, pid: 12, name:
> kworker/u16:0
> preempt_count: 1, expected: 0
> RCU nest depth: 0, expected: 0
> 6 locks held by kworker/u16:0/12:
>   #0: ffff0001f0018d48 ((wq_completion)events_unbound#2){+.+.}-{0:0},
> at: process_one_work+0x18c/0x604
>   #1: ffff8000842dbdf0 (deferred_probe_work){+.+.}-{0:0}, at:
> process_one_work+0x1b4/0x604
>   #2: ffff0001f18498f8 (&dev->mutex){....}-{4:4}, at:
> __device_attach+0x38/0x1b0
>   #3: ffff0001f75f1e90 (&gdev->srcu){.+.?}-{0:0}, at:
> gpiod_direction_output_raw_commit+0x0/0x360
>   #4: ffff0001f46e3db8 (&shared_desc->spinlock){....}-{3:3}, at:
> gpio_shared_proxy_direction_output+0xd0/0x144 [gpio_shared_proxy]
>   #5: ffff0001f180ee90 (&gdev->srcu){.+.?}-{0:0}, at:
> gpiod_direction_output_raw_commit+0x0/0x360
> irq event stamp: 81450
> hardirqs last  enabled at (81449): [<ffff8000813acba4>]
> _raw_spin_unlock_irqrestore+0x74/0x78
> hardirqs last disabled at (81450): [<ffff8000813abfb8>]
> _raw_spin_lock_irqsave+0x84/0x88
> softirqs last  enabled at (79616): [<ffff8000811455fc>]
> __alloc_skb+0x17c/0x1e8
> softirqs last disabled at (79614): [<ffff8000811455fc>]
> __alloc_skb+0x17c/0x1e8
> CPU: 2 UID: 0 PID: 12 Comm: kworker/u16:0 Not tainted
> 6.19.0-rc4-next-20260105+ #11975 PREEMPT
> Hardware name: Hardkernel ODROID-M1 (DT)
> Workqueue: events_unbound deferred_probe_work_func
> Call trace:
>   show_stack+0x18/0x24 (C)
>   dump_stack_lvl+0x90/0xd0
>   dump_stack+0x18/0x24
>   __might_resched+0x144/0x248
>   __might_sleep+0x48/0x98
>   __mutex_lock+0x5c/0x894
>   mutex_lock_nested+0x24/0x30
>   pinctrl_get_device_gpio_range+0x44/0x128
>   pinctrl_gpio_direction+0x3c/0xe0
>   pinctrl_gpio_direction_output+0x14/0x20
>   rockchip_gpio_direction_output+0xb8/0x19c
>   gpiochip_direction_output+0x38/0x94
>   gpiod_direction_output_raw_commit+0x1d8/0x360
>   gpiod_direction_output_nonotify+0x7c/0x230
>   gpiod_direction_output+0x34/0xf8
>   gpio_shared_proxy_direction_output+0xec/0x144 [gpio_shared_proxy]
>   gpiochip_direction_output+0x38/0x94
>   gpiod_direction_output_raw_commit+0x1d8/0x360
>   gpiod_direction_output_nonotify+0x7c/0x230
>   gpiod_configure_flags+0xbc/0x480
>   gpiod_find_and_request+0x1a0/0x574
>   gpiod_get_index+0x58/0x84
>   devm_gpiod_get_index+0x20/0xb4
>   devm_gpiod_get_optional+0x18/0x30
>   rockchip_pcie_probe+0x98/0x380
>   platform_probe+0x5c/0xac
>   really_probe+0xbc/0x298
> 
> [...]

Applied, thanks!

[1/1] gpio: rockchip: mark the GPIO controller as sleeping
      commit: 20cf2aed89ac6d78a0122e31c875228e15247194

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
